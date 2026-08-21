loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@my_getopt:bb.a
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
  store ptr %i.ad, ptr @optarg, align 8, !tbaa !9
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
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.al = load ptr, ptr %1, align 8, !tbaa !9
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
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !9
  store ptr %i.as, ptr @optarg, align 8, !tbaa !9
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
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ax = load ptr, ptr %1, align 8, !tbaa !9
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.2, ptr noundef %i.ax, i32 noundef %i.r) #5 ; 0 uses
  %.pre = load i32, ptr @optind, align 4, !tbaa !12 ; 2 uses
  %.phi.trans.insert = sext i32 %.pre to i64
  %.phi.trans.insert149 = getelementptr inbounds [8 x i8], ptr %1, i64 %.phi.trans.insert
  %.pre150 = load ptr, ptr %.phi.trans.insert149, align 8, !tbaa !9
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
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !9
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
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !9  ; 4 uses
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
  store ptr %i.bs, ptr @optarg, align 8, !tbaa !9
  br label %.thread

.lr.ph118:                                        ; preds = %bb.aa, %bb.ae
  %indvar180 = phi i64 [ %indvar.next181, %bb.ae ], [ 0, %bb.aa ] ; 4 uses
  %indvar176 = phi i35 [ %indvar.next177, %bb.ae ], [ 0, %bb.aa ] ; 2 uses
  %indvar = phi i32 [ %indvar.next, %bb.ae ], [ 0, %bb.aa ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ae ], [ %i.bq, %bb.aa ] ; 4 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !9  ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !8
  %i.cf = icmp eq i8 %i.ce, 45
  br i1 %i.cf, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.lr.ph118
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !8
  %.not95 = icmp eq i8 %i.ch, 0
  br i1 %.not95, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ci = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.ci, ptr @optind, align 4, !tbaa !12
  %i.cj = tail call i32 @my_getopt(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2) ; 2 uses
  %optind.promoted = load i32, ptr @optind, align 4 ; 6 uses
  %i.ck = icmp slt i32 %i.k, %i.ci
  br i1 %i.ck, label %.lr.ph126.preheader, label %.loopexit

.lr.ph126.preheader:                              ; preds = %bb.ad
  %i.cl = sext i32 %optind.promoted to i64
  %i.cm = xor i32 %i.k, -1
  %i.cn = sub i32 %i.cm, %indvar
  %i.co = add i32 %optind.promoted, %i.cn
  %i.cp = zext i32 %i.k to i35
  %i.cq = add i35 %indvar176, %i.cp
  %i.cr = shl i35 %i.cq, 3
  %i.cs = add i35 %i.cr, -8
  %i.ct = add i64 %indvar180, %i.bq
  %i.cu = zext i32 %i.k to i64
  %i.cv = add i64 %indvar180, %i.cu
  %i.cw = shl i64 %i.cv, 32
  %i.cx = add i64 %i.cw, -4294967296
  %i.cy = xor i32 %i.k, -1
  %i.cz = trunc i64 %indvar180 to i32
  %i.da = sub i32 %i.cy, %i.cz
  %i.db = add i32 %optind.promoted, %i.da         ; 2 uses
  %i.dc = zext i32 %i.db to i64
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.db, 19
  %i.de = zext i32 %i.co to i35
  %mul = shl nuw i35 %i.de, 3
  %n.vec = and i64 %i.dd, 8589934588              ; 4 uses
  %cmp.n = icmp eq i64 %i.dd, %n.vec
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %._crit_edge122
  %indvar182 = phi i64 [ 0, %.lr.ph126.preheader ], [ %indvar.next183, %._crit_edge122 ] ; 5 uses
  %indvar178 = phi i35 [ 0, %.lr.ph126.preheader ], [ %indvar.next179, %._crit_edge122 ] ; 2 uses
  %indvars.iv143 = phi i64 [ %i.cl, %.lr.ph126.preheader ], [ %indvars.iv.next144, %._crit_edge122 ] ; 3 uses
  %indvars.iv134 = phi i64 [ %indvars.iv, %.lr.ph126.preheader ], [ %indvars.iv.next135, %._crit_edge122 ] ; 6 uses
  %3 = trunc i64 %indvar182 to i32
  %i.df = trunc i64 %indvar182 to i32
  %i.dg = sub i64 %indvar182, %i.ct
  %i.dh = shl i64 %i.dg, 3
  %i.di = shl i64 %indvar182, 32
  %sext186 = sub i64 %i.cx, %i.di
  %i.dj = ashr exact i64 %sext186, 29
  %i.dk = add i64 %i.dh, %i.dj
  %i.dl = shl i35 %indvar178, 3
  %i.dm = sub i35 %i.cs, %i.dl                    ; 2 uses
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, -1 ; 8 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next135
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !9
  %i.dp = icmp slt i64 %indvars.iv134, %indvars.iv143
  br i1 %i.dp, label %.lr.ph121.preheader, label %._crit_edge122

.lr.ph121.preheader:                              ; preds = %.lr.ph126
  %i.dq = trunc nsw i64 %indvars.iv143 to i32
  br i1 %min.iters.check, label %.lr.ph121.preheader187, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph121.preheader
  %i.dr = add i35 %i.dm, %mul
  %i.ds = icmp slt i35 %i.dr, %i.dm
  %i.dt = add i64 %i.dk, -1
  %diff.check = icmp ult i64 %i.dt, 31
  %or.cond = select i1 %i.ds, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph121.preheader187, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.du = add i64 %indvars.iv134, %n.vec
  %i.dv = add i64 %indvars.iv.next135, %n.vec
  %i.dw = getelementptr [8 x i8], ptr %1, i64 %indvars.iv134
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dx = add i64 %indvars.iv.next135, %index
  %i.dy = getelementptr [8 x i8], ptr %i.dw, i64 %index ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load = load <2 x ptr>, ptr %i.dy, align 8, !tbaa !9
  %wide.load184 = load <2 x ptr>, ptr %i.dz, align 8, !tbaa !9
  %i.ea = shl i64 %i.dx, 32
  %i.eb = ashr exact i64 %i.ea, 29
  %i.ec = getelementptr inbounds i8, ptr %1, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <2 x ptr> %wide.load, ptr %i.ec, align 8, !tbaa !9
  store <2 x ptr> %wide.load184, ptr %i.ed, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge122, label %.lr.ph121.preheader187

.lr.ph121.preheader187:                           ; preds = %vector.scevcheck, %.lr.ph121.preheader, %middle.block
  %indvars.iv136.ph = phi i64 [ %indvars.iv134, %vector.scevcheck ], [ %indvars.iv134, %.lr.ph121.preheader ], [ %i.du, %middle.block ] ; 3 uses
  %.0119.in.ph = phi i64 [ %indvars.iv.next135, %vector.scevcheck ], [ %indvars.iv.next135, %.lr.ph121.preheader ], [ %i.dv, %middle.block ] ; 2 uses
  %i.ef = trunc i64 %indvars.iv136.ph to i32      ; 2 uses
  %4 = add i32 %3, %i.ef
  %i.eg = sub i32 %optind.promoted, %4
  %xtraiter = and i32 %i.eg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph121.prol.loopexit, label %.lr.ph121.prol

.lr.ph121.prol:                                   ; preds = %.lr.ph121.preheader187, %.lr.ph121.prol
  %indvars.iv136.prol = phi i64 [ %indvars.iv.next137.prol, %.lr.ph121.prol ], [ %indvars.iv136.ph, %.lr.ph121.preheader187 ] ; 4 uses
  %.0119.in.prol = phi i64 [ %indvars.iv136.prol, %.lr.ph121.prol ], [ %.0119.in.ph, %.lr.ph121.preheader187 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph121.prol ], [ 0, %.lr.ph121.preheader187 ]
  %i.eh = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv136.prol
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !9
  %sext.prol = shl i64 %.0119.in.prol, 32
  %i.ej = ashr exact i64 %sext.prol, 29
  %i.ek = getelementptr inbounds i8, ptr %1, i64 %i.ej
  store ptr %i.ei, ptr %i.ek, align 8, !tbaa !9
  %indvars.iv.next137.prol = add nsw i64 %indvars.iv136.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph121.prol.loopexit, label %.lr.ph121.prol, !llvm.loop !18

.lr.ph121.prol.loopexit:                          ; preds = %.lr.ph121.prol, %.lr.ph121.preheader187
  %indvars.iv136.unr = phi i64 [ %indvars.iv136.ph, %.lr.ph121.preheader187 ], [ %indvars.iv.next137.prol, %.lr.ph121.prol ]
  %.0119.in.unr = phi i64 [ %.0119.in.ph, %.lr.ph121.preheader187 ], [ %indvars.iv136.prol, %.lr.ph121.prol ]
  %i.el = sub i32 %i.df, %optind.promoted
  %i.em = add i32 %i.el, %i.ef
  %i.en = icmp ugt i32 %i.em, -4
  br i1 %i.en, label %._crit_edge122, label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.prol.loopexit, %.lr.ph121
  %indvars.iv136 = phi i64 [ %indvars.iv.next137.3, %.lr.ph121 ], [ %indvars.iv136.unr, %.lr.ph121.prol.loopexit ] ; 6 uses
  %.0119.in = phi i64 [ %indvars.iv.next137.2, %.lr.ph121 ], [ %.0119.in.unr, %.lr.ph121.prol.loopexit ]
  %i.eo = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv136
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !9
  %sext = shl i64 %.0119.in, 32
  %i.eq = ashr exact i64 %sext, 29
  %i.er = getelementptr inbounds i8, ptr %1, i64 %i.eq
  store ptr %i.ep, ptr %i.er, align 8, !tbaa !9
  %indvars.iv.next137 = add nsw i64 %indvars.iv136, 1 ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next137
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !9
  %sext.1 = shl i64 %indvars.iv136, 32
  %i.eu = ashr exact i64 %sext.1, 29
  %i.ev = getelementptr inbounds i8, ptr %1, i64 %i.eu
  store ptr %i.et, ptr %i.ev, align 8, !tbaa !9
  %indvars.iv.next137.1 = add nsw i64 %indvars.iv136, 2 ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next137.1
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !9
  %sext.2 = shl i64 %indvars.iv.next137, 32
  %i.ey = ashr exact i64 %sext.2, 29
  %i.ez = getelementptr inbounds i8, ptr %1, i64 %i.ey
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !9
  %indvars.iv.next137.2 = add nsw i64 %indvars.iv136, 3 ; 2 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next137.2
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !9
  %sext.3 = shl i64 %indvars.iv.next137.1, 32
  %i.fc = ashr exact i64 %sext.3, 29
  %i.fd = getelementptr inbounds i8, ptr %1, i64 %i.fc
  store ptr %i.fb, ptr %i.fd, align 8, !tbaa !9
  %indvars.iv.next137.3 = add nsw i64 %indvars.iv136, 4 ; 2 uses
  %lftr.wideiv139.3 = trunc i64 %indvars.iv.next137.3 to i32
  %exitcond140.not.3 = icmp eq i32 %lftr.wideiv139.3, %i.dq
  br i1 %exitcond140.not.3, label %._crit_edge122, label %.lr.ph121, !llvm.loop !20

._crit_edge122:                                   ; preds = %.lr.ph121.prol.loopexit, %.lr.ph121, %middle.block, %.lr.ph126
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, -1 ; 3 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next144
  store ptr %i.do, ptr %i.fe, align 8, !tbaa !9
  %i.ff = icmp sgt i64 %indvars.iv.next135, %i.bq
  %indvar.next179 = add i35 %indvar178, 1
  %indvar.next183 = add i64 %indvar182, 1
  br i1 %i.ff, label %.lr.ph126, label %..loopexit_crit_edge

bb.ae:                                            ; preds = %.lr.ph118, %bb.ac
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %0, %lftr.wideiv
  %indvar.next = add i32 %indvar, 1
  %indvar.next177 = add i35 %indvar176, 1
  %indvar.next181 = add i64 %indvar180, 1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph118

..loopexit_crit_edge:                             ; preds = %._crit_edge122
  %i.fg = trunc nsw i64 %indvars.iv.next144 to i32 ; 2 uses
  %i.fh = trunc nsw i64 %indvars.iv.next135 to i32
  store i32 %i.fg, ptr @optind, align 4, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %bb.ad, %..loopexit_crit_edge
  %i.fi = phi i32 [ %optind.promoted, %bb.ad ], [ %i.fg, %..loopexit_crit_edge ], [ %i.k, %bb.ae ]
  %.173 = phi i32 [ %i.cj, %bb.ad ], [ %i.cj, %..loopexit_crit_edge ], [ -1, %bb.ae ]
  %.2 = phi i32 [ %i.ci, %bb.ad ], [ %i.fh, %..loopexit_crit_edge ], [ %0, %bb.ae ]
  %i.fj = icmp eq i32 %.2, %0
  %spec.select106 = select i1 %i.fj, i32 -1, i32 %.173
  br label %.thread

.thread171:                                       ; preds = %bb.x, %bb.y
  store i32 1, ptr @my_getopt.charind, align 4, !tbaa !12
  %i.fk = tail call i32 @my_getopt(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  %.pre152 = load i32, ptr @optind, align 4, !tbaa !12
  br label %.thread

.thread:                                          ; preds = %thread-pre-split.thread, %bb.s, %bb.j, %.loopexit, %bb.ab, %bb.aa, %bb.z, %.thread171, %thread-pre-split, %bb.t, %bb.u
  %i.fl = phi i32 [ %.pre153, %bb.t ], [ %i.bp, %bb.u ], [ %.pre153, %thread-pre-split ], [ %i.ca, %bb.z ], [ %.pre152, %.thread171 ], [ %i.fi, %.loopexit ], [ %i.cb, %bb.ab ], [ %i.k, %bb.aa ], [ %i.bh, %bb.s ], [ %i.af, %bb.j ], [ %i.ap, %thread-pre-split.thread ]
  %.3 = phi i32 [ %.072, %bb.t ], [ %.072, %bb.u ], [ %.072, %thread-pre-split ], [ -1, %bb.z ], [ %i.fk, %.thread171 ], [ %spec.select106, %.loopexit ], [ 1, %bb.ab ], [ -1, %bb.aa ], [ 63, %bb.s ], [ %i.r, %bb.j ], [ %i.r, %thread-pre-split.thread ]
  %i.fm = icmp sgt i32 %i.fl, %0
  br i1 %i.fm, label %bb.af, label %bb.ag

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
  store ptr null, ptr @optarg, align 8, !tbaa !9
  %i.j = load i32, ptr @optind, align 4, !tbaa !12 ; 12 uses
  %.not201 = icmp slt i32 %i.j, %0
  br i1 %.not201, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = sext i32 %i.j to i64                     ; 4 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %1, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9    ; 11 uses
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
  store ptr %i.m, ptr @optarg, align 8, !tbaa !9
  br label %bb.av

.lr.ph274:                                        ; preds = %bb.j, %bb.n
  %indvar343 = phi i64 [ %indvar.next344, %bb.n ], [ 0, %bb.j ] ; 4 uses
  %indvar339 = phi i35 [ %indvar.next340, %bb.n ], [ 0, %bb.j ] ; 2 uses
  %indvar = phi i32 [ %indvar.next, %bb.n ], [ 0, %bb.j ] ; 2 uses
  %indvars.iv294 = phi i64 [ %indvars.iv.next295, %bb.n ], [ %i.k, %bb.j ] ; 4 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv294
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !9    ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8
  %i.aa = icmp eq i8 %i.z, 45
  br i1 %i.aa, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph274
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  %.not224 = icmp eq i8 %i.ac, 0
  br i1 %.not224, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = trunc nsw i64 %indvars.iv294 to i32     ; 2 uses
  store i32 %i.ad, ptr @optind, align 4, !tbaa !12
  %i.ae = tail call fastcc i32 @_getopt_internal(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) ; 2 uses
  %i.af = icmp slt i32 %i.j, %i.ad
  br i1 %i.af, label %.lr.ph282.preheader, label %.thread235

.lr.ph282.preheader:                              ; preds = %bb.m
  %optind.promoted = load i32, ptr @optind, align 4 ; 5 uses
  %i.ag = sext i32 %optind.promoted to i64
  %i.ah = xor i32 %i.j, -1
  %i.ai = sub i32 %i.ah, %indvar
  %i.aj = add i32 %optind.promoted, %i.ai
  %i.ak = zext i32 %i.j to i35
  %i.al = add i35 %indvar339, %i.ak
  %i.am = shl i35 %i.al, 3
  %i.an = add i35 %i.am, -8
  %i.ao = add i64 %indvar343, %i.k
  %i.ap = zext i32 %i.j to i64
  %i.aq = add i64 %indvar343, %i.ap
  %i.ar = shl i64 %i.aq, 32
  %i.as = add i64 %i.ar, -4294967296
  %i.at = xor i32 %i.j, -1
  %i.au = trunc i64 %indvar343 to i32
  %i.av = sub i32 %i.at, %i.au
  %i.aw = add i32 %optind.promoted, %i.av         ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.aw, 19
  %i.az = zext i32 %i.aj to i35
  %mul = shl nuw i35 %i.az, 3
  %n.vec = and i64 %i.ay, 8589934588              ; 4 uses
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br label %.lr.ph282

.lr.ph282:                                        ; preds = %.lr.ph282.preheader, %._crit_edge278
  %indvar345 = phi i64 [ 0, %.lr.ph282.preheader ], [ %indvar.next346, %._crit_edge278 ] ; 5 uses
  %indvar341 = phi i35 [ 0, %.lr.ph282.preheader ], [ %indvar.next342, %._crit_edge278 ] ; 2 uses
  %indvars.iv307 = phi i64 [ %i.ag, %.lr.ph282.preheader ], [ %indvars.iv.next308, %._crit_edge278 ] ; 3 uses
  %indvars.iv298 = phi i64 [ %indvars.iv294, %.lr.ph282.preheader ], [ %indvars.iv.next299, %._crit_edge278 ] ; 6 uses
  %6 = trunc i64 %indvar345 to i32
  %i.ba = trunc i64 %indvar345 to i32
  %i.bb = sub i64 %indvar345, %i.ao
  %i.bc = shl i64 %i.bb, 3
  %i.bd = shl i64 %indvar345, 32
  %sext349 = sub i64 %i.as, %i.bd
  %i.be = ashr exact i64 %sext349, 29
  %i.bf = add i64 %i.bc, %i.be
  %i.bg = shl i35 %indvar341, 3
  %i.bh = sub i35 %i.an, %i.bg                    ; 2 uses
  %indvars.iv.next299 = add nsw i64 %indvars.iv298, -1 ; 7 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next299
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !9
  %i.bk = icmp slt i64 %indvars.iv298, %indvars.iv307
  br i1 %i.bk, label %.lr.ph277.preheader, label %._crit_edge278

.lr.ph277.preheader:                              ; preds = %.lr.ph282
  %i.bl = trunc nsw i64 %indvars.iv307 to i32
  br i1 %min.iters.check, label %.lr.ph277.preheader350, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph277.preheader
  %i.bm = add i35 %i.bh, %mul
  %i.bn = icmp slt i35 %i.bm, %i.bh
  %i.bo = add i64 %i.bf, -1
  %diff.check = icmp ult i64 %i.bo, 31
  %or.cond = select i1 %i.bn, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph277.preheader350, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.bp = add i64 %indvars.iv298, %n.vec
  %i.bq = add i64 %indvars.iv.next299, %n.vec
  %i.br = getelementptr [8 x i8], ptr %1, i64 %indvars.iv298
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bs = add i64 %indvars.iv.next299, %index
  %i.bt = getelementptr [8 x i8], ptr %i.br, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !9
  %wide.load347 = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !9
  %i.bv = shl i64 %i.bs, 32
  %i.bw = ashr exact i64 %i.bv, 29
  %i.bx = getelementptr inbounds i8, ptr %1, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <2 x ptr> %wide.load, ptr %i.bx, align 8, !tbaa !9
  store <2 x ptr> %wide.load347, ptr %i.by, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge278, label %.lr.ph277.preheader350

.lr.ph277.preheader350:                           ; preds = %vector.scevcheck, %.lr.ph277.preheader, %middle.block
  %indvars.iv300.ph = phi i64 [ %indvars.iv298, %vector.scevcheck ], [ %indvars.iv298, %.lr.ph277.preheader ], [ %i.bp, %middle.block ] ; 3 uses
  %.0167275.in.ph = phi i64 [ %indvars.iv.next299, %vector.scevcheck ], [ %indvars.iv.next299, %.lr.ph277.preheader ], [ %i.bq, %middle.block ] ; 2 uses
  %i.ca = trunc i64 %indvars.iv300.ph to i32      ; 2 uses
  %7 = add i32 %6, %i.ca
  %i.cb = sub i32 %optind.promoted, %7
  %xtraiter = and i32 %i.cb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph277.prol.loopexit, label %.lr.ph277.prol

.lr.ph277.prol:                                   ; preds = %.lr.ph277.preheader350, %.lr.ph277.prol
  %indvars.iv300.prol = phi i64 [ %indvars.iv.next301.prol, %.lr.ph277.prol ], [ %indvars.iv300.ph, %.lr.ph277.preheader350 ] ; 4 uses
  %.0167275.in.prol = phi i64 [ %indvars.iv300.prol, %.lr.ph277.prol ], [ %.0167275.in.ph, %.lr.ph277.preheader350 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph277.prol ], [ 0, %.lr.ph277.preheader350 ]
  %i.cc = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv300.prol
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !9
  %sext.prol = shl i64 %.0167275.in.prol, 32
  %i.ce = ashr exact i64 %sext.prol, 29
  %i.cf = getelementptr inbounds i8, ptr %1, i64 %i.ce
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !9
  %indvars.iv.next301.prol = add nsw i64 %indvars.iv300.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph277.prol.loopexit, label %.lr.ph277.prol, !llvm.loop !22

.lr.ph277.prol.loopexit:                          ; preds = %.lr.ph277.prol, %.lr.ph277.preheader350
  %indvars.iv300.unr = phi i64 [ %indvars.iv300.ph, %.lr.ph277.preheader350 ], [ %indvars.iv.next301.prol, %.lr.ph277.prol ]
  %.0167275.in.unr = phi i64 [ %.0167275.in.ph, %.lr.ph277.preheader350 ], [ %indvars.iv300.prol, %.lr.ph277.prol ]
  %i.cg = sub i32 %i.ba, %optind.promoted
  %i.ch = add i32 %i.cg, %i.ca
  %i.ci = icmp ugt i32 %i.ch, -4
  br i1 %i.ci, label %._crit_edge278, label %.lr.ph277

.lr.ph277:                                        ; preds = %.lr.ph277.prol.loopexit, %.lr.ph277
  %indvars.iv300 = phi i64 [ %indvars.iv.next301.3, %.lr.ph277 ], [ %indvars.iv300.unr, %.lr.ph277.prol.loopexit ] ; 6 uses
  %.0167275.in = phi i64 [ %indvars.iv.next301.2, %.lr.ph277 ], [ %.0167275.in.unr, %.lr.ph277.prol.loopexit ]
  %i.cj = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv300
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !9
  %sext = shl i64 %.0167275.in, 32
  %i.cl = ashr exact i64 %sext, 29
  %i.cm = getelementptr inbounds i8, ptr %1, i64 %i.cl
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !9
  %indvars.iv.next301 = add nsw i64 %indvars.iv300, 1 ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next301
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !9
  %sext.1 = shl i64 %indvars.iv300, 32
  %i.cp = ashr exact i64 %sext.1, 29
  %i.cq = getelementptr inbounds i8, ptr %1, i64 %i.cp
  store ptr %i.co, ptr %i.cq, align 8, !tbaa !9
  %indvars.iv.next301.1 = add nsw i64 %indvars.iv300, 2 ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next301.1
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !9
  %sext.2 = shl i64 %indvars.iv.next301, 32
  %i.ct = ashr exact i64 %sext.2, 29
  %i.cu = getelementptr inbounds i8, ptr %1, i64 %i.ct
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !9
  %indvars.iv.next301.2 = add nsw i64 %indvars.iv300, 3 ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next301.2
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !9
  %sext.3 = shl i64 %indvars.iv.next301.1, 32
  %i.cx = ashr exact i64 %sext.3, 29
  %i.cy = getelementptr inbounds i8, ptr %1, i64 %i.cx
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !9
  %indvars.iv.next301.3 = add nsw i64 %indvars.iv300, 4 ; 2 uses
  %lftr.wideiv303.3 = trunc i64 %indvars.iv.next301.3 to i32
  %exitcond304.not.3 = icmp eq i32 %lftr.wideiv303.3, %i.bl
  br i1 %exitcond304.not.3, label %._crit_edge278, label %.lr.ph277, !llvm.loop !23

._crit_edge278:                                   ; preds = %.lr.ph277.prol.loopexit, %.lr.ph277, %middle.block, %.lr.ph282
  %indvars.iv.next308 = add nsw i64 %indvars.iv307, -1 ; 3 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next308
  store ptr %i.bj, ptr %i.cz, align 8, !tbaa !9
  %i.da = icmp sgt i64 %indvars.iv.next299, %i.k
  %indvar.next342 = add i35 %indvar341, 1
  %indvar.next346 = add i64 %indvar345, 1
  br i1 %i.da, label %.lr.ph282, label %..thread235.loopexit_crit_edge

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
  %i.db = tail call i32 @my_getopt(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %.thread235

bb.q:                                             ; preds = %bb.o
  %i.dc = sext i8 %i.q to i32
  store i32 %i.dc, ptr @optopt, align 4, !tbaa !12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !8
  %.not206 = icmp eq i8 %i.de, 0
  br i1 %.not206, label %.preheader256, label %.thread239

.preheader256:                                    ; preds = %bb.q, %bb.u
  %.0154 = phi i32 [ %.1155, %bb.u ], [ %.1176, %bb.q ] ; 4 uses
  %i.df = add nsw i32 %.0154, 1                   ; 2 uses
  %i.dg = sext i32 %.0154 to i64
  %i.dh = getelementptr inbounds i8, ptr %2, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !8   ; 3 uses
  %.not207 = icmp eq i8 %i.di, 0
  br i1 %.not207, label %.thread239, label %bb.r

bb.r:                                             ; preds = %.preheader256
  %i.dj = sext i32 %i.df to i64
  %i.dk = getelementptr inbounds i8, ptr %2, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !8   ; 2 uses
  %i.dm = icmp eq i8 %i.dl, 58
  br i1 %i.dm, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dn = icmp eq i8 %i.di, 87
  %i.do = icmp eq i8 %i.dl, 59
  %or.cond227 = and i1 %i.dn, %i.do
  br i1 %or.cond227, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dp = add nsw i32 %.0154, 2                   ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds i8, ptr %2, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !8
  %i.dt = icmp eq i8 %i.ds, 58
  %i.du = add nsw i32 %.0154, 3
  %spec.select228 = select i1 %i.dt, i32 %i.du, i32 %i.dp
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1155 = phi i32 [ %i.df, %bb.s ], [ %spec.select228, %bb.t ]
  %i.dv = icmp eq i8 %i.q, %i.di
  br i1 %i.dv, label %bb.at, label %.preheader256

.thread239:                                       ; preds = %.preheader256, %.thread327, %bb.q
  %i.dw = load i8, ptr %i.p, align 1, !tbaa !8
  %.not208.not = icmp eq i8 %i.dw, 45             ; 2 uses
  %i.dx = select i1 %.not208.not, i32 2, i32 1    ; 3 uses
  %i.dy = zext nneg i32 %i.dx to i64              ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.thread239
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ %i.dy, %.thread239 ] ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !8   ; 2 uses
  switch i8 %i.ea, label %bb.w [
    i8 0, label %.critedge
    i8 61, label %.critedge
  ]

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.v

.critedge:                                        ; preds = %bb.v, %bb.v
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.ec = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ed = load ptr, ptr %3, align 8, !tbaa !24    ; 3 uses
  %.not211261.not = icmp eq ptr %i.ed, null
  br i1 %.not211261.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.ee = sub nsw i32 %i.ec, %i.dx
  %i.ef = sext i32 %i.ee to i64                   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.dy
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.z
  %indvars.iv288 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next289, %bb.z ] ; 2 uses
  %i.eh = phi ptr [ %i.ed, %.lr.ph ], [ %i.eo, %bb.z ] ; 2 uses
  %.0158262 = phi i32 [ 0, %.lr.ph ], [ %.1159, %bb.z ] ; 2 uses
  %i.ei = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eh) #6
  %i.ej = icmp eq i64 %i.ei, %i.ef
  br i1 %i.ej, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ek = tail call i32 @strncmp(ptr noundef nonnull %i.eh, ptr noundef nonnull %i.eg, i64 noundef %i.ef) #6
  %i.el = icmp ne i32 %i.ek, 0                    ; 2 uses
  %i.em = trunc nuw nsw i64 %indvars.iv288 to i32
  %spec.select230 = select i1 %i.el, i32 %.0158262, i32 %i.em
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1159 = phi i32 [ %.0158262, %bb.x ], [ %spec.select230, %bb.y ] ; 3 uses
  %.1 = phi i1 [ true, %bb.x ], [ %i.el, %bb.y ]  ; 2 uses
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %indvars.iv.next289
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !24 ; 2 uses
  %.not211 = icmp ne ptr %i.eo, null
  %or.cond229 = select i1 %.not211, i1 %.1, i1 false
  br i1 %or.cond229, label %bb.x, label %.critedge6

.critedge6:                                       ; preds = %bb.z
  br i1 %.1, label %.lr.ph270, label %.thread241

.lr.ph270:                                        ; preds = %.critedge6
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.dy
  %i.eq = sub nsw i32 %i.ec, %i.dx
  %i.er = sext i32 %i.eq to i64
  br label %bb.aa

end_hunk_0
