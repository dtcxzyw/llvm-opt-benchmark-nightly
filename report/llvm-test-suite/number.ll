inline.NumInlined: 80
inline.NumDeleted: 2
begin_hunk_0_@bc_divide:bb.a
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
  %i.br = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %3)
  %.0195 = sub nsw i32 %3, %i.br                  ; 2 uses
  %i.bs = add nsw i32 %i.bp, %i.bm
  %i.bt = add i32 %i.bs, %.0195                   ; 5 uses
  %i.bu = add i32 %i.bt, 2
  %i.bv = zext i32 %i.bu to i64
  %i.bw = tail call noalias ptr @malloc(i64 noundef %i.bv) #21 ; 9 uses
  %i.bx = load i32, ptr %i.bl, align 4, !tbaa !13
  %i.by = load i32, ptr %i.bo, align 4, !tbaa !14
  %i.bz = add nsw i32 %i.by, %i.bx                ; 2 uses
  %i.ca = add nuw i32 %.0195, 2
  %i.cb = add i32 %i.ca, %i.bz
  %i.cc = zext i32 %i.cb to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bw, i8 0, i64 %i.cc, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = sext i32 %i.bz to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr nonnull align 4 %i.ce, i64 %i.cf, i1 false)
  %i.cg = load i32, ptr %i.c, align 4, !tbaa !13
  %i.ch = add i32 %i.cg, %.0197.lcssa             ; 4 uses
  %i.ci = add i32 %i.ch, 1                        ; 2 uses
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = tail call noalias ptr @malloc(i64 noundef %i.cj) #21 ; 6 uses
  %i.cl = zext i32 %i.ch to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr nonnull align 4 %i.bk, i64 %i.cl, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl
  store i8 0, ptr %i.cm, align 1, !tbaa !15
  %i.cn = load i8, ptr %i.ck, align 1, !tbaa !15
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %.lr.ph320, label %._crit_edge

.lr.ph320:                                        ; preds = %.critedge, %.lr.ph320
  %.0198319 = phi i32 [ %i.cq, %.lr.ph320 ], [ %i.ch, %.critedge ] ; 3 uses
  %.1208318 = phi ptr [ %i.cp, %.lr.ph320 ], [ %i.ck, %.critedge ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.1208318, i64 1 ; 3 uses
  %i.cq = add i32 %.0198319, -1                   ; 2 uses
  %i.cr = load i8, ptr %i.cp, align 1, !tbaa !15
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %.lr.ph320, label %._crit_edge.loopexit, !llvm.loop !55

._crit_edge.loopexit:                             ; preds = %.lr.ph320
  %.pre360 = zext i32 %.0198319 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.critedge
  %.pre-phi361 = phi i64 [ %.pre360, %._crit_edge.loopexit ], [ %i.cj, %.critedge ]
  %.pre-phi = phi i32 [ %.0198319, %._crit_edge.loopexit ], [ %i.ci, %.critedge ] ; 5 uses
  %.1208.lcssa = phi ptr [ %i.cp, %._crit_edge.loopexit ], [ %i.ck, %.critedge ] ; 8 uses
  %.0198.lcssa = phi i32 [ %i.cq, %._crit_edge.loopexit ], [ %i.ch, %.critedge ] ; 22 uses
  %i.ct = add i32 %i.bn, %3                       ; 2 uses
  %.not224 = icmp ugt i32 %.0198.lcssa, %i.ct     ; 2 uses
  %i.cu = icmp ugt i32 %.0198.lcssa, %i.bn        ; 2 uses
  %or.cond = or i1 %.not224, %i.cu
  %i.cv = sub nuw i32 %i.bn, %.0198.lcssa
  %i.cw = select i1 %or.cond, i32 0, i32 %i.cv
  %.0196.in = add i32 %3, 1
  %.0196 = add i32 %.0196.in, %i.cw               ; 2 uses
  %i.cx = sub i32 %.0196, %3                      ; 3 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = sext i32 %3 to i64
  %i.da = add nsw i64 %i.cz, 1040
  %i.db = add nsw i64 %i.da, %i.cy
  %i.dc = tail call noalias ptr @malloc(i64 noundef %i.db) #21 ; 11 uses
  %i.dd = ptrtoaddr ptr %i.dc to i64
  store i32 0, ptr %i.dc, align 4, !tbaa !12
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 4 ; 3 uses
  store i32 %i.cx, ptr %i.de, align 4, !tbaa !13
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 3 uses
  store i32 %3, ptr %i.df, align 4, !tbaa !14
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 1, ptr %i.dg, align 4, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 13 uses
  store i8 0, ptr %i.dh, align 4, !tbaa !15
  %i.di = zext i32 %.0196 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dh, i8 0, i64 %i.di, i1 false)
  %i.dj = tail call noalias ptr @malloc(i64 noundef %.pre-phi361) #21 ; 4 uses
  br i1 %.not224, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.dk = load i8, ptr %.1208.lcssa, align 1, !tbaa !15
  %i.dl = sext i8 %i.dk to i16
  %.rhs.trunc = add nsw i16 %i.dl, 1
  %i.dm = sdiv i16 10, %.rhs.trunc                ; 4 uses
  %.sext = sext i16 %i.dm to i32                  ; 6 uses
  %.not225 = icmp eq i16 %i.dm, 1
  br i1 %.not225, label %_one_mult.exit245, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dn = add i32 %i.bt, 1                        ; 3 uses
  %i.do = sext i32 %i.dn to i64                   ; 2 uses
  %cond = icmp eq i16 %i.dm, 0
  br i1 %cond, label %_one_mult.exit.thread, label %bb.m

_one_mult.exit.thread:                            ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bw, i8 0, i64 %i.do, i1 false)
  %i.dp = sext i32 %.0198.lcssa to i64
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.dq = icmp ult i32 %i.bt, 2147483647
  br i1 %i.dq, label %.lr.ph.preheader.i230, label %_one_mult.exit

.lr.ph.preheader.i230:                            ; preds = %bb.m
  %i.dr = getelementptr inbounds i8, ptr %i.bw, i64 %i.do ; 3 uses
  %.025.i = getelementptr inbounds i8, ptr %i.dr, i64 -1 ; 2 uses
  %i.ds = icmp eq i32 %i.bt, 0
  br i1 %i.ds, label %.lr.ph.i231.epil.preheader, label %.lr.ph.preheader.i230.new

.lr.ph.preheader.i230.new:                        ; preds = %.lr.ph.preheader.i230
  %unroll_iter = and i32 %i.dn, -2
  br label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %.lr.ph.i231, %.lr.ph.preheader.i230.new
  %.029.i = phi ptr [ %.025.i, %.lr.ph.preheader.i230.new ], [ %.0.i.1, %.lr.ph.i231 ] ; 3 uses
  %.pn28.i = phi ptr [ %i.dr, %.lr.ph.preheader.i230.new ], [ %.020.i.1, %.lr.ph.i231 ] ; 2 uses
  %.02226.i = phi i32 [ 0, %.lr.ph.preheader.i230.new ], [ %i.eg, %.lr.ph.i231 ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.i230.new ], [ %niter.next.1, %.lr.ph.i231 ]
  %.020.i = getelementptr inbounds i8, ptr %.pn28.i, i64 -1
  %i.dt = load i8, ptr %.020.i, align 1, !tbaa !15
  %i.du = sext i8 %i.dt to i32
  %i.dv = mul nsw i32 %i.du, %.sext
  %i.dw = add nsw i32 %i.dv, %.02226.i            ; 2 uses
  %i.dx = srem i32 %i.dw, 10
  %i.dy = trunc nsw i32 %i.dx to i8
  store i8 %i.dy, ptr %.029.i, align 1, !tbaa !15
  %i.dz = sdiv i32 %i.dw, 10
  %.0.i = getelementptr inbounds i8, ptr %.029.i, i64 -1
  %.020.i.1 = getelementptr inbounds i8, ptr %.pn28.i, i64 -2 ; 3 uses
  %i.ea = load i8, ptr %.020.i.1, align 1, !tbaa !15
  %i.eb = sext i8 %i.ea to i32
  %i.ec = mul nsw i32 %i.eb, %.sext
  %i.ed = add nsw i32 %i.ec, %i.dz                ; 3 uses
  %i.ee = srem i32 %i.ed, 10
  %i.ef = trunc nsw i32 %i.ee to i8
  store i8 %i.ef, ptr %.0.i, align 1, !tbaa !15
  %i.eg = sdiv i32 %i.ed, 10                      ; 3 uses
  %.0.i.1 = getelementptr inbounds i8, ptr %.029.i, i64 -2 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i231, !llvm.loop !56

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i231
  %i.eh = and i32 %i.bt, 1
  %lcmp.mod.not.not = icmp eq i32 %i.eh, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i231.epil.preheader, label %._crit_edge.i

.lr.ph.i231.epil.preheader:                       ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.preheader.i230
  %.029.i.epil.init = phi ptr [ %.025.i, %.lr.ph.preheader.i230 ], [ %.0.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.pn28.i.epil.init = phi ptr [ %i.dr, %.lr.ph.preheader.i230 ], [ %.020.i.1, %._crit_edge.i.unr-lcssa ]
  %.02226.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i230 ], [ %i.eg, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod435 = trunc i32 %i.dn to i1
  tail call void @llvm.assume(i1 %lcmp.mod435)
  %.020.i.epil = getelementptr inbounds i8, ptr %.pn28.i.epil.init, i64 -1
  %i.ei = load i8, ptr %.020.i.epil, align 1, !tbaa !15
  %i.ej = sext i8 %i.ei to i32
  %i.ek = mul nsw i32 %i.ej, %.sext
  %i.el = add nsw i32 %i.ek, %.02226.i.epil.init  ; 3 uses
  %i.em = srem i32 %i.el, 10
  %i.en = trunc nsw i32 %i.em to i8
  store i8 %i.en, ptr %.029.i.epil.init, align 1, !tbaa !15
  %i.eo = sdiv i32 %i.el, 10
  %.0.i.epil = getelementptr inbounds i8, ptr %.029.i.epil.init, i64 -1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i231.epil.preheader
  %.lcssa429 = phi i32 [ %i.ed, %._crit_edge.i.unr-lcssa ], [ %i.el, %.lr.ph.i231.epil.preheader ]
  %.lcssa428 = phi i32 [ %i.eg, %._crit_edge.i.unr-lcssa ], [ %i.eo, %.lr.ph.i231.epil.preheader ]
  %.0.i.lcssa = phi ptr [ %.0.i.1, %._crit_edge.i.unr-lcssa ], [ %.0.i.epil, %.lr.ph.i231.epil.preheader ]
  %.off.i = add nsw i32 %.lcssa429, 9
  %.not.i232 = icmp ult i32 %.off.i, 19
  br i1 %.not.i232, label %_one_mult.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %i.ep = trunc i32 %.lcssa428 to i8
  store i8 %i.ep, ptr %.0.i.lcssa, align 1, !tbaa !15
  br label %_one_mult.exit

_one_mult.exit:                                   ; preds = %bb.m, %._crit_edge.i, %bb.n
  %i.eq = sext i32 %.0198.lcssa to i64            ; 2 uses
  switch i16 %i.dm, label %bb.p [
    i16 0, label %bb.o
    i16 1, label %_one_mult.exit245
  ]

bb.o:                                             ; preds = %_one_mult.exit.thread, %_one_mult.exit
  %i.er = phi i64 [ %i.dp, %_one_mult.exit.thread ], [ %i.eq, %_one_mult.exit ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.1208.lcssa, i8 0, i64 %i.er, i1 false)
  br label %_one_mult.exit245

bb.p:                                             ; preds = %_one_mult.exit
  %i.es = icmp sgt i32 %.0198.lcssa, 0
  br i1 %i.es, label %.lr.ph.preheader.i233, label %_one_mult.exit245

.lr.ph.preheader.i233:                            ; preds = %bb.p
  %i.et = getelementptr inbounds nuw i8, ptr %.1208.lcssa, i64 %i.eq ; 3 uses
  %.025.i234 = getelementptr inbounds i8, ptr %i.et, i64 -1 ; 2 uses
  %xtraiter436 = and i32 %.0198.lcssa, 1
  %i.eu = icmp eq i32 %.0198.lcssa, 1
  br i1 %i.eu, label %.lr.ph.i235.epil.preheader, label %.lr.ph.preheader.i233.new

.lr.ph.preheader.i233.new:                        ; preds = %.lr.ph.preheader.i233
  %unroll_iter442 = and i32 %.0198.lcssa, 2147483646
  br label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %.lr.ph.i235, %.lr.ph.preheader.i233.new
  %.029.i236 = phi ptr [ %.025.i234, %.lr.ph.preheader.i233.new ], [ %.0.i241.1, %.lr.ph.i235 ] ; 3 uses
  %.pn28.i237 = phi ptr [ %i.et, %.lr.ph.preheader.i233.new ], [ %.020.i240.1, %.lr.ph.i235 ] ; 2 uses
  %.02226.i239 = phi i32 [ 0, %.lr.ph.preheader.i233.new ], [ %i.fi, %.lr.ph.i235 ]
  %niter443 = phi i32 [ 0, %.lr.ph.preheader.i233.new ], [ %niter443.next.1, %.lr.ph.i235 ]
  %.020.i240 = getelementptr inbounds i8, ptr %.pn28.i237, i64 -1
  %i.ev = load i8, ptr %.020.i240, align 1, !tbaa !15
  %i.ew = sext i8 %i.ev to i32
  %i.ex = mul nsw i32 %i.ew, %.sext
  %i.ey = add nsw i32 %i.ex, %.02226.i239         ; 2 uses
  %i.ez = srem i32 %i.ey, 10
  %i.fa = trunc nsw i32 %i.ez to i8
  store i8 %i.fa, ptr %.029.i236, align 1, !tbaa !15
  %i.fb = sdiv i32 %i.ey, 10
  %.0.i241 = getelementptr inbounds i8, ptr %.029.i236, i64 -1
  %.020.i240.1 = getelementptr inbounds i8, ptr %.pn28.i237, i64 -2 ; 3 uses
  %i.fc = load i8, ptr %.020.i240.1, align 1, !tbaa !15
  %i.fd = sext i8 %i.fc to i32
  %i.fe = mul nsw i32 %i.fd, %.sext
  %i.ff = add nsw i32 %i.fe, %i.fb                ; 3 uses
  %i.fg = srem i32 %i.ff, 10
  %i.fh = trunc nsw i32 %i.fg to i8
  store i8 %i.fh, ptr %.0.i241, align 1, !tbaa !15
  %i.fi = sdiv i32 %i.ff, 10                      ; 3 uses
  %.0.i241.1 = getelementptr inbounds i8, ptr %.029.i236, i64 -2 ; 3 uses
  %niter443.next.1 = add i32 %niter443, 2         ; 2 uses
  %niter443.ncmp.1.not = icmp eq i32 %niter443.next.1, %unroll_iter442
  br i1 %niter443.ncmp.1.not, label %._crit_edge.i242.unr-lcssa, label %.lr.ph.i235, !llvm.loop !56

._crit_edge.i242.unr-lcssa:                       ; preds = %.lr.ph.i235
  %lcmp.mod437.not = icmp eq i32 %xtraiter436, 0
  br i1 %lcmp.mod437.not, label %._crit_edge.i242, label %.lr.ph.i235.epil.preheader

.lr.ph.i235.epil.preheader:                       ; preds = %._crit_edge.i242.unr-lcssa, %.lr.ph.preheader.i233
  %.029.i236.epil.init = phi ptr [ %.025.i234, %.lr.ph.preheader.i233 ], [ %.0.i241.1, %._crit_edge.i242.unr-lcssa ] ; 2 uses
  %.pn28.i237.epil.init = phi ptr [ %i.et, %.lr.ph.preheader.i233 ], [ %.020.i240.1, %._crit_edge.i242.unr-lcssa ]
  %.02226.i239.epil.init = phi i32 [ 0, %.lr.ph.preheader.i233 ], [ %i.fi, %._crit_edge.i242.unr-lcssa ]
  %lcmp.mod441 = trunc i32 %.0198.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod441)
  %.020.i240.epil = getelementptr inbounds i8, ptr %.pn28.i237.epil.init, i64 -1
  %i.fj = load i8, ptr %.020.i240.epil, align 1, !tbaa !15
  %i.fk = sext i8 %i.fj to i32
  %i.fl = mul nsw i32 %i.fk, %.sext
  %i.fm = add nsw i32 %i.fl, %.02226.i239.epil.init ; 3 uses
  %i.fn = srem i32 %i.fm, 10
  %i.fo = trunc nsw i32 %i.fn to i8
  store i8 %i.fo, ptr %.029.i236.epil.init, align 1, !tbaa !15
  %i.fp = sdiv i32 %i.fm, 10
  %.0.i241.epil = getelementptr inbounds i8, ptr %.029.i236.epil.init, i64 -1
  br label %._crit_edge.i242

._crit_edge.i242:                                 ; preds = %._crit_edge.i242.unr-lcssa, %.lr.ph.i235.epil.preheader
  %.lcssa427 = phi i32 [ %i.ff, %._crit_edge.i242.unr-lcssa ], [ %i.fm, %.lr.ph.i235.epil.preheader ]
  %.lcssa426 = phi i32 [ %i.fi, %._crit_edge.i242.unr-lcssa ], [ %i.fp, %.lr.ph.i235.epil.preheader ]
  %.0.i241.lcssa = phi ptr [ %.0.i241.1, %._crit_edge.i242.unr-lcssa ], [ %.0.i241.epil, %.lr.ph.i235.epil.preheader ]
  %.off.i243 = add nsw i32 %.lcssa427, 9
  %.not.i244 = icmp ult i32 %.off.i243, 19
  br i1 %.not.i244, label %_one_mult.exit245, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i242
  %i.fq = trunc i32 %.lcssa426 to i8
end_hunk_0
begin_hunk_1_@bc_sqrt:bb.a
  %i.ec = icmp eq i8 %i.ea, %i.eb
  br i1 %i.ec, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %.lr.ph.i51
  %i.ed = getelementptr inbounds nuw i8, ptr %.05789.i, i64 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.05590.i, i64 1
  %i.ef = add nsw i32 %.091.i, -1
  %i.eg = icmp sgt i32 %.091.i, 1
  br i1 %i.eg, label %.lr.ph.i51, label %._crit_edge.thread.i, !llvm.loop !30

.critedge.i:                                      ; preds = %.lr.ph.i51
  %i.eh = icmp eq i32 %.091.i, 1
  %i.ei = icmp eq i32 %i.dr, %i.dt
  %or.cond82.i = and i1 %i.ei, %i.eh
  br i1 %or.cond82.i, label %.loopexit, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %.lr.ph97.i, %.lr.ph101.i, %.critedge.i, %._crit_edge.i49, %free_num.exit48
  br label %.lr.ph

._crit_edge.i49:                                  ; preds = %bb.t
  %.not70.i = icmp eq i32 %i.dv, 0
  br i1 %.not70.i, label %._crit_edge.thread.i, label %.lr.ph.backedge

._crit_edge.thread.i:                             ; preds = %bb.u, %._crit_edge.i49
  %.055.lcssa122.i = phi ptr [ %i.dx, %._crit_edge.i49 ], [ %scevgep108.i, %bb.u ]
  %.057.lcssa121.i = phi ptr [ %i.dw, %._crit_edge.i49 ], [ %scevgep.i, %bb.u ]
  %.not71.i = icmp eq i32 %i.dr, %i.dt
  br i1 %.not71.i, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread.i
  br i1 %i.du, label %.lr.ph101.preheader.i, label %.lr.ph97.preheader.i

.lr.ph101.preheader.i:                            ; preds = %bb.v
  %i.ej = sub nsw i32 %i.dr, %i.dt
  br label %.lr.ph101.i

.lr.ph101.i:                                      ; preds = %bb.w, %.lr.ph101.preheader.i
  %.199.i = phi i32 [ %i.em, %bb.w ], [ %i.ej, %.lr.ph101.preheader.i ] ; 2 uses
  %.15898.i = phi ptr [ %i.el, %bb.w ], [ %.057.lcssa121.i, %.lr.ph101.preheader.i ] ; 2 uses
  %i.ek = load i8, ptr %.15898.i, align 1, !tbaa !15
  %.not73.i = icmp eq i8 %i.ek, 0
  br i1 %.not73.i, label %bb.w, label %.lr.ph.backedge

bb.w:                                             ; preds = %.lr.ph101.i
  %i.el = getelementptr inbounds nuw i8, ptr %.15898.i, i64 1
  %i.em = add nsw i32 %.199.i, -1
  %i.en = icmp sgt i32 %.199.i, 1
  br i1 %i.en, label %.lr.ph101.i, label %.loopexit, !llvm.loop !31

.lr.ph97.preheader.i:                             ; preds = %bb.v
  %i.eo = sub nsw i32 %i.dt, %i.dr
  br label %.lr.ph97.i

.lr.ph97.i:                                       ; preds = %bb.x, %.lr.ph97.preheader.i
  %.295.i = phi i32 [ %i.er, %bb.x ], [ %i.eo, %.lr.ph97.preheader.i ] ; 2 uses
  %.15694.i = phi ptr [ %i.eq, %bb.x ], [ %.055.lcssa122.i, %.lr.ph97.preheader.i ] ; 2 uses
  %i.ep = load i8, ptr %.15694.i, align 1, !tbaa !15
  %.not72.i = icmp eq i8 %i.ep, 0
  br i1 %.not72.i, label %bb.x, label %.lr.ph.backedge

bb.x:                                             ; preds = %.lr.ph97.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.15694.i, i64 1
  %i.er = add nsw i32 %.295.i, -1
  %i.es = icmp sgt i32 %.295.i, 1
  br i1 %i.es, label %.lr.ph97.i, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %.critedge.i, %._crit_edge.thread.i, %bb.x, %bb.w
  %i.et = getelementptr inbounds nuw i8, ptr %i.dd, i64 12 ; 2 uses
  %i.eu = load ptr, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %free_num.exit52, label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 12 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !10
  %i.ey = add nsw i32 %i.ex, -1                   ; 2 uses
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !10
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @free(ptr noundef nonnull %i.eu) #20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  store ptr null, ptr %0, align 8, !tbaa !8
  br label %free_num.exit52

free_num.exit52:                                  ; preds = %.loopexit, %bb.aa
  %i.fa = load ptr, ptr @_one_, align 8, !tbaa !8
  %i.fb = tail call i32 @bc_divide(ptr noundef %i.dl, ptr noundef %i.fa, ptr noundef nonnull %0, i32 noundef %.) ; 0 uses
  %i.fc = icmp eq ptr %i.dl, null
  br i1 %i.fc, label %free_num.exit53, label %bb.ab

bb.ab:                                            ; preds = %free_num.exit52
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dl, i64 12 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !10
  %i.ff = add nsw i32 %i.fe, -1                   ; 2 uses
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !10
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.ac, label %free_num.exit53

bb.ac:                                            ; preds = %bb.ab
  tail call void @free(ptr noundef nonnull %i.dl) #20
  br label %free_num.exit53

free_num.exit53:                                  ; preds = %bb.ab, %bb.ac, %free_num.exit52
  %i.fh = icmp eq ptr %i.dd, null
  br i1 %i.fh, label %free_num.exit54, label %bb.ad

bb.ad:                                            ; preds = %free_num.exit53
  %i.fi = load i32, ptr %i.et, align 4, !tbaa !10
  %i.fj = add nsw i32 %i.fi, -1                   ; 2 uses
  store i32 %i.fj, ptr %i.et, align 4, !tbaa !10
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.ae, label %free_num.exit54

bb.ae:                                            ; preds = %bb.ad
  tail call void @free(ptr noundef nonnull %i.dd) #20
  br label %free_num.exit54

free_num.exit54:                                  ; preds = %bb.ad, %bb.ae, %free_num.exit53
  %i.fl = load i32, ptr %i.ak, align 4, !tbaa !10
  %i.fm = icmp eq i32 %i.fl, 1
  br i1 %i.fm, label %bb.af, label %free_num.exit55

bb.af:                                            ; preds = %free_num.exit54
  tail call void @free(ptr noundef nonnull %i.aj) #20
  br label %free_num.exit55

free_num.exit55:                                  ; preds = %bb.af, %free_num.exit54, %bb.a, %free_num.exit31, %free_num.exit
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %free_num.exit ], [ 1, %free_num.exit31 ], [ 1, %free_num.exit54 ], [ 1, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @out_long(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %3(i32 noundef 32) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %0) #20 ; 0 uses
  %i.c = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #22 ; 2 uses
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = icmp sgt i32 %1, %i.d
  br i1 %i.e, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.c
  %i.f = icmp sgt i32 %i.d, 0
  br i1 %i.f, label %.lr.ph15.preheader, label %._crit_edge

.lr.ph15.preheader:                               ; preds = %.preheader
  %wide.trip.count = and i64 %i.c, 2147483647
  br label %.lr.ph15

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.01113 = phi i32 [ %i.g, %.lr.ph ], [ %1, %bb.c ]
  tail call void %3(i32 noundef 48) #20
  %i.g = add nsw i32 %.01113, -1                  ; 2 uses
  %i.h = icmp sgt i32 %i.g, %i.d
  br i1 %i.h, label %.lr.ph, label %.preheader, !llvm.loop !72

.lr.ph15:                                         ; preds = %.lr.ph15.preheader, %.lr.ph15
  %indvars.iv = phi i64 [ 0, %.lr.ph15.preheader ], [ %indvars.iv.next, %.lr.ph15 ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15
  %i.k = sext i8 %i.j to i32
  tail call void %3(i32 noundef %i.k) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph15, !llvm.loop !73

._crit_edge:                                      ; preds = %.lr.ph15, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local void @out_num(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 5 uses
  %i.b = alloca [30 x i8], align 16               ; 4 uses
  %i.c = alloca [40 x i8], align 16               ; 5 uses
  %i.d = alloca [30 x i8], align 16               ; 4 uses
  %i.e = alloca [30 x i8], align 16               ; 4 uses
  %i.f = alloca ptr, align 8                      ; 8 uses
  %i.g = alloca ptr, align 8                      ; 9 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  %i.j = load i32, ptr %0, align 4, !tbaa !12
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %2(i32 noundef 45) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = load ptr, ptr @_zero_, align 8, !tbaa !8 ; 3 uses
  %i.m = icmp eq ptr %0, %i.l
  br i1 %i.m, label %is_zero.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !13   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14   ; 3 uses
  %i.r = add nsw i32 %i.q, %i.o                   ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader.i, label %is_zero.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.012.i = phi ptr [ %i.w, %bb.e ], [ %i.t, %.lr.ph.preheader.i ] ; 2 uses
  %.0811.i = phi i32 [ %i.x, %bb.e ], [ %i.r, %.lr.ph.preheader.i ] ; 2 uses
  %i.u = load i8, ptr %.012.i, align 1, !tbaa !15
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.e, label %is_zero.exit.thread155

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i, i64 1
  %i.x = add nsw i32 %.0811.i, -1
  %i.y = icmp sgt i32 %.0811.i, 1
  br i1 %i.y, label %.lr.ph.i, label %is_zero.exit.thread, !llvm.loop !33

is_zero.exit:                                     ; preds = %bb.d
  %.not.i.not = icmp eq i32 %i.r, 0
  br i1 %.not.i.not, label %is_zero.exit.thread, label %is_zero.exit.thread155

is_zero.exit.thread:                              ; preds = %bb.e, %bb.c, %is_zero.exit
  tail call void %2(i32 noundef 48) #20
  br label %free_num.exit144

is_zero.exit.thread155:                           ; preds = %.lr.ph.i, %is_zero.exit
  %i.z = icmp eq i32 %1, 10
  br i1 %i.z, label %bb.f, label %bb.k

bb.f:                                             ; preds = %is_zero.exit.thread155
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ab = icmp sgt i32 %i.o, 1
  br i1 %i.ab, label %.lr.ph195.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load i8, ptr %i.aa, align 4, !tbaa !15
  %.not64 = icmp eq i8 %i.ac, 0
  br i1 %.not64, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp eq i32 %i.o, 1
  br i1 %i.ad, label %.lr.ph195.preheader, label %.loopexit

.lr.ph195.preheader:                              ; preds = %bb.f, %bb.h
  br label %.lr.ph195

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %.lr.ph195
  %.052194 = phi ptr [ %i.ae, %.lr.ph195 ], [ %i.aa, %.lr.ph195.preheader ] ; 2 uses
  %.054193 = phi i32 [ %i.ai, %.lr.ph195 ], [ %i.o, %.lr.ph195.preheader ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.052194, i64 1 ; 2 uses
  %i.af = load i8, ptr %.052194, align 1, !tbaa !15
  %i.ag = sext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, 48
  tail call void %2(i32 noundef %i.ah) #20
  %i.ai = add nsw i32 %.054193, -1
  %i.aj = icmp samesign ugt i32 %.054193, 1
  br i1 %i.aj, label %.lr.ph195, label %.loopexit.loopexit, !llvm.loop !74

bb.i:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 17
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph195
  %.pre = load i32, ptr %i.p, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.h, %bb.i
  %i.al = phi i32 [ %i.q, %bb.i ], [ %i.q, %bb.h ], [ %.pre, %.loopexit.loopexit ]
  %.153 = phi ptr [ %i.ak, %bb.i ], [ %i.aa, %bb.h ], [ %i.ae, %.loopexit.loopexit ]
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %free_num.exit144

bb.j:                                             ; preds = %.loopexit
  tail call void %2(i32 noundef 46) #20
  %i.an = load i32, ptr %i.p, align 4, !tbaa !14
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph199, label %free_num.exit144

.lr.ph199:                                        ; preds = %bb.j, %.lr.ph199
  %.2198 = phi ptr [ %i.ap, %.lr.ph199 ], [ %.153, %bb.j ] ; 2 uses
  %.155197 = phi i32 [ %i.at, %.lr.ph199 ], [ 0, %bb.j ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.2198, i64 1
  %i.aq = load i8, ptr %.2198, align 1, !tbaa !15
  %i.ar = sext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, 48
  tail call void %2(i32 noundef %i.as) #20
  %i.at = add nuw nsw i32 %.155197, 1             ; 2 uses
  %i.au = load i32, ptr %i.p, align 4, !tbaa !14
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %.lr.ph199, label %free_num.exit144, !llvm.loop !75

bb.k:                                             ; preds = %is_zero.exit.thread155
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !10
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !10
  store ptr %i.l, ptr %i.f, align 8, !tbaa !8
  %i.az = load ptr, ptr @_one_, align 8, !tbaa !8
  %i.ba = call i32 @bc_divide(ptr noundef nonnull %0, ptr noundef %i.az, ptr noundef nonnull %i.f, i32 noundef 0) ; 0 uses
  %i.bb = load ptr, ptr @_zero_, align 8, !tbaa !8 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12 ; 4 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !10
  store ptr %i.bb, ptr %i.g, align 8, !tbaa !8
  store ptr %i.bb, ptr %i.h, align 8, !tbaa !8
  %i.be = add nsw i32 %i.bd, 3
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !10
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !8   ; 4 uses
  call void @bc_sub(ptr noundef nonnull %0, ptr noundef %i.bf, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.bg = icmp sgt i32 %1, -1
  %spec.select.i = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 3 uses
  %i.bh = urem i32 %spec.select.i, 10
  %i.bi = trunc nuw nsw i32 %i.bh to i8
  store i8 %i.bi, ptr %i.e, align 16, !tbaa !15
  %.02027.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %.not28.i = icmp samesign ult i32 %spec.select.i, 10
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %bb.k, %.lr.ph.i65
  %.02031.i = phi ptr [ %.020.i, %.lr.ph.i65 ], [ %.02027.i, %bb.k ] ; 2 uses
  %.01830.i = phi i32 [ %i.bl, %.lr.ph.i65 ], [ 1, %bb.k ]
  %.123.in29.i = phi i32 [ %.123.i, %.lr.ph.i65 ], [ %spec.select.i, %bb.k ] ; 2 uses
  %.123.i = udiv i32 %.123.in29.i, 10             ; 2 uses
  %i.bj = urem i32 %.123.i, 10
  %i.bk = trunc nuw nsw i32 %i.bj to i8
  store i8 %i.bk, ptr %.02031.i, align 1, !tbaa !15
  %i.bl = add nuw nsw i32 %.01830.i, 1            ; 2 uses
  %.020.i = getelementptr inbounds nuw i8, ptr %.02031.i, i64 1 ; 2 uses
  %.not.i66 = icmp samesign ult i32 %.123.in29.i, 100
  br i1 %.not.i66, label %._crit_edge.i, label %.lr.ph.i65, !llvm.loop !16

._crit_edge.i:                                    ; preds = %.lr.ph.i65, %bb.k
  %.018.lcssa.i = phi i32 [ 1, %bb.k ], [ %i.bl, %.lr.ph.i65 ] ; 10 uses
  %.020.lcssa.i = phi ptr [ %.02027.i, %bb.k ], [ %.020.i, %.lr.ph.i65 ] ; 8 uses
  %i.bm = load i32, ptr %i.bc, align 4, !tbaa !10
  %i.bn = add nsw i32 %i.bm, -1                   ; 2 uses
  store i32 %i.bn, ptr %i.bc, align 4, !tbaa !10
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.l, label %free_num.exit.i

bb.l:                                             ; preds = %._crit_edge.i
  tail call void @free(ptr noundef nonnull %i.bb) #20
  br label %free_num.exit.i

free_num.exit.i:                                  ; preds = %bb.l, %._crit_edge.i
  %narrow.i = add nuw i32 %.018.lcssa.i, 1040
  %i.bp = zext i32 %narrow.i to i64
  %i.bq = tail call noalias ptr @malloc(i64 noundef %i.bp) #21 ; 12 uses
  store i32 0, ptr %i.bq, align 4, !tbaa !12
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 %.018.lcssa.i, ptr %i.br, align 4, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 0, ptr %i.bs, align 4, !tbaa !14
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 12 ; 3 uses
  store i32 1, ptr %i.bt, align 4, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 8 uses
  store i8 0, ptr %i.bu, align 4, !tbaa !15
  br i1 %i.bg, label %iter.check, label %bb.m

bb.m:                                             ; preds = %free_num.exit.i
  store i32 1, ptr %i.bq, align 4, !tbaa !12
  br label %iter.check

iter.check:                                       ; preds = %bb.m, %free_num.exit.i
  %i.bv = zext i32 %.018.lcssa.i to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %.018.lcssa.i, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bw = add i32 %.018.lcssa.i, -1
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
end_hunk_1
begin_hunk_2_@out_num:bb.a

num2long.exit:                                    ; preds = %is_zero.exit95.thread167, %._crit_edge.loopexit.i
  %.lcssa.i = phi i64 [ 0, %is_zero.exit95.thread167 ], [ %i.fx, %._crit_edge.loopexit.i ] ; 2 uses
  %i.fy = load i32, ptr %i.fi, align 4, !tbaa !12
  %i.fz = icmp eq i32 %i.fy, 0
  %i.ga = sub nsw i64 0, %.lcssa.i
  %.014.i = select i1 %i.fz, i64 %.lcssa.i, i64 %i.ga
  store i64 %.014.i, ptr %i.fh, align 8, !tbaa !92
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %.0188, ptr %i.gb, align 8, !tbaa !96
  %i.gc = call i32 @bc_divide(ptr noundef %i.et, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.f, i32 noundef 0) ; 0 uses
  %i.gd = load ptr, ptr %i.f, align 8, !tbaa !8   ; 3 uses
  %i.ge = load ptr, ptr @_zero_, align 8, !tbaa !8
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %.preheader, label %.lr.ph, !llvm.loop !97

is_zero.exit95.thread:                            ; preds = %is_zero.exit95, %bb.p
  %.not60 = icmp eq ptr %.0188, null
  br i1 %.not60, label %.loopexit178, label %.preheader

.preheader:                                       ; preds = %num2long.exit, %is_zero.exit95.thread
  %.0185245 = phi ptr [ %.0188, %is_zero.exit95.thread ], [ %i.fh, %num2long.exit ] ; 2 uses
  %.promoted244 = phi ptr [ %i.et, %is_zero.exit95.thread ], [ %i.gd, %num2long.exit ] ; 2 uses
  %i.gg = phi ptr [ %i.es, %is_zero.exit95.thread ], [ %i.fi, %num2long.exit ] ; 2 uses
  %i.gh = icmp slt i32 %1, 17
  br i1 %i.gh, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %.preheader.split.us
  %.1.us = phi ptr [ %i.gj, %.preheader.split.us ], [ %.0185245, %.preheader ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.1.us, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !96 ; 2 uses
  %i.gk = load i64, ptr %.1.us, align 8, !tbaa !92
  %sext.us = shl i64 %i.gk, 32
  %i.gl = ashr exact i64 %sext.us, 32
  %i.gm = getelementptr inbounds i8, ptr @ref_str, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !15
  %i.go = sext i8 %i.gn to i32
  tail call void %2(i32 noundef %i.go) #20
  tail call void @free(ptr noundef nonnull %.1.us) #20
  %.old1.not.us = icmp eq ptr %i.gj, null
  br i1 %.old1.not.us, label %.loopexit178, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %out_long.exit
  %.1 = phi ptr [ %i.gq, %out_long.exit ], [ %.0185245, %.preheader ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !96 ; 2 uses
  %i.gr = load i64, ptr %.1, align 8, !tbaa !92
  %i.gs = load i32, ptr %i.dk, align 4, !tbaa !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  tail call void %2(i32 noundef 32) #20, !inline_history !98
  %i.gt = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %i.gr) #20 ; 0 uses
  %i.gu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #22 ; 2 uses
  %i.gv = trunc i64 %i.gu to i32                  ; 3 uses
  %i.gw = icmp sgt i32 %i.gs, %i.gv
  br i1 %i.gw, label %.lr.ph.i100, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i100, %.preheader.split
  %i.gx = icmp sgt i32 %i.gv, 0
  br i1 %i.gx, label %.lr.ph15.preheader.i, label %out_long.exit

.lr.ph15.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count.i = and i64 %i.gu, 2147483647
  br label %.lr.ph15.i

.lr.ph.i100:                                      ; preds = %.preheader.split, %.lr.ph.i100
  %.01113.i = phi i32 [ %i.gy, %.lr.ph.i100 ], [ %i.gs, %.preheader.split ]
  tail call void %2(i32 noundef 48) #20, !inline_history !98
  %i.gy = add nsw i32 %.01113.i, -1               ; 2 uses
  %i.gz = icmp sgt i32 %i.gy, %i.gv
  br i1 %i.gz, label %.lr.ph.i100, label %.preheader.i, !llvm.loop !72

.lr.ph15.i:                                       ; preds = %.lr.ph15.i, %.lr.ph15.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph15.preheader.i ], [ %indvars.iv.next.i, %.lr.ph15.i ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !15
  %i.hc = sext i8 %i.hb to i32
  tail call void %2(i32 noundef %i.hc) #20, !inline_history !98
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %out_long.exit, label %.lr.ph15.i, !llvm.loop !73

out_long.exit:                                    ; preds = %.lr.ph15.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  tail call void @free(ptr noundef nonnull %.1) #20
  %.old1.not = icmp eq ptr %i.gq, null
  br i1 %.old1.not, label %.loopexit178, label %.preheader.split

.loopexit178:                                     ; preds = %out_long.exit, %.preheader.split.us, %int2num.exit85, %is_zero.exit95.thread
  %.promoted239 = phi ptr [ %.promoted244, %.preheader.split.us ], [ %i.bf, %int2num.exit85 ], [ %i.et, %is_zero.exit95.thread ], [ %.promoted244, %out_long.exit ] ; 3 uses
  %i.hd = phi ptr [ %i.gg, %.preheader.split.us ], [ %i.bb, %int2num.exit85 ], [ %i.es, %is_zero.exit95.thread ], [ %i.gg, %out_long.exit ] ; 3 uses
  %i.he = load i32, ptr %i.p, align 4, !tbaa !14
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %bb.q, label %.loopexit177

bb.q:                                             ; preds = %.loopexit178
  tail call void %2(i32 noundef 46) #20
  %i.hg = load ptr, ptr @_one_, align 8, !tbaa !8 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 12 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !10
  %i.hj = add nsw i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !10
  store ptr %i.hg, ptr %i.i, align 8, !tbaa !8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !13
  %i.hm = load i32, ptr %i.p, align 4, !tbaa !14  ; 2 uses
  %.not61190 = icmp sgt i32 %i.hl, %i.hm
  br i1 %.not61190, label %.loopexit177, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.q
  %.02027.i112 = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.hn = icmp slt i32 %1, 17
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph192, %bb.z
  %i.ho = phi i32 [ %i.hm, %.lr.ph192 ], [ %i.kw, %bb.z ]
  %i.hp = phi ptr [ %i.hg, %.lr.ph192 ], [ %i.kt, %bb.z ]
  %.050191 = phi i32 [ 0, %.lr.ph192 ], [ %.151, %bb.z ] ; 2 uses
  %i.hq = phi ptr [ %.promoted239, %.lr.ph192 ], [ %i.iy, %bb.z ] ; 3 uses
  %i.hr = load ptr, ptr %i.g, align 8, !tbaa !8
  call void @bc_multiply(ptr noundef %i.hr, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.g, i32 noundef %i.ho)
  %i.hs = load ptr, ptr %i.g, align 8, !tbaa !8   ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !13 ; 2 uses
  %i.hv = icmp sgt i32 %i.hu, 0
  br i1 %i.hv, label %.lr.ph.preheader.i104, label %num2long.exit110

.lr.ph.preheader.i104:                            ; preds = %bb.r
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  br label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %.lr.ph.i105, %.lr.ph.preheader.i104
  %.017.i106 = phi i32 [ %i.ic, %.lr.ph.i105 ], [ %i.hu, %.lr.ph.preheader.i104 ] ; 2 uses
  %.01216.i107 = phi ptr [ %i.hy, %.lr.ph.i105 ], [ %i.hw, %.lr.ph.preheader.i104 ] ; 2 uses
  %.01315.i108 = phi i64 [ %i.ib, %.lr.ph.i105 ], [ 0, %.lr.ph.preheader.i104 ]
  %i.hx = mul nsw i64 %.01315.i108, 10
  %i.hy = getelementptr inbounds nuw i8, ptr %.01216.i107, i64 1
  %i.hz = load i8, ptr %.01216.i107, align 1, !tbaa !15
  %i.ia = sext i8 %i.hz to i64
  %i.ib = add nsw i64 %i.hx, %i.ia                ; 3 uses
  %i.ic = add nsw i32 %.017.i106, -1
  %i.id = icmp samesign ugt i32 %.017.i106, 1     ; 2 uses
  %i.ie = icmp slt i64 %i.ib, 922337203685477581
  %i.if = select i1 %i.id, i1 %i.ie, i1 false
  br i1 %i.if, label %.lr.ph.i105, label %._crit_edge.loopexit.i109, !llvm.loop !29

._crit_edge.loopexit.i109:                        ; preds = %.lr.ph.i105
  %i.ig = tail call i64 @llvm.smax.i64(i64 %i.ib, i64 0)
  %i.ih = select i1 %i.id, i64 0, i64 %i.ig
  br label %num2long.exit110

num2long.exit110:                                 ; preds = %bb.r, %._crit_edge.loopexit.i109
  %.lcssa.i102 = phi i64 [ 0, %bb.r ], [ %i.ih, %._crit_edge.loopexit.i109 ] ; 2 uses
  %i.ii = load i32, ptr %i.hs, align 4, !tbaa !12
  %i.ij = icmp eq i32 %i.ii, 0
  %i.ik = sub nsw i64 0, %.lcssa.i102
  %.014.i103 = select i1 %i.ij, i64 %.lcssa.i102, i64 %i.ik ; 2 uses
  %i.il = trunc i64 %.014.i103 to i32             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.im = icmp sgt i32 %i.il, -1
  %spec.select.i111 = tail call i32 @llvm.abs.i32(i32 %i.il, i1 true) ; 3 uses
  %i.in = urem i32 %spec.select.i111, 10
  %i.io = trunc nuw nsw i32 %i.in to i8
  store i8 %i.io, ptr %i.b, align 16, !tbaa !15
  %.not28.i113 = icmp samesign ult i32 %spec.select.i111, 10
  br i1 %.not28.i113, label %._crit_edge.i121, label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %num2long.exit110, %.lr.ph.i114
  %.02031.i115 = phi ptr [ %.020.i119, %.lr.ph.i114 ], [ %.02027.i112, %num2long.exit110 ] ; 2 uses
  %.01830.i116 = phi i32 [ %i.ir, %.lr.ph.i114 ], [ 1, %num2long.exit110 ]
  %.123.in29.i117 = phi i32 [ %.123.i118, %.lr.ph.i114 ], [ %spec.select.i111, %num2long.exit110 ] ; 2 uses
  %.123.i118 = udiv i32 %.123.in29.i117, 10       ; 2 uses
  %i.ip = urem i32 %.123.i118, 10
  %i.iq = trunc nuw nsw i32 %i.ip to i8
  store i8 %i.iq, ptr %.02031.i115, align 1, !tbaa !15
  %i.ir = add nuw nsw i32 %.01830.i116, 1         ; 2 uses
  %.020.i119 = getelementptr inbounds nuw i8, ptr %.02031.i115, i64 1 ; 2 uses
  %.not.i120 = icmp samesign ult i32 %.123.in29.i117, 100
  br i1 %.not.i120, label %._crit_edge.i121, label %.lr.ph.i114, !llvm.loop !16

._crit_edge.i121:                                 ; preds = %.lr.ph.i114, %num2long.exit110
  %.018.lcssa.i122 = phi i32 [ 1, %num2long.exit110 ], [ %i.ir, %.lr.ph.i114 ] ; 10 uses
  %.020.lcssa.i123 = phi ptr [ %.02027.i112, %num2long.exit110 ], [ %.020.i119, %.lr.ph.i114 ] ; 8 uses
  %i.is = icmp eq ptr %i.hq, null
  br i1 %i.is, label %free_num.exit.i124, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i121
  %i.it = getelementptr inbounds nuw i8, ptr %i.hq, i64 12 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !10
  %i.iv = add nsw i32 %i.iu, -1                   ; 2 uses
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !10
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.t, label %free_num.exit.i124

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %i.hq) #20
  br label %free_num.exit.i124

free_num.exit.i124:                               ; preds = %bb.t, %bb.s, %._crit_edge.i121
  %narrow.i125 = add nuw i32 %.018.lcssa.i122, 1040
  %i.ix = zext i32 %narrow.i125 to i64
  %i.iy = tail call noalias ptr @malloc(i64 noundef %i.ix) #21 ; 11 uses
  store i32 0, ptr %i.iy, align 4, !tbaa !12
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  store i32 %.018.lcssa.i122, ptr %i.iz, align 4, !tbaa !13
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store i32 0, ptr %i.ja, align 4, !tbaa !14
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  store i32 1, ptr %i.jb, align 4, !tbaa !10
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 16 ; 8 uses
  store i8 0, ptr %i.jc, align 4, !tbaa !15
  store ptr %i.iy, ptr %i.f, align 8, !tbaa !8
  br i1 %i.im, label %iter.check387, label %bb.u

bb.u:                                             ; preds = %free_num.exit.i124
  store i32 1, ptr %i.iy, align 4, !tbaa !12
  br label %iter.check387

iter.check387:                                    ; preds = %bb.u, %free_num.exit.i124
  %i.jd = zext i32 %.018.lcssa.i122 to i64        ; 5 uses
  %min.iters.check367 = icmp ult i32 %.018.lcssa.i122, 8
  br i1 %min.iters.check367, label %vec.epilog.scalar.ph388.preheader, label %vector.memcheck357

vector.memcheck357:                               ; preds = %iter.check387
  %scevgep358 = getelementptr i8, ptr %i.iy, i64 17
  %i.je = add i32 %.018.lcssa.i122, -1
  %i.jf = zext i32 %i.je to i64                   ; 2 uses
  %scevgep360 = getelementptr i8, ptr %scevgep358, i64 %i.jf
  %scevgep361 = getelementptr i8, ptr %.020.lcssa.i123, i64 -1
  %i.jg = sub nsw i64 0, %i.jf
  %scevgep362 = getelementptr i8, ptr %scevgep361, i64 %i.jg
  %bound0363 = icmp ult ptr %i.jc, %.020.lcssa.i123
  %bound1364 = icmp ult ptr %scevgep362, %scevgep360
  %found.conflict365 = and i1 %bound0363, %bound1364
  br i1 %found.conflict365, label %vec.epilog.scalar.ph388.preheader, label %vector.main.loop.iter.check368

vector.main.loop.iter.check368:                   ; preds = %vector.memcheck357
  %min.iters.check369 = icmp ult i32 %.018.lcssa.i122, 32
  br i1 %min.iters.check369, label %vec.epilog.ph391, label %vector.ph370

vector.ph370:                                     ; preds = %vector.main.loop.iter.check368
  %n.mod.vf371 = and i64 %i.jd, 24
  %n.vec372 = and i64 %i.jd, 4294967264           ; 6 uses
  %i.jh = trunc nuw i64 %n.vec372 to i32
  %i.ji = sub i32 %.018.lcssa.i122, %i.jh
  %i.jj = getelementptr i8, ptr %i.jc, i64 %n.vec372
  %i.jk = sub nsw i64 0, %n.vec372
  %i.jl = getelementptr i8, ptr %.020.lcssa.i123, i64 %i.jk
  br label %vector.body373

vector.body373:                                   ; preds = %vector.body373, %vector.ph370
  %index374 = phi i64 [ 0, %vector.ph370 ], [ %index.next381, %vector.body373 ] ; 3 uses
  %next.gep375 = getelementptr i8, ptr %i.jc, i64 %index374 ; 2 uses
  %i.jm = sub i64 0, %index374
  %next.gep376 = getelementptr i8, ptr %.020.lcssa.i123, i64 %i.jm ; 2 uses
  %i.jn = getelementptr inbounds i8, ptr %next.gep376, i64 -16
  %i.jo = getelementptr inbounds i8, ptr %next.gep376, i64 -32
  %wide.load377 = load <16 x i8>, ptr %i.jn, align 1, !tbaa !15, !alias.scope !99
  %wide.load378 = load <16 x i8>, ptr %i.jo, align 1, !tbaa !15, !alias.scope !99
  %reverse379 = shufflevector <16 x i8> %wide.load377, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse380 = shufflevector <16 x i8> %wide.load378, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.jp = getelementptr i8, ptr %next.gep375, i64 16
  store <16 x i8> %reverse379, ptr %next.gep375, align 1, !tbaa !15, !alias.scope !102, !noalias !99
  store <16 x i8> %reverse380, ptr %i.jp, align 1, !tbaa !15, !alias.scope !102, !noalias !99
  %index.next381 = add nuw i64 %index374, 32      ; 2 uses
  %i.jq = icmp eq i64 %index.next381, %n.vec372
  br i1 %i.jq, label %middle.block382, label %vector.body373, !llvm.loop !104

middle.block382:                                  ; preds = %vector.body373
  %cmp.n383 = icmp eq i64 %n.vec372, %i.jd
  br i1 %cmp.n383, label %int2num.exit129, label %vec.epilog.iter.check389

vec.epilog.iter.check389:                         ; preds = %middle.block382
  %min.epilog.iters.check390 = icmp eq i64 %n.mod.vf371, 0
  br i1 %min.epilog.iters.check390, label %vec.epilog.scalar.ph388.preheader, label %vec.epilog.ph391, !prof !26

vec.epilog.ph391:                                 ; preds = %vector.main.loop.iter.check368, %vec.epilog.iter.check389
  %vec.epilog.resume.val384 = phi i64 [ %n.vec372, %vec.epilog.iter.check389 ], [ 0, %vector.main.loop.iter.check368 ]
  %n.vec393 = and i64 %i.jd, 4294967288           ; 5 uses
  %i.jr = trunc nuw i64 %n.vec393 to i32
  %i.js = sub i32 %.018.lcssa.i122, %i.jr
  %i.jt = getelementptr i8, ptr %i.jc, i64 %n.vec393
  %i.ju = sub nsw i64 0, %n.vec393
  %i.jv = getelementptr i8, ptr %.020.lcssa.i123, i64 %i.ju
  br label %vec.epilog.vector.body394

vec.epilog.vector.body394:                        ; preds = %vec.epilog.vector.body394, %vec.epilog.ph391
  %index395 = phi i64 [ %vec.epilog.resume.val384, %vec.epilog.ph391 ], [ %index.next400, %vec.epilog.vector.body394 ] ; 3 uses
  %next.gep396 = getelementptr i8, ptr %i.jc, i64 %index395
  %i.jw = sub i64 0, %index395
  %next.gep397 = getelementptr i8, ptr %.020.lcssa.i123, i64 %i.jw
  %i.jx = getelementptr inbounds i8, ptr %next.gep397, i64 -8
  %wide.load398 = load <8 x i8>, ptr %i.jx, align 1, !tbaa !15, !alias.scope !99
  %reverse399 = shufflevector <8 x i8> %wide.load398, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse399, ptr %next.gep396, align 1, !tbaa !15, !alias.scope !102, !noalias !99
  %index.next400 = add nuw i64 %index395, 8       ; 2 uses
  %i.jy = icmp eq i64 %index.next400, %n.vec393
  br i1 %i.jy, label %vec.epilog.middle.block401, label %vec.epilog.vector.body394, !llvm.loop !105

vec.epilog.middle.block401:                       ; preds = %vec.epilog.vector.body394
  %cmp.n402 = icmp eq i64 %n.vec393, %i.jd
  br i1 %cmp.n402, label %int2num.exit129, label %vec.epilog.scalar.ph388.preheader

vec.epilog.scalar.ph388.preheader:                ; preds = %vector.memcheck357, %iter.check387, %vec.epilog.iter.check389, %vec.epilog.middle.block401
  %.135.i126.ph = phi i32 [ %.018.lcssa.i122, %iter.check387 ], [ %.018.lcssa.i122, %vector.memcheck357 ], [ %i.ji, %vec.epilog.iter.check389 ], [ %i.js, %vec.epilog.middle.block401 ]
  %.01934.i127.ph = phi ptr [ %i.jc, %iter.check387 ], [ %i.jc, %vector.memcheck357 ], [ %i.jj, %vec.epilog.iter.check389 ], [ %i.jt, %vec.epilog.middle.block401 ]
  %.12133.i128.ph = phi ptr [ %.020.lcssa.i123, %iter.check387 ], [ %.020.lcssa.i123, %vector.memcheck357 ], [ %i.jl, %vec.epilog.iter.check389 ], [ %i.jv, %vec.epilog.middle.block401 ]
  br label %vec.epilog.scalar.ph388

vec.epilog.scalar.ph388:                          ; preds = %vec.epilog.scalar.ph388.preheader, %vec.epilog.scalar.ph388
  %.135.i126 = phi i32 [ %i.jz, %vec.epilog.scalar.ph388 ], [ %.135.i126.ph, %vec.epilog.scalar.ph388.preheader ] ; 2 uses
  %.01934.i127 = phi ptr [ %i.kc, %vec.epilog.scalar.ph388 ], [ %.01934.i127.ph, %vec.epilog.scalar.ph388.preheader ] ; 2 uses
  %.12133.i128 = phi ptr [ %i.ka, %vec.epilog.scalar.ph388 ], [ %.12133.i128.ph, %vec.epilog.scalar.ph388.preheader ]
  %i.jz = add nsw i32 %.135.i126, -1
  %i.ka = getelementptr inbounds i8, ptr %.12133.i128, i64 -1 ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !15
  %i.kc = getelementptr inbounds nuw i8, ptr %.01934.i127, i64 1
  store i8 %i.kb, ptr %.01934.i127, align 1, !tbaa !15
  %i.kd = icmp sgt i32 %.135.i126, 1
  br i1 %i.kd, label %vec.epilog.scalar.ph388, label %int2num.exit129, !llvm.loop !106

int2num.exit129:                                  ; preds = %vec.epilog.scalar.ph388, %vec.epilog.middle.block401, %middle.block382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @bc_sub(ptr noundef nonnull %i.hs, ptr noundef nonnull %i.iy, ptr noundef nonnull %i.g)
  %sext63 = shl i64 %.014.i103, 32
  %i.ke = ashr exact i64 %sext63, 32              ; 2 uses
  br i1 %i.hn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %int2num.exit129
  %i.kf = getelementptr inbounds i8, ptr @ref_str, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !15
  %i.kh = sext i8 %i.kg to i32
  tail call void %2(i32 noundef %i.kh) #20
  br label %bb.z

bb.w:                                             ; preds = %int2num.exit129
  %i.ki = load i32, ptr %i.dk, align 4, !tbaa !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %.not.i130 = icmp eq i32 %.050191, 0
  br i1 %.not.i130, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void %2(i32 noundef 32) #20, !inline_history !98
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.kj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %i.ke) #20 ; 0 uses
  %i.kk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #22 ; 2 uses
  %i.kl = trunc i64 %i.kk to i32                  ; 3 uses
  %i.km = icmp sgt i32 %i.ki, %i.kl
  br i1 %i.km, label %.lr.ph.i139, label %.preheader.i131

.preheader.i131:                                  ; preds = %.lr.ph.i139, %bb.y
  %i.kn = icmp sgt i32 %i.kl, 0
  br i1 %i.kn, label %.lr.ph15.preheader.i133, label %out_long.exit141

.lr.ph15.preheader.i133:                          ; preds = %.preheader.i131
  %wide.trip.count.i134 = and i64 %i.kk, 2147483647
  br label %.lr.ph15.i135

.lr.ph.i139:                                      ; preds = %bb.y, %.lr.ph.i139
  %.01113.i140 = phi i32 [ %i.ko, %.lr.ph.i139 ], [ %i.ki, %bb.y ]
  tail call void %2(i32 noundef 48) #20, !inline_history !98
  %i.ko = add nsw i32 %.01113.i140, -1            ; 2 uses
  %i.kp = icmp sgt i32 %i.ko, %i.kl
  br i1 %i.kp, label %.lr.ph.i139, label %.preheader.i131, !llvm.loop !72

.lr.ph15.i135:                                    ; preds = %.lr.ph15.i135, %.lr.ph15.preheader.i133
  %indvars.iv.i136 = phi i64 [ 0, %.lr.ph15.preheader.i133 ], [ %indvars.iv.next.i137, %.lr.ph15.i135 ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i136
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !15
  %i.ks = sext i8 %i.kr to i32
  tail call void %2(i32 noundef %i.ks) #20, !inline_history !98
  %indvars.iv.next.i137 = add nuw nsw i64 %indvars.iv.i136, 1 ; 2 uses
  %exitcond.not.i138 = icmp eq i64 %indvars.iv.next.i137, %wide.trip.count.i134
  br i1 %exitcond.not.i138, label %out_long.exit141, label %.lr.ph15.i135, !llvm.loop !73

out_long.exit141:                                 ; preds = %.lr.ph15.i135, %.preheader.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.z

bb.z:                                             ; preds = %out_long.exit141, %bb.v
  %.151 = phi i32 [ %.050191, %bb.v ], [ 1, %out_long.exit141 ]
  call void @bc_multiply(ptr noundef nonnull %i.hp, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.i, i32 noundef 0)
  %i.kt = load ptr, ptr %i.i, align 8, !tbaa !8   ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !13
  %i.kw = load i32, ptr %i.p, align 4, !tbaa !14  ; 2 uses
  %.not61 = icmp sgt i32 %i.kv, %i.kw
  br i1 %.not61, label %.loopexit177.thread, label %bb.r, !llvm.loop !107

.loopexit177:                                     ; preds = %bb.q, %.loopexit178
  %i.kx = icmp eq ptr %.promoted239, null
  br i1 %i.kx, label %free_num.exit, label %.loopexit177.thread

.loopexit177.thread:                              ; preds = %bb.z, %.loopexit177
  %i.ky = phi ptr [ %.promoted239, %.loopexit177 ], [ %i.iy, %bb.z ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 12 ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !10
  %i.lb = add nsw i32 %i.la, -1                   ; 2 uses
  store i32 %i.lb, ptr %i.kz, align 4, !tbaa !10
  %i.lc = icmp eq i32 %i.lb, 0
  br i1 %i.lc, label %bb.aa, label %free_num.exit

bb.aa:                                            ; preds = %.loopexit177.thread
  tail call void @free(ptr noundef nonnull %i.ky) #20
  br label %free_num.exit

free_num.exit:                                    ; preds = %.loopexit177.thread, %bb.aa, %.loopexit177
  %i.ld = load ptr, ptr %i.g, align 8, !tbaa !8   ; 3 uses
  %i.le = icmp eq ptr %i.ld, null
  br i1 %i.le, label %free_num.exit142, label %bb.ab
end_hunk_2
