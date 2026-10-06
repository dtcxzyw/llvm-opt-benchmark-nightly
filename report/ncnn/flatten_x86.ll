Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/flatten_x86?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4ncnn11Flatten_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 3 uses
  %.not99 = icmp sgt i32 %i.k, %i.j
  br i1 %.not99, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %5, align 4, !tbaa !25     ; 7 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.lr.ph102.split.preheader, label %.lr.ph102.split.us

.lr.ph102.split.preheader:                        ; preds = %.lr.ph102
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.lr.ph102.split

.lr.ph102.split.us:                               ; preds = %.lr.ph102
  %i.r = load ptr, ptr %3, align 8, !tbaa !20
  %i.s = load i32, ptr %i.l, align 4, !tbaa !27
  %i.t = sext i32 %i.s to i64
  %i.u = load i64, ptr %i.m, align 8, !tbaa !16
  %factor.op.mul = mul i64 %i.u, %i.t
  %i.v = load ptr, ptr %4, align 8, !tbaa !20     ; 4 uses
  %factor.op.mul104 = shl i32 %i.n, 2
  %i.w = icmp sgt i32 %i.n, 0
  br i1 %i.w, label %.preheader.us.preheader, label %._crit_edge103

.preheader.us.preheader:                          ; preds = %.lr.ph102.split.us
  %i.x = sext i32 %i.k to i64
  %i.y = zext nneg i32 %i.n to i64                ; 3 uses
  %i.z = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.x, %.preheader.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 4 uses
  %i.aa = shl nsw i64 %indvars.iv, 2              ; 3 uses
  %i.ab = or disjoint i64 %i.aa, 3
  %i.ac = mul nsw i64 %i.ab, %i.y
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ac ; 3 uses
  %i.ae = or disjoint i64 %i.aa, 2
  %i.af = mul nsw i64 %i.ae, %i.y
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.af ; 3 uses
  %i.ah = or disjoint i64 %i.aa, 1
  %i.ai = mul nsw i64 %i.ah, %i.y
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ai ; 3 uses
  %i.ak = trunc nsw i64 %indvars.iv to i32
  %.reass105 = mul i32 %factor.op.mul104, %i.ak
  %i.al = sext i32 %.reass105 to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.al ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 12 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !38
  store float %i.ao, ptr %i.am, align 4, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !38
  store float %i.aq, ptr %i.aj, align 4, !tbaa !38
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = load float, ptr %i.ar, align 4, !tbaa !38
  store float %i.as, ptr %i.ag, align 4, !tbaa !38
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.au = load float, ptr %i.at, align 4, !tbaa !38
  store float %i.au, ptr %i.ad, align 4, !tbaa !38
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.preheader.us
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ba = load float, ptr %i.av, align 4, !tbaa !38
  store float %i.ba, ptr %i.az, align 4, !tbaa !38
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !38
  store float %i.bc, ptr %i.ay, align 4, !tbaa !38
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.be = load float, ptr %i.bd, align 4, !tbaa !38
  store float %i.be, ptr %i.ax, align 4, !tbaa !38
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !38
  store float %i.bg, ptr %i.aw, align 4, !tbaa !38
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bm = load float, ptr %i.bh, align 4, !tbaa !38
  store float %i.bm, ptr %i.bl, align 4, !tbaa !38
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 36
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !38
  store float %i.bo, ptr %i.bk, align 4, !tbaa !38
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !38
  store float %i.bq, ptr %i.bj, align 4, !tbaa !38
  %i.br = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  %i.bs = load float, ptr %i.br, align 4, !tbaa !38
  store float %i.bs, ptr %i.bi, align 4, !tbaa !38
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.preheader.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond115.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond115.not, label %._crit_edge103, label %.preheader.us

.lr.ph102.split:                                  ; preds = %.lr.ph102.split.preheader, %._crit_edge
  %i.bt = phi i32 [ %i.n, %.lr.ph102.split.preheader ], [ %i.ct, %._crit_edge ] ; 4 uses
  %indvars.iv117 = phi i64 [ %i.p, %.lr.ph102.split.preheader ], [ %indvars.iv.next118, %._crit_edge ] ; 4 uses
  %i.bu = load ptr, ptr %3, align 8, !tbaa !20
  %i.bv = load i32, ptr %i.l, align 4, !tbaa !27
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul nsw i64 %indvars.iv117, %i.bw
  %i.by = load i64, ptr %i.m, align 8, !tbaa !16
  %i.bz = mul i64 %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bz ; 2 uses
  %i.cb = load ptr, ptr %4, align 8, !tbaa !20    ; 4 uses
  %i.cc = trunc nsw i64 %indvars.iv117 to i32
  %i.cd = shl i32 %i.cc, 2
  %i.ce = mul i32 %i.cd, %i.bt
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cf ; 2 uses
  %i.ch = shl nsw i64 %indvars.iv117, 2           ; 3 uses
  %i.ci = or disjoint i64 %i.ch, 1
  %i.cj = sext i32 %i.bt to i64                   ; 3 uses
  %i.ck = mul nsw i64 %i.ci, %i.cj
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.ck ; 2 uses
  %i.cm = or disjoint i64 %i.ch, 2
  %i.cn = mul nsw i64 %i.cm, %i.cj
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cn ; 2 uses
  %i.cp = or disjoint i64 %i.ch, 3
  %i.cq = mul nsw i64 %i.cp, %i.cj
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cq ; 2 uses
  %i.cs = icmp sgt i32 %i.bt, 3
  br i1 %i.cs, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.lr.ph102.split
  %i.ct = phi i32 [ %i.bt, %.lr.ph102.split ], [ %i.ea, %.lr.ph ] ; 5 uses
  %.078.lcssa = phi ptr [ %i.cr, %.lr.ph102.split ], [ %i.dx, %.lr.ph ] ; 3 uses
  %.076.lcssa = phi i32 [ 0, %.lr.ph102.split ], [ %i.dy, %.lr.ph ] ; 5 uses
  %.074.lcssa = phi ptr [ %i.co, %.lr.ph102.split ], [ %i.dw, %.lr.ph ] ; 3 uses
  %.072.lcssa = phi ptr [ %i.cl, %.lr.ph102.split ], [ %i.dv, %.lr.ph ] ; 3 uses
  %.070.lcssa = phi ptr [ %i.cg, %.lr.ph102.split ], [ %i.du, %.lr.ph ] ; 3 uses
  %.069.lcssa = phi ptr [ %i.ca, %.lr.ph102.split ], [ %i.dt, %.lr.ph ] ; 6 uses
  %i.cu = icmp slt i32 %.076.lcssa, %i.ct
  br i1 %i.cu, label %.lr.ph98.preheader, label %._crit_edge

.lr.ph98.preheader:                               ; preds = %.preheader
  %i.cv = sub i32 %i.ct, %.076.lcssa
  %.neg = add i32 %.076.lcssa, 1
  %xtraiter = and i32 %i.cv, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol

.lr.ph98.prol:                                    ; preds = %.lr.ph98.preheader
  %i.cw = load float, ptr %.069.lcssa, align 4, !tbaa !38
  %i.cx = getelementptr inbounds nuw i8, ptr %.070.lcssa, i64 4
  store float %i.cw, ptr %.070.lcssa, align 4, !tbaa !38
  %i.cy = getelementptr inbounds nuw i8, ptr %.069.lcssa, i64 4
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !38
  %i.da = getelementptr inbounds nuw i8, ptr %.072.lcssa, i64 4
  store float %i.cz, ptr %.072.lcssa, align 4, !tbaa !38
  %i.db = getelementptr inbounds nuw i8, ptr %.069.lcssa, i64 8
  %i.dc = load float, ptr %i.db, align 4, !tbaa !38
  %i.dd = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 4
  store float %i.dc, ptr %.074.lcssa, align 4, !tbaa !38
  %i.de = getelementptr inbounds nuw i8, ptr %.069.lcssa, i64 12
  %i.df = load float, ptr %i.de, align 4, !tbaa !38
  %i.dg = getelementptr inbounds nuw i8, ptr %.078.lcssa, i64 4
  store float %i.df, ptr %.078.lcssa, align 4, !tbaa !38
  %i.dh = getelementptr inbounds nuw i8, ptr %.069.lcssa, i64 16
  %i.di = add nuw nsw i32 %.076.lcssa, 1
  br label %.lr.ph98.prol.loopexit

.lr.ph98.prol.loopexit:                           ; preds = %.lr.ph98.prol, %.lr.ph98.preheader
  %.197.unr = phi ptr [ %.069.lcssa, %.lr.ph98.preheader ], [ %i.dh, %.lr.ph98.prol ]
  %.17196.unr = phi ptr [ %.070.lcssa, %.lr.ph98.preheader ], [ %i.cx, %.lr.ph98.prol ]
  %.17395.unr = phi ptr [ %.072.lcssa, %.lr.ph98.preheader ], [ %i.da, %.lr.ph98.prol ]
  %.17594.unr = phi ptr [ %.074.lcssa, %.lr.ph98.preheader ], [ %i.dd, %.lr.ph98.prol ]
  %.17793.unr = phi i32 [ %.076.lcssa, %.lr.ph98.preheader ], [ %i.di, %.lr.ph98.prol ]
  %.17992.unr = phi ptr [ %.078.lcssa, %.lr.ph98.preheader ], [ %i.dg, %.lr.ph98.prol ]
  %i.dj = icmp eq i32 %i.ct, %.neg
  br i1 %i.dj, label %._crit_edge, label %.lr.ph98

.lr.ph:                                           ; preds = %.lr.ph102.split, %.lr.ph
  %.06985 = phi ptr [ %i.dt, %.lr.ph ], [ %i.ca, %.lr.ph102.split ] ; 3 uses
  %.07084 = phi ptr [ %i.du, %.lr.ph ], [ %i.cg, %.lr.ph102.split ] ; 2 uses
  %.07283 = phi ptr [ %i.dv, %.lr.ph ], [ %i.cl, %.lr.ph102.split ] ; 2 uses
  %.07482 = phi ptr [ %i.dw, %.lr.ph ], [ %i.co, %.lr.ph102.split ] ; 2 uses
  %.07681 = phi i32 [ %i.dy, %.lr.ph ], [ 0, %.lr.ph102.split ]
  %.07880 = phi ptr [ %i.dx, %.lr.ph ], [ %i.cr, %.lr.ph102.split ] ; 2 uses
  %6 = load <8 x float>, ptr %.06985, align 1, !tbaa !39 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.06985, i64 32
  %7 = load <8 x float>, ptr %i.dk, align 1, !tbaa !39 ; 2 uses
  %i.dl = shufflevector <8 x float> %6, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dm = shufflevector <8 x float> %7, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dn = shufflevector <8 x float> %6, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.do = shufflevector <8 x float> %7, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dp = shufflevector <4 x float> %i.dl, <4 x float> %i.dm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dq = shufflevector <4 x float> %i.dm, <4 x float> %i.dl, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dr = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ds = shufflevector <4 x float> %i.do, <4 x float> %i.dn, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.dp, ptr %.07084, align 1, !tbaa !39
  store <4 x float> %i.dq, ptr %.07283, align 1, !tbaa !39
  store <4 x float> %i.dr, ptr %.07482, align 1, !tbaa !39
  store <4 x float> %i.ds, ptr %.07880, align 1, !tbaa !39
  %i.dt = getelementptr inbounds nuw i8, ptr %.06985, i64 64 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.07084, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.07283, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.07482, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.07880, i64 16 ; 2 uses
  %i.dy = add nuw nsw i32 %.07681, 4              ; 3 uses
  %i.dz = or disjoint i32 %i.dy, 3
  %i.ea = load i32, ptr %5, align 4, !tbaa !25    ; 2 uses
  %i.eb = icmp slt i32 %i.dz, %i.ea
  br i1 %i.eb, label %.lr.ph, label %.preheader, !llvm.loop !65

.lr.ph98:                                         ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98
  %.197 = phi ptr [ %i.ez, %.lr.ph98 ], [ %.197.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %.17196 = phi ptr [ %i.ep, %.lr.ph98 ], [ %.17196.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %.17395 = phi ptr [ %i.es, %.lr.ph98 ], [ %.17395.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %.17594 = phi ptr [ %i.ev, %.lr.ph98 ], [ %.17594.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %.17793 = phi i32 [ %i.fa, %.lr.ph98 ], [ %.17793.unr, %.lr.ph98.prol.loopexit ]
  %.17992 = phi ptr [ %i.ey, %.lr.ph98 ], [ %.17992.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %i.ec = load float, ptr %.197, align 4, !tbaa !38
  %i.ed = getelementptr inbounds nuw i8, ptr %.17196, i64 4
  store float %i.ec, ptr %.17196, align 4, !tbaa !38
  %i.ee = getelementptr inbounds nuw i8, ptr %.197, i64 4
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !38
  %i.eg = getelementptr inbounds nuw i8, ptr %.17395, i64 4
  store float %i.ef, ptr %.17395, align 4, !tbaa !38
  %i.eh = getelementptr inbounds nuw i8, ptr %.197, i64 8
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !38
  %i.ej = getelementptr inbounds nuw i8, ptr %.17594, i64 4
  store float %i.ei, ptr %.17594, align 4, !tbaa !38
  %i.ek = getelementptr inbounds nuw i8, ptr %.197, i64 12
  %i.el = load float, ptr %i.ek, align 4, !tbaa !38
  %i.em = getelementptr inbounds nuw i8, ptr %.17992, i64 4
  store float %i.el, ptr %.17992, align 4, !tbaa !38
  %i.en = getelementptr inbounds nuw i8, ptr %.197, i64 16
  %i.eo = load float, ptr %i.en, align 4, !tbaa !38
  %i.ep = getelementptr inbounds nuw i8, ptr %.17196, i64 8
  store float %i.eo, ptr %i.ed, align 4, !tbaa !38
  %i.eq = getelementptr inbounds nuw i8, ptr %.197, i64 20
  %i.er = load float, ptr %i.eq, align 4, !tbaa !38
  %i.es = getelementptr inbounds nuw i8, ptr %.17395, i64 8
  store float %i.er, ptr %i.eg, align 4, !tbaa !38
  %i.et = getelementptr inbounds nuw i8, ptr %.197, i64 24
  %i.eu = load float, ptr %i.et, align 4, !tbaa !38
  %i.ev = getelementptr inbounds nuw i8, ptr %.17594, i64 8
  store float %i.eu, ptr %i.ej, align 4, !tbaa !38
  %i.ew = getelementptr inbounds nuw i8, ptr %.197, i64 28
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !38
  %i.ey = getelementptr inbounds nuw i8, ptr %.17992, i64 8
  store float %i.ex, ptr %i.em, align 4, !tbaa !38
  %i.ez = getelementptr inbounds nuw i8, ptr %.197, i64 32
  %i.fa = add nuw nsw i32 %.17793, 2              ; 2 uses
  %exitcond116.not.1 = icmp eq i32 %i.fa, %i.ct
  br i1 %exitcond116.not.1, label %._crit_edge, label %.lr.ph98, !llvm.loop !66

._crit_edge:                                      ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98, %.preheader
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, 1 ; 2 uses
  %lftr.wideiv120 = trunc i64 %indvars.iv.next118 to i32
  %exitcond121.not = icmp eq i32 %i.q, %lftr.wideiv120
  br i1 %exitcond121.not, label %._crit_edge103, label %.lr.ph102.split, !llvm.loop !67

._crit_edge103:                                   ; preds = %._crit_edge.us, %._crit_edge, %.lr.ph102.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge103, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !43 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Flatten_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 3 uses
  %.not106 = icmp sgt i32 %i.k, %i.j
  br i1 %.not106, label %._crit_edge108, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %5, align 4, !tbaa !25     ; 7 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !20, !noalias !73
  %i.s = load i64, ptr %i.l, align 8, !tbaa !23, !noalias !73
  %i.t = load i64, ptr %i.m, align 8, !tbaa !16, !noalias !73
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = load ptr, ptr %4, align 8, !tbaa !20     ; 4 uses
  %factor.op.mul109 = shl i32 %i.n, 2
  %i.v = icmp sgt i32 %i.n, 0
  br i1 %i.v, label %.noexc.us.preheader, label %._crit_edge108

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.w = sext i32 %i.k to i64
  %i.x = zext nneg i32 %i.n to i64                ; 3 uses
  %i.y = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.w, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 4 uses
  %i.z = shl nsw i64 %indvars.iv, 2               ; 3 uses
  %i.aa = or disjoint i64 %i.z, 3
  %i.ab = mul nsw i64 %i.aa, %i.x
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ab ; 3 uses
  %i.ad = or disjoint i64 %i.z, 2
  %i.ae = mul nsw i64 %i.ad, %i.x
  %i.af = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ae ; 3 uses
  %i.ag = or disjoint i64 %i.z, 1
  %i.ah = mul nsw i64 %i.ag, %i.x
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ah ; 3 uses
  %i.aj = trunc nsw i64 %indvars.iv to i32
  %.reass110 = mul i32 %factor.op.mul109, %i.aj
  %i.ak = sext i32 %.reass110 to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ak ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 12 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !38
  store float %i.an, ptr %i.al, align 4, !tbaa !38
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !38
  store float %i.ap, ptr %i.ai, align 4, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !38
  store float %i.ar, ptr %i.af, align 4, !tbaa !38
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.at = load float, ptr %i.as, align 4, !tbaa !38
  store float %i.at, ptr %i.ac, align 4, !tbaa !38
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.az = load float, ptr %i.au, align 4, !tbaa !38
  store float %i.az, ptr %i.ay, align 4, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !38
  store float %i.bb, ptr %i.ax, align 4, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !38
  store float %i.bd, ptr %i.aw, align 4, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 28
  %i.bf = load float, ptr %i.be, align 4, !tbaa !38
  store float %i.bf, ptr %i.av, align 4, !tbaa !38
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bl = load float, ptr %i.bg, align 4, !tbaa !38
  store float %i.bl, ptr %i.bk, align 4, !tbaa !38
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !38
  store float %i.bn, ptr %i.bj, align 4, !tbaa !38
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !38
  store float %i.bp, ptr %i.bi, align 4, !tbaa !38
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  %i.br = load float, ptr %i.bq, align 4, !tbaa !38
  store float %i.br, ptr %i.bh, align 4, !tbaa !38
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond120.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond120.not, label %._crit_edge108, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.bs = phi i32 [ %i.n, %.noexc.preheader ], [ %i.cr, %._crit_edge ] ; 4 uses
  %indvars.iv122 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next123, %._crit_edge ] ; 4 uses
  %i.bt = load ptr, ptr %3, align 8, !tbaa !20, !noalias !73
  %i.bu = load i64, ptr %i.l, align 8, !tbaa !23, !noalias !73
  %i.bv = mul i64 %i.bu, %indvars.iv122
  %i.bw = load i64, ptr %i.m, align 8, !tbaa !16, !noalias !73
  %i.bx = mul i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bx ; 2 uses
  %i.bz = load ptr, ptr %4, align 8, !tbaa !20    ; 4 uses
  %i.ca = trunc nsw i64 %indvars.iv122 to i32
  %i.cb = shl i32 %i.ca, 2
  %i.cc = mul i32 %i.cb, %i.bs
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cd ; 2 uses
  %i.cf = shl nsw i64 %indvars.iv122, 2           ; 3 uses
  %i.cg = or disjoint i64 %i.cf, 1
  %i.ch = sext i32 %i.bs to i64                   ; 3 uses
  %i.ci = mul nsw i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ci ; 2 uses
  %i.ck = or disjoint i64 %i.cf, 2
  %i.cl = mul nsw i64 %i.ck, %i.ch
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cl ; 2 uses
  %i.cn = or disjoint i64 %i.cf, 3
  %i.co = mul nsw i64 %i.cn, %i.ch
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.co ; 2 uses
  %i.cq = icmp sgt i32 %i.bs, 3
  br i1 %i.cq, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.cr = phi i32 [ %i.bs, %.noexc ], [ %i.dy, %.lr.ph ] ; 5 uses
  %.078.lcssa = phi ptr [ %i.cp, %.noexc ], [ %i.dv, %.lr.ph ] ; 3 uses
  %.076.lcssa = phi i32 [ 0, %.noexc ], [ %i.dw, %.lr.ph ] ; 5 uses
  %.074.lcssa = phi ptr [ %i.cm, %.noexc ], [ %i.du, %.lr.ph ] ; 3 uses
  %.072.lcssa = phi ptr [ %i.cj, %.noexc ], [ %i.dt, %.lr.ph ] ; 3 uses
  %.070.lcssa = phi ptr [ %i.ce, %.noexc ], [ %i.ds, %.lr.ph ] ; 3 uses
  %.069.lcssa = phi ptr [ %i.by, %.noexc ], [ %i.dr, %.lr.ph ] ; 6 uses
  %i.cs = icmp slt i32 %.076.lcssa, %i.cr
  br i1 %i.cs, label %.lr.ph105.preheader, label %._crit_edge

.lr.ph105.preheader:                              ; preds = %.preheader
  %i.ct = sub i32 %i.cr, %.076.lcssa
  %.neg = add i32 %.076.lcssa, 1
  %xtraiter = and i32 %i.ct, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph105.prol.loopexit, label %.lr.ph105.prol

.lr.ph105.prol:                                   ; preds = %.lr.ph105.preheader
  %i.cu = load float, ptr %.069.lcssa, align 4, !tbaa !38
  %i.cv = getelementptr inbounds nuw i8, ptr %.070.lcssa, i64 4
  store float %i.cu, ptr %.070.lcssa, align 4, !tbaa !38
  %i.cw = getelementptr inbounds nuw i8, ptr %.069.lcssa, i64 4
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !38
  %i.cy = getelementptr inbounds nuw i8, ptr %.072.lcssa, i64 4
  store float %i.cx, ptr %.072.lcssa, align 4, !tbaa !38
  %i.cz = getelementptr inbounds nuw i8, ptr %.069.lcssa, i64 8
  %i.da = load float, ptr %i.cz, align 4, !tbaa !38
  %i.db = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 4
  store float %i.da, ptr %.074.lcssa, align 4, !tbaa !38
  %i.dc = getelementptr inbounds nuw i8, ptr %.069.lcssa, i64 12
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !38
  %i.de = getelementptr inbounds nuw i8, ptr %.078.lcssa, i64 4
  store float %i.dd, ptr %.078.lcssa, align 4, !tbaa !38
  %i.df = getelementptr inbounds nuw i8, ptr %.069.lcssa, i64 16
  %i.dg = add nuw nsw i32 %.076.lcssa, 1
  br label %.lr.ph105.prol.loopexit

.lr.ph105.prol.loopexit:                          ; preds = %.lr.ph105.prol, %.lr.ph105.preheader
  %.1104.unr = phi ptr [ %.069.lcssa, %.lr.ph105.preheader ], [ %i.df, %.lr.ph105.prol ]
  %.171103.unr = phi ptr [ %.070.lcssa, %.lr.ph105.preheader ], [ %i.cv, %.lr.ph105.prol ]
  %.173102.unr = phi ptr [ %.072.lcssa, %.lr.ph105.preheader ], [ %i.cy, %.lr.ph105.prol ]
  %.175101.unr = phi ptr [ %.074.lcssa, %.lr.ph105.preheader ], [ %i.db, %.lr.ph105.prol ]
  %.177100.unr = phi i32 [ %.076.lcssa, %.lr.ph105.preheader ], [ %i.dg, %.lr.ph105.prol ]
  %.17999.unr = phi ptr [ %.078.lcssa, %.lr.ph105.preheader ], [ %i.de, %.lr.ph105.prol ]
  %i.dh = icmp eq i32 %i.cr, %.neg
  br i1 %i.dh, label %._crit_edge, label %.lr.ph105

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.06992 = phi ptr [ %i.dr, %.lr.ph ], [ %i.by, %.noexc ] ; 3 uses
  %.07091 = phi ptr [ %i.ds, %.lr.ph ], [ %i.ce, %.noexc ] ; 2 uses
  %.07290 = phi ptr [ %i.dt, %.lr.ph ], [ %i.cj, %.noexc ] ; 2 uses
  %.07489 = phi ptr [ %i.du, %.lr.ph ], [ %i.cm, %.noexc ] ; 2 uses
  %.07688 = phi i32 [ %i.dw, %.lr.ph ], [ 0, %.noexc ]
  %.07887 = phi ptr [ %i.dv, %.lr.ph ], [ %i.cp, %.noexc ] ; 2 uses
  %6 = load <8 x float>, ptr %.06992, align 1, !tbaa !39 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.06992, i64 32
  %7 = load <8 x float>, ptr %i.di, align 1, !tbaa !39 ; 2 uses
  %i.dj = shufflevector <8 x float> %6, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dk = shufflevector <8 x float> %7, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dl = shufflevector <8 x float> %6, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dm = shufflevector <8 x float> %7, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dn = shufflevector <4 x float> %i.dj, <4 x float> %i.dk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.do = shufflevector <4 x float> %i.dk, <4 x float> %i.dj, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dp = shufflevector <4 x float> %i.dl, <4 x float> %i.dm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dq = shufflevector <4 x float> %i.dm, <4 x float> %i.dl, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.dn, ptr %.07091, align 1, !tbaa !39
  store <4 x float> %i.do, ptr %.07290, align 1, !tbaa !39
  store <4 x float> %i.dp, ptr %.07489, align 1, !tbaa !39
  store <4 x float> %i.dq, ptr %.07887, align 1, !tbaa !39
  %i.dr = getelementptr inbounds nuw i8, ptr %.06992, i64 64 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.07091, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.07290, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.07489, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.07887, i64 16 ; 2 uses
  %i.dw = add nuw nsw i32 %.07688, 4              ; 3 uses
  %i.dx = or disjoint i32 %i.dw, 3
  %i.dy = load i32, ptr %5, align 4, !tbaa !25    ; 2 uses
  %i.dz = icmp slt i32 %i.dx, %i.dy
  br i1 %i.dz, label %.lr.ph, label %.preheader, !llvm.loop !70

.lr.ph105:                                        ; preds = %.lr.ph105.prol.loopexit, %.lr.ph105
  %.1104 = phi ptr [ %i.ex, %.lr.ph105 ], [ %.1104.unr, %.lr.ph105.prol.loopexit ] ; 9 uses
  %.171103 = phi ptr [ %i.en, %.lr.ph105 ], [ %.171103.unr, %.lr.ph105.prol.loopexit ] ; 3 uses
  %.173102 = phi ptr [ %i.eq, %.lr.ph105 ], [ %.173102.unr, %.lr.ph105.prol.loopexit ] ; 3 uses
  %.175101 = phi ptr [ %i.et, %.lr.ph105 ], [ %.175101.unr, %.lr.ph105.prol.loopexit ] ; 3 uses
  %.177100 = phi i32 [ %i.ey, %.lr.ph105 ], [ %.177100.unr, %.lr.ph105.prol.loopexit ]
  %.17999 = phi ptr [ %i.ew, %.lr.ph105 ], [ %.17999.unr, %.lr.ph105.prol.loopexit ] ; 3 uses
  %i.ea = load float, ptr %.1104, align 4, !tbaa !38
  %i.eb = getelementptr inbounds nuw i8, ptr %.171103, i64 4
  store float %i.ea, ptr %.171103, align 4, !tbaa !38
  %i.ec = getelementptr inbounds nuw i8, ptr %.1104, i64 4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !38
  %i.ee = getelementptr inbounds nuw i8, ptr %.173102, i64 4
  store float %i.ed, ptr %.173102, align 4, !tbaa !38
  %i.ef = getelementptr inbounds nuw i8, ptr %.1104, i64 8
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !38
  %i.eh = getelementptr inbounds nuw i8, ptr %.175101, i64 4
  store float %i.eg, ptr %.175101, align 4, !tbaa !38
  %i.ei = getelementptr inbounds nuw i8, ptr %.1104, i64 12
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !38
  %i.ek = getelementptr inbounds nuw i8, ptr %.17999, i64 4
  store float %i.ej, ptr %.17999, align 4, !tbaa !38
  %i.el = getelementptr inbounds nuw i8, ptr %.1104, i64 16
  %i.em = load float, ptr %i.el, align 4, !tbaa !38
  %i.en = getelementptr inbounds nuw i8, ptr %.171103, i64 8
  store float %i.em, ptr %i.eb, align 4, !tbaa !38
  %i.eo = getelementptr inbounds nuw i8, ptr %.1104, i64 20
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !38
  %i.eq = getelementptr inbounds nuw i8, ptr %.173102, i64 8
  store float %i.ep, ptr %i.ee, align 4, !tbaa !38
  %i.er = getelementptr inbounds nuw i8, ptr %.1104, i64 24
  %i.es = load float, ptr %i.er, align 4, !tbaa !38
  %i.et = getelementptr inbounds nuw i8, ptr %.175101, i64 8
  store float %i.es, ptr %i.eh, align 4, !tbaa !38
  %i.eu = getelementptr inbounds nuw i8, ptr %.1104, i64 28
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !38
  %i.ew = getelementptr inbounds nuw i8, ptr %.17999, i64 8
  store float %i.ev, ptr %i.ek, align 4, !tbaa !38
  %i.ex = getelementptr inbounds nuw i8, ptr %.1104, i64 32
  %i.ey = add nuw nsw i32 %.177100, 2             ; 2 uses
  %exitcond121.not.1 = icmp eq i32 %i.ey, %i.cr
  br i1 %exitcond121.not.1, label %._crit_edge, label %.lr.ph105, !llvm.loop !71

._crit_edge:                                      ; preds = %.lr.ph105.prol.loopexit, %.lr.ph105, %.preheader
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 1 ; 2 uses
  %lftr.wideiv125 = trunc i64 %indvars.iv.next123 to i32
  %exitcond126.not = icmp eq i32 %i.q, %lftr.wideiv125
  br i1 %exitcond126.not, label %._crit_edge108, label %.noexc, !llvm.loop !72

._crit_edge108:                                   ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge108, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Flatten_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 3 uses
  %.not34 = icmp sgt i32 %i.k, %i.j
  br i1 %.not34, label %._crit_edge36.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !20, !noalias !82 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !23, !noalias !82 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !82 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !20     ; 3 uses
  %i.r = load i32, ptr %5, align 4, !tbaa !25     ; 7 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.noexc.preheader, label %._crit_edge36.split

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.t = sext i32 %i.k to i64                     ; 5 uses
  %i.u = zext nneg i32 %i.r to i64                ; 5 uses
  %i.v = add nsw i32 %i.j, 1
  %i.w = mul nsw i64 %i.t, %i.u
  %i.x = shl i64 %i.w, 2
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.x
  %i.y = sub i32 %i.j, %i.k
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = add nsw i64 %i.t, %i.z
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = mul i64 %i.ab, %i.u
  %i.ad = add nsw i32 %i.r, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 2                ; 2 uses
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.ac
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.af
  %scevgep42 = getelementptr i8, ptr %i.ah, i64 4
  %i.ai = mul i64 %i.n, %i.p                      ; 2 uses
  %i.aj = mul i64 %i.ai, %i.t
  %scevgep43 = getelementptr i8, ptr %i.l, i64 %i.aj
  %i.ak = add nsw i64 %i.t, %i.z
  %i.al = mul i64 %i.ai, %i.ak
  %i.am = getelementptr i8, ptr %i.l, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 %i.af
  %scevgep44 = getelementptr i8, ptr %i.an, i64 4
  %i.ao = mul i64 %i.n, %i.p
  %min.iters.check = icmp ult i32 %i.r, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep44
  %bound1 = icmp ult ptr %scevgep43, %scevgep42
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.ao, 0
  %i.ap = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.u, 2147483640               ; 4 uses
  %i.aq = trunc nuw nsw i64 %n.vec to i32
  %i.ar = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.u
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.t, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 3 uses
  %i.at = mul nsw i64 %indvars.iv, %i.u
  %i.au = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.at ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ap
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc
  %i.av = getelementptr i8, ptr %i.au, i64 %i.ar
  %i.aw = getelementptr i8, ptr %i.as, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.au, i64 %i.ax ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.as, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep45, i64 16
  %wide.load = load <4 x float>, ptr %next.gep45, align 4, !tbaa !38, !alias.scope !83
  %wide.load46 = load <4 x float>, ptr %i.ay, align 4, !tbaa !38, !alias.scope !83
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %wide.load, ptr %next.gep, align 4, !tbaa !38, !alias.scope !84, !noalias !83
  store <4 x float> %wide.load46, ptr %i.az, align 4, !tbaa !38, !alias.scope !84, !noalias !83
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc, %middle.block
  %.033.ph = phi i32 [ %i.aq, %middle.block ], [ 0, %.noexc ] ; 4 uses
  %.02132.ph = phi ptr [ %i.av, %middle.block ], [ %i.au, %.noexc ] ; 2 uses
  %.02231.ph = phi ptr [ %i.aw, %middle.block ], [ %i.as, %.noexc ] ; 2 uses
  %i.bb = sub i32 %i.r, %.033.ph
  %xtraiter = and i32 %i.bb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_0
