inline.NumInlined: 78
inline.NumDeleted: 35
begin_hunk_0_@VP8LGetBackwardReferences:bb.a
  %i.h = getelementptr i8, ptr %9, i64 8          ; 3 uses
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !16, !noalias !41 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %GetBackwardReferencesLowEffort.exit.thread, label %VP8LRefsCursorInit.exit.i.i

VP8LRefsCursorInit.exit.i.i:                      ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25, !noalias !44 ; 3 uses
  %.not45.i.i = icmp eq ptr %i.j, null
  br i1 %.not45.i.i, label %GetBackwardReferencesLowEffort.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %VP8LRefsCursorInit.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !26, !noalias !44
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.m
  %i.o = add nsw i32 %0, -8
  %i.p = add i32 %0, 24
  br label %bb.d

bb.d:                                             ; preds = %VP8LRefsCursorNext.exit.i.i, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %VP8LRefsCursorNext.exit.i.i ] ; 3 uses
  %.sroa.10.07.i.i = phi ptr [ %.val.i, %.lr.ph.i.i ], [ %.sroa.10.1.i.i, %VP8LRefsCursorNext.exit.i.i ] ; 2 uses
  %.sroa.13.06.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %.sroa.13.1.i.i, %VP8LRefsCursorNext.exit.i.i ] ; 2 uses
  %.val4.i.i = load i8, ptr %.sroa.0.08.i.i, align 4, !tbaa !47
  %.not.i.i = icmp eq i8 %.val4.i.i, 2
  br i1 %.not.i.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !50   ; 3 uses
  %i.s = sdiv i32 %i.r, %0                        ; 5 uses
  %i.t = mul nsw i32 %i.s, %0                     ; 0 uses
  %.recomposed = srem i32 %i.r, %0                ; 4 uses
  %i.u = icmp slt i32 %.recomposed, 9
  %i.v = icmp slt i32 %i.s, 8
  %or.cond.i.i.i = and i1 %i.v, %i.u
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = shl nsw i32 %i.s, 4
  %i.x = or disjoint i32 %i.w, 8
  %i.y = sub i32 %i.x, %.recomposed
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr @plane_to_code_lut, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !7
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nuw nsw i32 %i.ac, 1
  br label %VP8LDistanceToPlaneCode.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = icmp sgt i32 %.recomposed, %i.o
  %i.af = icmp slt i32 %i.s, 7
  %or.cond3.i.i.i = and i1 %i.af, %i.ae
  br i1 %or.cond3.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = shl i32 %i.s, 4
  %i.ah = add i32 %i.p, %i.ag
  %i.ai = sub i32 %i.ah, %.recomposed
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr @plane_to_code_lut, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !7
  %i.am = zext i8 %i.al to i32
  %i.an = add nuw nsw i32 %i.am, 1
  br label %VP8LDistanceToPlaneCode.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = add nsw i32 %i.r, 120
  br label %VP8LDistanceToPlaneCode.exit.i.i

VP8LDistanceToPlaneCode.exit.i.i:                 ; preds = %bb.i, %bb.h, %bb.f
  %.0.i.i.i = phi i32 [ %i.ad, %bb.f ], [ %i.an, %bb.h ], [ %i.ao, %bb.i ]
  store i32 %.0.i.i.i, ptr %i.q, align 4, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %VP8LDistanceToPlaneCode.exit.i.i, %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 8 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %.sroa.13.06.i.i
  br i1 %i.aq, label %bb.k, label %VP8LRefsCursorNext.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %.sroa.10.07.i.i, align 8, !tbaa !18 ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %GetBackwardReferencesLowEffort.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !25 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !26
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ax
  br label %VP8LRefsCursorNext.exit.i.i

VP8LRefsCursorNext.exit.i.i:                      ; preds = %bb.l, %bb.j
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.06.i.i, %bb.j ], [ %i.ay, %bb.l ]
  %.sroa.10.1.i.i = phi ptr [ %.sroa.10.07.i.i, %bb.j ], [ %i.ar, %bb.l ]
  %.sroa.0.1.i.i = phi ptr [ %i.ap, %bb.j ], [ %i.au, %bb.l ] ; 2 uses
  %.not4.i.i = icmp eq ptr %.sroa.0.1.i.i, null
  br i1 %.not4.i.i, label %GetBackwardReferencesLowEffort.exit, label %bb.d, !llvm.loop !51

GetBackwardReferencesLowEffort.exit:              ; preds = %bb.k, %VP8LRefsCursorNext.exit.i.i
  %i.az = icmp eq ptr %9, null
  br i1 %i.az, label %.thread, label %GetBackwardReferencesLowEffort.exit.thread

.thread:                                          ; preds = %GetBackwardReferencesLowEffort.exit, %bb.b
  %i.ba = tail call i32 @WebPEncodingSetError(ptr noundef %11, i32 noundef 1) #11
  br label %bb.ic

GetBackwardReferencesLowEffort.exit.thread:       ; preds = %VP8LRefsCursorInit.exit.i.i, %bb.c, %GetBackwardReferencesLowEffort.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !8
  %i.bd = icmp eq ptr %i.bc, %i.h
  br i1 %i.bd, label %bb.m, label %bb.ib

bb.m:                                             ; preds = %GetBackwardReferencesLowEffort.exit.thread
  store ptr %i.h, ptr %i.bb, align 8, !tbaa !8
  br label %bb.ib

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 -1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  %i.be = icmp ne i32 %7, 0                       ; 4 uses
  %i.bf = select i1 %i.be, i64 2, i64 1
  %i.bg = getelementptr inbounds nuw [40 x i8], ptr %9, i64 %i.bf ; 27 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %i.bh = tail call ptr @VP8LAllocateHistogram(i32 noundef 10) #11 ; 9 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.critedge, label %.preheader242.i

.preheader242.i:                                  ; preds = %bb.n
  %.not253.i = icmp eq i32 %5, 0
  br i1 %.not253.i, label %.preheader242..preheader_crit_edge.i, label %.lr.ph.i

.preheader242..preheader_crit_edge.i:             ; preds = %.preheader242.i
  %.pre281.i = add nsw i32 %0, -8
  %.pre282.i = add i32 %0, 24
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %.preheader242.i
  %i.bj = mul i32 %1, %0                          ; 8 uses
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bm = add i32 %i.bj, -2                       ; 3 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp sgt i32 %i.bj, 1                   ; 3 uses
  %i.bp = zext i32 %i.bm to i64                   ; 4 uses
  %i.bq = add nsw i32 %0, -8                      ; 13 uses
  %i.br = add i32 %0, 24                          ; 13 uses
  %i.bs = shl nsw i32 %0, 1
  %i.bt = mul nsw i32 %0, 3
  %i.bu = shl nsw i32 %0, 2
  %i.bv = mul nsw i32 %0, 5
  %i.bw = mul nsw i32 %0, 6
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %wide.trip.count357.i.i = zext nneg i32 %i.bj to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 12 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 9 uses
  %i.de = getelementptr i8, ptr %i.bg, i64 8      ; 9 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 9 uses
  %i.dh = sext i32 %0 to i64
  %i.di = sub nsw i64 0, %i.dh
  %.sroa.3.0.insert.ext.i.i.i = zext i32 %0 to i64
  %.sroa.3.0.insert.shift.i.i.i = shl nuw i64 %.sroa.3.0.insert.ext.i.i.i, 32
  %i.dj = icmp slt i32 %3, 26
  %spec.select.i = select i1 %i.dj, i32 0, i32 %6 ; 10 uses
  %i.dk = icmp eq i32 %spec.select.i, 0
  %.not129.i.i = icmp slt i32 %spec.select.i, 0   ; 3 uses
  %19 = sub nsw i32 32, %spec.select.i            ; 2 uses
  %20 = icmp sgt i32 %spec.select.i, 0            ; 2 uses
  %21 = add i32 %spec.select.i, 1                 ; 2 uses
  %22 = zext i32 %spec.select.i to i64            ; 5 uses
  %i.dl = zext i32 %21 to i64                     ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.du = add i32 %0, 1
  %i.dv = icmp ult i32 %i.du, 3
  %i.dw = select i1 %i.dv, i32 %0, i32 0          ; 2 uses
  %i.dx = mul nsw i32 %i.dw, %0                   ; 2 uses
  %i.dy = sub nsw i32 1, %i.dx                    ; 2 uses
  %i.dz = icmp sgt i32 %i.dx, -8                  ; 2 uses
  %i.ea = icmp sgt i32 %i.dy, %i.bq
  %i.eb = shl nsw i32 %i.dw, 4                    ; 2 uses
  %i.ec = add i32 %i.eb, %i.br
  %i.ed = or disjoint i32 %i.eb, 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %brmerge.i = select i1 %i.dz, i1 true, i1 %i.ea
  %.mux.i = select i1 %i.dz, i32 %i.ed, i32 %i.ec
  %.pn215.in.i.i = sub i32 %.mux.i, %i.dy
  %.pn215.i.i = sext i32 %.pn215.in.i.i to i64
  %.0.i.in.in.in.i.i = getelementptr inbounds i8, ptr @plane_to_code_lut, i64 %.pn215.i.i
  %i.ef = and i64 %i.bp, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ef, 0
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bp ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %indvars.iv.next.i.i.prol = add nsw i64 %i.bp, -1
  %i.ei = icmp eq i32 %i.bm, 0
  %invariant.op = or disjoint i64 %.sroa.3.0.insert.shift.i.i.i, 2
  %xtraiter255 = and i64 %i.dl, 3                 ; 3 uses
  %i.ej = icmp ult i32 %21, 4
  %unroll_iter = and i64 %i.dl, 4294967292
  %lcmp.mod256.not = icmp eq i64 %xtraiter255, 0
  %lcmp.mod257 = icmp ne i64 %xtraiter255, 0
  %xtraiter258 = and i64 %22, 1
  %lcmp.mod259.not = icmp eq i64 %xtraiter258, 0
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %17, i64 %22
  %indvars.iv.next167.i.i.prol = add nsw i64 %22, -1
  %i.el = icmp eq i32 %spec.select.i, 1
  br label %bb.o

.preheader.loopexit.i:                            ; preds = %.loopexit.i
  %.pre.i = load i32, ptr %i.e, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader242..preheader_crit_edge.i
  %.pre-phi283.i = phi i32 [ %.pre282.i, %.preheader242..preheader_crit_edge.i ], [ %i.br, %.preheader.loopexit.i ] ; 2 uses
  %.pre-phi.i = phi i32 [ %.pre281.i, %.preheader242..preheader_crit_edge.i ], [ %i.bq, %.preheader.loopexit.i ] ; 2 uses
  %i.em = phi i32 [ 0, %.preheader242..preheader_crit_edge.i ], [ %.pre.i, %.preheader.loopexit.i ] ; 3 uses
  %i.en = icmp sgt i32 %3, 24                     ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  br i1 %i.be, label %bb.gk, label %bb.hj

bb.o:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.0107255.i = phi i32 [ %5, %.lr.ph.i ], [ %i.ajx, %.loopexit.i ] ; 2 uses
  %.0116254.i = phi i32 [ 1, %.lr.ph.i ], [ %i.ajy, %.loopexit.i ] ; 6 uses
  %i.er = and i32 %.0116254.i, %.0107255.i
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %.loopexit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  switch i32 %.0116254.i, label %.critedge [
    i32 2, label %bb.q
    i32 1, label %bb.aw
    i32 4, label %bb.ax
  ]

bb.q:                                             ; preds = %bb.p
  %i.et = load ptr, ptr %i.dc, align 8, !tbaa !8  ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i47, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eu = load ptr, ptr %i.dd, align 8, !tbaa !14
  store ptr %i.eu, ptr %i.et, align 8, !tbaa !15
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ev = load ptr, ptr %i.de, align 8, !tbaa !16 ; 5 uses
  store ptr %i.ev, ptr %i.dd, align 8, !tbaa !14
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !8
  store ptr null, ptr %i.df, align 8, !tbaa !17
  store ptr null, ptr %i.de, align 8, !tbaa !16
  %i.ew = load i32, ptr %2, align 4, !tbaa !3
  %.sroa.3.0.insert.ext.i.i.i.i = zext i32 %i.ew to i64
  %.sroa.3.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.3.0.insert.ext.i.i.i.i, 32
  %.sroa.21.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i.i.i, 65536
  %i.ex = icmp eq ptr %i.ev, null
  br i1 %i.ex, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ey = load i32, ptr %i.bg, align 8, !tbaa !22
  %i.ez = sext i32 %i.ey to i64
  %i.fa = shl nsw i64 %i.ez, 3
  %i.fb = add nsw i64 %i.fa, 24
  %i.fc = call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.fb) #11 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i.i, label %BackwardRefsNewBlock.exit.thread.i.i.i.i, label %bb.u

BackwardRefsNewBlock.exit.thread.i.i.i.i:         ; preds = %bb.t
  %i.fd = load i32, ptr %i.dg, align 4, !tbaa !29
  %i.fe = or i32 %i.fd, 1
  store i32 %i.fe, ptr %i.dg, align 4, !tbaa !29
  br label %AddSingleLiteral.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 24 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !25
  %.pre.i.i = load ptr, ptr %i.dc, align 8, !tbaa !8
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.fh = load ptr, ptr %i.ev, align 8, !tbaa !18
  store ptr %i.fh, ptr %i.dd, align 8, !tbaa !14
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.pre87.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fi = phi ptr [ %i.ff, %bb.u ], [ %.pre87.i.i, %bb.v ]
  %i.fj = phi ptr [ %.pre.i.i, %bb.u ], [ %i.de, %bb.v ]
  %.021.i.i.i.i.i = phi ptr [ %i.fc, %bb.u ], [ %i.ev, %bb.v ] ; 5 uses
  store ptr %.021.i.i.i.i.i, ptr %i.fj, align 8, !tbaa !15
  store ptr %.021.i.i.i.i.i, ptr %i.dc, align 8, !tbaa !8
  store ptr %.021.i.i.i.i.i, ptr %i.df, align 8, !tbaa !17
  store ptr null, ptr %.021.i.i.i.i.i, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %.021.i.i.i.i.i, i64 16
  store i32 1, ptr %i.fk, align 8, !tbaa !26
  store i64 %.sroa.21.0.insert.insert.i.i.i.i, ptr %i.fi, align 4
  br label %AddSingleLiteral.exit.i.i

AddSingleLiteral.exit.i.i:                        ; preds = %bb.w, %BackwardRefsNewBlock.exit.thread.i.i.i.i
  br i1 %i.bo, label %.lr.ph.i.i49, label %BackwardReferencesRle.exit.i

.lr.ph.i.i49:                                     ; preds = %AddSingleLiteral.exit.i.i, %VP8LBackwardRefsCursorAdd.exit.i.i
  %.05586.i.i = phi i32 [ %.1.i.i, %VP8LBackwardRefsCursorAdd.exit.i.i ], [ 1, %AddSingleLiteral.exit.i.i ] ; 4 uses
  %i.fl = sub nsw i32 %i.bj, %.05586.i.i
  %i.fm = call range(i32 -2147483645, 4096) i32 @llvm.smin.i32(i32 range(i32 -2147483645, 2147483647) %i.fl, i32 4095) ; 2 uses
  %i.fn = zext nneg i32 %.05586.i.i to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fn ; 7 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -4 ; 2 uses
  %i.fq = load i32, ptr %i.fo, align 4, !tbaa !3
  %i.fr = load i32, ptr %i.fp, align 4, !tbaa !3
  %.not.i62.i.i = icmp eq i32 %i.fq, %i.fr
  br i1 %.not.i62.i.i, label %bb.x, label %FindMatchLength.exit.i.i

bb.x:                                             ; preds = %.lr.ph.i.i49
  %i.fs = load ptr, ptr @VP8LVectorMismatch, align 8, !tbaa !37
  %i.ft = call i32 %i.fs(ptr noundef nonnull %i.fo, ptr noundef nonnull %i.fp, i32 noundef range(i32 -2147483645, 2147483647) %i.fm) #11, !inline_history !52
  br label %FindMatchLength.exit.i.i

FindMatchLength.exit.i.i:                         ; preds = %bb.x, %.lr.ph.i.i49
  %.0.i.i.i50 = phi i32 [ %i.ft, %bb.x ], [ 0, %.lr.ph.i.i49 ] ; 5 uses
  %i.fu = icmp slt i32 %.05586.i.i, %0
  br i1 %i.fu, label %FindMatchLength.exit65.i.i, label %bb.y

bb.y:                                             ; preds = %FindMatchLength.exit.i.i
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.di ; 2 uses
  %i.fw = load i32, ptr %i.fo, align 4, !tbaa !3
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !3
  %.not.i63.i.i = icmp eq i32 %i.fw, %i.fx
  br i1 %.not.i63.i.i, label %bb.z, label %FindMatchLength.exit65.i.i

bb.z:                                             ; preds = %bb.y
  %i.fy = load ptr, ptr @VP8LVectorMismatch, align 8, !tbaa !37
  %i.fz = call i32 %i.fy(ptr noundef nonnull %i.fo, ptr noundef nonnull %i.fv, i32 noundef range(i32 -2147483645, 2147483647) %i.fm) #11, !inline_history !52
  br label %FindMatchLength.exit65.i.i

FindMatchLength.exit65.i.i:                       ; preds = %bb.z, %bb.y, %FindMatchLength.exit.i.i
  %i.ga = phi i32 [ 0, %FindMatchLength.exit.i.i ], [ %i.fz, %bb.z ], [ 0, %bb.y ] ; 5 uses
  %i.gb = icmp sge i32 %.0.i.i.i50, %i.ga
  %i.gc = icmp sgt i32 %.0.i.i.i50, 3
  %or.cond.i.i = and i1 %i.gc, %i.gb
  br i1 %or.cond.i.i, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %FindMatchLength.exit65.i.i
  %i.gd = shl i32 %.0.i.i.i50, 16
  %.sroa.22.0.insert.shift.i.i.i = zext i32 %i.gd to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.22.0.insert.shift.i.i.i, 4294967298
  %i.ge = load ptr, ptr %i.df, align 8, !tbaa !17 ; 3 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !26 ; 2 uses
  %i.gi = load i32, ptr %i.bg, align 8, !tbaa !22
  %i.gj = icmp eq i32 %i.gh, %i.gi
  br i1 %i.gj, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.gk = load ptr, ptr %i.dd, align 8, !tbaa !14 ; 3 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.gm = load i32, ptr %i.bg, align 8, !tbaa !22
  %i.gn = sext i32 %i.gm to i64
  %i.go = shl nsw i64 %i.gn, 3
  %i.gp = add nsw i64 %i.go, 24
  %i.gq = call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.gp) #11 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i, label %BackwardRefsNewBlock.exit.thread.i.i.i, label %bb.ae

BackwardRefsNewBlock.exit.thread.i.i.i:           ; preds = %bb.ad
  %i.gr = load i32, ptr %i.dg, align 4, !tbaa !29
  %i.gs = or i32 %i.gr, 1
  store i32 %i.gs, ptr %i.dg, align 4, !tbaa !29
  br label %VP8LBackwardRefsCursorAdd.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !25
  br label %BackwardRefsNewBlock.exit.i.i.i

bb.af:                                            ; preds = %bb.ac
  %i.gv = load ptr, ptr %i.gk, align 8, !tbaa !18
  store ptr %i.gv, ptr %i.dd, align 8, !tbaa !14
  br label %BackwardRefsNewBlock.exit.i.i.i

BackwardRefsNewBlock.exit.i.i.i:                  ; preds = %bb.af, %bb.ae
  %.021.i.i.i.i = phi ptr [ %i.gq, %bb.ae ], [ %i.gk, %bb.af ] ; 6 uses
  %i.gw = load ptr, ptr %i.dc, align 8, !tbaa !8
  store ptr %.021.i.i.i.i, ptr %i.gw, align 8, !tbaa !15
  store ptr %.021.i.i.i.i, ptr %i.dc, align 8, !tbaa !8
  store ptr %.021.i.i.i.i, ptr %i.df, align 8, !tbaa !17
  store ptr null, ptr %.021.i.i.i.i, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %.021.i.i.i.i, i64 16
  store i32 0, ptr %i.gx, align 8, !tbaa !26
  br label %bb.ag

bb.ag:                                            ; preds = %BackwardRefsNewBlock.exit.i.i.i, %bb.ab
  %i.gy = phi i32 [ 0, %BackwardRefsNewBlock.exit.i.i.i ], [ %i.gh, %bb.ab ] ; 2 uses
  %.0.i66.i.i = phi ptr [ %.021.i.i.i.i, %BackwardRefsNewBlock.exit.i.i.i ], [ %i.ge, %bb.ab ] ; 2 uses
end_hunk_0
begin_hunk_1_@VP8LGetBackwardReferences:bb.a
  %.pn.in.v.i.i = select i1 %i.xp, ptr %i.d, ptr %i.c
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv354.i.i
  %wide.trip.count352.i.i = zext nneg i32 %i.xq to i64
  %i.xw = trunc nuw nsw i64 %indvars.iv354.i.i to i32 ; 2 uses
  br label %bb.en

bb.en:                                            ; preds = %bb.es, %.lr.ph246.i.i
  %indvars.iv349.i.i = phi i64 [ 0, %.lr.ph246.i.i ], [ %indvars.iv.next350.i.i, %bb.es ] ; 2 uses
  %.2155244.i.i = phi i32 [ %i.xt, %.lr.ph246.i.i ], [ %.4.ph.i.i, %bb.es ] ; 3 uses
  %.0157243.i.i = phi i32 [ %i.xs, %.lr.ph246.i.i ], [ %.2159.ph.i.i, %bb.es ] ; 4 uses
  %.pn.in.i.i = getelementptr inbounds nuw [4 x i8], ptr %.pn.in.v.i.i, i64 %indvars.iv349.i.i
  %.pn.i132.i = load i32, ptr %.pn.in.i.i, align 4, !tbaa !3 ; 3 uses
  %i.xx = sub nsw i32 %i.xw, %.pn.i132.i          ; 3 uses
  %i.xy = icmp slt i32 %i.xx, 0
  br i1 %i.xy, label %bb.es, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.xz = zext nneg i32 %i.xx to i64
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.xz
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !3
  %i.yc = load i32, ptr %i.xv, align 4, !tbaa !3
  %.not186.i.i = icmp eq i32 %i.yb, %i.yc
  br i1 %.not186.i.i, label %.preheader.i.i, label %bb.es

.preheader.i.i:                                   ; preds = %bb.eo, %bb.eq
  %.0147.i.i = phi i32 [ %.1148.i.i, %bb.eq ], [ 0, %bb.eo ] ; 2 uses
  %.0145.i.i = phi i32 [ %i.ym, %bb.eq ], [ %i.xw, %bb.eo ] ; 2 uses
  %.0143.i.i = phi i32 [ %i.yp, %bb.eq ], [ %i.xx, %bb.eo ] ; 2 uses
  %i.yd = zext nneg i32 %.0143.i.i to i64
  %i.ye = getelementptr inbounds nuw [2 x i8], ptr %i.jo, i64 %i.yd
  %i.yf = load i16, ptr %i.ye, align 2, !tbaa !54 ; 3 uses
  %i.yg = zext nneg i32 %.0145.i.i to i64
  %i.yh = getelementptr inbounds nuw [2 x i8], ptr %i.jo, i64 %i.yg
  %i.yi = load i16, ptr %i.yh, align 2, !tbaa !54 ; 2 uses
  %.not187.i.i = icmp eq i16 %i.yf, %i.yi
  br i1 %.not187.i.i, label %bb.ep, label %.thread199.i.i

.thread199.i.i:                                   ; preds = %.preheader.i.i
  %i.yj = call i16 @llvm.umin.i16(i16 %i.yf, i16 %i.yi)
  %i.yk = zext i16 %i.yj to i32
  %.1148204.i.i = add nuw nsw i32 %.0147.i.i, %i.yk
  br label %.critedge2.i.i

bb.ep:                                            ; preds = %.preheader.i.i
  %i.yl = zext i16 %i.yf to i32                   ; 3 uses
  %i.ym = add nuw nsw i32 %.0145.i.i, %i.yl       ; 3 uses
  %.1148.i.i = add nuw nsw i32 %.0147.i.i, %i.yl  ; 4 uses
  %i.yn = icmp samesign ult i32 %.1148.i.i, 4096
  %i.yo = icmp slt i32 %i.ym, %i.bj
  %or.cond192.i.i = select i1 %i.yn, i1 %i.yo, i1 false
  br i1 %or.cond192.i.i, label %bb.eq, label %.critedge2.i.i

bb.eq:                                            ; preds = %bb.ep
  %i.yp = add nuw nsw i32 %.0143.i.i, %i.yl       ; 2 uses
  %i.yq = zext nneg i32 %i.yp to i64
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.yq
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !3
  %i.yt = zext nneg i32 %i.ym to i64
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.yt
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !3
  %i.yw = icmp eq i32 %i.ys, %i.yv
  br i1 %i.yw, label %.preheader.i.i, label %.critedge2.i.i, !llvm.loop !60

.critedge2.i.i:                                   ; preds = %bb.eq, %bb.ep, %.thread199.i.i
  %.1148207.i.i = phi i32 [ %.1148204.i.i, %.thread199.i.i ], [ %.1148.i.i, %bb.ep ], [ %.1148.i.i, %bb.eq ] ; 3 uses
  %i.yx = icmp slt i32 %.0157243.i.i, %.1148207.i.i
  br i1 %i.yx, label %bb.er, label %bb.es

bb.er:                                            ; preds = %.critedge2.i.i
  %i.yy = icmp samesign ugt i32 %.1148207.i.i, 4094
  br i1 %i.yy, label %.loopexit.thread.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er, %.critedge2.i.i, %bb.eo, %bb.en
  %.2159.ph.i.i = phi i32 [ %.0157243.i.i, %.critedge2.i.i ], [ %.0157243.i.i, %bb.eo ], [ %.0157243.i.i, %bb.en ], [ %.1148207.i.i, %bb.er ] ; 2 uses
  %.4.ph.i.i = phi i32 [ %.2155244.i.i, %.critedge2.i.i ], [ %.2155244.i.i, %bb.eo ], [ %.2155244.i.i, %bb.en ], [ %.pn.i132.i, %bb.er ] ; 2 uses
  %indvars.iv.next350.i.i = add nuw nsw i64 %indvars.iv349.i.i, 1 ; 2 uses
  %exitcond353.not.i.i = icmp eq i64 %indvars.iv.next350.i.i, %wide.trip.count352.i.i
  br i1 %exitcond353.not.i.i, label %.loopexit.i.i, label %bb.en, !llvm.loop !61

.loopexit.i.i:                                    ; preds = %bb.es, %.loopexit217.i.i
  %.4161.i.i = phi i32 [ %i.xs, %.loopexit217.i.i ], [ %.2159.ph.i.i, %bb.es ] ; 2 uses
  %.6.i.i = phi i32 [ %i.xt, %.loopexit217.i.i ], [ %.4.ph.i.i, %bb.es ]
  %i.yz = icmp slt i32 %.4161.i.i, 5
  br i1 %i.yz, label %bb.et, label %.loopexit.thread.i.i

.loopexit.thread.i.i:                             ; preds = %.lr.ph241.i.i, %bb.er, %.loopexit.i.i
  %.6447.i.i = phi i32 [ %.6.i.i, %.loopexit.i.i ], [ %.pn.i132.i, %bb.er ], [ %i.xk, %.lr.ph241.i.i ] ; 2 uses
  %.4161446.i.i = phi i32 [ %.4161.i.i, %.loopexit.i.i ], [ 4095, %bb.er ], [ 4095, %.lr.ph241.i.i ] ; 2 uses
  %i.za = shl i32 %.6447.i.i, 12
  %i.zb = or i32 %i.za, %.4161446.i.i
  br label %bb.et

bb.et:                                            ; preds = %.loopexit.thread.i.i, %.loopexit.i.i
  %.sink.i.i = phi i32 [ %i.zb, %.loopexit.thread.i.i ], [ 0, %.loopexit.i.i ]
  %.1175.i.i = phi i32 [ %.4161446.i.i, %.loopexit.thread.i.i ], [ 0, %.loopexit.i.i ]
  %.1169.i.i = phi i32 [ %.6447.i.i, %.loopexit.thread.i.i ], [ 0, %.loopexit.i.i ]
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %indvars.iv354.i.i
  store i32 %.sink.i.i, ptr %i.zc, align 4, !tbaa !3
  %indvars.iv.next355.i.i = add nuw nsw i64 %indvars.iv354.i.i, 1 ; 2 uses
  %exitcond358.not.i.i = icmp eq i64 %indvars.iv.next355.i.i, %wide.trip.count357.i.i
  br i1 %exitcond358.not.i.i, label %._crit_edge257.i.i, label %bb.ek, !llvm.loop !62

._crit_edge257.i.i:                               ; preds = %bb.et, %._crit_edge.i.i
  store i32 0, ptr %i.xf, align 4, !tbaa !3
  call void @WebPSafeFree(ptr noundef nonnull %i.jo) #11
  %i.zd = call fastcc i32 @BackwardReferencesLz77(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef nonnull readonly %18, ptr noundef nonnull %i.bg)
  br label %BackwardReferencesLz77Box.exit.i

BackwardReferencesLz77Box.exit.i:                 ; preds = %._crit_edge257.i.i, %bb.ay
  %.0.i131.i = phi i32 [ %i.zd, %._crit_edge257.i.i ], [ 0, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.eu

bb.eu:                                            ; preds = %BackwardReferencesLz77Box.exit.i, %bb.aw, %BackwardReferencesRle.exit.i
  %.0112.i = phi i32 [ %.0.i131.i, %BackwardReferencesLz77Box.exit.i ], [ %i.jk, %BackwardReferencesRle.exit.i ], [ %i.jl, %bb.aw ]
  %.not123.i = icmp eq i32 %.0112.i, 0
  br i1 %.not123.i, label %.critedge, label %.preheader240.i

.preheader240.i:                                  ; preds = %bb.eu, %bb.gj
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.gj ], [ 1, %bb.eu ] ; 7 uses
  %.0109252.i = phi i64 [ %.2111.ph.i, %bb.gj ], [ 0, %bb.eu ] ; 2 uses
  %i.ze = icmp eq i64 %indvars.iv.i, 1            ; 2 uses
  %i.zf = select i1 %i.ze, i32 0, i32 %6          ; 5 uses
  %i.zg = icmp ne i64 %indvars.iv.i, 1
  %or.cond.i = or i1 %i.be, %i.zg
  br i1 %or.cond.i, label %bb.ev, label %bb.gj

bb.ev:                                            ; preds = %.preheader240.i
  %i.zh = icmp eq i64 %indvars.iv.i, 0            ; 2 uses
  br i1 %i.zh, label %bb.ew, label %.thread214.i

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.a, i8 0, i64 44, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  %i.zi = load ptr, ptr %i.de, align 8, !tbaa !16, !noalias !63 ; 4 uses
  %.not.i.i135.i = icmp eq ptr %i.zi, null
  br i1 %.not.i.i135.i, label %VP8LRefsCursorInit.exit.i.i43, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 8
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !25, !noalias !63 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zi, i64 16
  %i.zm = load i32, ptr %i.zl, align 8, !tbaa !26, !noalias !63
  %i.zn = sext i32 %i.zm to i64
  %i.zo = getelementptr inbounds [8 x i8], ptr %i.zk, i64 %i.zn
  br label %VP8LRefsCursorInit.exit.i.i43

VP8LRefsCursorInit.exit.i.i43:                    ; preds = %bb.ex, %bb.ew
  %.sink2.i.i.i = phi ptr [ %i.zk, %bb.ex ], [ null, %bb.ew ] ; 2 uses
  %.sink.i.i.i = phi ptr [ %i.zo, %bb.ex ], [ null, %bb.ew ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.b, i8 0, i64 88, i1 false)
  br i1 %i.dk, label %CalculateBestCacheSize.exit.thread.i, label %.preheader127.i.i

.preheader127.i.i:                                ; preds = %VP8LRefsCursorInit.exit.i.i43
  br i1 %.not129.i.i, label %.preheader126.i.i, label %.lr.ph.preheader.i136.i

.lr.ph.preheader.i136.i:                          ; preds = %.preheader127.i.i
  %i.zp = call ptr @VP8LAllocateHistogram(i32 noundef 0) #11 ; 4 uses
  store ptr %i.zp, ptr %i.b, align 16, !tbaa !37
  %i.zq = icmp eq ptr %i.zp, null
  br i1 %i.zq, label %.lr.ph152.preheader.i.i, label %.lr.ph.peel.next.i.i

.lr.ph.peel.next.i.i:                             ; preds = %.lr.ph.preheader.i136.i
  call void @VP8LHistogramInit(ptr noundef nonnull %i.zp, i32 noundef 0, i32 noundef 1) #11
  br label %.lr.ph.i137.i

.preheader126.i.i:                                ; preds = %bb.ez, %.preheader127.i.i
  %i.zr = phi ptr [ null, %.preheader127.i.i ], [ %i.zp, %bb.ez ] ; 5 uses
  %.not120140.i.i = icmp eq ptr %.sink2.i.i.i, null
  br i1 %.not120140.i.i, label %.preheader.i141.i, label %.lr.ph145.i.i

.lr.ph145.i.i:                                    ; preds = %.preheader126.i.i
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 1032
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zr, i64 2056
  br label %bb.fa

.lr.ph.i137.i:                                    ; preds = %bb.ez, %.lr.ph.peel.next.i.i
  %indvars.iv.i138.i = phi i64 [ 1, %.lr.ph.peel.next.i.i ], [ %indvars.iv.next.i139.i, %bb.ez ] ; 5 uses
  %i.zv = trunc nuw nsw i64 %indvars.iv.i138.i to i32 ; 3 uses
  %i.zw = call ptr @VP8LAllocateHistogram(i32 noundef %i.zv) #11 ; 3 uses
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i138.i
  store ptr %i.zw, ptr %i.zx, align 8, !tbaa !37
  %i.zy = icmp eq ptr %i.zw, null
  br i1 %i.zy, label %.lr.ph152.preheader.i.i, label %bb.ey

bb.ey:                                            ; preds = %.lr.ph.i137.i
  call void @VP8LHistogramInit(ptr noundef nonnull %i.zw, i32 noundef %i.zv, i32 noundef 1) #11
  %i.zz = getelementptr inbounds nuw [16 x i8], ptr %17, i64 %indvars.iv.i138.i
  %i.aaa = call i32 @VP8LColorCacheInit(ptr noundef nonnull %i.zz, i32 noundef %i.zv) #11 ; 2 uses
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i138.i
  store i32 %i.aaa, ptr %i.aab, align 4, !tbaa !3
  %.not111.i.i = icmp eq i32 %i.aaa, 0
  br i1 %.not111.i.i, label %.lr.ph152.preheader.i.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %indvars.iv.next.i139.i = add nuw nsw i64 %indvars.iv.i138.i, 1 ; 2 uses
  %23 = trunc nuw i64 %indvars.iv.next.i139.i to i32
  %.not.i140.i = icmp slt i32 %spec.select.i, %23
  br i1 %.not.i140.i, label %.preheader126.i.i, label %.lr.ph.i137.i, !llvm.loop !66

.preheader.i141.i:                                ; preds = %VP8LRefsCursorNext.exit.i.i44, %bb.fj, %.preheader126.i.i
  br i1 %.not129.i.i, label %CalculateBestCacheSize.exit.thread.i, label %.lr.ph149.peel.next.i.i

.lr.ph149.peel.next.i.i:                          ; preds = %.preheader.i141.i
  %i.aac = call i64 @VP8LHistogramEstimateBits(ptr noundef %i.zr) #11
  br label %.lr.ph149.i.i

bb.fa:                                            ; preds = %VP8LRefsCursorNext.exit.i.i44, %.lr.ph145.i.i
  %.092144.i.i = phi ptr [ %2, %.lr.ph145.i.i ], [ %.2.i.i, %VP8LRefsCursorNext.exit.i.i44 ] ; 5 uses
  %.sroa.0.0143.i.i = phi ptr [ %.sink2.i.i.i, %.lr.ph145.i.i ], [ %.sroa.0.1.i.i45, %VP8LRefsCursorNext.exit.i.i44 ] ; 3 uses
  %.sroa.8.0142.i.i = phi ptr [ %i.zi, %.lr.ph145.i.i ], [ %.sroa.8.1.i.i, %VP8LRefsCursorNext.exit.i.i44 ] ; 2 uses
  %.sroa.11.0141.i.i = phi ptr [ %.sink.i.i.i, %.lr.ph145.i.i ], [ %.sroa.11.1.i.i, %VP8LRefsCursorNext.exit.i.i44 ] ; 2 uses
  %.val114.i.i = load i8, ptr %.sroa.0.0143.i.i, align 4, !tbaa !47
  %.not121.i.i = icmp eq i8 %.val114.i.i, 0
  br i1 %.not121.i.i, label %bb.fb, label %bb.ff

bb.fb:                                            ; preds = %bb.fa
  %i.aad = getelementptr inbounds nuw i8, ptr %.092144.i.i, i64 4 ; 2 uses
  %i.aae = load i32, ptr %.092144.i.i, align 4, !tbaa !3 ; 7 uses
  %i.aaf = lshr i32 %i.aae, 24
  %i.aag = lshr i32 %i.aae, 16
  %i.aah = and i32 %i.aag, 255
  %i.aai = lshr i32 %i.aae, 8
  %i.aaj = and i32 %i.aai, 255
  %i.aak = and i32 %i.aae, 255
  %i.aal = zext nneg i32 %i.aak to i64            ; 2 uses
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.zs, i64 %i.aal ; 2 uses
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !3
  %i.aao = add i32 %i.aan, 1
  store i32 %i.aao, ptr %i.aam, align 4, !tbaa !3
  %i.aap = load ptr, ptr %i.zr, align 8, !tbaa !68
  %i.aaq = zext nneg i32 %i.aaj to i64            ; 2 uses
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %i.aaq ; 2 uses
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !3
  %i.aat = add i32 %i.aas, 1
  store i32 %i.aat, ptr %i.aar, align 4, !tbaa !3
  %i.aau = zext nneg i32 %i.aah to i64            ; 2 uses
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.aau ; 2 uses
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !3
  %i.aax = add i32 %i.aaw, 1
  store i32 %i.aax, ptr %i.aav, align 4, !tbaa !3
  %i.aay = zext nneg i32 %i.aaf to i64            ; 2 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %i.aay ; 2 uses
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !3
  %i.abb = add i32 %i.aba, 1
  store i32 %i.abb, ptr %i.aaz, align 4, !tbaa !3
  br i1 %20, label %.lr.ph139.preheader.i.i, label %.loopexit123.i.i

.lr.ph139.preheader.i.i:                          ; preds = %bb.fb
  %i.abc = mul i32 %i.aae, 506832829
  %i.abd = lshr i32 %i.abc, %19
  br label %.lr.ph139.i.i

.lr.ph139.i.i:                                    ; preds = %bb.fe, %.lr.ph139.preheader.i.i
  %indvars.iv169.i.i = phi i64 [ %22, %.lr.ph139.preheader.i.i ], [ %indvars.iv.next170.i.i, %bb.fe ] ; 5 uses
  %.091138.i.i = phi i32 [ %i.abd, %.lr.ph139.preheader.i.i ], [ %i.acj, %bb.fe ] ; 3 uses
  %i.abe = getelementptr inbounds nuw [16 x i8], ptr %17, i64 %indvars.iv169.i.i
  %.val115.i.i = load ptr, ptr %i.abe, align 16, !tbaa !71
  %i.abf = zext i32 %.091138.i.i to i64
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %.val115.i.i, i64 %i.abf ; 2 uses
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !3
  %i.abi = icmp eq i32 %i.abh, %i.aae
  br i1 %i.abi, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %.lr.ph139.i.i
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv169.i.i
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !37
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !68
  %i.abm = sext i32 %.091138.i.i to i64
  %i.abn = getelementptr [4 x i8], ptr %i.abl, i64 %i.abm
  %i.abo = getelementptr i8, ptr %i.abn, i64 1120 ; 2 uses
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !3
  %i.abq = add i32 %i.abp, 1
  store i32 %i.abq, ptr %i.abo, align 4, !tbaa !3
  br label %bb.fe

bb.fd:                                            ; preds = %.lr.ph139.i.i
  store i32 %i.aae, ptr %i.abg, align 4, !tbaa !3
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv169.i.i
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !37 ; 4 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 1032
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.aal ; 2 uses
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !3
  %i.abw = add i32 %i.abv, 1
  store i32 %i.abw, ptr %i.abu, align 4, !tbaa !3
  %i.abx = load ptr, ptr %i.abs, align 8, !tbaa !68
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.abx, i64 %i.aaq ; 2 uses
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !3
  %i.aca = add i32 %i.abz, 1
  store i32 %i.aca, ptr %i.aby, align 4, !tbaa !3
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.acb, i64 %i.aau ; 2 uses
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !3
  %i.ace = add i32 %i.acd, 1
  store i32 %i.ace, ptr %i.acc, align 4, !tbaa !3
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abs, i64 2056
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %i.aay ; 2 uses
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !3
  %i.aci = add i32 %i.ach, 1
  store i32 %i.aci, ptr %i.acg, align 4, !tbaa !3
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %indvars.iv.next170.i.i = add nsw i64 %indvars.iv169.i.i, -1
  %i.acj = ashr i32 %.091138.i.i, 1
  %i.ack = icmp sgt i64 %indvars.iv169.i.i, 1
  br i1 %i.ack, label %.lr.ph139.i.i, label %.loopexit123.i.i, !llvm.loop !73

bb.ff:                                            ; preds = %bb.fa
  %i.acl = getelementptr i8, ptr %.sroa.0.0143.i.i, i64 2
  %.val117.i.i = load i16, ptr %i.acl, align 2, !tbaa !74 ; 3 uses
  %i.acm = zext i16 %.val117.i.i to i32           ; 3 uses
  %i.acn = load i32, ptr %.092144.i.i, align 4, !tbaa !3
  %i.aco = xor i32 %i.acn, -1
  %i.acp = icmp ult i16 %.val117.i.i, 512
  br i1 %i.acp, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.acq = zext nneg i16 %.val117.i.i to i64
  %i.acr = getelementptr inbounds nuw [2 x i8], ptr @kPrefixEncodeCode, i64 %i.acq
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.acr, align 2, !tbaa !7
  %i.acs = sext i8 %.sroa.0.0.copyload.i.i.i to i32
  br label %VP8LPrefixEncode.exit.i.i

bb.fh:                                            ; preds = %bb.ff
  %i.act = add nsw i32 %i.acm, -1                 ; 2 uses
  %i.acu = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 range(i32 511, 2147483647) %i.act, i1 true) ; 2 uses
  %i.acv = sub nuw nsw i32 30, %i.acu
  %i.acw = lshr i32 %i.act, %i.acv
  %i.acx = and i32 %i.acw, 1
  %i.acy = shl nuw nsw i32 %i.acu, 1
  %i.acz = or disjoint i32 %i.acx, %i.acy
  %i.ada = xor i32 %i.acz, 62
  br label %VP8LPrefixEncode.exit.i.i

VP8LPrefixEncode.exit.i.i:                        ; preds = %bb.fh, %bb.fg
  %.0119.i.i = phi i32 [ %i.acs, %bb.fg ], [ %i.ada, %bb.fh ]
  br i1 %.not129.i.i, label %.preheader124.split.preheader.i.i, label %.lr.ph133.i.i

.lr.ph133.i.i:                                    ; preds = %VP8LPrefixEncode.exit.i.i
  %i.adb = sext i32 %.0119.i.i to i64             ; 5 uses
  br i1 %i.ej, label %.epil.preheader, label %.lr.ph133.i.i.new

.preheader124.i.i.unr-lcssa:                      ; preds = %.lr.ph133.i.i.new
  br i1 %lcmp.mod256.not, label %.preheader124.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader124.i.i.unr-lcssa, %.lr.ph133.i.i
  %indvars.iv160.i.i.epil.init = phi i64 [ 0, %.lr.ph133.i.i ], [ %indvars.iv.next161.i.i.3, %.preheader124.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod257)
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fi, %.epil.preheader
  %indvars.iv160.i.i.epil = phi i64 [ %indvars.iv160.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next161.i.i.epil, %bb.fi ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.fi ]
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv160.i.i.epil
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !37
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !68
  %i.adf = getelementptr [4 x i8], ptr %i.ade, i64 %i.adb
  %i.adg = getelementptr i8, ptr %i.adf, i64 1024 ; 2 uses
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !3
  %i.adi = add i32 %i.adh, 1
  store i32 %i.adi, ptr %i.adg, align 4, !tbaa !3
  %indvars.iv.next161.i.i.epil = add nuw nsw i64 %indvars.iv160.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter255
  br i1 %epil.iter.cmp.not, label %.preheader124.i.i, label %bb.fi, !llvm.loop !75

.preheader124.i.i:                                ; preds = %bb.fi, %.preheader124.i.i.unr-lcssa
  br i1 %20, label %.preheader124.split.us.i.i, label %.preheader124.split.preheader.i.i

.preheader124.split.preheader.i.i:                ; preds = %.preheader124.i.i, %VP8LPrefixEncode.exit.i.i
  %scevgep.i.i = getelementptr i8, ptr %.092144.i.i, i64 4
  %i.adj = add nsw i32 %i.acm, -1
  %i.adk = zext i32 %i.adj to i64
  %i.adl = shl nuw nsw i64 %i.adk, 2
  %scevgep165.i.i = getelementptr i8, ptr %scevgep.i.i, i64 %i.adl
  br label %.loopexit123.i.i

.preheader124.split.us.i.i:                       ; preds = %.preheader124.i.i, %._crit_edge.us.i.i
  %.193.us.i.i = phi ptr [ %i.aef, %._crit_edge.us.i.i ], [ %.092144.i.i, %.preheader124.i.i ] ; 2 uses
  %.090.us.i.i = phi i32 [ %i.aeg, %._crit_edge.us.i.i ], [ %i.acm, %.preheader124.i.i ]
  %.089.us.i.i = phi i32 [ %.1.us.i.i, %._crit_edge.us.i.i ], [ %i.aco, %.preheader124.i.i ] ; 2 uses
  %i.adm = load i32, ptr %.193.us.i.i, align 4, !tbaa !3 ; 7 uses
  %.not109.us.i.i = icmp eq i32 %i.adm, %.089.us.i.i
  br i1 %.not109.us.i.i, label %._crit_edge.us.i.i, label %.lr.ph136.us.i.i

.lr.ph136.us.i.i:                                 ; preds = %.preheader124.split.us.i.i
  %i.adn = mul i32 %i.adm, 506832829
  %i.ado = lshr i32 %i.adn, %19                   ; 3 uses
  br i1 %lcmp.mod259.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph136.us.i.i
  %i.adp = load ptr, ptr %i.ek, align 16, !tbaa !71
  %i.adq = sext i32 %i.ado to i64
  %i.adr = getelementptr inbounds [4 x i8], ptr %i.adp, i64 %i.adq
  store i32 %i.adm, ptr %i.adr, align 4, !tbaa !3
  %i.ads = ashr i32 %i.ado, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph136.us.i.i
  %indvars.iv166.i.i.unr = phi i64 [ %22, %.lr.ph136.us.i.i ], [ %indvars.iv.next167.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.088135.us.i.i.unr = phi i32 [ %i.ado, %.lr.ph136.us.i.i ], [ %i.ads, %.prol.loopexit.unr-lcssa ]
  br i1 %i.el, label %._crit_edge.us.i.i, label %.lr.ph136.us.i.i.new

.lr.ph136.us.i.i.new:                             ; preds = %.prol.loopexit, %.lr.ph136.us.i.i.new
  %indvars.iv166.i.i = phi i64 [ %indvars.iv.next167.i.i.1, %.lr.ph136.us.i.i.new ], [ %indvars.iv166.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.088135.us.i.i = phi i32 [ %i.aed, %.lr.ph136.us.i.i.new ], [ %.088135.us.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.adt = getelementptr inbounds nuw [16 x i8], ptr %17, i64 %indvars.iv166.i.i
  %i.adu = load ptr, ptr %i.adt, align 16, !tbaa !71
  %i.adv = sext i32 %.088135.us.i.i to i64
  %i.adw = getelementptr inbounds [4 x i8], ptr %i.adu, i64 %i.adv
  store i32 %i.adm, ptr %i.adw, align 4, !tbaa !3
  %i.adx = ashr i32 %.088135.us.i.i, 1
  %i.ady = getelementptr [16 x i8], ptr %17, i64 %indvars.iv166.i.i
  %i.adz = getelementptr i8, ptr %i.ady, i64 -16
  %i.aea = load ptr, ptr %i.adz, align 16, !tbaa !71
  %i.aeb = sext i32 %i.adx to i64
  %i.aec = getelementptr inbounds [4 x i8], ptr %i.aea, i64 %i.aeb
  store i32 %i.adm, ptr %i.aec, align 4, !tbaa !3
  %indvars.iv.next167.i.i.1 = add nsw i64 %indvars.iv166.i.i, -2
  %i.aed = ashr i32 %.088135.us.i.i, 2
  %i.aee = icmp sgt i64 %indvars.iv166.i.i, 2
  br i1 %i.aee, label %.lr.ph136.us.i.i.new, label %._crit_edge.us.i.i, !llvm.loop !77

._crit_edge.us.i.i:                               ; preds = %.prol.loopexit, %.lr.ph136.us.i.i.new, %.preheader124.split.us.i.i
  %.1.us.i.i = phi i32 [ %.089.us.i.i, %.preheader124.split.us.i.i ], [ %i.adm, %.lr.ph136.us.i.i.new ], [ %i.adm, %.prol.loopexit ]
  %i.aef = getelementptr inbounds nuw i8, ptr %.193.us.i.i, i64 4 ; 2 uses
  %i.aeg = add nsw i32 %.090.us.i.i, -1           ; 2 uses
  %.not110.us.i.i = icmp eq i32 %i.aeg, 0
  br i1 %.not110.us.i.i, label %.loopexit123.i.i, label %.preheader124.split.us.i.i, !llvm.loop !78

.lr.ph133.i.i.new:                                ; preds = %.lr.ph133.i.i, %.lr.ph133.i.i.new
  %indvars.iv160.i.i = phi i64 [ %indvars.iv.next161.i.i.3, %.lr.ph133.i.i.new ], [ 0, %.lr.ph133.i.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph133.i.i.new ], [ 0, %.lr.ph133.i.i ]
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv160.i.i
  %i.aei = load ptr, ptr %i.aeh, align 16, !tbaa !37
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !68
  %i.aek = getelementptr [4 x i8], ptr %i.aej, i64 %i.adb
  %i.ael = getelementptr i8, ptr %i.aek, i64 1024 ; 2 uses
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !3
  %i.aen = add i32 %i.aem, 1
  store i32 %i.aen, ptr %i.ael, align 4, !tbaa !3
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv160.i.i
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !37
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !68
  %i.aes = getelementptr [4 x i8], ptr %i.aer, i64 %i.adb
  %i.aet = getelementptr i8, ptr %i.aes, i64 1024 ; 2 uses
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !3
  %i.aev = add i32 %i.aeu, 1
  store i32 %i.aev, ptr %i.aet, align 4, !tbaa !3
  %i.aew = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv160.i.i
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 16
  %i.aey = load ptr, ptr %i.aex, align 16, !tbaa !37
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !68
  %i.afa = getelementptr [4 x i8], ptr %i.aez, i64 %i.adb
  %i.afb = getelementptr i8, ptr %i.afa, i64 1024 ; 2 uses
  %i.afc = load i32, ptr %i.afb, align 4, !tbaa !3
  %i.afd = add i32 %i.afc, 1
  store i32 %i.afd, ptr %i.afb, align 4, !tbaa !3
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv160.i.i
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 24
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !37
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !68
  %i.afi = getelementptr [4 x i8], ptr %i.afh, i64 %i.adb
  %i.afj = getelementptr i8, ptr %i.afi, i64 1024 ; 2 uses
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !3
  %i.afl = add i32 %i.afk, 1
  store i32 %i.afl, ptr %i.afj, align 4, !tbaa !3
  %indvars.iv.next161.i.i.3 = add nuw nsw i64 %indvars.iv160.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader124.i.i.unr-lcssa, label %.lr.ph133.i.i.new, !llvm.loop !79

.loopexit123.i.i:                                 ; preds = %._crit_edge.us.i.i, %bb.fe, %.preheader124.split.preheader.i.i, %bb.fb
  %.2.i.i = phi ptr [ %i.aad, %bb.fb ], [ %i.aad, %bb.fe ], [ %scevgep165.i.i, %.preheader124.split.preheader.i.i ], [ %i.aef, %._crit_edge.us.i.i ]
  %i.afm = getelementptr inbounds nuw i8, ptr %.sroa.0.0143.i.i, i64 8 ; 2 uses
  %i.afn = icmp eq ptr %i.afm, %.sroa.11.0141.i.i
  br i1 %i.afn, label %bb.fj, label %VP8LRefsCursorNext.exit.i.i44

bb.fj:                                            ; preds = %.loopexit123.i.i
  %i.afo = load ptr, ptr %.sroa.8.0142.i.i, align 8, !tbaa !18 ; 4 uses
  %i.afp = icmp eq ptr %i.afo, null
  br i1 %i.afp, label %.preheader.i141.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afo, i64 8
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !25 ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afo, i64 16
  %i.aft = load i32, ptr %i.afs, align 8, !tbaa !26
  %i.afu = sext i32 %i.aft to i64
  %i.afv = getelementptr inbounds [8 x i8], ptr %i.afr, i64 %i.afu
  br label %VP8LRefsCursorNext.exit.i.i44

VP8LRefsCursorNext.exit.i.i44:                    ; preds = %bb.fk, %.loopexit123.i.i
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.0141.i.i, %.loopexit123.i.i ], [ %i.afv, %bb.fk ]
  %.sroa.8.1.i.i = phi ptr [ %.sroa.8.0142.i.i, %.loopexit123.i.i ], [ %i.afo, %bb.fk ]
  %.sroa.0.1.i.i45 = phi ptr [ %i.afm, %.loopexit123.i.i ], [ %i.afr, %bb.fk ] ; 2 uses
  %.not120.i.i = icmp eq ptr %.sroa.0.1.i.i45, null
  br i1 %.not120.i.i, label %.preheader.i141.i, label %bb.fa, !llvm.loop !80

.lr.ph149.i.i:                                    ; preds = %.lr.ph149.i.i, %.lr.ph149.peel.next.i.i
  %.1202.i = phi i32 [ 0, %.lr.ph149.peel.next.i.i ], [ %spec.select234.i, %.lr.ph149.i.i ]
  %indvars.iv172.i.i = phi i64 [ 1, %.lr.ph149.peel.next.i.i ], [ %indvars.iv.next173.i.i, %.lr.ph149.i.i ] ; 3 uses
  %.097147.i.i = phi i64 [ %i.aac, %.lr.ph149.peel.next.i.i ], [ %spec.select235.i, %.lr.ph149.i.i ] ; 2 uses
  %i.afw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv172.i.i
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !37
  %i.afy = call i64 @VP8LHistogramEstimateBits(ptr noundef %i.afx) #11 ; 2 uses
  %i.afz = icmp ult i64 %i.afy, %.097147.i.i
  %i.aga = trunc nuw nsw i64 %indvars.iv172.i.i to i32
  %spec.select234.i = select i1 %i.afz, i32 %i.aga, i32 %.1202.i ; 2 uses
  %spec.select235.i = call i64 @llvm.umin.i64(i64 %i.afy, i64 %.097147.i.i)
  %indvars.iv.next173.i.i = add nuw nsw i64 %indvars.iv172.i.i, 1 ; 2 uses
  %24 = trunc nuw i64 %indvars.iv.next173.i.i to i32
  %.not106.i.i = icmp slt i32 %spec.select.i, %24
  br i1 %.not106.i.i, label %.lr.ph152.preheader.i.i, label %.lr.ph149.i.i, !llvm.loop !81

.lr.ph152.preheader.i.i:                          ; preds = %.lr.ph.i137.i, %bb.ey, %.lr.ph149.i.i, %.lr.ph.preheader.i136.i
  %.4.i = phi i32 [ %spec.select234.i, %.lr.ph149.i.i ], [ %i.zf, %.lr.ph.preheader.i136.i ], [ %i.zf, %bb.ey ], [ %i.zf, %.lr.ph.i137.i ]
  %.not124.i = phi i1 [ false, %.lr.ph149.i.i ], [ true, %.lr.ph.preheader.i136.i ], [ true, %bb.ey ], [ true, %.lr.ph.i137.i ]
  br label %.lr.ph152.i.i

.lr.ph152.i.i:                                    ; preds = %bb.fm, %.lr.ph152.preheader.i.i
  %indvars.iv178.i.i = phi i64 [ 0, %.lr.ph152.preheader.i.i ], [ %indvars.iv.next179.i.i, %bb.fm ] ; 4 uses
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv178.i.i
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !3
  %.not113.i.i = icmp eq i32 %i.agc, 0
  br i1 %.not113.i.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %.lr.ph152.i.i
  %i.agd = getelementptr inbounds nuw [16 x i8], ptr %17, i64 %indvars.iv178.i.i
  call void @VP8LColorCacheClear(ptr noundef nonnull %i.agd) #11
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %.lr.ph152.i.i
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv178.i.i
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !37
  call void @VP8LFreeHistogram(ptr noundef %i.agf) #11
  %indvars.iv.next179.i.i = add nuw nsw i64 %indvars.iv178.i.i, 1 ; 2 uses
  %25 = trunc nuw i64 %indvars.iv.next179.i.i to i32
  %.not112.i.i = icmp slt i32 %spec.select.i, %25
  br i1 %.not112.i.i, label %CalculateBestCacheSize.exit.i, label %.lr.ph152.i.i, !llvm.loop !82

CalculateBestCacheSize.exit.thread.i:             ; preds = %.preheader.i141.i, %VP8LRefsCursorInit.exit.i.i43
  %.5.ph.i = phi i32 [ 0, %VP8LRefsCursorInit.exit.i.i43 ], [ %i.zf, %.preheader.i141.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.fn

CalculateBestCacheSize.exit.i:                    ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %.not124.i, label %.critedge, label %bb.fn

bb.fn:                                            ; preds = %CalculateBestCacheSize.exit.i, %CalculateBestCacheSize.exit.thread.i
  %.5211.i = phi i32 [ %.5.ph.i, %CalculateBestCacheSize.exit.thread.i ], [ %.4.i, %CalculateBestCacheSize.exit.i ] ; 5 uses
  %i.agg = icmp sgt i32 %.5211.i, 0
  br i1 %i.agg, label %bb.fo, label %bb.fw

bb.fo:                                            ; preds = %bb.fn
  %.val128.i = load ptr, ptr %i.de, align 8, !tbaa !16, !noalias !83 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  %.not.i.i144.i = icmp eq ptr %.val128.i, null
  br i1 %.not.i.i144.i, label %VP8LRefsCursorInit.exit.thread.i.i, label %VP8LRefsCursorInit.exit.i145.i

VP8LRefsCursorInit.exit.i145.i:                   ; preds = %bb.fo
  %i.agh = getelementptr inbounds nuw i8, ptr %.val128.i, i64 8
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !25, !noalias !86 ; 3 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %.val128.i, i64 16
  %i.agk = load i32, ptr %i.agj, align 8, !tbaa !26, !noalias !86
  %i.agl = call i32 @VP8LColorCacheInit(ptr noundef nonnull %16, i32 noundef range(i32 1, -2147483648) %.5211.i) #11
  %.not.i146.i = icmp eq i32 %i.agl, 0
  br i1 %.not.i146.i, label %BackwardRefsWithLocalCache.exit.thread.i, label %.preheader4.i.i

VP8LRefsCursorInit.exit.thread.i.i:               ; preds = %bb.fo
  %i.agm = call i32 @VP8LColorCacheInit(ptr noundef nonnull %16, i32 noundef range(i32 1, -2147483648) %.5211.i) #11
  %.not20.i.i = icmp eq i32 %i.agm, 0
  br i1 %.not20.i.i, label %BackwardRefsWithLocalCache.exit.thread.i, label %BackwardRefsWithLocalCache.exit.i

.preheader4.i.i:                                  ; preds = %VP8LRefsCursorInit.exit.i145.i
  %.not27.i.i = icmp eq ptr %i.agi, null
  br i1 %.not27.i.i, label %BackwardRefsWithLocalCache.exit.i, label %.lr.ph12.i.preheader.i

.lr.ph12.i.preheader.i:                           ; preds = %.preheader4.i.i
  %i.agn = sext i32 %i.agk to i64
  %i.ago = getelementptr inbounds [8 x i8], ptr %i.agi, i64 %i.agn
  br label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %VP8LRefsCursorNext.exit.i154.i, %.lr.ph12.i.preheader.i
  %.01611.i.i = phi i32 [ %.2.i153.i, %VP8LRefsCursorNext.exit.i154.i ], [ 0, %.lr.ph12.i.preheader.i ] ; 3 uses
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.1.i157.i, %VP8LRefsCursorNext.exit.i154.i ], [ %i.agi, %.lr.ph12.i.preheader.i ] ; 5 uses
  %.sroa.8.09.i.i = phi ptr [ %.sroa.8.1.i156.i, %VP8LRefsCursorNext.exit.i154.i ], [ %.val128.i, %.lr.ph12.i.preheader.i ] ; 2 uses
  %.sroa.11.08.i.i = phi ptr [ %.sroa.11.1.i155.i, %VP8LRefsCursorNext.exit.i154.i ], [ %i.ago, %.lr.ph12.i.preheader.i ] ; 2 uses
  %.val20.i.i = load i8, ptr %.sroa.0.010.i.i, align 4, !tbaa !47
  %.not3.i.i = icmp eq i8 %.val20.i.i, 0
  br i1 %.not3.i.i, label %bb.fp, label %.preheader.i147.i

.preheader.i147.i:                                ; preds = %.lr.ph12.i.i
  %i.agp = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 2
  %i.agq = load i16, ptr %i.agp, align 2, !tbaa !74 ; 4 uses
  %i.agr = zext i16 %i.agq to i32                 ; 2 uses
  %.not13.i.i = icmp eq i16 %i.agq, 0
  br i1 %.not13.i.i, label %.loopexit.i152.i, label %.lr.ph.i148.i

.lr.ph.i148.i:                                    ; preds = %.preheader.i147.i
  %.val23.i.i = load ptr, ptr %16, align 8, !tbaa !71 ; 3 uses
  %i.ags = sext i32 %.01611.i.i to i64            ; 2 uses
  %xtraiter261 = and i32 %i.agr, 1
  %i.agt = icmp eq i16 %i.agq, 1
  br i1 %i.agt, label %.epil.preheader260, label %.lr.ph.i148.i.new

.lr.ph.i148.i.new:                                ; preds = %.lr.ph.i148.i
  %unroll_iter266 = and i32 %i.agr, 65534
  br label %bb.ft

bb.fp:                                            ; preds = %.lr.ph12.i.i
  %i.agu = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 4
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !50 ; 3 uses
  %.val21.i.i = load ptr, ptr %16, align 8, !tbaa !71
  %.val22.i.i = load i32, ptr %i.dm, align 8, !tbaa !89
  %i.agw = mul i32 %i.agv, 506832829
  %i.agx = lshr i32 %i.agw, %.val22.i.i           ; 2 uses
  %i.agy = sext i32 %i.agx to i64
  %i.agz = getelementptr inbounds [4 x i8], ptr %.val21.i.i, i64 %i.agy ; 2 uses
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !3
  %i.ahb = icmp eq i32 %i.aha, %i.agv
  %i.ahc = select i1 %i.ahb, i32 %i.agx, i32 -1   ; 2 uses
  %i.ahd = icmp sgt i32 %i.ahc, -1
  br i1 %i.ahd, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %.sroa.3.0.insert.ext.i.i159.i = zext nneg i32 %i.ahc to i64
  %.sroa.3.0.insert.shift.i.i160.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i159.i, 32
  %.sroa.0.0.insert.insert.i.i161.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i160.i, 65537
  store i64 %.sroa.0.0.insert.insert.i.i161.i, ptr %.sroa.0.010.i.i, align 4
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  store i32 %i.agv, ptr %i.agz, align 4, !tbaa !3
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.ahe = add nsw i32 %.01611.i.i, 1
  br label %.loopexit.i152.i

bb.ft:                                            ; preds = %bb.ft, %.lr.ph.i148.i.new
  %indvars.iv.i149.i = phi i64 [ %i.ags, %.lr.ph.i148.i.new ], [ %indvars.iv.next.i150.i.1, %bb.ft ] ; 3 uses
  %niter267 = phi i32 [ 0, %.lr.ph.i148.i.new ], [ %niter267.next.1, %bb.ft ]
  %i.ahf = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.i149.i
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !3 ; 2 uses
  %.val24.i.i = load i32, ptr %i.dm, align 8, !tbaa !89
  %i.ahh = mul i32 %i.ahg, 506832829
  %i.ahi = lshr i32 %i.ahh, %.val24.i.i
  %i.ahj = sext i32 %i.ahi to i64
  %i.ahk = getelementptr inbounds [4 x i8], ptr %.val23.i.i, i64 %i.ahj
  store i32 %i.ahg, ptr %i.ahk, align 4, !tbaa !3
  %indvars.iv.next.i150.i.1 = add nsw i64 %indvars.iv.i149.i, 2 ; 3 uses
  %i.ahl = getelementptr [4 x i8], ptr %2, i64 %indvars.iv.i149.i
  %i.ahm = getelementptr i8, ptr %i.ahl, i64 4
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !3 ; 2 uses
  %.val24.i.i.1 = load i32, ptr %i.dm, align 8, !tbaa !89
  %i.aho = mul i32 %i.ahn, 506832829
  %i.ahp = lshr i32 %i.aho, %.val24.i.i.1
  %i.ahq = sext i32 %i.ahp to i64
  %i.ahr = getelementptr inbounds [4 x i8], ptr %.val23.i.i, i64 %i.ahq
  store i32 %i.ahn, ptr %i.ahr, align 4, !tbaa !3
  %niter267.next.1 = add i32 %niter267, 2         ; 2 uses
  %niter267.ncmp.1 = icmp eq i32 %niter267.next.1, %unroll_iter266
  br i1 %niter267.ncmp.1, label %.loopexit.loopexit.i.i.unr-lcssa, label %bb.ft, !llvm.loop !90

.loopexit.loopexit.i.i.unr-lcssa:                 ; preds = %bb.ft
  %lcmp.mod263.not = icmp eq i32 %xtraiter261, 0
  br i1 %lcmp.mod263.not, label %.loopexit.loopexit.i.i, label %.epil.preheader260

.epil.preheader260:                               ; preds = %.loopexit.loopexit.i.i.unr-lcssa, %.lr.ph.i148.i
  %indvars.iv.i149.i.epil.init = phi i64 [ %i.ags, %.lr.ph.i148.i ], [ %indvars.iv.next.i150.i.1, %.loopexit.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod265 = trunc i16 %i.agq to i1
  call void @llvm.assume(i1 %lcmp.mod265)
  %indvars.iv.next.i150.i.epil = add nsw i64 %indvars.iv.i149.i.epil.init, 1
  %i.ahs = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.i149.i.epil.init
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !3 ; 2 uses
  %.val24.i.i.epil = load i32, ptr %i.dm, align 8, !tbaa !89
  %i.ahu = mul i32 %i.aht, 506832829
  %i.ahv = lshr i32 %i.ahu, %.val24.i.i.epil
  %i.ahw = sext i32 %i.ahv to i64
  %i.ahx = getelementptr inbounds [4 x i8], ptr %.val23.i.i, i64 %i.ahw
  store i32 %i.aht, ptr %i.ahx, align 4, !tbaa !3
  br label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %.loopexit.loopexit.i.i.unr-lcssa, %.epil.preheader260
  %indvars.iv.next.i150.i.lcssa = phi i64 [ %indvars.iv.next.i150.i.1, %.loopexit.loopexit.i.i.unr-lcssa ], [ %indvars.iv.next.i150.i.epil, %.epil.preheader260 ]
  %i.ahy = trunc nsw i64 %indvars.iv.next.i150.i.lcssa to i32
  br label %.loopexit.i152.i

.loopexit.i152.i:                                 ; preds = %.loopexit.loopexit.i.i, %bb.fs, %.preheader.i147.i
  %.2.i153.i = phi i32 [ %i.ahe, %bb.fs ], [ %.01611.i.i, %.preheader.i147.i ], [ %i.ahy, %.loopexit.loopexit.i.i ]
  %i.ahz = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 8 ; 2 uses
  %i.aia = icmp eq ptr %i.ahz, %.sroa.11.08.i.i
  br i1 %i.aia, label %bb.fu, label %VP8LRefsCursorNext.exit.i154.i

bb.fu:                                            ; preds = %.loopexit.i152.i
  %i.aib = load ptr, ptr %.sroa.8.09.i.i, align 8, !tbaa !18 ; 4 uses
  %i.aic = icmp eq ptr %i.aib, null
  br i1 %i.aic, label %BackwardRefsWithLocalCache.exit.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !25 ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aib, i64 16
  %i.aig = load i32, ptr %i.aif, align 8, !tbaa !26
  %i.aih = sext i32 %i.aig to i64
  %i.aii = getelementptr inbounds [8 x i8], ptr %i.aie, i64 %i.aih
  br label %VP8LRefsCursorNext.exit.i154.i

VP8LRefsCursorNext.exit.i154.i:                   ; preds = %bb.fv, %.loopexit.i152.i
  %.sroa.11.1.i155.i = phi ptr [ %.sroa.11.08.i.i, %.loopexit.i152.i ], [ %i.aii, %bb.fv ]
  %.sroa.8.1.i156.i = phi ptr [ %.sroa.8.09.i.i, %.loopexit.i152.i ], [ %i.aib, %bb.fv ]
  %.sroa.0.1.i157.i = phi ptr [ %i.ahz, %.loopexit.i152.i ], [ %i.aie, %bb.fv ] ; 2 uses
  %.not2.i.i = icmp eq ptr %.sroa.0.1.i157.i, null
  br i1 %.not2.i.i, label %BackwardRefsWithLocalCache.exit.i, label %.lr.ph12.i.i, !llvm.loop !91

BackwardRefsWithLocalCache.exit.thread.i:         ; preds = %VP8LRefsCursorInit.exit.thread.i.i, %VP8LRefsCursorInit.exit.i145.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  br label %.critedge

BackwardRefsWithLocalCache.exit.i:                ; preds = %VP8LRefsCursorNext.exit.i154.i, %bb.fu, %.preheader4.i.i, %VP8LRefsCursorInit.exit.thread.i.i
  call void @VP8LColorCacheClear(ptr noundef nonnull %16) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  br label %bb.fw

bb.fw:                                            ; preds = %BackwardRefsWithLocalCache.exit.i, %bb.fn
  %i.aij = icmp eq i32 %.5211.i, 0
  %or.cond5.i = and i1 %i.be, %i.aij
  br i1 %or.cond5.i, label %bb.fx, label %.thread214.i

.thread214.i:                                     ; preds = %bb.fw, %bb.ev
  %.0201218.i = phi i32 [ %.5211.i, %bb.fw ], [ %i.zf, %bb.ev ] ; 2 uses
  call void @VP8LHistogramCreate(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bg, i32 noundef %.0201218.i) #11
  %i.aik = call i64 @VP8LHistogramEstimateBits(ptr noundef nonnull %i.bh) #11
  br label %bb.fx
end_hunk_1
begin_hunk_2_@VP8LGetBackwardReferences:bb.a
  %.not.i170.1.i = icmp ne ptr %i.anz, null
  %i.aoa = icmp eq ptr %i.anz, %i.ep
  %i.aob = select i1 %.not.i170.1.i, i1 %i.aoa, i1 false
  %i.aoc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !8 ; 2 uses
  %.not16.i171.1.i = icmp ne ptr %i.aod, null
  %i.aoe = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.aof = icmp eq ptr %i.aod, %i.aoe
  %i.aog = select i1 %.not16.i171.1.i, i1 %i.aof, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i64 40, i1 false), !tbaa.struct !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false), !tbaa.struct !94
  br i1 %i.aog, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  store ptr %i.ep, ptr %i.eo, align 8, !tbaa !8
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  br i1 %i.aob, label %bb.hr, label %BackwardRefsSwap.exit172.1.i

bb.hr:                                            ; preds = %bb.hq
  store ptr %i.aoe, ptr %i.aoc, align 8, !tbaa !8
  br label %BackwardRefsSwap.exit172.1.i

BackwardRefsSwap.exit172.1.i:                     ; preds = %bb.hr, %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %.thread230.1.i

.thread230.1.i:                                   ; preds = %BackwardRefsSwap.exit172.1.i, %bb.hn, %bb.hl, %bb.hk
  %i.aoh = getelementptr i8, ptr %9, i64 8
  %.val.1.i = load ptr, ptr %i.aoh, align 8, !tbaa !16, !noalias !98 ; 4 uses
  %.not.i.i173.1.i = icmp eq ptr %.val.1.i, null
  br i1 %.not.i.i173.1.i, label %GetBackwardReferences.exit, label %VP8LRefsCursorInit.exit.i174.1.i

VP8LRefsCursorInit.exit.i174.1.i:                 ; preds = %.thread230.1.i
  %i.aoi = getelementptr inbounds nuw i8, ptr %.val.1.i, i64 8
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !25, !noalias !101 ; 3 uses
  %.not45.i.1.i = icmp eq ptr %i.aoj, null
  br i1 %.not45.i.1.i, label %GetBackwardReferences.exit, label %.lr.ph.i175.1.i

.lr.ph.i175.1.i:                                  ; preds = %VP8LRefsCursorInit.exit.i174.1.i
  %i.aok = getelementptr inbounds nuw i8, ptr %.val.1.i, i64 16
  %i.aol = load i32, ptr %i.aok, align 8, !tbaa !26, !noalias !101
  %i.aom = sext i32 %i.aol to i64
  %i.aon = getelementptr inbounds [8 x i8], ptr %i.aoj, i64 %i.aom
  br label %bb.hs

bb.hs:                                            ; preds = %VP8LRefsCursorNext.exit.i177.1.i, %.lr.ph.i175.1.i
  %.sroa.0.08.i.1.i = phi ptr [ %i.aoj, %.lr.ph.i175.1.i ], [ %.sroa.0.1.i178.1.i, %VP8LRefsCursorNext.exit.i177.1.i ] ; 3 uses
  %.sroa.10.07.i.1.i = phi ptr [ %.val.1.i, %.lr.ph.i175.1.i ], [ %.sroa.10.1.i.1.i, %VP8LRefsCursorNext.exit.i177.1.i ] ; 2 uses
  %.sroa.13.06.i.1.i = phi ptr [ %i.aon, %.lr.ph.i175.1.i ], [ %.sroa.13.1.i.1.i, %VP8LRefsCursorNext.exit.i177.1.i ] ; 2 uses
  %.val4.i.1.i = load i8, ptr %.sroa.0.08.i.1.i, align 4, !tbaa !47
  %.not.i176.1.i = icmp eq i8 %.val4.i.1.i, 2
  br i1 %.not.i176.1.i, label %bb.ht, label %bb.hy

bb.ht:                                            ; preds = %bb.hs
  %i.aoo = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.1.i, i64 4 ; 2 uses
  %i.aop = load i32, ptr %i.aoo, align 4, !tbaa !50 ; 3 uses
  %i.aoq = sdiv i32 %i.aop, %0                    ; 5 uses
  %i.aor = mul nsw i32 %i.aoq, %0                 ; 0 uses
  %.recomposed288 = srem i32 %i.aop, %0           ; 4 uses
  %i.aos = icmp slt i32 %.recomposed288, 9
  %i.aot = icmp slt i32 %i.aoq, 8
  %or.cond.i.i180.1.i = and i1 %i.aot, %i.aos
  br i1 %or.cond.i.i180.1.i, label %bb.hx, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.aou = icmp sgt i32 %.recomposed288, %.pre-phi.i
  %i.aov = icmp slt i32 %i.aoq, 7
  %or.cond3.i.i181.1.i = and i1 %i.aov, %i.aou
  br i1 %or.cond3.i.i181.1.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.aow = add nsw i32 %i.aop, 120
  br label %VP8LDistanceToPlaneCode.exit.i182.1.i

bb.hw:                                            ; preds = %bb.hu
  %i.aox = shl i32 %i.aoq, 4
  %i.aoy = add i32 %i.aox, %.pre-phi283.i
  %i.aoz = sub i32 %i.aoy, %.recomposed288
  %i.apa = sext i32 %i.aoz to i64
  %i.apb = getelementptr inbounds i8, ptr @plane_to_code_lut, i64 %i.apa
  %i.apc = load i8, ptr %i.apb, align 1, !tbaa !7
  %i.apd = zext i8 %i.apc to i32
  %i.ape = add nuw nsw i32 %i.apd, 1
  br label %VP8LDistanceToPlaneCode.exit.i182.1.i

bb.hx:                                            ; preds = %bb.ht
  %i.apf = shl nsw i32 %i.aoq, 4
  %i.apg = or disjoint i32 %i.apf, 8
  %i.aph = sub i32 %i.apg, %.recomposed288
  %i.api = sext i32 %i.aph to i64
  %i.apj = getelementptr inbounds i8, ptr @plane_to_code_lut, i64 %i.api
  %i.apk = load i8, ptr %i.apj, align 1, !tbaa !7
  %i.apl = zext i8 %i.apk to i32
  %i.apm = add nuw nsw i32 %i.apl, 1
  br label %VP8LDistanceToPlaneCode.exit.i182.1.i

VP8LDistanceToPlaneCode.exit.i182.1.i:            ; preds = %bb.hx, %bb.hw, %bb.hv
  %.0.i.i183.1.i = phi i32 [ %i.apm, %bb.hx ], [ %i.ape, %bb.hw ], [ %i.aow, %bb.hv ]
  store i32 %.0.i.i183.1.i, ptr %i.aoo, align 4, !tbaa !50
  br label %bb.hy

bb.hy:                                            ; preds = %VP8LDistanceToPlaneCode.exit.i182.1.i, %bb.hs
  %i.apn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.1.i, i64 8 ; 2 uses
  %i.apo = icmp eq ptr %i.apn, %.sroa.13.06.i.1.i
  br i1 %i.apo, label %bb.hz, label %VP8LRefsCursorNext.exit.i177.1.i

bb.hz:                                            ; preds = %bb.hy
  %i.app = load ptr, ptr %.sroa.10.07.i.1.i, align 8, !tbaa !18 ; 4 uses
  %i.apq = icmp eq ptr %i.app, null
  br i1 %i.apq, label %GetBackwardReferences.exit, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.apr = getelementptr inbounds nuw i8, ptr %i.app, i64 8
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !25 ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.app, i64 16
  %i.apu = load i32, ptr %i.apt, align 8, !tbaa !26
  %i.apv = sext i32 %i.apu to i64
  %i.apw = getelementptr inbounds [8 x i8], ptr %i.aps, i64 %i.apv
  br label %VP8LRefsCursorNext.exit.i177.1.i

VP8LRefsCursorNext.exit.i177.1.i:                 ; preds = %bb.ia, %bb.hy
  %.sroa.13.1.i.1.i = phi ptr [ %.sroa.13.06.i.1.i, %bb.hy ], [ %i.apw, %bb.ia ]
  %.sroa.10.1.i.1.i = phi ptr [ %.sroa.10.07.i.1.i, %bb.hy ], [ %i.app, %bb.ia ]
  %.sroa.0.1.i178.1.i = phi ptr [ %i.apn, %bb.hy ], [ %i.aps, %bb.ia ] ; 2 uses
  %.not4.i.1.i = icmp eq ptr %.sroa.0.1.i178.1.i, null
  br i1 %.not4.i.1.i, label %GetBackwardReferences.exit, label %bb.hs, !llvm.loop !51

GetBackwardReferences.exit:                       ; preds = %bb.hz, %VP8LRefsCursorNext.exit.i177.1.i, %bb.hi, %VP8LClearBackwardRefs.exit.i185.i, %.thread230.1.i, %VP8LRefsCursorInit.exit.i174.1.i
  %i.apx = load ptr, ptr %18, align 8, !tbaa !30
  call void @WebPSafeFree(ptr noundef %i.apx) #11
  %i.apy = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %i.apy, align 8, !tbaa !33
  store ptr null, ptr %18, align 8, !tbaa !30
  call void @VP8LFreeHistogram(ptr noundef nonnull %i.bh) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %bb.ib

.critedge:                                        ; preds = %bb.p, %bb.eu, %bb.ax, %CalculateBestCacheSize.exit.i, %bb.hm, %bb.gn, %BackwardRefsWithLocalCache.exit.thread.i, %BackwardRefsClone.exit.i, %BackwardRefsClone.exit196.i, %bb.n
  %i.apz = load ptr, ptr %18, align 8, !tbaa !30
  call void @WebPSafeFree(ptr noundef %i.apz) #11
  %i.aqa = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %i.aqa, align 8, !tbaa !33
  store ptr null, ptr %18, align 8, !tbaa !30
  call void @VP8LFreeHistogram(ptr noundef %i.bh) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  %i.aqb = call i32 @WebPEncodingSetError(ptr noundef %11, i32 noundef 1) #11
  br label %bb.ic

bb.ib:                                            ; preds = %bb.m, %GetBackwardReferencesLowEffort.exit.thread, %GetBackwardReferences.exit
  %i.aqc = load i32, ptr %13, align 4, !tbaa !3
  %i.aqd = add nsw i32 %i.aqc, %12
  %i.aqe = call i32 @WebPReportProgress(ptr noundef %11, i32 noundef %i.aqd, ptr noundef nonnull %13) #11
  br label %bb.ic

bb.ic:                                            ; preds = %.thread, %bb.ib, %.critedge
  %.1 = phi i32 [ %i.aqe, %bb.ib ], [ %i.ba, %.thread ], [ %i.aqb, %.critedge ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @BackwardReferencesLz77(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = mul nsw i32 %1, %0                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %VP8LClearBackwardRefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  store ptr %i.e, ptr %i.c, align 8, !tbaa !15
  br label %VP8LClearBackwardRefs.exit

VP8LClearBackwardRefs.exit:                       ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !14
  store ptr %i.f, ptr %i.b, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  store ptr null, ptr %i.i, align 8, !tbaa !17
  store ptr null, ptr %i.f, align 8, !tbaa !16
  %i.j = icmp sgt i32 %i.a, 0
  br i1 %i.j, label %.lr.ph101, label %._crit_edge

.lr.ph101:                                        ; preds = %VP8LClearBackwardRefs.exit
  %i.k = add nsw i32 %i.a, -1
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph101, %AddSingleLiteral.exit
  %.098 = phi i32 [ 0, %.lr.ph101 ], [ %i.ck, %AddSingleLiteral.exit ] ; 5 uses
  %.05497 = phi i32 [ -1, %.lr.ph101 ], [ %.188, %AddSingleLiteral.exit ] ; 2 uses
  %.val73 = load ptr, ptr %3, align 8, !tbaa !30  ; 2 uses
  %i.m = sext i32 %.098 to i64                    ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %.val73, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3    ; 2 uses
  %i.p = lshr i32 %i.o, 12
  %i.q = and i32 %i.o, 4095                       ; 4 uses
  %i.r = icmp samesign ugt i32 %i.q, 3
  br i1 %i.r, label %bb.d, label %..thread83_crit_edge

..thread83_crit_edge:                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !17
  br label %.thread83

bb.d:                                             ; preds = %bb.c
  %i.s = add nsw i32 %i.q, %.098
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.k) ; 2 uses
  %i.u = tail call i32 @llvm.smax.i32(i32 %.098, i32 %.05497) ; 4 uses
  %.06090 = add nsw i32 %i.u, 1                   ; 2 uses
  %.not7191 = icmp sgt i32 %.06090, %i.t
  br i1 %.not7191, label %.thread.thread, label %.lr.ph.preheader

.thread.thread:                                   ; preds = %bb.d
  %.pre102117 = load ptr, ptr %i.i, align 8, !tbaa !17
  br label %bb.l

.lr.ph.preheader:                                 ; preds = %bb.d
  %5 = zext nneg i32 %.06090 to i64
  %6 = zext nneg i32 %i.t to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %select.unfold
  %indvars.iv = phi i64 [ %5, %.lr.ph.preheader ], [ %indvars.iv.next, %select.unfold ] ; 4 uses
  %.05893 = phi i32 [ 0, %.lr.ph.preheader ], [ %.2, %select.unfold ] ; 2 uses
  %.07792 = phi i32 [ %i.q, %.lr.ph.preheader ], [ %.178, %select.unfold ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val73, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = and i32 %i.w, 4095                       ; 2 uses
  %i.y = icmp samesign ugt i32 %i.x, 3
  %i.z = select i1 %i.y, i32 %i.x, i32 1
  %i.aa = trunc nsw i64 %indvars.iv to i32
  %i.ab = add nsw i32 %i.z, %i.aa                 ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, %.05893
  br i1 %i.ac, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %.lr.ph
  %.not72 = icmp slt i32 %i.ab, %i.a
  %i.ad = trunc i64 %indvars.iv to i32
  %i.ae = sub i32 %i.ad, %.098                    ; 2 uses
  br i1 %.not72, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.e, %.lr.ph
  %.178 = phi i32 [ %.07792, %.lr.ph ], [ %i.ae, %bb.e ] ; 2 uses
  %.2 = phi i32 [ %.05893, %.lr.ph ], [ %i.ab, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not71 = icmp samesign ugt i64 %indvars.iv.next, %6
  br i1 %.not71, label %.thread, label %.lr.ph, !llvm.loop !104

.thread:                                          ; preds = %select.unfold, %bb.e
  %.279 = phi i32 [ %i.ae, %bb.e ], [ %.178, %select.unfold ] ; 2 uses
  %i.af = icmp eq i32 %.279, 1
  %.pre102 = load ptr, ptr %i.i, align 8, !tbaa !17 ; 2 uses
  br i1 %i.af, label %.thread83, label %bb.l

.thread83:                                        ; preds = %..thread83_crit_edge, %.thread
  %i.ag = phi ptr [ %.pre102, %.thread ], [ %.pre, %..thread83_crit_edge ] ; 3 uses
  %.189 = phi i32 [ %i.u, %.thread ], [ %.05497, %..thread83_crit_edge ] ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.m
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %.sroa.3.0.insert.ext.i.i = zext i32 %i.ai to i64
  %.sroa.3.0.insert.shift.i.i = shl nuw i64 %.sroa.3.0.insert.ext.i.i, 32
  %.sroa.21.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i, 65536
  %i.aj = icmp eq ptr %i.ag, null
  br i1 %i.aj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread83
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !26 ; 2 uses
  %i.am = load i32, ptr %4, align 8, !tbaa !22
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %.thread83
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !14  ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aq = load i32, ptr %4, align 8, !tbaa !22
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 3
  %i.at = add nsw i64 %i.as, 24
  %i.au = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.at) #11 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %BackwardRefsNewBlock.exit.thread.i.i, label %bb.i

BackwardRefsNewBlock.exit.thread.i.i:             ; preds = %bb.h
  %i.av = load i32, ptr %i.l, align 4, !tbaa !29
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %i.l, align 4, !tbaa !29
  br label %AddSingleLiteral.exit

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !25
  br label %BackwardRefsNewBlock.exit.i.i

bb.j:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %i.ao, align 8, !tbaa !18
  store ptr %i.az, ptr %i.h, align 8, !tbaa !14
  br label %BackwardRefsNewBlock.exit.i.i

BackwardRefsNewBlock.exit.i.i:                    ; preds = %bb.j, %bb.i
  %.021.i.i.i = phi ptr [ %i.au, %bb.i ], [ %i.ao, %bb.j ] ; 6 uses
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !8
  store ptr %.021.i.i.i, ptr %i.ba, align 8, !tbaa !15
  store ptr %.021.i.i.i, ptr %i.b, align 8, !tbaa !8
  store ptr %.021.i.i.i, ptr %i.i, align 8, !tbaa !17
  store ptr null, ptr %.021.i.i.i, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.021.i.i.i, i64 16
  store i32 0, ptr %i.bb, align 8, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %BackwardRefsNewBlock.exit.i.i, %bb.f
  %i.bc = phi i32 [ 0, %BackwardRefsNewBlock.exit.i.i ], [ %i.al, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %.021.i.i.i, %BackwardRefsNewBlock.exit.i.i ], [ %i.ag, %bb.f ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.bg = add nsw i32 %i.bc, 1
  store i32 %i.bg, ptr %i.bf, align 8, !tbaa !26
  %i.bh = sext i32 %i.bc to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bh
  store i64 %.sroa.21.0.insert.insert.i.i, ptr %i.bi, align 4
  br label %AddSingleLiteral.exit

bb.l:                                             ; preds = %.thread.thread, %.thread
  %.pre102119 = phi ptr [ %.pre102117, %.thread.thread ], [ %.pre102, %.thread ] ; 3 uses
  %.279118 = phi i32 [ %i.q, %.thread.thread ], [ %.279, %.thread ] ; 3 uses
  %.sroa.3.0.insert.ext.i = zext nneg i32 %i.p to i64
  %.sroa.3.0.insert.shift.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i, 32
  %i.bj = shl i32 %.279118, 16
  %.sroa.22.0.insert.shift.i = zext i32 %i.bj to i64
  %.sroa.22.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.shift.i, %.sroa.22.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.22.0.insert.insert.i, 2
  %i.bk = icmp eq ptr %.pre102119, null
  br i1 %i.bk, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %.pre102119, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !26 ; 2 uses
  %i.bn = load i32, ptr %4, align 8, !tbaa !22
  %i.bo = icmp eq i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !14  ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.br = load i32, ptr %4, align 8, !tbaa !22
  %i.bs = sext i32 %i.br to i64
  %i.bt = shl nsw i64 %i.bs, 3
  %i.bu = add nsw i64 %i.bt, 24
  %i.bv = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.bu) #11 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %BackwardRefsNewBlock.exit.thread.i, label %bb.p

BackwardRefsNewBlock.exit.thread.i:               ; preds = %bb.o
  %i.bw = load i32, ptr %i.l, align 4, !tbaa !29
  %i.bx = or i32 %i.bw, 1
  store i32 %i.bx, ptr %i.l, align 4, !tbaa !29
  br label %AddSingleLiteral.exit

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !25
  br label %BackwardRefsNewBlock.exit.i

bb.q:                                             ; preds = %bb.n
  %i.ca = load ptr, ptr %i.bp, align 8, !tbaa !18
  store ptr %i.ca, ptr %i.h, align 8, !tbaa !14
  br label %BackwardRefsNewBlock.exit.i

BackwardRefsNewBlock.exit.i:                      ; preds = %bb.q, %bb.p
  %.021.i.i = phi ptr [ %i.bv, %bb.p ], [ %i.bp, %bb.q ] ; 6 uses
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !8
  store ptr %.021.i.i, ptr %i.cb, align 8, !tbaa !15
  store ptr %.021.i.i, ptr %i.b, align 8, !tbaa !8
  store ptr %.021.i.i, ptr %i.i, align 8, !tbaa !17
  store ptr null, ptr %.021.i.i, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 16
  store i32 0, ptr %i.cc, align 8, !tbaa !26
  br label %bb.r

bb.r:                                             ; preds = %BackwardRefsNewBlock.exit.i, %bb.m
  %i.cd = phi i32 [ 0, %BackwardRefsNewBlock.exit.i ], [ %i.bm, %bb.m ] ; 2 uses
  %.0.i = phi ptr [ %.021.i.i, %BackwardRefsNewBlock.exit.i ], [ %.pre102119, %bb.m ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !25
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ch = add nsw i32 %i.cd, 1
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !26
  %i.ci = sext i32 %i.cd to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.ci
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.cj, align 4
  br label %AddSingleLiteral.exit

AddSingleLiteral.exit:                            ; preds = %bb.r, %BackwardRefsNewBlock.exit.thread.i, %bb.k, %BackwardRefsNewBlock.exit.thread.i.i
  %.188 = phi i32 [ %.189, %bb.k ], [ %.189, %BackwardRefsNewBlock.exit.thread.i.i ], [ %i.u, %BackwardRefsNewBlock.exit.thread.i ], [ %i.u, %bb.r ]
  %.27986 = phi i32 [ 1, %bb.k ], [ 1, %BackwardRefsNewBlock.exit.thread.i.i ], [ %.279118, %BackwardRefsNewBlock.exit.thread.i ], [ %.279118, %bb.r ]
  %i.ck = add nsw i32 %.27986, %.098              ; 2 uses
  %i.cl = icmp slt i32 %i.ck, %i.a
  br i1 %i.cl, label %bb.c, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %AddSingleLiteral.exit, %VP8LClearBackwardRefs.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !29
  %.not = icmp eq i32 %i.cn, 0
  %i.co = zext i1 %.not to i32
  ret i32 %i.co
}

declare i32 @VP8LColorCacheInit(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @VP8LColorCacheClear(ptr noundef) local_unnamed_addr #4

declare ptr @VP8LAllocateHistogram(i32 noundef) local_unnamed_addr #4

declare void @VP8LHistogramCreate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @VP8LHistogramEstimateBits(ptr noundef) local_unnamed_addr #4

declare i32 @VP8LBackwardReferencesTraceBackwards(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @VP8LFreeHistogram(ptr noundef) local_unnamed_addr #4

declare void @VP8LHistogramInit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

end_hunk_2
