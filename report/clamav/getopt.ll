Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/getopt?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@my_getopt:bb.a
  %i.k = load i32, ptr @optind, align 4, !tbaa !12 ; 18 uses
  br i1 %.not92, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %1, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11   ; 3 uses
  %i.o = sext i32 %i.j to i64
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8     ; 3 uses
  %i.r = sext i8 %i.q to i32                      ; 7 uses
  store i32 %i.r, ptr @optopt, align 4, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %.176 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8     ; 2 uses
  %.not96115 = icmp eq i8 %i.t, 0
  br i1 %.not96115, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.p
  %i.u = phi i8 [ %i.au, %bb.p ], [ %i.t, %bb.f ]
  %.079116 = phi ptr [ %i.at, %bb.p ], [ %i.s, %bb.f ] ; 3 uses
  %i.v = icmp eq i8 %i.q, %i.u
  br i1 %i.v, label %bb.g, label %bb.p

bb.g:                                             ; preds = %.lr.ph
  %i.w = add nsw i32 %i.j, 1                      ; 4 uses
  store i32 %i.w, ptr @my_getopt.charind, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %.079116, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8     ; 2 uses
  %i.z = icmp eq i8 %i.y, 58
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp eq i8 %i.q, 87
  %i.ab = icmp eq i8 %i.y, 59
  %or.cond105 = and i1 %i.aa, %i.ab
  br i1 %or.cond105, label %bb.i, label %thread-pre-split

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = sext i32 %i.w to i64
  %i.ad = getelementptr inbounds i8, ptr %i.n, i64 %i.ac ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !8
  %.not98 = icmp eq i8 %i.ae, 0
  br i1 %.not98, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = add nsw i32 %i.k, 1                     ; 2 uses
  store i32 %i.af, ptr @optind, align 4, !tbaa !12
  store ptr %i.ad, ptr @optarg, align 8, !tbaa !11
  store i32 0, ptr @my_getopt.charind, align 4, !tbaa !12
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.079116, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %.not99 = icmp eq i8 %i.ah, 58
  br i1 %.not99, label %thread-pre-split, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr @my_getopt.charind, align 4, !tbaa !12
  %i.ai = add nsw i32 %i.k, 1                     ; 4 uses
  store i32 %i.ai, ptr @optind, align 4, !tbaa !12
  %.not100 = icmp slt i32 %i.ai, %0
  br i1 %.not100, label %thread-pre-split.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load i32, ptr @opterr, align 4, !tbaa !12
  %.not101 = icmp eq i32 %i.aj, 0
  br i1 %.not101, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.al = load ptr, ptr %1, align 8, !tbaa !11
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.1, ptr noundef %i.al, i32 noundef %i.r) #5 ; 0 uses
  %.pr.pre.pre = load i32, ptr @my_getopt.charind, align 4, !tbaa !12
  %.pre153.pre.pre.pre = load i32, ptr @optind, align 4, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre153.pre.pre = phi i32 [ %.pre153.pre.pre.pre, %bb.n ], [ %i.ai, %bb.m ]
  %.pr.pre = phi i32 [ %.pr.pre.pre, %bb.n ], [ 0, %bb.m ]
  %i.an = icmp eq i8 %.077, 58
  %i.ao = select i1 %i.an, i32 58, i32 63
  br label %thread-pre-split

thread-pre-split.thread:                          ; preds = %bb.l
  %i.ap = add nsw i32 %i.k, 2                     ; 2 uses
  store i32 %i.ap, ptr @optind, align 4, !tbaa !12
  %i.aq = sext i32 %i.ai to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !11
  store ptr %i.as, ptr @optarg, align 8, !tbaa !11
  br label %.thread

bb.p:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %.079116, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8   ; 2 uses
  %.not96 = icmp eq i8 %i.au, 0
  br i1 %.not96, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.p, %bb.f
  %i.av = load i32, ptr @opterr, align 4, !tbaa !12
  %.not97 = icmp eq i32 %i.av, 0
  br i1 %.not97, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ax = load ptr, ptr %1, align 8, !tbaa !11
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.2, ptr noundef %i.ax, i32 noundef %i.r) #5 ; 0 uses
  %.pre = load i32, ptr @optind, align 4, !tbaa !12 ; 2 uses
  %.phi.trans.insert = sext i32 %.pre to i64
  %.phi.trans.insert149 = getelementptr inbounds [8 x i8], ptr %1, i64 %.phi.trans.insert
  %.pre150 = load ptr, ptr %.phi.trans.insert149, align 8, !tbaa !11
  %.pre151 = load i32, ptr @my_getopt.charind, align 4, !tbaa !12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge
  %i.az = phi i32 [ %.pre151, %bb.q ], [ %i.j, %._crit_edge ]
  %i.ba = phi ptr [ %.pre150, %bb.q ], [ %i.n, %._crit_edge ]
  %i.bb = phi i32 [ %.pre, %bb.q ], [ %i.k, %._crit_edge ] ; 2 uses
  %i.bc = add nsw i32 %i.az, 1                    ; 3 uses
  store i32 %i.bc, ptr @my_getopt.charind, align 4, !tbaa !12
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.s, label %thread-pre-split

bb.s:                                             ; preds = %bb.r
  %i.bh = add nsw i32 %i.bb, 1                    ; 2 uses
  store i32 %i.bh, ptr @optind, align 4, !tbaa !12
  store i32 0, ptr @my_getopt.charind, align 4, !tbaa !12
  br label %.thread

thread-pre-split:                                 ; preds = %bb.h, %bb.k, %bb.o, %bb.r
  %.pre153 = phi i32 [ %i.bb, %bb.r ], [ %i.k, %bb.h ], [ %i.k, %bb.k ], [ %.pre153.pre.pre, %bb.o ] ; 4 uses
  %i.bi = phi i32 [ %i.bc, %bb.r ], [ %i.w, %bb.h ], [ %i.w, %bb.k ], [ %.pr.pre, %bb.o ] ; 2 uses
  %.072 = phi i32 [ 63, %bb.r ], [ %i.r, %bb.h ], [ %i.r, %bb.k ], [ %i.ao, %bb.o ] ; 3 uses
  %.not102 = icmp eq i32 %i.bi, 0
  br i1 %.not102, label %.thread, label %bb.t

bb.t:                                             ; preds = %thread-pre-split
  %i.bj = sext i32 %.pre153 to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !11
  %i.bm = sext i32 %i.bi to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !8
  %.not103 = icmp eq i8 %i.bo, 0
  br i1 %.not103, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.bp = add nsw i32 %.pre153, 1                 ; 2 uses
  store i32 %i.bp, ptr @optind, align 4, !tbaa !12
  store i32 0, ptr @my_getopt.charind, align 4, !tbaa !12
  br label %.thread

bb.v:                                             ; preds = %bb.e
  %.not93 = icmp slt i32 %i.k, %0
  br i1 %.not93, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bq = sext i32 %i.k to i64                    ; 4 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !11 ; 4 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !8
  %i.bu = icmp eq i8 %i.bt, 45
  br i1 %i.bu, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !8
  switch i8 %i.bw, label %.thread171 [
    i8 45, label %bb.y
    i8 0, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !8
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.z, label %.thread171

bb.z:                                             ; preds = %bb.y, %bb.v
  %i.ca = add nsw i32 %i.k, 1                     ; 2 uses
  store i32 %i.ca, ptr @optind, align 4, !tbaa !12
  br label %.thread

bb.aa:                                            ; preds = %bb.x, %bb.w
  switch i8 %.078, label %.lr.ph118 [
    i8 43, label %.thread
    i8 45, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.cb = add nsw i32 %i.k, 1                     ; 2 uses
  store i32 %i.cb, ptr @optind, align 4, !tbaa !12
  store ptr %i.bs, ptr @optarg, align 8, !tbaa !11
  br label %.thread

.lr.ph118:                                        ; preds = %bb.aa, %bb.ae
  %indvar180 = phi i64 [ %indvar.next181, %bb.ae ], [ 0, %bb.aa ] ; 4 uses
  %indvar176 = phi i35 [ %indvar.next177, %bb.ae ], [ 0, %bb.aa ] ; 2 uses
  %indvar = phi i32 [ %indvar.next, %bb.ae ], [ 0, %bb.aa ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ae ], [ %i.bq, %bb.aa ] ; 4 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !11 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !8
  %i.cf = icmp eq i8 %i.ce, 45
  br i1 %i.cf, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.lr.ph118
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !8
  %.not95 = icmp eq i8 %i.ch, 0
  br i1 %.not95, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ci = trunc i64 %indvar180 to i32
  %i.cj = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.cj, ptr @optind, align 4, !tbaa !12
  %i.ck = tail call i32 @my_getopt(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2) ; 2 uses
  %optind.promoted = load i32, ptr @optind, align 4 ; 5 uses
  %i.cl = icmp slt i32 %i.k, %i.cj
  br i1 %i.cl, label %.lr.ph126.preheader, label %.loopexit

.lr.ph126.preheader:                              ; preds = %bb.ad
  %i.cm = sext i32 %optind.promoted to i64
  %i.cn = xor i32 %i.k, -1
  %i.co = sub i32 %i.cn, %indvar
  %i.cp = add i32 %optind.promoted, %i.co
  %3 = zext i32 %i.k to i35
  %i.cq = add i35 %indvar176, %3
  %i.cr = shl i35 %i.cq, 3
  %i.cs = add i35 %i.cr, -8
  %4 = add i64 %indvar180, %i.bq
  %5 = zext i32 %i.k to i64
  %6 = add i64 %indvar180, %5
  %7 = shl i64 %6, 32
  %i.ct = add i64 %7, -4294967296
  %i.cu = xor i32 %i.k, -1
  %i.cv = sub i32 %i.cu, %i.ci
  %i.cw = add i32 %optind.promoted, %i.cv         ; 2 uses
  %i.cx = zext i32 %i.cw to i64
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cw, 19
  %i.cz = zext i32 %i.cp to i35
  %mul = shl nuw i35 %i.cz, 3
  %n.vec = and i64 %i.cy, 8589934588              ; 4 uses
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %._crit_edge122
  %indvar182 = phi i64 [ 0, %.lr.ph126.preheader ], [ %indvar.next183, %._crit_edge122 ] ; 4 uses
  %indvar178 = phi i35 [ 0, %.lr.ph126.preheader ], [ %indvar.next179, %._crit_edge122 ] ; 2 uses
  %indvars.iv143 = phi i64 [ %i.cm, %.lr.ph126.preheader ], [ %indvars.iv.next144, %._crit_edge122 ] ; 3 uses
  %indvars.iv134 = phi i64 [ %indvars.iv, %.lr.ph126.preheader ], [ %indvars.iv.next135, %._crit_edge122 ] ; 6 uses
  %i.da = trunc i64 %indvar182 to i32
  %8 = sub i64 %indvar182, %4
  %9 = shl i64 %8, 3
  %10 = shl i64 %indvar182, 32
  %11 = sub i64 %i.ct, %10
  %12 = ashr exact i64 %11, 29
  %13 = add i64 %9, %12
  %i.db = shl i35 %indvar178, 3
  %i.dc = sub i35 %i.cs, %i.db                    ; 2 uses
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, -1 ; 8 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next135
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !11
  %i.df = icmp slt i64 %indvars.iv134, %indvars.iv143
  br i1 %i.df, label %.lr.ph121.preheader, label %._crit_edge122

.lr.ph121.preheader:                              ; preds = %.lr.ph126
  %i.dg = trunc i64 %indvars.iv143 to i32         ; 2 uses
  br i1 %min.iters.check, label %.lr.ph121.preheader186, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph121.preheader
  %14 = add i35 %i.dc, %mul
  %15 = icmp slt i35 %14, %i.dc
  %i.dh = add i64 %13, -1
  %diff.check = icmp ult i64 %i.dh, 31
  %or.cond = select i1 %15, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph121.preheader186, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.di = add i64 %indvars.iv134, %n.vec
  %i.dj = add i64 %indvars.iv.next135, %n.vec
  %i.dk = getelementptr [8 x i8], ptr %1, i64 %indvars.iv134
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dl = add i64 %indvars.iv.next135, %index
  %i.dm = getelementptr [8 x i8], ptr %i.dk, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load = load <2 x ptr>, ptr %i.dm, align 8, !tbaa !11
  %wide.load184 = load <2 x ptr>, ptr %i.dn, align 8, !tbaa !11
  %i.do = shl i64 %i.dl, 32
  %i.dp = ashr exact i64 %i.do, 29
  %i.dq = getelementptr inbounds i8, ptr %1, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store <2 x ptr> %wide.load, ptr %i.dq, align 8, !tbaa !11
  store <2 x ptr> %wide.load184, ptr %i.dr, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge122, label %.lr.ph121.preheader186

.lr.ph121.preheader186:                           ; preds = %vector.scevcheck, %.lr.ph121.preheader, %middle.block
  %indvars.iv136.ph = phi i64 [ %indvars.iv134, %vector.scevcheck ], [ %indvars.iv134, %.lr.ph121.preheader ], [ %i.di, %middle.block ] ; 3 uses
  %.0119.in.ph = phi i64 [ %indvars.iv.next135, %vector.scevcheck ], [ %indvars.iv.next135, %.lr.ph121.preheader ], [ %i.dj, %middle.block ] ; 2 uses
  %i.dt = trunc i64 %indvars.iv136.ph to i32      ; 2 uses
  %i.du = sub i32 %i.dg, %i.dt
  %xtraiter = and i32 %i.du, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph121.prol.loopexit, label %.lr.ph121.prol

.lr.ph121.prol:                                   ; preds = %.lr.ph121.preheader186, %.lr.ph121.prol
  %indvars.iv136.prol = phi i64 [ %indvars.iv.next137.prol, %.lr.ph121.prol ], [ %indvars.iv136.ph, %.lr.ph121.preheader186 ] ; 4 uses
  %.0119.in.prol = phi i64 [ %indvars.iv136.prol, %.lr.ph121.prol ], [ %.0119.in.ph, %.lr.ph121.preheader186 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph121.prol ], [ 0, %.lr.ph121.preheader186 ]
  %i.dv = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv136.prol
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !11
  %i.dx = shl i64 %.0119.in.prol, 32
  %i.dy = ashr exact i64 %i.dx, 29
  %i.dz = getelementptr inbounds i8, ptr %1, i64 %i.dy
  store ptr %i.dw, ptr %i.dz, align 8, !tbaa !11
  %indvars.iv.next137.prol = add nsw i64 %indvars.iv136.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph121.prol.loopexit, label %.lr.ph121.prol, !llvm.loop !19

.lr.ph121.prol.loopexit:                          ; preds = %.lr.ph121.prol, %.lr.ph121.preheader186
  %indvars.iv136.unr = phi i64 [ %indvars.iv136.ph, %.lr.ph121.preheader186 ], [ %indvars.iv.next137.prol, %.lr.ph121.prol ]
  %.0119.in.unr = phi i64 [ %.0119.in.ph, %.lr.ph121.preheader186 ], [ %indvars.iv136.prol, %.lr.ph121.prol ]
  %i.ea = sub i32 %i.da, %optind.promoted
  %i.eb = add i32 %i.ea, %i.dt
  %i.ec = icmp ugt i32 %i.eb, -4
  br i1 %i.ec, label %._crit_edge122, label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.prol.loopexit, %.lr.ph121
  %indvars.iv136 = phi i64 [ %indvars.iv.next137.3, %.lr.ph121 ], [ %indvars.iv136.unr, %.lr.ph121.prol.loopexit ] ; 6 uses
  %.0119.in = phi i64 [ %indvars.iv.next137.2, %.lr.ph121 ], [ %.0119.in.unr, %.lr.ph121.prol.loopexit ]
  %i.ed = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv136
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !11
  %i.ef = shl i64 %.0119.in, 32
  %i.eg = ashr exact i64 %i.ef, 29
  %i.eh = getelementptr inbounds i8, ptr %1, i64 %i.eg
  store ptr %i.ee, ptr %i.eh, align 8, !tbaa !11
  %indvars.iv.next137 = add nsw i64 %indvars.iv136, 1 ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next137
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !11
  %i.ek = shl i64 %indvars.iv136, 32
  %i.el = ashr exact i64 %i.ek, 29
  %i.em = getelementptr inbounds i8, ptr %1, i64 %i.el
  store ptr %i.ej, ptr %i.em, align 8, !tbaa !11
  %indvars.iv.next137.1 = add nsw i64 %indvars.iv136, 2 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next137.1
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !11
  %i.ep = shl i64 %indvars.iv.next137, 32
  %i.eq = ashr exact i64 %i.ep, 29
  %i.er = getelementptr inbounds i8, ptr %1, i64 %i.eq
  store ptr %i.eo, ptr %i.er, align 8, !tbaa !11
  %indvars.iv.next137.2 = add nsw i64 %indvars.iv136, 3 ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next137.2
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !11
  %i.eu = shl i64 %indvars.iv.next137.1, 32
  %i.ev = ashr exact i64 %i.eu, 29
  %i.ew = getelementptr inbounds i8, ptr %1, i64 %i.ev
  store ptr %i.et, ptr %i.ew, align 8, !tbaa !11
  %indvars.iv.next137.3 = add nsw i64 %indvars.iv136, 4 ; 2 uses
  %lftr.wideiv139.3 = trunc i64 %indvars.iv.next137.3 to i32
  %exitcond140.not.3 = icmp eq i32 %lftr.wideiv139.3, %i.dg
  br i1 %exitcond140.not.3, label %._crit_edge122, label %.lr.ph121, !llvm.loop !20

._crit_edge122:                                   ; preds = %.lr.ph121.prol.loopexit, %.lr.ph121, %middle.block, %.lr.ph126
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, -1 ; 3 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next144
  store ptr %i.de, ptr %i.ex, align 8, !tbaa !11
  %i.ey = icmp sgt i64 %indvars.iv.next135, %i.bq
  %indvar.next179 = add i35 %indvar178, 1
  %indvar.next183 = add i64 %indvar182, 1
  br i1 %i.ey, label %.lr.ph126, label %..loopexit_crit_edge

bb.ae:                                            ; preds = %.lr.ph118, %bb.ac
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %0, %lftr.wideiv
  %indvar.next = add i32 %indvar, 1
  %indvar.next177 = add i35 %indvar176, 1
  %indvar.next181 = add i64 %indvar180, 1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph118

..loopexit_crit_edge:                             ; preds = %._crit_edge122
  %i.ez = trunc nsw i64 %indvars.iv.next144 to i32 ; 2 uses
  %i.fa = trunc nsw i64 %indvars.iv.next135 to i32
  store i32 %i.ez, ptr @optind, align 4, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %bb.ad, %..loopexit_crit_edge
  %i.fb = phi i32 [ %optind.promoted, %bb.ad ], [ %i.ez, %..loopexit_crit_edge ], [ %i.k, %bb.ae ]
  %.173 = phi i32 [ %i.ck, %bb.ad ], [ %i.ck, %..loopexit_crit_edge ], [ -1, %bb.ae ]
  %.2 = phi i32 [ %i.cj, %bb.ad ], [ %i.fa, %..loopexit_crit_edge ], [ %0, %bb.ae ]
  %i.fc = icmp eq i32 %.2, %0
  %spec.select106 = select i1 %i.fc, i32 -1, i32 %.173
  br label %.thread

.thread171:                                       ; preds = %bb.x, %bb.y
  store i32 1, ptr @my_getopt.charind, align 4, !tbaa !12
  %i.fd = tail call i32 @my_getopt(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  %.pre152 = load i32, ptr @optind, align 4, !tbaa !12
  br label %.thread

.thread:                                          ; preds = %thread-pre-split.thread, %bb.s, %bb.j, %.loopexit, %bb.ab, %bb.aa, %bb.z, %.thread171, %thread-pre-split, %bb.t, %bb.u
  %i.fe = phi i32 [ %.pre153, %bb.t ], [ %i.bp, %bb.u ], [ %.pre153, %thread-pre-split ], [ %i.ca, %bb.z ], [ %.pre152, %.thread171 ], [ %i.fb, %.loopexit ], [ %i.cb, %bb.ab ], [ %i.k, %bb.aa ], [ %i.bh, %bb.s ], [ %i.af, %bb.j ], [ %i.ap, %thread-pre-split.thread ]
  %.3 = phi i32 [ %.072, %bb.t ], [ %.072, %bb.u ], [ %.072, %thread-pre-split ], [ -1, %bb.z ], [ %i.fd, %.thread171 ], [ %spec.select106, %.loopexit ], [ 1, %bb.ab ], [ -1, %bb.aa ], [ 63, %bb.s ], [ %i.r, %bb.j ], [ %i.r, %thread-pre-split.thread ]
  %i.ff = icmp sgt i32 %i.fe, %0
  br i1 %i.ff, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.thread
  store i32 %0, ptr @optind, align 4, !tbaa !12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread
  ret i32 %.3
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define i32 @my_getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @_getopt_internal(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @_getopt_internal(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str) #4
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1, !tbaa !8       ; 2 uses
  %i.c = icmp eq i8 %i.b, 58                      ; 3 uses
  %spec.select = zext i1 %i.c to i32
  %i.d = zext i1 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8     ; 4 uses
  switch i8 %i.f, label %bb.e [
    i8 45, label %bb.c
    i8 43, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8     ; 2 uses
  %i.i = icmp eq i8 %i.h, 58
  %spec.select225 = select i1 %i.i, i32 2, i32 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a, %bb.c
  %.0178 = phi i8 [ %i.f, %bb.b ], [ 43, %bb.a ], [ %i.f, %bb.d ], [ %i.f, %bb.c ]
  %.0177 = phi i8 [ %i.b, %bb.b ], [ 43, %bb.a ], [ %i.h, %bb.d ], [ 58, %bb.c ]
  %.1176 = phi i32 [ %spec.select, %bb.b ], [ 0, %bb.a ], [ %spec.select225, %bb.d ], [ 2, %bb.c ]
  store ptr null, ptr @optarg, align 8, !tbaa !11
  %i.j = load i32, ptr @optind, align 4, !tbaa !12 ; 12 uses
  %.not201 = icmp slt i32 %i.j, %0
  br i1 %.not201, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = sext i32 %i.j to i64                     ; 4 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %1, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11   ; 11 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = icmp eq i8 %i.n, 45
  br i1 %i.o, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8     ; 4 uses
  switch i8 %i.q, label %bb.o [
    i8 45, label %bb.h
    i8 0, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.i, label %.thread327

.thread327:                                       ; preds = %bb.h
  %i.u = zext nneg i8 %i.q to i32
  store i32 %i.u, ptr @optopt, align 4, !tbaa !12
  br label %.thread239

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.v = add nsw i32 %i.j, 1
  store i32 %i.v, ptr @optind, align 4, !tbaa !12
  br label %.thread235

bb.j:                                             ; preds = %bb.g, %bb.f
  switch i8 %.0178, label %.lr.ph274 [
    i8 43, label %bb.av
    i8 45, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.w = add nsw i32 %i.j, 1
  store i32 %i.w, ptr @optind, align 4, !tbaa !12
  store ptr %i.m, ptr @optarg, align 8, !tbaa !11
  br label %bb.av

.lr.ph274:                                        ; preds = %bb.j, %bb.n
  %indvar343 = phi i64 [ %indvar.next344, %bb.n ], [ 0, %bb.j ] ; 4 uses
  %indvar339 = phi i35 [ %indvar.next340, %bb.n ], [ 0, %bb.j ] ; 2 uses
  %indvar = phi i32 [ %indvar.next, %bb.n ], [ 0, %bb.j ] ; 2 uses
  %indvars.iv294 = phi i64 [ %indvars.iv.next295, %bb.n ], [ %i.k, %bb.j ] ; 4 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv294
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11   ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8
  %i.aa = icmp eq i8 %i.z, 45
  br i1 %i.aa, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph274
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  %.not224 = icmp eq i8 %i.ac, 0
  br i1 %.not224, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = trunc i64 %indvar343 to i32
  %i.ae = trunc nsw i64 %indvars.iv294 to i32     ; 2 uses
  store i32 %i.ae, ptr @optind, align 4, !tbaa !12
  %i.af = tail call fastcc i32 @_getopt_internal(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) ; 2 uses
  %i.ag = icmp slt i32 %i.j, %i.ae
  br i1 %i.ag, label %.lr.ph282.preheader, label %.thread235

.lr.ph282.preheader:                              ; preds = %bb.m
  %optind.promoted = load i32, ptr @optind, align 4 ; 4 uses
  %i.ah = sext i32 %optind.promoted to i64
  %i.ai = xor i32 %i.j, -1
  %i.aj = sub i32 %i.ai, %indvar
  %i.ak = add i32 %optind.promoted, %i.aj
  %6 = zext i32 %i.j to i35
  %i.al = add i35 %indvar339, %6
  %i.am = shl i35 %i.al, 3
  %i.an = add i35 %i.am, -8
  %7 = add i64 %indvar343, %i.k
  %8 = zext i32 %i.j to i64
  %9 = add i64 %indvar343, %8
  %10 = shl i64 %9, 32
  %i.ao = add i64 %10, -4294967296
  %i.ap = xor i32 %i.j, -1
  %i.aq = sub i32 %i.ap, %i.ad
  %i.ar = add i32 %optind.promoted, %i.aq         ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ar, 19
  %i.au = zext i32 %i.ak to i35
  %mul = shl nuw i35 %i.au, 3
  %n.vec = and i64 %i.at, 8589934588              ; 4 uses
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br label %.lr.ph282

.lr.ph282:                                        ; preds = %.lr.ph282.preheader, %._crit_edge278
  %indvar345 = phi i64 [ 0, %.lr.ph282.preheader ], [ %indvar.next346, %._crit_edge278 ] ; 4 uses
  %indvar341 = phi i35 [ 0, %.lr.ph282.preheader ], [ %indvar.next342, %._crit_edge278 ] ; 2 uses
  %indvars.iv307 = phi i64 [ %i.ah, %.lr.ph282.preheader ], [ %indvars.iv.next308, %._crit_edge278 ] ; 3 uses
  %indvars.iv298 = phi i64 [ %indvars.iv294, %.lr.ph282.preheader ], [ %indvars.iv.next299, %._crit_edge278 ] ; 6 uses
  %i.av = trunc i64 %indvar345 to i32
  %11 = sub i64 %indvar345, %7
  %12 = shl i64 %11, 3
  %13 = shl i64 %indvar345, 32
  %14 = sub i64 %i.ao, %13
  %15 = ashr exact i64 %14, 29
  %16 = add i64 %12, %15
  %i.aw = shl i35 %indvar341, 3
  %i.ax = sub i35 %i.an, %i.aw                    ; 2 uses
  %indvars.iv.next299 = add nsw i64 %indvars.iv298, -1 ; 7 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next299
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !11
  %i.ba = icmp slt i64 %indvars.iv298, %indvars.iv307
  br i1 %i.ba, label %.lr.ph277.preheader, label %._crit_edge278

.lr.ph277.preheader:                              ; preds = %.lr.ph282
  %i.bb = trunc i64 %indvars.iv307 to i32         ; 2 uses
  br i1 %min.iters.check, label %.lr.ph277.preheader349, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph277.preheader
  %17 = add i35 %i.ax, %mul
  %18 = icmp slt i35 %17, %i.ax
  %i.bc = add i64 %16, -1
  %diff.check = icmp ult i64 %i.bc, 31
  %or.cond = select i1 %18, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph277.preheader349, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.bd = add i64 %indvars.iv298, %n.vec
  %i.be = add i64 %indvars.iv.next299, %n.vec
  %i.bf = getelementptr [8 x i8], ptr %1, i64 %indvars.iv298
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bg = add i64 %indvars.iv.next299, %index
  %i.bh = getelementptr [8 x i8], ptr %i.bf, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !11
  %wide.load347 = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !11
  %i.bj = shl i64 %i.bg, 32
  %i.bk = ashr exact i64 %i.bj, 29
  %i.bl = getelementptr inbounds i8, ptr %1, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x ptr> %wide.load, ptr %i.bl, align 8, !tbaa !11
  store <2 x ptr> %wide.load347, ptr %i.bm, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge278, label %.lr.ph277.preheader349

.lr.ph277.preheader349:                           ; preds = %vector.scevcheck, %.lr.ph277.preheader, %middle.block
  %indvars.iv300.ph = phi i64 [ %indvars.iv298, %vector.scevcheck ], [ %indvars.iv298, %.lr.ph277.preheader ], [ %i.bd, %middle.block ] ; 3 uses
  %.0167275.in.ph = phi i64 [ %indvars.iv.next299, %vector.scevcheck ], [ %indvars.iv.next299, %.lr.ph277.preheader ], [ %i.be, %middle.block ] ; 2 uses
  %i.bo = trunc i64 %indvars.iv300.ph to i32      ; 2 uses
  %i.bp = sub i32 %i.bb, %i.bo
  %xtraiter = and i32 %i.bp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph277.prol.loopexit, label %.lr.ph277.prol

.lr.ph277.prol:                                   ; preds = %.lr.ph277.preheader349, %.lr.ph277.prol
  %indvars.iv300.prol = phi i64 [ %indvars.iv.next301.prol, %.lr.ph277.prol ], [ %indvars.iv300.ph, %.lr.ph277.preheader349 ] ; 4 uses
  %.0167275.in.prol = phi i64 [ %indvars.iv300.prol, %.lr.ph277.prol ], [ %.0167275.in.ph, %.lr.ph277.preheader349 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph277.prol ], [ 0, %.lr.ph277.preheader349 ]
  %i.bq = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv300.prol
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !11
  %i.bs = shl i64 %.0167275.in.prol, 32
  %i.bt = ashr exact i64 %i.bs, 29
  %i.bu = getelementptr inbounds i8, ptr %1, i64 %i.bt
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !11
  %indvars.iv.next301.prol = add nsw i64 %indvars.iv300.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph277.prol.loopexit, label %.lr.ph277.prol, !llvm.loop !22

.lr.ph277.prol.loopexit:                          ; preds = %.lr.ph277.prol, %.lr.ph277.preheader349
  %indvars.iv300.unr = phi i64 [ %indvars.iv300.ph, %.lr.ph277.preheader349 ], [ %indvars.iv.next301.prol, %.lr.ph277.prol ]
  %.0167275.in.unr = phi i64 [ %.0167275.in.ph, %.lr.ph277.preheader349 ], [ %indvars.iv300.prol, %.lr.ph277.prol ]
  %i.bv = sub i32 %i.av, %optind.promoted
  %i.bw = add i32 %i.bv, %i.bo
  %i.bx = icmp ugt i32 %i.bw, -4
  br i1 %i.bx, label %._crit_edge278, label %.lr.ph277

.lr.ph277:                                        ; preds = %.lr.ph277.prol.loopexit, %.lr.ph277
  %indvars.iv300 = phi i64 [ %indvars.iv.next301.3, %.lr.ph277 ], [ %indvars.iv300.unr, %.lr.ph277.prol.loopexit ] ; 6 uses
  %.0167275.in = phi i64 [ %indvars.iv.next301.2, %.lr.ph277 ], [ %.0167275.in.unr, %.lr.ph277.prol.loopexit ]
  %i.by = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv300
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !11
  %i.ca = shl i64 %.0167275.in, 32
  %i.cb = ashr exact i64 %i.ca, 29
  %i.cc = getelementptr inbounds i8, ptr %1, i64 %i.cb
  store ptr %i.bz, ptr %i.cc, align 8, !tbaa !11
  %indvars.iv.next301 = add nsw i64 %indvars.iv300, 1 ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next301
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !11
  %i.cf = shl i64 %indvars.iv300, 32
  %i.cg = ashr exact i64 %i.cf, 29
  %i.ch = getelementptr inbounds i8, ptr %1, i64 %i.cg
  store ptr %i.ce, ptr %i.ch, align 8, !tbaa !11
  %indvars.iv.next301.1 = add nsw i64 %indvars.iv300, 2 ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next301.1
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !11
  %i.ck = shl i64 %indvars.iv.next301, 32
  %i.cl = ashr exact i64 %i.ck, 29
  %i.cm = getelementptr inbounds i8, ptr %1, i64 %i.cl
  store ptr %i.cj, ptr %i.cm, align 8, !tbaa !11
  %indvars.iv.next301.2 = add nsw i64 %indvars.iv300, 3 ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next301.2
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !11
  %i.cp = shl i64 %indvars.iv.next301.1, 32
  %i.cq = ashr exact i64 %i.cp, 29
  %i.cr = getelementptr inbounds i8, ptr %1, i64 %i.cq
  store ptr %i.co, ptr %i.cr, align 8, !tbaa !11
  %indvars.iv.next301.3 = add nsw i64 %indvars.iv300, 4 ; 2 uses
  %lftr.wideiv303.3 = trunc i64 %indvars.iv.next301.3 to i32
  %exitcond304.not.3 = icmp eq i32 %lftr.wideiv303.3, %i.bb
  br i1 %exitcond304.not.3, label %._crit_edge278, label %.lr.ph277, !llvm.loop !23

._crit_edge278:                                   ; preds = %.lr.ph277.prol.loopexit, %.lr.ph277, %middle.block, %.lr.ph282
  %indvars.iv.next308 = add nsw i64 %indvars.iv307, -1 ; 3 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next308
  store ptr %i.az, ptr %i.cs, align 8, !tbaa !11
  %i.ct = icmp sgt i64 %indvars.iv.next299, %i.k
  %indvar.next342 = add i35 %indvar341, 1
  %indvar.next346 = add i64 %indvar345, 1
  br i1 %i.ct, label %.lr.ph282, label %..thread235.loopexit_crit_edge

bb.n:                                             ; preds = %.lr.ph274, %bb.l
  %indvars.iv.next295 = add nsw i64 %indvars.iv294, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next295 to i32
  %exitcond.not = icmp eq i32 %0, %lftr.wideiv
  %indvar.next = add i32 %indvar, 1
  %indvar.next340 = add i35 %indvar339, 1
  %indvar.next344 = add i64 %indvar343, 1
  br i1 %exitcond.not, label %.thread235, label %.lr.ph274

bb.o:                                             ; preds = %bb.g
  %.not203.not = icmp eq i32 %5, 0
  br i1 %.not203.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cu = tail call i32 @my_getopt(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %.thread235

bb.q:                                             ; preds = %bb.o
  %i.cv = sext i8 %i.q to i32
  store i32 %i.cv, ptr @optopt, align 4, !tbaa !12
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !8
  %.not206 = icmp eq i8 %i.cx, 0
  br i1 %.not206, label %.preheader256, label %.thread239

.preheader256:                                    ; preds = %bb.q, %bb.u
  %.0154 = phi i32 [ %.1155, %bb.u ], [ %.1176, %bb.q ] ; 4 uses
  %i.cy = add nsw i32 %.0154, 1                   ; 2 uses
  %i.cz = sext i32 %.0154 to i64
  %i.da = getelementptr inbounds i8, ptr %2, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !8   ; 3 uses
  %.not207 = icmp eq i8 %i.db, 0
  br i1 %.not207, label %.thread239, label %bb.r

bb.r:                                             ; preds = %.preheader256
  %i.dc = sext i32 %i.cy to i64
  %i.dd = getelementptr inbounds i8, ptr %2, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !8   ; 2 uses
  %i.df = icmp eq i8 %i.de, 58
  br i1 %i.df, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dg = icmp eq i8 %i.db, 87
  %i.dh = icmp eq i8 %i.de, 59
  %or.cond227 = and i1 %i.dg, %i.dh
  br i1 %or.cond227, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.di = add nsw i32 %.0154, 2                   ; 2 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds i8, ptr %2, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !8
  %i.dm = icmp eq i8 %i.dl, 58
  %i.dn = add nsw i32 %.0154, 3
  %spec.select228 = select i1 %i.dm, i32 %i.dn, i32 %i.di
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1155 = phi i32 [ %i.cy, %bb.s ], [ %spec.select228, %bb.t ]
  %i.do = icmp eq i8 %i.q, %i.db
  br i1 %i.do, label %bb.at, label %.preheader256

.thread239:                                       ; preds = %.preheader256, %.thread327, %bb.q
  %i.dp = load i8, ptr %i.p, align 1, !tbaa !8
  %.not208.not = icmp eq i8 %i.dp, 45             ; 2 uses
  %i.dq = select i1 %.not208.not, i32 2, i32 1    ; 3 uses
  %i.dr = zext nneg i32 %i.dq to i64              ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.thread239
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ %i.dr, %.thread239 ] ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !8   ; 2 uses
  switch i8 %i.dt, label %bb.w [
    i8 0, label %.critedge
    i8 61, label %.critedge
  ]

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.v

.critedge:                                        ; preds = %bb.v, %bb.v
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.dv = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.dw = load ptr, ptr %3, align 8, !tbaa !26    ; 3 uses
  %.not211261.not = icmp eq ptr %i.dw, null
  br i1 %.not211261.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.dx = sub nuw nsw i32 %i.dv, %i.dq
  %i.dy = zext nneg i32 %i.dx to i64              ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.dr
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.z
  %indvars.iv288 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next289, %bb.z ] ; 2 uses
  %i.ea = phi ptr [ %i.dw, %.lr.ph ], [ %i.eh, %bb.z ] ; 2 uses
  %.0158262 = phi i32 [ 0, %.lr.ph ], [ %.1159, %bb.z ] ; 2 uses
  %i.eb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ea) #6
  %i.ec = icmp eq i64 %i.eb, %i.dy
  br i1 %i.ec, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ed = tail call i32 @strncmp(ptr noundef nonnull %i.ea, ptr noundef nonnull %i.dz, i64 noundef %i.dy) #6
  %i.ee = icmp ne i32 %i.ed, 0                    ; 2 uses
  %i.ef = trunc nuw nsw i64 %indvars.iv288 to i32
  %spec.select230 = select i1 %i.ee, i32 %.0158262, i32 %i.ef
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1159 = phi i32 [ %.0158262, %bb.x ], [ %spec.select230, %bb.y ] ; 3 uses
  %.1 = phi i1 [ true, %bb.x ], [ %i.ee, %bb.y ]  ; 2 uses
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %indvars.iv.next289
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !26 ; 2 uses
  %.not211 = icmp ne ptr %i.eh, null
  %or.cond229 = select i1 %.not211, i1 %.1, i1 false
  br i1 %or.cond229, label %bb.x, label %.critedge6

.critedge6:                                       ; preds = %bb.z
  br i1 %.1, label %.lr.ph270, label %.thread241

.lr.ph270:                                        ; preds = %.critedge6
  %i.ei = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.dr
  %i.ej = sub nuw nsw i32 %i.dv, %i.dq
  %i.ek = zext nneg i32 %i.ej to i64
end_hunk_0
