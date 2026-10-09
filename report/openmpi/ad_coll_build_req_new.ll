Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/ad_coll_build_req_new?download=true
inline.NumInlined: 21
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ADIOI_Build_client_reqs:bb.a
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi455 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x i64>, ptr %i.u, align 8, !tbaa !17
  %wide.load456 = load <2 x i64>, ptr %i.v, align 8, !tbaa !17
  %i.w = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load, <2 x i64> zeroinitializer)
  %i.x = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load456, <2 x i64> zeroinitializer)
  %i.y = add <2 x i64> %i.w, %vec.phi             ; 2 uses
  %i.z = add <2 x i64> %i.x, %vec.phi455          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.z, %i.y
  %i.ab = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader248, label %.lr.ph.preheader476

.lr.ph.preheader476:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0162264.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !31
  %fwrite186 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 57, i64 1, ptr %i.ac) #10 ; 0 uses
  br label %bb.bg

.preheader248:                                    ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i64 [ %i.ab, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %.not = icmp eq i64 %spec.select.lcssa, 0
  br i1 %.not, label %bb.ax, label %.preheader245.lr.ph.us.preheader

.preheader245.lr.ph.us.preheader:                 ; preds = %.preheader248
  %wide.trip.count376 = zext nneg i32 %1 to i64
  %wide.trip.count381 = zext nneg i32 %1 to i64
  br label %.preheader245.lr.ph.us

.preheader245.lr.ph.us:                           ; preds = %.loopexit247.us, %.preheader245.lr.ph.us.preheader
  %i.ad = phi i1 [ false, %.loopexit247.us ], [ true, %.preheader245.lr.ph.us.preheader ] ; 2 uses
  %.1149294.us = phi i32 [ 1, %.loopexit247.us ], [ 0, %.preheader245.lr.ph.us.preheader ] ; 2 uses
  %.0150293.us = phi i32 [ %.3.us, %.loopexit247.us ], [ -1, %.preheader245.lr.ph.us.preheader ]
  %.0153292.us = phi i64 [ %spec.select190.us, %.loopexit247.us ], [ -1, %.preheader245.lr.ph.us.preheader ]
  %.0164291.us = phi ptr [ %i.hl, %.loopexit247.us ], [ null, %.preheader245.lr.ph.us.preheader ] ; 2 uses
  %.0166290.us = phi ptr [ %i.hj, %.loopexit247.us ], [ null, %.preheader245.lr.ph.us.preheader ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 -1, i64 %i.h, i1 false)
  %trunc.us = trunc nuw i32 %.1149294.us to i1    ; 3 uses
  %spec.select224.us = select i1 %trunc.us, i64 48, i64 80
  %i.ae = select i1 %trunc.us, i64 56, i64 88     ; 2 uses
  %spec.select222.us = select i1 %i.ad, i64 80, i64 48 ; 2 uses
  br label %.preheader245.us

.lr.ph270.us:                                     ; preds = %.preheader245.us, %bb.m
  %indvars.iv373 = phi i64 [ %indvars.iv.next374, %bb.m ], [ 0, %.preheader245.us ] ; 5 uses
  %.2152268.us = phi i32 [ %.3.us, %bb.m ], [ %.1151283.us, %.preheader245.us ] ; 4 uses
  %.2155267.us = phi i64 [ %.3156.us, %bb.m ], [ %.1154282.us, %.preheader245.us ] ; 4 uses
  %.0157266.us = phi i64 [ %.1158.us, %bb.m ], [ -1, %.preheader245.us ] ; 6 uses
  %i.af = trunc nuw nsw i64 %indvars.iv373 to i32 ; 2 uses
  %i.ag = tail call i32 @ADIOI_Agg_idx(i32 noundef %i.af, ptr noundef %0) #11 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.lr.ph270.us
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv373
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv373
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !17
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw [152 x i8], ptr %3, i64 %indvars.iv373
  %i.ao = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !17
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ao
  call fastcc void @find_next_off(ptr noundef %i.an, i64 noundef %i.aq, ptr noundef %i.ar, i32 noundef %.1149294.us, ptr noundef %i.a, ptr noundef %i.b)
  %i.as = load i64, ptr %i.a, align 8, !tbaa !17  ; 3 uses
  %i.at = icmp eq i64 %i.as, -1
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = icmp eq i64 %.0157266.us, -1
  %i.av = icmp sgt i64 %.0157266.us, %i.as
  %or.cond.us = or i1 %i.au, %i.av
  br i1 %or.cond.us, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %.lr.ph270.us
  %.1158.us = phi i64 [ %.0157266.us, %.lr.ph270.us ], [ %.0157266.us, %bb.i ], [ %.0157266.us, %bb.j ], [ %i.as, %bb.l ], [ %.0157266.us, %bb.k ]
  %.3156.us = phi i64 [ %.2155267.us, %.lr.ph270.us ], [ %.2155267.us, %bb.i ], [ %.2155267.us, %bb.j ], [ %i.aw, %bb.l ], [ %.2155267.us, %bb.k ] ; 2 uses
  %.3.us = phi i32 [ %.2152268.us, %.lr.ph270.us ], [ %.2152268.us, %bb.i ], [ %.2152268.us, %bb.j ], [ %i.af, %bb.l ], [ %.2152268.us, %bb.k ] ; 4 uses
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %exitcond377.not = icmp eq i64 %indvars.iv.next374, %wide.trip.count376
  br i1 %exitcond377.not, label %._crit_edge.us, label %.lr.ph270.us, !llvm.loop !80

._crit_edge.us:                                   ; preds = %bb.m
  %i.ax = sext i32 %.3.us to i64                  ; 9 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !17
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ax ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !17
  %i.bc = sub nsw i64 %i.az, %i.bb
  %spec.select190.us = tail call i64 @llvm.smin.i64(i64 %.3156.us, i64 %i.bc) ; 7 uses
  %i.bd = getelementptr inbounds [152 x i8], ptr %3, i64 %i.ax ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %spec.select224.us ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 144
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !16 ; 3 uses
  %i.bh = load i64, ptr %i.be, align 8, !tbaa !18 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !22 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !23 ; 4 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !28 ; 3 uses
  %i.bq = sub nsw i64 %i.bn, %i.bp                ; 5 uses
  %.not.i.us = icmp sgt i64 %i.bq, %spec.select190.us
  br i1 %.not.i.us, label %bb.u, label %bb.n

bb.n:                                             ; preds = %._crit_edge.us
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !26
  %i.bt = add nsw i64 %i.bs, %i.bq
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !26
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !29 ; 3 uses
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = add nsw i64 %i.bv, -1
  %i.by = icmp eq i64 %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !25
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %i.bl ; 3 uses
  br i1 %i.by, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !17
  %i.ce = load i64, ptr %i.cb, align 8, !tbaa !17
  %i.cf = add i64 %i.bp, %i.ce
  %i.cg = sub i64 %i.cd, %i.cf
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ch = load i64, ptr %i.cb, align 8, !tbaa !17
  %i.ci = load i64, ptr %i.bm, align 8, !tbaa !17
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !27
  %i.cl = add i64 %i.ch, %i.ci
  %i.cm = sub i64 %i.bq, %i.cl
  %i.cn = add nsw i64 %i.cm, %i.ck
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn.i.us = phi i64 [ %i.cg, %bb.p ], [ %i.cn, %bb.q ]
  %storemerge.i.us = add nsw i64 %.pn.i.us, %i.bh
  store i64 %storemerge.i.us, ptr %i.be, align 8, !tbaa !18
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %i.co = phi i64 [ %i.cq, %bb.s ], [ %i.bl, %bb.r ]
  %i.cp = add nsw i64 %i.co, 1
  %i.cq = srem i64 %i.cp, %i.bv                   ; 3 uses
  store i64 %i.cq, ptr %i.bk, align 8, !tbaa !23
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !17
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.s, label %.loopexit.i.us, !llvm.loop !0

bb.t:                                             ; preds = %bb.n
  %i.cu = add nsw i64 %i.bq, %i.bh
  store i64 %i.cu, ptr %i.be, align 8, !tbaa !18
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %bb.s, %bb.t
  store i64 0, ptr %i.bo, align 8, !tbaa !28
  br label %view_state_add_region.exit.us

bb.u:                                             ; preds = %._crit_edge.us
  %i.cv = add nsw i64 %i.bp, %spec.select190.us
  store i64 %i.cv, ptr %i.bo, align 8, !tbaa !28
  %i.cw = add nsw i64 %i.bh, %spec.select190.us
  store i64 %i.cw, ptr %i.be, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !26
  %i.cz = add nsw i64 %i.cy, %spec.select190.us
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !26
  br label %view_state_add_region.exit.us

view_state_add_region.exit.us:                    ; preds = %bb.u, %.loopexit.i.us
  %.0.i.us = phi i64 [ %i.bq, %.loopexit.i.us ], [ %spec.select190.us, %bb.u ] ; 6 uses
  %i.da = getelementptr inbounds [152 x i8], ptr %2, i64 %i.ax ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ae ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ae ; 2 uses
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !26 ; 2 uses
  %i.de = sub nsw i64 %i.dd, %.0.i.us
  %i.df = load i64, ptr %i.dc, align 8, !tbaa !26 ; 2 uses
  %.not273.us = icmp eq i64 %i.de, %i.df
  br i1 %.not273.us, label %.preheader244.us, label %.lr.ph274.us

bb.v:                                             ; preds = %.lr.ph274.us, %view_state_add_region.exit201.us
  %i.dg = phi i64 [ %.pre389, %.lr.ph274.us ], [ %i.ev, %view_state_add_region.exit201.us ] ; 3 uses
  %i.dh = phi i64 [ %.pre388, %.lr.ph274.us ], [ %i.ew, %view_state_add_region.exit201.us ] ; 6 uses
  %i.di = phi i64 [ %.pre, %.lr.ph274.us ], [ %i.ex, %view_state_add_region.exit201.us ] ; 3 uses
  %i.dj = phi i64 [ %i.df, %.lr.ph274.us ], [ %i.fa, %view_state_add_region.exit201.us ]
  %i.dk = phi i64 [ %i.dd, %.lr.ph274.us ], [ %i.ey, %view_state_add_region.exit201.us ]
  %6 = add i64 %.0.i.us, %i.dj
  %i.dl = sub i64 %i.dk, %6                       ; 4 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.dh ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !17
  %i.do = sub nsw i64 %i.dn, %i.dg                ; 4 uses
  %.not.i195.us = icmp sgt i64 %i.do, %i.dl
  br i1 %.not.i195.us, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dp = load i64, ptr %i.ii, align 8, !tbaa !26
  %i.dq = add nsw i64 %i.dp, %i.do
  store i64 %i.dq, ptr %i.ii, align 8, !tbaa !26
  %i.dr = load i64, ptr %i.ij, align 8, !tbaa !29 ; 3 uses
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dt = add nsw i64 %i.dr, -1
  %i.du = icmp eq i64 %i.dh, %i.dt
  %i.dv = load ptr, ptr %i.ik, align 8, !tbaa !25
  %i.dw = getelementptr [8 x i8], ptr %i.dv, i64 %i.dh ; 3 uses
  br i1 %i.du, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !17
  %i.dz = load i64, ptr %i.dw, align 8, !tbaa !17
  %i.ea = add i64 %i.dg, %i.dz
  %i.eb = sub i64 %i.dy, %i.ea
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ec = load i64, ptr %i.dw, align 8, !tbaa !17
  %i.ed = load i64, ptr %i.dm, align 8, !tbaa !17
  %i.ee = load i64, ptr %i.il, align 8, !tbaa !27
  %i.ef = add i64 %i.ec, %i.ed
  %i.eg = sub i64 %i.do, %i.ef
  %i.eh = add nsw i64 %i.eg, %i.ee
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn.i196.us = phi i64 [ %i.eb, %bb.y ], [ %i.eh, %bb.z ]
  %storemerge.i197.us = add nsw i64 %.pn.i196.us, %i.di ; 2 uses
  store i64 %storemerge.i197.us, ptr %i.ib, align 8, !tbaa !18
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %i.ei = phi i64 [ %i.ek, %bb.ab ], [ %i.dh, %bb.aa ]
  %i.ej = add nsw i64 %i.ei, 1
  %i.ek = srem i64 %i.ej, %i.dr                   ; 4 uses
  store i64 %i.ek, ptr %i.ig, align 8, !tbaa !23
  %i.el = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !17
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %bb.ab, label %.loopexit.i198.us, !llvm.loop !0

bb.ac:                                            ; preds = %bb.w
  %i.eo = add nsw i64 %i.do, %i.di                ; 2 uses
  store i64 %i.eo, ptr %i.ib, align 8, !tbaa !18
  br label %.loopexit.i198.us

.loopexit.i198.us:                                ; preds = %bb.ab, %bb.ac
  %i.ep = phi i64 [ %i.dh, %bb.ac ], [ %i.ek, %bb.ab ]
  %i.eq = phi i64 [ %i.eo, %bb.ac ], [ %storemerge.i197.us, %bb.ab ]
  store i64 0, ptr %i.ih, align 8, !tbaa !28
  br label %view_state_add_region.exit201.us

bb.ad:                                            ; preds = %bb.v
  %i.er = add nsw i64 %i.dg, %i.dl                ; 2 uses
  store i64 %i.er, ptr %i.ih, align 8, !tbaa !28
  %i.es = add nsw i64 %i.di, %i.dl                ; 2 uses
  store i64 %i.es, ptr %i.ib, align 8, !tbaa !18
  %i.et = load i64, ptr %i.ii, align 8, !tbaa !26
  %i.eu = add nsw i64 %i.et, %i.dl
  store i64 %i.eu, ptr %i.ii, align 8, !tbaa !26
  br label %view_state_add_region.exit201.us

view_state_add_region.exit201.us:                 ; preds = %bb.ad, %.loopexit.i198.us
  %i.ev = phi i64 [ %i.er, %bb.ad ], [ 0, %.loopexit.i198.us ]
  %i.ew = phi i64 [ %i.dh, %bb.ad ], [ %i.ep, %.loopexit.i198.us ]
  %i.ex = phi i64 [ %i.es, %bb.ad ], [ %i.eq, %.loopexit.i198.us ]
  %i.ey = load i64, ptr %i.db, align 8, !tbaa !26 ; 2 uses
  %i.ez = sub nsw i64 %i.ey, %.0.i.us
  %i.fa = load i64, ptr %i.dc, align 8, !tbaa !26 ; 2 uses
  %.not.us = icmp eq i64 %i.ez, %i.fa
  br i1 %.not.us, label %.preheader244.us, label %bb.v, !llvm.loop !81

bb.ae:                                            ; preds = %.lr.ph279.us, %bb.as
  %.0159278.us = phi i64 [ 0, %.lr.ph279.us ], [ %i.gm, %bb.as ] ; 2 uses
  %.1161277.us = phi i64 [ %.0160281.us, %.lr.ph279.us ], [ %i.gp, %bb.as ]
  %i.fb = sub nsw i64 %.0.i.us, %.0159278.us      ; 5 uses
  %i.fc = load i64, ptr %i.im, align 8, !tbaa !18 ; 7 uses
  %i.fd = load i64, ptr %i.ir, align 8, !tbaa !23 ; 4 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.fd ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !17
  %i.fg = load i64, ptr %i.is, align 8, !tbaa !28 ; 3 uses
  %i.fh = sub nsw i64 %i.ff, %i.fg                ; 5 uses
  %.not.i203.us = icmp sgt i64 %i.fh, %i.fb
  br i1 %.not.i203.us, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fi = load i64, ptr %i.it, align 8, !tbaa !26
  %i.fj = add nsw i64 %i.fi, %i.fh
  store i64 %i.fj, ptr %i.it, align 8, !tbaa !26
  %i.fk = load i64, ptr %i.iu, align 8, !tbaa !29 ; 3 uses
  %i.fl = icmp eq i64 %i.fk, 1
  br i1 %i.fl, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fm = add nsw i64 %i.fk, -1
  %i.fn = icmp eq i64 %i.fd, %i.fm
  %i.fo = load ptr, ptr %i.iv, align 8, !tbaa !25
  %i.fp = getelementptr [8 x i8], ptr %i.fo, i64 %i.fd ; 3 uses
  br i1 %i.fn, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fq = getelementptr i8, ptr %i.fp, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !17
  %i.fs = load i64, ptr %i.fp, align 8, !tbaa !17
  %i.ft = add i64 %i.fg, %i.fs
  %i.fu = sub i64 %i.fr, %i.ft
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.fv = load i64, ptr %i.fp, align 8, !tbaa !17
  %i.fw = load i64, ptr %i.fe, align 8, !tbaa !17
  %i.fx = load i64, ptr %i.iw, align 8, !tbaa !27
  %i.fy = add i64 %i.fv, %i.fw
  %i.fz = sub i64 %i.fh, %i.fy
  %i.ga = add nsw i64 %i.fz, %i.fx
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn.i204.us = phi i64 [ %i.fu, %bb.ah ], [ %i.ga, %bb.ai ]
  %storemerge.i205.us = add nsw i64 %.pn.i204.us, %i.fc
  store i64 %storemerge.i205.us, ptr %i.im, align 8, !tbaa !18
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %i.gb = phi i64 [ %i.gd, %bb.ak ], [ %i.fd, %bb.aj ]
  %i.gc = add nsw i64 %i.gb, 1
  %i.gd = srem i64 %i.gc, %i.fk                   ; 3 uses
  store i64 %i.gd, ptr %i.ir, align 8, !tbaa !23
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.gd
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !17
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %bb.ak, label %.loopexit.i206.us, !llvm.loop !0

bb.al:                                            ; preds = %bb.af
  %i.gh = add nsw i64 %i.fh, %i.fc
  store i64 %i.gh, ptr %i.im, align 8, !tbaa !18
  br label %.loopexit.i206.us

.loopexit.i206.us:                                ; preds = %bb.ak, %bb.al
  store i64 0, ptr %i.is, align 8, !tbaa !28
  br label %view_state_add_region.exit209.us

bb.am:                                            ; preds = %bb.ae
  %i.gi = add nsw i64 %i.fg, %i.fb
  store i64 %i.gi, ptr %i.is, align 8, !tbaa !28
  %i.gj = add nsw i64 %i.fc, %i.fb
  store i64 %i.gj, ptr %i.im, align 8, !tbaa !18
  %i.gk = load i64, ptr %i.it, align 8, !tbaa !26
  %i.gl = add nsw i64 %i.gk, %i.fb
  store i64 %i.gl, ptr %i.it, align 8, !tbaa !26
  br label %view_state_add_region.exit209.us

view_state_add_region.exit209.us:                 ; preds = %bb.am, %.loopexit.i206.us
  %.0.i207.us = phi i64 [ %i.fh, %.loopexit.i206.us ], [ %i.fb, %bb.am ] ; 6 uses
  %i.gm = add nsw i64 %.0.i207.us, %.0159278.us   ; 2 uses
  %i.gn = load i64, ptr %i.ba, align 8, !tbaa !17
  %i.go = add nsw i64 %i.gn, %.0.i207.us
  store i64 %i.go, ptr %i.ba, align 8, !tbaa !17
  %i.gp = add nsw i64 %.0.i207.us, %.1161277.us   ; 2 uses
  br i1 %trunc.us, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %view_state_add_region.exit209.us
  %i.gq = load i64, ptr %i.ix, align 8, !tbaa !17
  %.not185.us = icmp eq i64 %i.gq, %i.fc
  br i1 %.not185.us, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gr = load i32, ptr %i.iy, align 4, !tbaa !47
  %i.gs = add nsw i32 %i.gr, 1
  store i32 %i.gs, ptr %i.iy, align 4, !tbaa !47
  br label %bb.as

bb.ap:                                            ; preds = %view_state_add_region.exit209.us
  %i.gt = load i32, ptr %i.iz, align 4, !tbaa !47
  %i.gu = load i64, ptr %i.ix, align 8, !tbaa !17
  %.not184.us = icmp eq i64 %i.gu, %i.fc
  %i.gv = sext i32 %i.gt to i64                   ; 3 uses
  br i1 %.not184.us, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gw = load ptr, ptr %i.ja, align 8, !tbaa !51
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gv
  store i64 %i.fc, ptr %i.gx, align 8, !tbaa !52
  %i.gy = trunc i64 %.0.i207.us to i32
  %i.gz = load ptr, ptr %i.jb, align 8, !tbaa !53
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.gv
  store i32 %i.gy, ptr %i.ha, align 4, !tbaa !47
  %i.hb = load i32, ptr %i.iz, align 4, !tbaa !47
  %i.hc = add nsw i32 %i.hb, 1
  store i32 %i.hc, ptr %i.iz, align 4, !tbaa !47
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.hd = load ptr, ptr %i.jb, align 8, !tbaa !53
  %i.he = getelementptr [4 x i8], ptr %i.hd, i64 %i.gv
  %i.hf = getelementptr i8, ptr %i.he, i64 -4     ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !47
  %i.hh = trunc i64 %.0.i207.us to i32
  %i.hi = add i32 %i.hg, %i.hh
  store i32 %i.hi, ptr %i.hf, align 4, !tbaa !47
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %bb.an, %bb.ao
  %storemerge = add nsw i64 %.0.i207.us, %i.fc
  store i64 %storemerge, ptr %i.ix, align 8, !tbaa !17
  %.not183.us = icmp eq i64 %i.gm, %.0.i.us
  br i1 %.not183.us, label %.loopexit.us, label %bb.ae, !llvm.loop !82

bb.at:                                            ; preds = %._crit_edge284.us
  %i.hj = tail call ptr @ADIOI_Malloc_fn(i64 noundef %i.h, i32 noundef 941, ptr noundef nonnull @.str.1) #11 ; 5 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %.split.us, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hl = tail call ptr @ADIOI_Malloc_fn(i64 noundef %i.h, i32 noundef 945, ptr noundef nonnull @.str.1) #11 ; 3 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %.split296.us.a, label %.lr.ph289.us

.lr.ph289.us:                                     ; preds = %bb.au, %bb.aw
  %indvars.iv378 = phi i64 [ %indvars.iv.next379, %bb.aw ], [ 0, %bb.au ] ; 6 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv378 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !47
  %i.hp = sext i32 %i.ho to i64
  %i.hq = shl nsw i64 %i.hp, 3
  %i.hr = tail call ptr @ADIOI_Malloc_fn(i64 noundef %i.hq, i32 noundef 953, ptr noundef nonnull @.str.1) #11 ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %indvars.iv378
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !51
  %i.ht = icmp eq ptr %i.hr, null
  br i1 %i.ht, label %.split298.us, label %bb.av

bb.av:                                            ; preds = %.lr.ph289.us
  %i.hu = load i32, ptr %i.hn, align 4, !tbaa !47
  %i.hv = sext i32 %i.hu to i64
  %i.hw = shl nsw i64 %i.hv, 2
  %i.hx = tail call ptr @ADIOI_Malloc_fn(i64 noundef %i.hw, i32 noundef 959, ptr noundef nonnull @.str.1) #11 ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv378
  store ptr %i.hx, ptr %i.hy, align 8, !tbaa !53
  %i.hz = icmp eq ptr %i.hx, null
  br i1 %i.hz, label %.split301.us, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next379, %wide.trip.count381
  br i1 %exitcond382.not, label %.loopexit247.us, label %.lr.ph289.us, !llvm.loop !83

.loopexit247.us:                                  ; preds = %bb.aw
  br label %.preheader245.lr.ph.us, !llvm.loop !84

.preheader244.us:                                 ; preds = %view_state_add_region.exit201.us, %view_state_add_region.exit.us
  %.not183276.us = icmp eq i64 %.0.i.us, 0
  br i1 %.not183276.us, label %.loopexit.us, label %.lr.ph279.us

.loopexit.us:                                     ; preds = %bb.as, %.preheader244.us
  %.1161.lcssa.us = phi i64 [ %.0160281.us, %.preheader244.us ], [ %i.gp, %bb.as ] ; 2 uses
  %i.ia = icmp sgt i64 %spec.select.lcssa, %.1161.lcssa.us
  br i1 %i.ia, label %.preheader245.us, label %._crit_edge284.us, !llvm.loop !85

.preheader245.us:                                 ; preds = %.preheader245.lr.ph.us, %.loopexit.us
  %.1151283.us = phi i32 [ %.0150293.us, %.preheader245.lr.ph.us ], [ %.3.us, %.loopexit.us ]
  %.1154282.us = phi i64 [ %.0153292.us, %.preheader245.lr.ph.us ], [ %spec.select190.us, %.loopexit.us ]
  %.0160281.us = phi i64 [ 0, %.preheader245.lr.ph.us ], [ %.1161.lcssa.us, %.loopexit.us ] ; 2 uses
  br label %.lr.ph270.us

.lr.ph274.us:                                     ; preds = %view_state_add_region.exit.us
  %i.ib = getelementptr inbounds nuw i8, ptr %i.da, i64 %spec.select222.us ; 7 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.da, i64 144
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !16 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
end_hunk_0
begin_hunk_1_@ADIOI_Build_client_req:bb.a
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !52
  %i.cr = getelementptr inbounds [4 x i8], ptr %.077253, i64 %i.co
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !47
  %i.ct = sext i32 %i.cs to i64
  %i.cu = add nsw i64 %i.cq, %i.ct                ; 4 uses
  %i.cv = load i32, ptr %i.m, align 8, !tbaa !59  ; 2 uses
  %i.cw = icmp slt i32 %.3.i, %i.cv
  %or.cond.i = or i1 %i.cm, %i.cw
  br i1 %or.cond.i, label %bb.p, label %bb.w

bb.p:                                             ; preds = %.loopexit.i
  %i.cx = sub nsw i32 %i.cv, %.3.i
  %i.cy = add nsw i32 %i.cx, %.1146.i             ; 2 uses
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = shl nsw i64 %i.cz, 3                    ; 2 uses
  %i.db = tail call ptr @ADIOI_Malloc_fn(i64 noundef %i.da, i32 noundef 1406, ptr noundef nonnull @.str.1) #11 ; 4 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dd = load ptr, ptr @stderr, align 8, !tbaa !31
  %fwrite160.i = tail call i64 @fwrite(ptr nonnull @.str.32, i64 48, i64 1, ptr %i.dd) #10 ; 0 uses
  br label %process_pre_req.exit

bb.r:                                             ; preds = %bb.p
  %i.de = shl nsw i64 %i.cz, 2                    ; 2 uses
  %i.df = tail call ptr @ADIOI_Malloc_fn(i64 noundef %i.de, i32 noundef 1411, ptr noundef nonnull @.str.1) #11 ; 4 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !31
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.33, i64 47, i64 1, ptr %i.dh) #10 ; 0 uses
  br label %process_pre_req.exit

bb.t:                                             ; preds = %bb.r
  %i.di = load ptr, ptr %i.n, align 8, !tbaa !60
  %i.dj = sub nsw i32 %.3.i, %.1146.i
  %i.dk = sext i32 %i.dj to i64                   ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.db, ptr align 8 %i.dl, i64 %i.da, i1 false)
  %i.dm = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.df, ptr align 4 %i.dn, i64 %i.de, i1 false)
  br i1 %i.cm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i64 %.0144.i, ptr %i.db, align 8, !tbaa !52
  store i32 %.1.i, ptr %i.df, align 4, !tbaa !47
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.do = load ptr, ptr %i.n, align 8, !tbaa !60
  tail call void @ADIOI_Free_fn(ptr noundef %i.do, i32 noundef 1431, ptr noundef nonnull @.str.1) #11
  %i.dp = load ptr, ptr %i.o, align 8, !tbaa !61
  tail call void @ADIOI_Free_fn(ptr noundef %i.dp, i32 noundef 1432, ptr noundef nonnull @.str.1) #11
  store ptr %i.db, ptr %i.n, align 8, !tbaa !60
  store ptr %i.df, ptr %i.o, align 8, !tbaa !61
  store i32 %i.cy, ptr %i.m, align 8, !tbaa !59
  %i.dq = load i64, ptr %i.l, align 8, !tbaa !58
  %i.dr = sub nsw i64 %i.dq, %.0150251
  store i64 %i.dr, ptr %i.l, align 8, !tbaa !58
  br label %process_pre_req.exit

bb.w:                                             ; preds = %.loopexit.i
  %i.ds = load ptr, ptr %i.n, align 8, !tbaa !60
  tail call void @ADIOI_Free_fn(ptr noundef %i.ds, i32 noundef 1440, ptr noundef nonnull @.str.1) #11
  %i.dt = load ptr, ptr %i.o, align 8, !tbaa !61
  tail call void @ADIOI_Free_fn(ptr noundef %i.dt, i32 noundef 1441, ptr noundef nonnull @.str.1) #11
  store i32 0, ptr %i.m, align 8, !tbaa !59
  store i64 0, ptr %i.l, align 8, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %process_pre_req.exit

process_pre_req.exit:                             ; preds = %bb.w, %bb.v, %bb.s, %bb.q, %bb.j, %.loopexit6.i, %bb.c
  %.1165 = phi i32 [ %.0164249, %bb.c ], [ %.0164249, %bb.q ], [ %.0164249, %bb.s ], [ %.0164249, %bb.v ], [ %.0164249, %bb.w ], [ %i.af, %bb.j ], [ %.1148.ph.i, %.loopexit6.i ] ; 2 uses
  %.1160 = phi i32 [ %.0159250, %bb.c ], [ %.3.i, %bb.q ], [ %.3.i, %bb.s ], [ %.3.i, %bb.v ], [ %.3.i, %bb.w ], [ %.0159250, %bb.j ], [ %.0159250, %.loopexit6.i ] ; 2 uses
  %.0155 = phi i64 [ -1, %bb.c ], [ %i.cu, %bb.q ], [ %i.cu, %bb.s ], [ %i.cu, %bb.v ], [ %i.cu, %bb.w ], [ %i.bl, %bb.j ], [ %i.bb, %.loopexit6.i ]
  %.0151 = phi i64 [ 0, %bb.c ], [ %.0150251, %bb.q ], [ %.0150251, %bb.s ], [ %.0150251, %bb.v ], [ %.0150251, %bb.w ], [ %i.y, %bb.j ], [ %.2, %.loopexit6.i ] ; 2 uses
  %.1 = phi i64 [ %.0150251, %bb.c ], [ %.0150251, %bb.q ], [ %.0150251, %bb.s ], [ %.0150251, %bb.v ], [ %.0150251, %bb.w ], [ %i.y, %bb.j ], [ %.2, %.loopexit6.i ] ; 2 uses
  %i.du = icmp slt i64 %.0151, %5
  br i1 %i.du, label %.lr.ph246, label %._crit_edge

.lr.ph246:                                        ; preds = %process_pre_req.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 %.174.v ; 7 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 24 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 4 uses
  %i.dz = select i1 %trunc, i64 56, i64 88
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 %i.dz ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.174, i64 8 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 %spec.select ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.174, i64 16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.174, i64 24 ; 3 uses
  br label %bb.x

.loopexit:                                        ; preds = %bb.bf, %view_state_add_region.exit104.thread
  %.3167.lcssa = phi i32 [ %.2166242, %view_state_add_region.exit104.thread ], [ %.5169, %bb.bf ] ; 2 uses
  %.3162.lcssa = phi i32 [ %.2161243, %view_state_add_region.exit104.thread ], [ %.5, %bb.bf ] ; 2 uses
  %.2157.lcssa = phi i64 [ %.1156244, %view_state_add_region.exit104.thread ], [ %storemerge, %bb.bf ]
  %.2153.lcssa = phi i64 [ %.1152245, %view_state_add_region.exit104.thread ], [ %i.kp, %bb.bf ] ; 2 uses
  %i.ei = icmp slt i64 %.2153.lcssa, %5
  br i1 %i.ei, label %bb.x, label %._crit_edge, !llvm.loop !96

bb.x:                                             ; preds = %.lr.ph246, %.loopexit
  %.1152245 = phi i64 [ %.0151, %.lr.ph246 ], [ %.2153.lcssa, %.loopexit ] ; 3 uses
  %.1156244 = phi i64 [ %.0155, %.lr.ph246 ], [ %.2157.lcssa, %.loopexit ] ; 2 uses
  %.2161243 = phi i32 [ %.1160, %.lr.ph246 ], [ %.3162.lcssa, %.loopexit ] ; 2 uses
  %.2166242 = phi i32 [ %.1165, %.lr.ph246 ], [ %.3167.lcssa, %.loopexit ] ; 2 uses
  %i.ej = load i64, ptr %i.q, align 8, !tbaa !17
  call fastcc void @find_next_off(ptr noundef %4, i64 noundef %i.ej, ptr noundef %i.r, i32 noundef %.075254, ptr noundef %i.a, ptr noundef %i.b)
  %i.ek = load i64, ptr %i.b, align 8, !tbaa !17
  %i.el = sub nsw i64 %5, %.1152245
  %spec.store.select = tail call i64 @llvm.smin.i64(i64 %i.ek, i64 %i.el) ; 6 uses
  store i64 %spec.store.select, ptr %i.b, align 8, !tbaa !17
  %i.em = load ptr, ptr %i.s, align 8, !tbaa !16  ; 3 uses
  %i.en = load i64, ptr %i.dv, align 8, !tbaa !18 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !22 ; 2 uses
  %i.eq = load i64, ptr %i.dw, align 8, !tbaa !23 ; 4 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eq ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !17
  %i.et = load i64, ptr %i.dx, align 8, !tbaa !28 ; 3 uses
  %i.eu = sub nsw i64 %i.es, %i.et                ; 5 uses
  %.not.i = icmp sgt i64 %i.eu, %spec.store.select
  br i1 %.not.i, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ev = load i64, ptr %i.dy, align 8, !tbaa !26
  %i.ew = add nsw i64 %i.ev, %i.eu
  store i64 %i.ew, ptr %i.dy, align 8, !tbaa !26
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !29 ; 3 uses
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fa = add nsw i64 %i.eu, %i.en
  store i64 %i.fa, ptr %i.dv, align 8, !tbaa !18
  br label %.loopexit.i95

bb.aa:                                            ; preds = %bb.y
  %i.fb = add nsw i64 %i.ey, -1
  %i.fc = icmp eq i64 %i.eq, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !25
  %i.ff = getelementptr [8 x i8], ptr %i.fe, i64 %i.eq ; 3 uses
  br i1 %i.fc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !17
  %i.fh = load i64, ptr %i.er, align 8, !tbaa !17
  %i.fi = load i64, ptr %i.t, align 8, !tbaa !27
  %i.fj = add i64 %i.fg, %i.fh
  %i.fk = sub i64 %i.eu, %i.fj
  %i.fl = add nsw i64 %i.fk, %i.fi
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.fm = getelementptr i8, ptr %i.ff, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !17
  %i.fo = load i64, ptr %i.ff, align 8, !tbaa !17
  %i.fp = add i64 %i.et, %i.fo
  %i.fq = sub i64 %i.fn, %i.fp
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn.i = phi i64 [ %i.fq, %bb.ac ], [ %i.fl, %bb.ab ]
  %storemerge.i94 = add nsw i64 %.pn.i, %i.en
  store i64 %storemerge.i94, ptr %i.dv, align 8, !tbaa !18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %bb.ad
  %i.fr = phi i64 [ %i.ft, %bb.ae ], [ %i.eq, %bb.ad ]
  %i.fs = add nsw i64 %i.fr, 1
  %i.ft = srem i64 %i.fs, %i.ey                   ; 3 uses
  store i64 %i.ft, ptr %i.dw, align 8, !tbaa !23
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !17
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %bb.ae, label %.loopexit.i95, !llvm.loop !0

.loopexit.i95:                                    ; preds = %bb.ae, %bb.z
  store i64 0, ptr %i.dx, align 8, !tbaa !28
  br label %view_state_add_region.exit

bb.af:                                            ; preds = %bb.x
  %i.fx = add nsw i64 %i.et, %spec.store.select
  store i64 %i.fx, ptr %i.dx, align 8, !tbaa !28
  %i.fy = add nsw i64 %i.en, %spec.store.select
  store i64 %i.fy, ptr %i.dv, align 8, !tbaa !18
  %i.fz = load i64, ptr %i.dy, align 8, !tbaa !26
  %i.ga = add nsw i64 %i.fz, %spec.store.select
  store i64 %i.ga, ptr %i.dy, align 8, !tbaa !26
  br label %view_state_add_region.exit

view_state_add_region.exit:                       ; preds = %.loopexit.i95, %bb.af
  %.0.i = phi i64 [ %i.eu, %.loopexit.i95 ], [ %spec.store.select, %bb.af ] ; 8 uses
  %i.gb = load i64, ptr %i.ea, align 8, !tbaa !26 ; 2 uses
  %i.gc = sub nsw i64 %i.gb, %.0.i                ; 2 uses
  %i.gd = load i64, ptr %i.eb, align 8, !tbaa !26 ; 2 uses
  %.not89230 = icmp eq i64 %i.gc, %i.gd
  br i1 %.not89230, label %view_state_add_region.exit104.thread, label %.lr.ph

.lr.ph:                                           ; preds = %view_state_add_region.exit
  %i.ge = load ptr, ptr %i.u, align 8, !tbaa !16  ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !29 ; 4 uses
  %i.gh = icmp sgt i64 %i.gg, 1
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gj = icmp eq i64 %i.gg, 1
  %i.gk = add nsw i64 %i.gg, -1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %view_state_add_region.exit104
  %i.gm = phi i64 [ %i.gd, %.lr.ph ], [ %i.ir, %view_state_add_region.exit104 ] ; 4 uses
  %i.gn = phi i64 [ %i.gb, %.lr.ph ], [ %i.ip, %view_state_add_region.exit104 ] ; 3 uses
  br i1 %i.gh, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %7 = add i64 %.0.i, %i.gm
  %i.go = sub i64 %i.gn, %7
  %i.gp = load i64, ptr %i.v, align 8, !tbaa !57  ; 2 uses
  %i.gq = sdiv i64 %i.go, %i.gp                   ; 2 uses
  %i.gr = trunc i64 %i.gq to i32
  %i.gs = icmp sgt i32 %i.gr, 0
  br i1 %i.gs, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gt = and i64 %i.gq, 2147483647               ; 2 uses
  %i.gu = mul nsw i64 %i.gt, %i.gp
  %i.gv = add nsw i64 %i.gu, %i.gm                ; 4 uses
  store i64 %i.gv, ptr %i.eb, align 8, !tbaa !26
  %i.gw = load i64, ptr %i.w, align 8, !tbaa !27
  %i.gx = mul nsw i64 %i.gw, %i.gt
  %i.gy = load i64, ptr %.174, align 8, !tbaa !18
  %i.gz = add nsw i64 %i.gy, %i.gx
  store i64 %i.gz, ptr %.174, align 8, !tbaa !18
  %i.ha = sub nsw i64 %i.gv, %.0.i
  %i.hb = load i64, ptr %i.ea, align 8, !tbaa !26 ; 2 uses
  %i.hc = icmp eq i64 %i.ha, %i.hb
  br i1 %i.hc, label %view_state_add_region.exit104.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ag
  %i.hd = phi i64 [ %i.gm, %bb.ah ], [ %i.gv, %bb.ai ], [ %i.gm, %bb.ag ]
  %i.he = phi i64 [ %i.gn, %bb.ah ], [ %i.hb, %bb.ai ], [ %i.gn, %bb.ag ]
  %i.hf = add i64 %.0.i, %i.hd
  %i.hg = sub i64 %i.he, %i.hf                    ; 4 uses
  %i.hh = load i64, ptr %i.ec, align 8, !tbaa !18 ; 3 uses
  %i.hi = load ptr, ptr %i.gi, align 8, !tbaa !22 ; 2 uses
  %i.hj = load i64, ptr %i.ed, align 8, !tbaa !23 ; 4 uses
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.hj ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !17
  %i.hm = load i64, ptr %i.ee, align 8, !tbaa !28 ; 3 uses
  %i.hn = sub nsw i64 %i.hl, %i.hm                ; 4 uses
  %.not.i98 = icmp sgt i64 %i.hn, %i.hg
  br i1 %.not.i98, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ho = load i64, ptr %i.ef, align 8, !tbaa !26
  %i.hp = add nsw i64 %i.ho, %i.hn
  store i64 %i.hp, ptr %i.ef, align 8, !tbaa !26
  br i1 %i.gj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hq = add nsw i64 %i.hn, %i.hh
  store i64 %i.hq, ptr %i.ec, align 8, !tbaa !18
  br label %.loopexit.i101

bb.am:                                            ; preds = %bb.ak
  %i.hr = icmp eq i64 %i.hj, %i.gk
  %i.hs = load ptr, ptr %i.gl, align 8, !tbaa !25
  %i.ht = getelementptr [8 x i8], ptr %i.hs, i64 %i.hj ; 3 uses
  br i1 %i.hr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !17
  %i.hv = load i64, ptr %i.hk, align 8, !tbaa !17
  %i.hw = load i64, ptr %i.w, align 8, !tbaa !27
  %i.hx = add i64 %i.hu, %i.hv
  %i.hy = sub i64 %i.hn, %i.hx
  %i.hz = add nsw i64 %i.hy, %i.hw
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ia = getelementptr i8, ptr %i.ht, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !17
  %i.ic = load i64, ptr %i.ht, align 8, !tbaa !17
  %i.id = add i64 %i.hm, %i.ic
  %i.ie = sub i64 %i.ib, %i.id
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn.i99 = phi i64 [ %i.ie, %bb.ao ], [ %i.hz, %bb.an ]
  %storemerge.i100 = add nsw i64 %.pn.i99, %i.hh
  store i64 %storemerge.i100, ptr %i.ec, align 8, !tbaa !18
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %bb.ap
  %i.if = phi i64 [ %i.ih, %bb.aq ], [ %i.hj, %bb.ap ]
  %i.ig = add nsw i64 %i.if, 1
  %i.ih = srem i64 %i.ig, %i.gg                   ; 3 uses
  store i64 %i.ih, ptr %i.ed, align 8, !tbaa !23
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.ih
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !17
  %i.ik = icmp eq i64 %i.ij, 0
  br i1 %i.ik, label %bb.aq, label %.loopexit.i101, !llvm.loop !0

.loopexit.i101:                                   ; preds = %bb.aq, %bb.al
  store i64 0, ptr %i.ee, align 8, !tbaa !28
  br label %view_state_add_region.exit104

bb.ar:                                            ; preds = %bb.aj
  %i.il = add nsw i64 %i.hm, %i.hg
  store i64 %i.il, ptr %i.ee, align 8, !tbaa !28
  %i.im = add nsw i64 %i.hh, %i.hg
  store i64 %i.im, ptr %i.ec, align 8, !tbaa !18
  %i.in = load i64, ptr %i.ef, align 8, !tbaa !26
  %i.io = add nsw i64 %i.in, %i.hg
  store i64 %i.io, ptr %i.ef, align 8, !tbaa !26
  br label %view_state_add_region.exit104

view_state_add_region.exit104:                    ; preds = %bb.ar, %.loopexit.i101
  %i.ip = load i64, ptr %i.ea, align 8, !tbaa !26 ; 2 uses
  %i.iq = sub nsw i64 %i.ip, %.0.i                ; 2 uses
  %i.ir = load i64, ptr %i.eb, align 8, !tbaa !26 ; 2 uses
  %.not89 = icmp eq i64 %i.iq, %i.ir
  br i1 %.not89, label %view_state_add_region.exit104.thread, label %bb.ag

view_state_add_region.exit104.thread:             ; preds = %view_state_add_region.exit104, %bb.ai, %view_state_add_region.exit
  %i.is = phi i64 [ %i.gc, %view_state_add_region.exit ], [ %i.iq, %view_state_add_region.exit104 ], [ %i.gv, %bb.ai ]
  %.not90232 = icmp eq i64 %.0.i, 0
  br i1 %.not90232, label %.loopexit, label %.lr.ph238

.lr.ph238:                                        ; preds = %view_state_add_region.exit104.thread
  %i.it = load ptr, ptr %i.u, align 8, !tbaa !16  ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !22 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %.pre = load i64, ptr %.174, align 8, !tbaa !18
  %.pre276 = load i64, ptr %i.eg, align 8, !tbaa !23
  %.pre277 = load i64, ptr %i.eh, align 8, !tbaa !28
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph238, %bb.bf
  %i.iy = phi i64 [ %i.is, %.lr.ph238 ], [ %i.kk, %bb.bf ] ; 2 uses
  %i.iz = phi i64 [ %.pre277, %.lr.ph238 ], [ %i.kl, %bb.bf ] ; 3 uses
  %i.ja = phi i64 [ %.pre276, %.lr.ph238 ], [ %i.km, %bb.bf ] ; 6 uses
  %i.jb = phi i64 [ %.pre, %.lr.ph238 ], [ %i.kn, %bb.bf ] ; 7 uses
  %.076237 = phi i64 [ 0, %.lr.ph238 ], [ %i.ko, %bb.bf ] ; 2 uses
  %.2153236 = phi i64 [ %.1152245, %.lr.ph238 ], [ %i.kp, %bb.bf ]
  %.2157235 = phi i64 [ %.1156244, %.lr.ph238 ], [ %storemerge, %bb.bf ] ; 2 uses
  %.3162234 = phi i32 [ %.2161243, %.lr.ph238 ], [ %.5, %bb.bf ] ; 4 uses
  %.3167233 = phi i32 [ %.2166242, %.lr.ph238 ], [ %.5169, %bb.bf ] ; 3 uses
  %i.jc = sub nsw i64 %.0.i, %.076237             ; 5 uses
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.ja ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !17
  %i.jf = sub nsw i64 %i.je, %i.iz                ; 5 uses
  %.not.i106 = icmp sgt i64 %i.jf, %i.jc
  br i1 %.not.i106, label %bb.ba, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jg = add nsw i64 %i.iy, %i.jf                ; 2 uses
  store i64 %i.jg, ptr %i.eb, align 8, !tbaa !26
  %i.jh = load i64, ptr %i.iw, align 8, !tbaa !29 ; 3 uses
  %i.ji = icmp eq i64 %i.jh, 1
  br i1 %i.ji, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jj = add nsw i64 %i.jf, %i.jb                ; 2 uses
  store i64 %i.jj, ptr %.174, align 8, !tbaa !18
  br label %.loopexit.i109

bb.av:                                            ; preds = %bb.at
  %i.jk = add nsw i64 %i.jh, -1
  %i.jl = icmp eq i64 %i.ja, %i.jk
  %i.jm = load ptr, ptr %i.ix, align 8, !tbaa !25
  %i.jn = getelementptr [8 x i8], ptr %i.jm, i64 %i.ja ; 3 uses
  br i1 %i.jl, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !17
  %i.jp = load i64, ptr %i.jd, align 8, !tbaa !17
  %i.jq = load i64, ptr %i.w, align 8, !tbaa !27
  %i.jr = add i64 %i.jo, %i.jp
  %i.js = sub i64 %i.jf, %i.jr
  %i.jt = add nsw i64 %i.js, %i.jq
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.ju = getelementptr i8, ptr %i.jn, i64 8
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !17
  %i.jw = load i64, ptr %i.jn, align 8, !tbaa !17
  %i.jx = add i64 %i.iz, %i.jw
  %i.jy = sub i64 %i.jv, %i.jx
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn.i107 = phi i64 [ %i.jy, %bb.ax ], [ %i.jt, %bb.aw ]
  %storemerge.i108 = add nsw i64 %.pn.i107, %i.jb ; 2 uses
  store i64 %storemerge.i108, ptr %.174, align 8, !tbaa !18
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %bb.ay
  %i.jz = phi i64 [ %i.kb, %bb.az ], [ %i.ja, %bb.ay ]
  %i.ka = add nsw i64 %i.jz, 1
  %i.kb = srem i64 %i.ka, %i.jh                   ; 4 uses
  store i64 %i.kb, ptr %i.eg, align 8, !tbaa !23
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.kb
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !17
  %i.ke = icmp eq i64 %i.kd, 0
  br i1 %i.ke, label %bb.az, label %.loopexit.i109, !llvm.loop !0

.loopexit.i109:                                   ; preds = %bb.az, %bb.au
  %i.kf = phi i64 [ %i.ja, %bb.au ], [ %i.kb, %bb.az ]
  %i.kg = phi i64 [ %i.jj, %bb.au ], [ %storemerge.i108, %bb.az ]
  store i64 0, ptr %i.eh, align 8, !tbaa !28
  br label %view_state_add_region.exit112

bb.ba:                                            ; preds = %bb.as
  %i.kh = add nsw i64 %i.iz, %i.jc                ; 2 uses
  store i64 %i.kh, ptr %i.eh, align 8, !tbaa !28
  %i.ki = add nsw i64 %i.jb, %i.jc                ; 2 uses
  store i64 %i.ki, ptr %.174, align 8, !tbaa !18
  %i.kj = add nsw i64 %i.iy, %i.jc                ; 2 uses
  store i64 %i.kj, ptr %i.eb, align 8, !tbaa !26
  br label %view_state_add_region.exit112

view_state_add_region.exit112:                    ; preds = %.loopexit.i109, %bb.ba
  %i.kk = phi i64 [ %i.jg, %.loopexit.i109 ], [ %i.kj, %bb.ba ]
  %i.kl = phi i64 [ 0, %.loopexit.i109 ], [ %i.kh, %bb.ba ]
  %i.km = phi i64 [ %i.kf, %.loopexit.i109 ], [ %i.ja, %bb.ba ]
  %i.kn = phi i64 [ %i.kg, %.loopexit.i109 ], [ %i.ki, %bb.ba ]
  %.0.i110 = phi i64 [ %i.jf, %.loopexit.i109 ], [ %i.jc, %bb.ba ] ; 5 uses
  %i.ko = add nsw i64 %.0.i110, %.076237          ; 2 uses
  %i.kp = add nsw i64 %.0.i110, %.2153236         ; 2 uses
  br i1 %trunc, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %view_state_add_region.exit112
  %.not93 = icmp ne i64 %.2157235, %i.jb
  %i.kq = zext i1 %.not93 to i32
  %spec.select172 = add nsw i32 %.3167233, %i.kq
  br label %bb.bf

bb.bc:                                            ; preds = %view_state_add_region.exit112
  %.not92 = icmp eq i64 %.2157235, %i.jb
  %i.kr = sext i32 %.3162234 to i64               ; 3 uses
  br i1 %.not92, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ks = getelementptr inbounds [8 x i8], ptr %.079252, i64 %i.kr
  store i64 %i.jb, ptr %i.ks, align 8, !tbaa !52
  %i.kt = trunc i64 %.0.i110 to i32
  %i.ku = getelementptr inbounds [4 x i8], ptr %.077253, i64 %i.kr
  store i32 %i.kt, ptr %i.ku, align 4, !tbaa !47
  %i.kv = add nsw i32 %.3162234, 1
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.kw = getelementptr [4 x i8], ptr %.077253, i64 %i.kr
  %i.kx = getelementptr i8, ptr %i.kw, i64 -4     ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !47
  %i.kz = trunc i64 %.0.i110 to i32
  %i.la = add i32 %i.ky, %i.kz
  store i32 %i.la, ptr %i.kx, align 4, !tbaa !47
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be, %bb.bb
  %.5169 = phi i32 [ %spec.select172, %bb.bb ], [ %.3167233, %bb.be ], [ %.3167233, %bb.bd ] ; 2 uses
  %.5 = phi i32 [ %.3162234, %bb.bb ], [ %.3162234, %bb.be ], [ %i.kv, %bb.bd ] ; 2 uses
  %storemerge = add nsw i64 %.0.i110, %i.jb       ; 2 uses
  %.not90 = icmp eq i64 %i.ko, %.0.i
  br i1 %.not90, label %.loopexit, label %bb.as, !llvm.loop !97

._crit_edge:                                      ; preds = %.loopexit, %process_pre_req.exit.thread, %process_pre_req.exit
  %.1307 = phi i64 [ %.1, %process_pre_req.exit ], [ %5, %process_pre_req.exit.thread ], [ %.1, %.loopexit ]
  %.2166.lcssa = phi i32 [ %.1165, %process_pre_req.exit ], [ %i.as, %process_pre_req.exit.thread ], [ %.3167.lcssa, %.loopexit ] ; 3 uses
  %.2161.lcssa = phi i32 [ %.1160, %process_pre_req.exit ], [ %.0159250, %process_pre_req.exit.thread ], [ %.3162.lcssa, %.loopexit ]
  br i1 %i.x, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %._crit_edge
  %i.lb = sext i32 %.2166.lcssa to i64            ; 2 uses
  %i.lc = shl nsw i64 %i.lb, 3                    ; 2 uses
  %i.ld = tail call ptr @ADIOI_Malloc_fn(i64 noundef %i.lc, i32 noundef 1640, ptr noundef nonnull @.str.1) #11 ; 3 uses
  %i.le = icmp eq ptr %i.ld, null
  br i1 %i.le, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.lf = load ptr, ptr @stderr, align 8, !tbaa !31
  %i.lg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lf, ptr noundef nonnull @.str.29, i64 noundef %i.lc) #12 ; 0 uses
  br label %bb.bo

bb.bi:                                            ; preds = %bb.bg
  %i.lh = shl nsw i64 %i.lb, 2                    ; 2 uses
  %i.li = tail call ptr @ADIOI_Malloc_fn(i64 noundef %i.lh, i32 noundef 1647, ptr noundef nonnull @.str.1) #11 ; 2 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %bb.bj, label %bb.c, !llvm.loop !98

bb.bj:                                            ; preds = %bb.bi
  tail call void @ADIOI_Free_fn(ptr noundef nonnull %i.ld, i32 noundef 1648, ptr noundef nonnull @.str.1) #11
  %i.lk = load ptr, ptr @stderr, align 8, !tbaa !31
  %i.ll = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lk, ptr noundef nonnull @.str.30, i64 noundef %i.lh) #12 ; 0 uses
  br label %bb.bo

bb.bk:                                            ; preds = %._crit_edge
  %i.lm = icmp sgt i64 %5, 0
  br i1 %i.lm, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ln = tail call i32 @PMPI_Type_create_hindexed(i32 noundef %.2166.lcssa, ptr noundef %.077253, ptr noundef %.079252, ptr noundef nonnull @ompi_mpi_byte, ptr noundef %6) #11 ; 0 uses
  %i.lo = tail call i32 @PMPI_Type_commit(ptr noundef %6) #11 ; 0 uses
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  store ptr @ompi_mpi_byte, ptr %6, align 8, !tbaa !56
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  tail call void @ADIOI_Free_fn(ptr noundef %.077253, i32 noundef 1701, ptr noundef nonnull @.str.1) #11
  tail call void @ADIOI_Free_fn(ptr noundef %.079252, i32 noundef 1702, ptr noundef nonnull @.str.1) #11
  br label %bb.bo

bb.bo:                                            ; preds = %bb.a, %bb.b, %bb.bn, %bb.bj, %bb.bh
  %.081 = phi i32 [ 0, %bb.bn ], [ -1, %bb.bh ], [ -1, %bb.bj ], [ 0, %bb.b ], [ 0, %bb.a ]
end_hunk_1
