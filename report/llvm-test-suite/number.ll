inline.NumInlined: 80
inline.NumDeleted: 2
begin_hunk_0_@bc_multiply:bb.a
  %.01323.i.ph = phi ptr [ %i.y, %iter.check ], [ %i.y, %vector.memcheck ], [ %i.de, %vec.epilog.iter.check ], [ %i.dl, %vec.epilog.middle.block ]
  %.11522.i.ph = phi i32 [ %i.cy, %iter.check ], [ %i.cy, %vector.memcheck ], [ %i.dg, %vec.epilog.iter.check ], [ %i.dn, %vec.epilog.middle.block ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %.124.i = phi ptr [ %i.dq, %.lr.ph25.i ], [ %.124.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %.01323.i = phi ptr [ %i.ds, %.lr.ph25.i ], [ %.01323.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %.11522.i = phi i32 [ %i.dp, %.lr.ph25.i ], [ %.11522.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %i.dp = add nsw i32 %.11522.i, -1
  %i.dq = getelementptr inbounds nuw i8, ptr %.124.i, i64 1
  %i.dr = load i8, ptr %.124.i, align 1, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %.01323.i, i64 1
  store i8 %i.dr, ptr %.01323.i, align 1, !tbaa !15
  %i.dt = icmp samesign ugt i32 %.11522.i, 1
  br i1 %i.dt, label %.lr.ph25.i, label %_rm_leading_zeros.exit, !llvm.loop !53

_rm_leading_zeros.exit:                           ; preds = %.lr.ph25.i, %middle.block, %vec.epilog.middle.block, %.critedge.i
  %i.du = load ptr, ptr @_zero_, align 8, !tbaa !8
  %i.dv = icmp eq ptr %i.t, %i.du
  br i1 %i.dv, label %is_zero.exit.thread, label %bb.g

bb.g:                                             ; preds = %_rm_leading_zeros.exit
  %i.dw = load i32, ptr %i.v, align 4, !tbaa !13
  %i.dx = load i32, ptr %i.w, align 4, !tbaa !14
  %i.dy = add nsw i32 %i.dx, %i.dw                ; 3 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph.i130, label %is_zero.exit

.lr.ph.i130:                                      ; preds = %bb.g, %bb.h
  %.012.i = phi ptr [ %i.ec, %bb.h ], [ %i.y, %bb.g ] ; 2 uses
  %.0811.i = phi i32 [ %i.ed, %bb.h ], [ %i.dy, %bb.g ] ; 2 uses
  %i.ea = load i8, ptr %.012.i, align 1, !tbaa !15
  %i.eb = icmp eq i8 %i.ea, 0
  br i1 %i.eb, label %bb.h, label %is_zero.exit.thread134

bb.h:                                             ; preds = %.lr.ph.i130
  %i.ec = getelementptr inbounds nuw i8, ptr %.012.i, i64 1
  %i.ed = add nsw i32 %.0811.i, -1
  %i.ee = icmp sgt i32 %.0811.i, 1
  br i1 %i.ee, label %.lr.ph.i130, label %is_zero.exit.thread, !llvm.loop !33

is_zero.exit:                                     ; preds = %bb.g
  %.not.i.not = icmp eq i32 %i.dy, 0
  br i1 %.not.i.not, label %is_zero.exit.thread, label %is_zero.exit.thread134

is_zero.exit.thread:                              ; preds = %bb.h, %_rm_leading_zeros.exit, %is_zero.exit
  store i32 0, ptr %i.t, align 4, !tbaa !12
  br label %is_zero.exit.thread134

is_zero.exit.thread134:                           ; preds = %.lr.ph.i130, %is_zero.exit.thread, %is_zero.exit
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @bc_divide(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(address) %1, ptr noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @_zero_, align 8, !tbaa !8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %is_zero.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !14   ; 3 uses
  %i.g = add nsw i32 %i.f, %i.d                   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader.i, label %is_zero.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %.012.i = phi ptr [ %i.l, %bb.c ], [ %i.i, %.lr.ph.preheader.i ] ; 2 uses
  %.0811.i = phi i32 [ %i.m, %bb.c ], [ %i.g, %.lr.ph.preheader.i ] ; 2 uses
  %i.j = load i8, ptr %.012.i, align 1, !tbaa !15
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %is_zero.exit.thread276

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i, i64 1
  %i.m = add nsw i32 %.0811.i, -1
  %i.n = icmp sgt i32 %.0811.i, 1
  br i1 %i.n, label %.lr.ph.i, label %is_zero.exit.thread, !llvm.loop !33

is_zero.exit:                                     ; preds = %bb.b
  %.not.i.not = icmp eq i32 %i.g, 0
  br i1 %.not.i.not, label %is_zero.exit.thread, label %is_zero.exit.thread276

is_zero.exit.thread276:                           ; preds = %.lr.ph.i, %is_zero.exit
  %i.o = icmp eq i32 %i.f, 0
  br i1 %i.o, label %bb.d, label %.thread380

.thread380:                                       ; preds = %is_zero.exit.thread276
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.preheader

bb.d:                                             ; preds = %is_zero.exit.thread276
  %i.q = icmp eq i32 %i.d, 1
  br i1 %i.q, label %bb.e, label %.thread378

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i8, ptr %i.r, align 4, !tbaa !15
  %i.t = icmp eq i8 %i.s, 1
  br i1 %i.t, label %bb.f, label %.thread378

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !13   ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = sext i32 %3 to i64                       ; 2 uses
  %i.y = add nsw i64 %i.x, 1040
  %i.z = add nsw i64 %i.y, %i.w
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #21 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 %i.v, ptr %i.ab, align 4, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %3, ptr %i.ac, align 4, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 1, ptr %i.ad, align 4, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  store i8 0, ptr %i.ae, align 4, !tbaa !15
  %i.af = load i32, ptr %0, align 4, !tbaa !12
  %i.ag = load i32, ptr %1, align 4, !tbaa !12
  %i.ah = icmp ne i32 %i.af, %i.ag
  %i.ai = zext i1 %i.ah to i32
  store i32 %i.ai, ptr %i.aa, align 4, !tbaa !12
  %i.aj = load i32, ptr %i.u, align 4, !tbaa !13  ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 %i.ak
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.al, i8 0, i64 %i.x, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !14
  %. = tail call i32 @llvm.smin.i32(i32 %i.ao, i32 %3)
  %i.ap = add nsw i32 %., %i.aj
  %i.aq = sext i32 %i.ap to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr nonnull align 4 %i.am, i64 %i.aq, i1 false)
  %i.ar = load ptr, ptr %2, align 8, !tbaa !8     ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 12 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !10
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.at, align 4, !tbaa !10
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.ar) #20
  br label %bb.i

.thread378:                                       ; preds = %bb.d, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.critedge

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  store ptr %i.aa, ptr %2, align 8, !tbaa !8
  %.pre = load i32, ptr %i.e, align 4, !tbaa !14  ; 2 uses
  %.pre353 = load i32, ptr %i.c, align 4, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not222313 = icmp eq i32 %.pre, 0
  br i1 %.not222313, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread380, %bb.i
  %i.az = phi ptr [ %i.p, %.thread380 ], [ %i.ay, %bb.i ] ; 2 uses
  %i.ba = phi i32 [ %i.f, %.thread380 ], [ %.pre, %bb.i ] ; 2 uses
  %i.bb = phi i32 [ %i.d, %.thread380 ], [ %.pre353, %bb.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  %i.bf = zext i32 %i.ba to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.0207315.pn = phi ptr [ %.0207315, %bb.j ], [ %i.bg, %.lr.ph.preheader ]
  %.0197314 = phi i32 [ %i.bj, %bb.j ], [ %i.ba, %.lr.ph.preheader ] ; 2 uses
  %.0207315 = getelementptr inbounds i8, ptr %.0207315.pn, i64 -1 ; 2 uses
  %i.bh = load i8, ptr %.0207315, align 1, !tbaa !15
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph
  %i.bj = add i32 %.0197314, -1                   ; 2 uses
  %.not222 = icmp eq i32 %i.bj, 0
  br i1 %.not222, label %.critedge, label %.lr.ph, !llvm.loop !54

.critedge:                                        ; preds = %.lr.ph, %bb.j, %.thread378, %bb.i
  %i.bk = phi ptr [ %i.ay, %bb.i ], [ %i.ax, %.thread378 ], [ %i.az, %bb.j ], [ %i.az, %.lr.ph ]
  %.0197.lcssa = phi i32 [ 0, %bb.i ], [ 0, %.thread378 ], [ %.0197314, %.lr.ph ], [ 0, %bb.j ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13 ; 2 uses
  %i.bn = add i32 %i.bm, %.0197.lcssa             ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !14 ; 2 uses
  %i.bq = sub i32 %i.bp, %.0197.lcssa
  %4 = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %3)
  %.0195.a = sub nsw i32 %3, %4                   ; 2 uses
  %i.br = add nsw i32 %i.bp, %i.bm
  %i.bs = add i32 %i.br, %.0195.a                 ; 5 uses
  %i.bt = add i32 %i.bs, 2
  %i.bu = zext i32 %i.bt to i64
  %i.bv = tail call noalias ptr @malloc(i64 noundef %i.bu) #21 ; 9 uses
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !13
  %i.bx = load i32, ptr %i.bo, align 4, !tbaa !14
  %i.by = add nsw i32 %i.bx, %i.bw                ; 2 uses
  %i.bz = add nuw i32 %.0195.a, 2
  %i.ca = add i32 %i.bz, %i.by
  %i.cb = zext i32 %i.ca to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bv, i8 0, i64 %i.cb, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = sext i32 %i.by to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull align 4 %i.cd, i64 %i.ce, i1 false)
  %i.cf = load i32, ptr %i.c, align 4, !tbaa !13
  %i.cg = add i32 %i.cf, %.0197.lcssa             ; 4 uses
  %i.ch = add i32 %i.cg, 1                        ; 2 uses
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.ci) #21 ; 6 uses
  %i.ck = zext i32 %i.cg to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr nonnull align 4 %i.bk, i64 %i.ck, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  store i8 0, ptr %i.cl, align 1, !tbaa !15
  %i.cm = load i8, ptr %i.cj, align 1, !tbaa !15
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %.lr.ph320, label %._crit_edge

.lr.ph320:                                        ; preds = %.critedge, %.lr.ph320
  %.0198319 = phi i32 [ %i.cp, %.lr.ph320 ], [ %i.cg, %.critedge ] ; 3 uses
  %.1208318 = phi ptr [ %i.co, %.lr.ph320 ], [ %i.cj, %.critedge ]
  %i.co = getelementptr inbounds nuw i8, ptr %.1208318, i64 1 ; 3 uses
  %i.cp = add i32 %.0198319, -1                   ; 2 uses
  %i.cq = load i8, ptr %i.co, align 1, !tbaa !15
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %.lr.ph320, label %._crit_edge.loopexit, !llvm.loop !55

._crit_edge.loopexit:                             ; preds = %.lr.ph320
  %.pre360 = zext i32 %.0198319 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.critedge
  %.pre-phi361 = phi i64 [ %.pre360, %._crit_edge.loopexit ], [ %i.ci, %.critedge ]
  %.pre-phi = phi i32 [ %.0198319, %._crit_edge.loopexit ], [ %i.ch, %.critedge ] ; 5 uses
  %.1208.lcssa = phi ptr [ %i.co, %._crit_edge.loopexit ], [ %i.cj, %.critedge ] ; 8 uses
  %.0198.lcssa = phi i32 [ %i.cp, %._crit_edge.loopexit ], [ %i.cg, %.critedge ] ; 22 uses
  %i.cs = add i32 %i.bn, %3                       ; 2 uses
  %.not224 = icmp ugt i32 %.0198.lcssa, %i.cs     ; 2 uses
  %i.ct = icmp ugt i32 %.0198.lcssa, %i.bn        ; 2 uses
  %or.cond = or i1 %.not224, %i.ct
  %i.cu = sub nuw i32 %i.bn, %.0198.lcssa
  %i.cv = select i1 %or.cond, i32 0, i32 %i.cu
  %.0196.in = add i32 %3, 1
  %.0196 = add i32 %.0196.in, %i.cv               ; 2 uses
  %i.cw = sub i32 %.0196, %3                      ; 3 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = sext i32 %3 to i64
  %i.cz = add nsw i64 %i.cy, 1040
  %i.da = add nsw i64 %i.cz, %i.cx
  %i.db = tail call noalias ptr @malloc(i64 noundef %i.da) #21 ; 11 uses
  %i.dc = ptrtoaddr ptr %i.db to i64
  store i32 0, ptr %i.db, align 4, !tbaa !12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 3 uses
  store i32 %i.cw, ptr %i.dd, align 4, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 3 uses
  store i32 %3, ptr %i.de, align 4, !tbaa !14
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 1, ptr %i.df, align 4, !tbaa !10
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 13 uses
  store i8 0, ptr %i.dg, align 4, !tbaa !15
  %i.dh = zext i32 %.0196 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dg, i8 0, i64 %i.dh, i1 false)
  %i.di = tail call noalias ptr @malloc(i64 noundef %.pre-phi361) #21 ; 4 uses
  br i1 %.not224, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.dj = load i8, ptr %.1208.lcssa, align 1, !tbaa !15
  %i.dk = sext i8 %i.dj to i16
  %.rhs.trunc = add nsw i16 %i.dk, 1
  %i.dl = sdiv i16 10, %.rhs.trunc                ; 4 uses
  %.sext = sext i16 %i.dl to i32                  ; 6 uses
  %.not225 = icmp eq i16 %i.dl, 1
  br i1 %.not225, label %_one_mult.exit245, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dm = add i32 %i.bs, 1                        ; 3 uses
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %cond = icmp eq i16 %i.dl, 0
  br i1 %cond, label %_one_mult.exit.thread, label %bb.m

_one_mult.exit.thread:                            ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bv, i8 0, i64 %i.dn, i1 false)
  %i.do = sext i32 %.0198.lcssa to i64
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.dp = icmp ult i32 %i.bs, 2147483647
  br i1 %i.dp, label %.lr.ph.preheader.i230, label %_one_mult.exit

.lr.ph.preheader.i230:                            ; preds = %bb.m
  %i.dq = getelementptr inbounds i8, ptr %i.bv, i64 %i.dn ; 3 uses
  %.025.i = getelementptr inbounds i8, ptr %i.dq, i64 -1 ; 2 uses
  %i.dr = icmp eq i32 %i.bs, 0
  br i1 %i.dr, label %.lr.ph.i231.epil.preheader, label %.lr.ph.preheader.i230.new

.lr.ph.preheader.i230.new:                        ; preds = %.lr.ph.preheader.i230
  %unroll_iter = and i32 %i.dm, -2
  br label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %.lr.ph.i231, %.lr.ph.preheader.i230.new
  %.029.i = phi ptr [ %.025.i, %.lr.ph.preheader.i230.new ], [ %.0.i.1, %.lr.ph.i231 ] ; 3 uses
  %.pn28.i = phi ptr [ %i.dq, %.lr.ph.preheader.i230.new ], [ %.020.i.1, %.lr.ph.i231 ] ; 2 uses
  %.02226.i = phi i32 [ 0, %.lr.ph.preheader.i230.new ], [ %i.ef, %.lr.ph.i231 ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.i230.new ], [ %niter.next.1, %.lr.ph.i231 ]
  %.020.i = getelementptr inbounds i8, ptr %.pn28.i, i64 -1
  %i.ds = load i8, ptr %.020.i, align 1, !tbaa !15
  %i.dt = sext i8 %i.ds to i32
  %i.du = mul nsw i32 %i.dt, %.sext
  %i.dv = add nsw i32 %i.du, %.02226.i            ; 2 uses
  %i.dw = srem i32 %i.dv, 10
  %i.dx = trunc nsw i32 %i.dw to i8
  store i8 %i.dx, ptr %.029.i, align 1, !tbaa !15
  %i.dy = sdiv i32 %i.dv, 10
  %.0.i = getelementptr inbounds i8, ptr %.029.i, i64 -1
  %.020.i.1 = getelementptr inbounds i8, ptr %.pn28.i, i64 -2 ; 3 uses
  %i.dz = load i8, ptr %.020.i.1, align 1, !tbaa !15
  %i.ea = sext i8 %i.dz to i32
  %i.eb = mul nsw i32 %i.ea, %.sext
  %i.ec = add nsw i32 %i.eb, %i.dy                ; 3 uses
  %i.ed = srem i32 %i.ec, 10
  %i.ee = trunc nsw i32 %i.ed to i8
  store i8 %i.ee, ptr %.0.i, align 1, !tbaa !15
  %i.ef = sdiv i32 %i.ec, 10                      ; 3 uses
  %.0.i.1 = getelementptr inbounds i8, ptr %.029.i, i64 -2 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i231, !llvm.loop !56

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i231
  %i.eg = and i32 %i.bs, 1
  %lcmp.mod.not.not = icmp eq i32 %i.eg, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i231.epil.preheader, label %._crit_edge.i

.lr.ph.i231.epil.preheader:                       ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.preheader.i230
  %.029.i.epil.init = phi ptr [ %.025.i, %.lr.ph.preheader.i230 ], [ %.0.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.pn28.i.epil.init = phi ptr [ %i.dq, %.lr.ph.preheader.i230 ], [ %.020.i.1, %._crit_edge.i.unr-lcssa ]
  %.02226.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i230 ], [ %i.ef, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod435 = trunc i32 %i.dm to i1
  tail call void @llvm.assume(i1 %lcmp.mod435)
  %.020.i.epil = getelementptr inbounds i8, ptr %.pn28.i.epil.init, i64 -1
  %i.eh = load i8, ptr %.020.i.epil, align 1, !tbaa !15
  %i.ei = sext i8 %i.eh to i32
  %i.ej = mul nsw i32 %i.ei, %.sext
  %i.ek = add nsw i32 %i.ej, %.02226.i.epil.init  ; 3 uses
  %i.el = srem i32 %i.ek, 10
  %i.em = trunc nsw i32 %i.el to i8
  store i8 %i.em, ptr %.029.i.epil.init, align 1, !tbaa !15
  %i.en = sdiv i32 %i.ek, 10
  %.0.i.epil = getelementptr inbounds i8, ptr %.029.i.epil.init, i64 -1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i231.epil.preheader
  %.lcssa429 = phi i32 [ %i.ec, %._crit_edge.i.unr-lcssa ], [ %i.ek, %.lr.ph.i231.epil.preheader ]
  %.lcssa428 = phi i32 [ %i.ef, %._crit_edge.i.unr-lcssa ], [ %i.en, %.lr.ph.i231.epil.preheader ]
  %.0.i.lcssa = phi ptr [ %.0.i.1, %._crit_edge.i.unr-lcssa ], [ %.0.i.epil, %.lr.ph.i231.epil.preheader ]
  %.off.i = add nsw i32 %.lcssa429, 9
  %.not.i232 = icmp ult i32 %.off.i, 19
  br i1 %.not.i232, label %_one_mult.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %i.eo = trunc i32 %.lcssa428 to i8
  store i8 %i.eo, ptr %.0.i.lcssa, align 1, !tbaa !15
  br label %_one_mult.exit

_one_mult.exit:                                   ; preds = %bb.m, %._crit_edge.i, %bb.n
  %i.ep = sext i32 %.0198.lcssa to i64            ; 2 uses
  switch i16 %i.dl, label %bb.p [
    i16 0, label %bb.o
    i16 1, label %_one_mult.exit245
  ]

bb.o:                                             ; preds = %_one_mult.exit.thread, %_one_mult.exit
  %i.eq = phi i64 [ %i.do, %_one_mult.exit.thread ], [ %i.ep, %_one_mult.exit ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.1208.lcssa, i8 0, i64 %i.eq, i1 false)
  br label %_one_mult.exit245

bb.p:                                             ; preds = %_one_mult.exit
  %i.er = icmp sgt i32 %.0198.lcssa, 0
  br i1 %i.er, label %.lr.ph.preheader.i233, label %_one_mult.exit245

.lr.ph.preheader.i233:                            ; preds = %bb.p
  %i.es = getelementptr inbounds nuw i8, ptr %.1208.lcssa, i64 %i.ep ; 3 uses
  %.025.i234 = getelementptr inbounds i8, ptr %i.es, i64 -1 ; 2 uses
  %xtraiter436 = and i32 %.0198.lcssa, 1
  %i.et = icmp eq i32 %.0198.lcssa, 1
  br i1 %i.et, label %.lr.ph.i235.epil.preheader, label %.lr.ph.preheader.i233.new

.lr.ph.preheader.i233.new:                        ; preds = %.lr.ph.preheader.i233
  %unroll_iter442 = and i32 %.0198.lcssa, 2147483646
  br label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %.lr.ph.i235, %.lr.ph.preheader.i233.new
  %.029.i236 = phi ptr [ %.025.i234, %.lr.ph.preheader.i233.new ], [ %.0.i241.1, %.lr.ph.i235 ] ; 3 uses
  %.pn28.i237 = phi ptr [ %i.es, %.lr.ph.preheader.i233.new ], [ %.020.i240.1, %.lr.ph.i235 ] ; 2 uses
  %.02226.i239 = phi i32 [ 0, %.lr.ph.preheader.i233.new ], [ %i.fh, %.lr.ph.i235 ]
  %niter443 = phi i32 [ 0, %.lr.ph.preheader.i233.new ], [ %niter443.next.1, %.lr.ph.i235 ]
  %.020.i240 = getelementptr inbounds i8, ptr %.pn28.i237, i64 -1
  %i.eu = load i8, ptr %.020.i240, align 1, !tbaa !15
end_hunk_0
