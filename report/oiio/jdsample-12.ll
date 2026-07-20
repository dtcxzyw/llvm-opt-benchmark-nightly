loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@h2v1_fancy_upsample:bb.a
  %i.az = sext i16 %i.ay to i32
  %i.ba = add nsw i32 %i.ax, 2
  %i.bb = add nsw i32 %i.ba, %i.az
  %i.bc = lshr i32 %i.bb, 2
  %i.bd = trunc i32 %i.bc to i16
  store i16 %i.bd, ptr %i.aw, align 2, !tbaa !80
  %.03032 = getelementptr i8, ptr %i.as, i64 4    ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.be = getelementptr i8, ptr %i.as, i64 %i.j
  %scevgep = getelementptr i8, ptr %i.be, i64 8
  %i.bf = getelementptr i8, ptr %i.aq, i64 %i.k
  %scevgep54 = getelementptr i8, ptr %i.bf, i64 6
  %bound0 = icmp ult ptr %.03032, %scevgep54
  %bound1 = icmp ult ptr %i.aq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bg = getelementptr i8, ptr %.03032, i64 %i.m ; 2 uses
  %i.bh = getelementptr i8, ptr %i.as, i64 %i.m   ; 2 uses
  %i.bi = getelementptr i8, ptr %i.at, i64 %i.p   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bj = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.03032, i64 %i.bj
  %i.bk = shl i64 %index, 1
  %next.gep55 = getelementptr i8, ptr %i.at, i64 %i.bk ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %next.gep55, i64 2
  %wide.load = load <4 x i16>, ptr %next.gep55, align 2, !tbaa !80, !alias.scope !82
  %i.bm = sext <4 x i16> %wide.load to <4 x i32>
  %i.bn = mul nsw <4 x i32> %i.bm, splat (i32 3)  ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %next.gep55, i64 -2
  %wide.load56 = load <4 x i16>, ptr %i.bo, align 2, !tbaa !80, !alias.scope !82
  %i.bp = sext <4 x i16> %wide.load56 to <4 x i32>
  %i.bq = add nsw <4 x i32> %i.bp, splat (i32 1)
  %i.br = add nsw <4 x i32> %i.bq, %i.bn
  %wide.load57 = load <4 x i16>, ptr %i.bl, align 2, !tbaa !80, !alias.scope !82
  %i.bs = sext <4 x i16> %wide.load57 to <4 x i32>
  %i.bt = add nsw <4 x i32> %i.bn, splat (i32 2)
  %i.bu = add nsw <4 x i32> %i.bt, %i.bs
  %i.bv = shufflevector <4 x i32> %i.br, <4 x i32> %i.bu, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 2)
  %interleaved.vec = trunc <8 x i32> %i.bw to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !80, !alias.scope !85, !noalias !82
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.bi, i64 -2
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.03037.ph = phi ptr [ %.03032, %vector.memcheck ], [ %.03032, %.lr.ph ], [ %i.bg, %middle.block ] ; 5 uses
  %.02936.ph = phi i32 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph ], [ %i.o, %middle.block ] ; 4 uses
  %.pn35.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph ], [ %i.bh, %middle.block ] ; 2 uses
  %.03134.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph ], [ %i.bi, %middle.block ] ; 5 uses
  %xtraiter = and i32 %.02936.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %.03134.ph, i64 2 ; 3 uses
  %i.bz = load i16, ptr %.03134.ph, align 2, !tbaa !80
  %i.ca = sext i16 %i.bz to i32
  %i.cb = mul nsw i32 %i.ca, 3                    ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.03134.ph, i64 -2
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !80
  %i.ce = sext i16 %i.cd to i32
  %i.cf = add nsw i32 %i.ce, 1
  %i.cg = add nsw i32 %i.cf, %i.cb
  %i.ch = lshr i32 %i.cg, 2
  %i.ci = trunc i32 %i.ch to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %.pn35.ph, i64 6
  store i16 %i.ci, ptr %.03037.ph, align 2, !tbaa !80
  %i.ck = load i16, ptr %i.by, align 2, !tbaa !80
  %i.cl = sext i16 %i.ck to i32
  %i.cm = add nsw i32 %i.cb, 2
  %i.cn = add nsw i32 %i.cm, %i.cl
  %i.co = lshr i32 %i.cn, 2
  %i.cp = trunc i32 %i.co to i16
  store i16 %i.cp, ptr %i.cj, align 2, !tbaa !80
  %i.cq = add nsw i32 %.02936.ph, -1
  %.030.prol = getelementptr inbounds nuw i8, ptr %.03037.ph, i64 4 ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa63.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.by, %scalar.ph.prol ]
  %.030.lcssa62.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %.030.prol, %scalar.ph.prol ]
  %.03037.unr = phi ptr [ %.03037.ph, %scalar.ph.preheader ], [ %.030.prol, %scalar.ph.prol ]
  %.02936.unr = phi i32 [ %.02936.ph, %scalar.ph.preheader ], [ %i.cq, %scalar.ph.prol ]
  %.pn35.unr = phi ptr [ %.pn35.ph, %scalar.ph.preheader ], [ %.03037.ph, %scalar.ph.prol ]
  %.03134.unr = phi ptr [ %.03134.ph, %scalar.ph.preheader ], [ %i.by, %scalar.ph.prol ]
  %i.cr = icmp eq i32 %.02936.ph, 1
  br i1 %i.cr, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.03037 = phi ptr [ %.030.1, %scalar.ph ], [ %.03037.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.02936 = phi i32 [ %i.eb, %scalar.ph ], [ %.02936.unr, %scalar.ph.prol.loopexit ]
  %.pn35 = phi ptr [ %.030, %scalar.ph ], [ %.pn35.unr, %scalar.ph.prol.loopexit ]
  %.03134 = phi ptr [ %i.dk, %scalar.ph ], [ %.03134.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.03134, i64 2 ; 2 uses
  %i.ct = load i16, ptr %.03134, align 2, !tbaa !80
  %i.cu = sext i16 %i.ct to i32
  %i.cv = mul nsw i32 %i.cu, 3                    ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.03134, i64 -2
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !80
  %i.cy = sext i16 %i.cx to i32
  %i.cz = add nsw i32 %i.cy, 1
  %i.da = add nsw i32 %i.cz, %i.cv
  %i.db = lshr i32 %i.da, 2
  %i.dc = trunc i32 %i.db to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn35, i64 6
  store i16 %i.dc, ptr %.03037, align 2, !tbaa !80
  %i.de = load i16, ptr %i.cs, align 2, !tbaa !80
  %i.df = sext i16 %i.de to i32
  %i.dg = add nsw i32 %i.cv, 2
  %i.dh = add nsw i32 %i.dg, %i.df
  %i.di = lshr i32 %i.dh, 2
  %i.dj = trunc i32 %i.di to i16
  store i16 %i.dj, ptr %i.dd, align 2, !tbaa !80
  %.030 = getelementptr inbounds nuw i8, ptr %.03037, i64 4 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.03134, i64 4 ; 3 uses
  %i.dl = load i16, ptr %i.cs, align 2, !tbaa !80
  %i.dm = sext i16 %i.dl to i32
  %i.dn = mul nsw i32 %i.dm, 3                    ; 2 uses
  %i.do = load i16, ptr %.03134, align 2, !tbaa !80
  %i.dp = sext i16 %i.do to i32
  %i.dq = add nsw i32 %i.dp, 1
  %i.dr = add nsw i32 %i.dq, %i.dn
  %i.ds = lshr i32 %i.dr, 2
  %i.dt = trunc i32 %i.ds to i16
  %i.du = getelementptr inbounds nuw i8, ptr %.03037, i64 6
  store i16 %i.dt, ptr %.030, align 2, !tbaa !80
  %i.dv = load i16, ptr %i.dk, align 2, !tbaa !80
  %i.dw = sext i16 %i.dv to i32
  %i.dx = add nsw i32 %i.dn, 2
  %i.dy = add nsw i32 %i.dx, %i.dw
  %i.dz = lshr i32 %i.dy, 2
  %i.ea = trunc i32 %i.dz to i16
  store i16 %i.ea, ptr %i.du, align 2, !tbaa !80
  %i.eb = add i32 %.02936, -2                     ; 2 uses
  %.030.1 = getelementptr inbounds nuw i8, ptr %.03037, i64 8 ; 2 uses
  %.not.1 = icmp eq i32 %i.eb, 0
  br i1 %.not.1, label %._crit_edge.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !90

._crit_edge.loopexit.unr-lcssa:                   ; preds = %scalar.ph
  %i.ec = getelementptr inbounds nuw i8, ptr %.03134, i64 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %scalar.ph.prol.loopexit, %middle.block
  %.03037.lcssa = phi ptr [ %i.bh, %middle.block ], [ %.03037.ph, %scalar.ph.prol.loopexit ], [ %.030, %._crit_edge.loopexit.unr-lcssa ]
  %.03134.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.03134.ph, %scalar.ph.prol.loopexit ], [ %i.ec, %._crit_edge.loopexit.unr-lcssa ]
  %.lcssa = phi ptr [ %i.bi, %middle.block ], [ %.lcssa63.unr, %scalar.ph.prol.loopexit ], [ %i.dk, %._crit_edge.loopexit.unr-lcssa ]
  %.030.lcssa = phi ptr [ %i.bg, %middle.block ], [ %.030.lcssa62.unr, %scalar.ph.prol.loopexit ], [ %.030.1, %._crit_edge.loopexit.unr-lcssa ]
  %i.ed = load i16, ptr %.lcssa, align 2, !tbaa !80 ; 2 uses
  %i.ee = sext i16 %i.ed to i32
  %i.ef = mul nsw i32 %i.ee, 3
  %i.eg = load i16, ptr %.03134.lcssa, align 2, !tbaa !80
  %i.eh = sext i16 %i.eg to i32
  %i.ei = add nsw i32 %i.eh, 1
  %i.ej = add nsw i32 %i.ei, %i.ef
  %i.ek = lshr i32 %i.ej, 2
  %i.el = trunc i32 %i.ek to i16
  %i.em = getelementptr inbounds nuw i8, ptr %.03037.lcssa, i64 6
  store i16 %i.el, ptr %.030.lcssa, align 2, !tbaa !80
  store i16 %i.ed, ptr %i.em, align 2, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count49
  br i1 %exitcond.not, label %._crit_edge43, label %.lr.ph, !llvm.loop !81

._crit_edge43:                                    ; preds = %._crit_edge, %.lr.ph42.split.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v1_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.c = load i32, ptr %i.b, align 4, !tbaa !61   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph22, label %._crit_edge23

.lr.ph22:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i32, ptr %i.e, align 8, !tbaa !66   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.g, 1                 ; 3 uses
  %.not = icmp eq i32 %i.f, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !78   ; 9 uses
  %4 = ptrtoaddr ptr %i.i to i64                  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 6 uses
  %i.m = add i64 %.idx, %4
  %i.n = add i64 %4, 4
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %i.n)
  %i.p = xor i64 %4, -1
  %i.q = add i64 %i.o, %i.p                       ; 2 uses
  %i.r = lshr i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 60
  br i1 %min.iters.check, label %.lr.ph.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.i, i64 4
  %i.t = add i64 %.idx, %4
  %i.u = add i64 %4, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.u)
  %i.v = xor i64 %4, -1
  %i.w = add i64 %umax, %i.v                      ; 2 uses
  %i.x = and i64 %i.w, -4
  %scevgep25 = getelementptr i8, ptr %scevgep, i64 %i.x
  %scevgep26 = getelementptr i8, ptr %i.l, i64 2
  %i.y = lshr i64 %i.w, 1
  %i.z = and i64 %i.y, 9223372036854775806
  %scevgep27 = getelementptr i8, ptr %scevgep26, i64 %i.z
  %bound0 = icmp ult ptr %i.i, %scevgep27
  %bound1 = icmp ult ptr %i.l, %scevgep25
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, 9223372036854775800      ; 4 uses
  %i.aa = shl nuw i64 %n.vec, 1
  %i.ab = getelementptr i8, ptr %i.l, i64 %i.aa
  %i.ac = shl i64 %n.vec, 2
  %i.ad = getelementptr i8, ptr %i.i, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.ae ; 2 uses
  %i.af = shl i64 %index, 2                       ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.i, i64 %i.af
  %i.ag = getelementptr i8, ptr %i.i, i64 %i.af
  %next.gep29 = getelementptr i8, ptr %i.ag, i64 16
  %i.ah = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !80, !alias.scope !91
  %wide.load30 = load <4 x i16>, ptr %i.ah, align 2, !tbaa !80, !alias.scope !91
  %interleaved.vec = shufflevector <4 x i16> %wide.load, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec, ptr %next.gep28, align 2, !tbaa !80, !alias.scope !94, !noalias !91
  %interleaved.vec31 = shufflevector <4 x i16> %wide.load30, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec31, ptr %next.gep29, align 2, !tbaa !80, !alias.scope !94, !noalias !91
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader33

.lr.ph.preheader33:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.01619.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  %.01718.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader33, %.lr.ph
  %.01619 = phi ptr [ %i.aj, %.lr.ph ], [ %.01619.ph, %.lr.ph.preheader33 ] ; 2 uses
  %.01718 = phi ptr [ %i.am, %.lr.ph ], [ %.01718.ph, %.lr.ph.preheader33 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01619, i64 2
  %i.ak = load i16, ptr %.01619, align 2, !tbaa !80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01718, i64 2
  store i16 %i.ak, ptr %.01718, align 2, !tbaa !80
  %i.am = getelementptr inbounds nuw i8, ptr %.01718, i64 4 ; 2 uses
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !80
  %i.an = icmp ult ptr %i.am, %i.j
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge23, label %bb.b, !llvm.loop !98

._crit_edge23:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h1v2_fancy_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !72     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.c = load i32, ptr %i.b, align 4, !tbaa !61   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !63   ; 11 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.g = add nsw i32 %i.c, -1
  %i.h = lshr i32 %i.g, 1
  %i.i = add nuw nsw i32 %i.h, 1
  %wide.trip.count = zext nneg i32 %i.i to i64
  %i.j = zext i32 %i.f to i64                     ; 2 uses
  %min.iters.check63 = icmp ult i32 %i.f, 8
  %n.vec66 = and i64 %i.j, 4294967288             ; 4 uses
  %i.k = trunc nuw i64 %n.vec66 to i32
  %i.l = shl nuw nsw i64 %n.vec66, 1              ; 3 uses
  %cmp.n76 = icmp eq i64 %n.vec66, %i.j
  %i.m = zext i32 %i.f to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.f, 8
  %n.vec = and i64 %i.m, 4294967288               ; 4 uses
  %i.n = trunc nuw i64 %n.vec to i32
  %i.o = shl nuw nsw i64 %n.vec, 1                ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us.us.1
  %indvars.iv42 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next43, %._crit_edge.us.us.1 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next41, %._crit_edge.us.us.1 ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv42 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !78   ; 9 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %.028.in.us.us = getelementptr i8, ptr %i.p, i64 -8
  %.028.us.us = load ptr, ptr %.028.in.us.us, align 8, !tbaa !78 ; 5 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78   ; 5 uses
  br i1 %min.iters.check63, label %scalar.ph62.preheader, label %vector.memcheck57

vector.memcheck57:                                ; preds = %.preheader.us
  %i.u = ptrtoaddr ptr %i.t to i64                ; 2 uses
  %.028.us.us59 = ptrtoaddr ptr %.028.us.us to i64
  %i.v = sub i64 %i.r, %i.u
  %diff.check58 = icmp ugt i64 %i.v, -16
  %i.w = sub i64 %.028.us.us59, %i.u
  %diff.check60 = icmp ugt i64 %i.w, -16
  %conflict.rdx61 = or i1 %diff.check58, %diff.check60
  br i1 %conflict.rdx61, label %scalar.ph62.preheader, label %vector.ph64

vector.ph64:                                      ; preds = %vector.memcheck57
  %i.x = getelementptr i8, ptr %i.q, i64 %i.l
  %i.y = getelementptr i8, ptr %i.t, i64 %i.l
  %i.z = getelementptr i8, ptr %.028.us.us, i64 %i.l
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph64
  %index68 = phi i64 [ 0, %vector.ph64 ], [ %index.next74, %vector.body67 ] ; 2 uses
  %i.aa = shl i64 %index68, 1                     ; 3 uses
  %next.gep69 = getelementptr i8, ptr %i.q, i64 %i.aa
  %next.gep70 = getelementptr i8, ptr %i.t, i64 %i.aa
  %next.gep71 = getelementptr i8, ptr %.028.us.us, i64 %i.aa
  %wide.load72 = load <8 x i16>, ptr %next.gep69, align 2, !tbaa !80
  %i.ab = sext <8 x i16> %wide.load72 to <8 x i32>
  %i.ac = mul nsw <8 x i32> %i.ab, splat (i32 3)
  %wide.load73 = load <8 x i16>, ptr %next.gep71, align 2, !tbaa !80
  %i.ad = sext <8 x i16> %wide.load73 to <8 x i32>
  %i.ae = add nsw <8 x i32> %i.ad, splat (i32 1)
  %i.af = add nsw <8 x i32> %i.ae, %i.ac
  %i.ag = lshr <8 x i32> %i.af, splat (i32 2)
  %i.ah = trunc <8 x i32> %i.ag to <8 x i16>
  store <8 x i16> %i.ah, ptr %next.gep70, align 2, !tbaa !80
  %index.next74 = add nuw i64 %index68, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next74, %n.vec66
  br i1 %i.ai, label %middle.block75, label %vector.body67, !llvm.loop !99

middle.block75:                                   ; preds = %vector.body67
  br i1 %cmp.n76, label %._crit_edge.us.us, label %scalar.ph62.preheader

scalar.ph62.preheader:                            ; preds = %vector.memcheck57, %.preheader.us, %middle.block75
  %.02433.us.us.ph = phi i32 [ 0, %vector.memcheck57 ], [ 0, %.preheader.us ], [ %i.k, %middle.block75 ] ; 4 uses
  %.02632.us.us.ph = phi ptr [ %i.q, %vector.memcheck57 ], [ %i.q, %.preheader.us ], [ %i.x, %middle.block75 ] ; 3 uses
  %.02731.us.us.ph = phi ptr [ %i.t, %vector.memcheck57 ], [ %i.t, %.preheader.us ], [ %i.y, %middle.block75 ] ; 3 uses
  %.12930.us.us.ph = phi ptr [ %.028.us.us, %vector.memcheck57 ], [ %.028.us.us, %.preheader.us ], [ %i.z, %middle.block75 ] ; 3 uses
  %i.aj = sub i32 %i.f, %.02433.us.us.ph
  %.neg = add i32 %.02433.us.us.ph, 1
  %xtraiter = and i32 %i.aj, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph62.prol.loopexit, label %scalar.ph62.prol

scalar.ph62.prol:                                 ; preds = %scalar.ph62.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %.02632.us.us.ph, i64 2
  %i.al = load i16, ptr %.02632.us.us.ph, align 2, !tbaa !80
  %i.am = sext i16 %i.al to i32
  %i.an = mul nsw i32 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %.12930.us.us.ph, i64 2
  %i.ap = load i16, ptr %.12930.us.us.ph, align 2, !tbaa !80
  %i.aq = sext i16 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, 1
  %i.as = add nsw i32 %i.ar, %i.an
  %i.at = lshr i32 %i.as, 2
  %i.au = trunc i32 %i.at to i16
  %i.av = getelementptr inbounds nuw i8, ptr %.02731.us.us.ph, i64 2
  store i16 %i.au, ptr %.02731.us.us.ph, align 2, !tbaa !80
  %i.aw = add nuw i32 %.02433.us.us.ph, 1
  br label %scalar.ph62.prol.loopexit

scalar.ph62.prol.loopexit:                        ; preds = %scalar.ph62.prol, %scalar.ph62.preheader
  %.02433.us.us.unr = phi i32 [ %.02433.us.us.ph, %scalar.ph62.preheader ], [ %i.aw, %scalar.ph62.prol ]
  %.02632.us.us.unr = phi ptr [ %.02632.us.us.ph, %scalar.ph62.preheader ], [ %i.ak, %scalar.ph62.prol ]
  %.02731.us.us.unr = phi ptr [ %.02731.us.us.ph, %scalar.ph62.preheader ], [ %i.av, %scalar.ph62.prol ]
  %.12930.us.us.unr = phi ptr [ %.12930.us.us.ph, %scalar.ph62.preheader ], [ %i.ao, %scalar.ph62.prol ]
  %i.ax = icmp eq i32 %i.f, %.neg
end_hunk_0
begin_hunk_1_@h2v2_fancy_upsample:bb.a
  %i.cf = trunc i64 %i.ce to i16
  store i16 %i.cf, ptr %i.cb, align 2, !tbaa !80
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 2
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count89
  br i1 %exitcond90.not, label %._crit_edge68, label %.preheader.us, !llvm.loop !104

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge.1
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %._crit_edge.1 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next73, %._crit_edge.1 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv74 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !78 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  %.049.in = getelementptr i8, ptr %i.cg, i64 -8
  %.049 = load ptr, ptr %.049.in, align 8, !tbaa !78 ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !78 ; 4 uses
  %i.cm = load i16, ptr %i.ch, align 2, !tbaa !80
  %i.cn = sext i16 %i.cm to i64
  %i.co = mul nsw i64 %i.cn, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %.049, i64 2
  %i.cq = load i16, ptr %.049, align 2, !tbaa !80
  %i.cr = sext i16 %i.cq to i64
  %i.cs = add nsw i64 %i.co, %i.cr                ; 3 uses
  %i.ct = load i16, ptr %i.ci, align 2, !tbaa !80
  %i.cu = sext i16 %i.ct to i64
  %i.cv = mul nsw i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %.049, i64 4
  %i.cx = load i16, ptr %i.cp, align 2, !tbaa !80
  %i.cy = sext i16 %i.cx to i64
  %i.cz = add nsw i64 %i.cv, %i.cy                ; 2 uses
  %i.da = shl nsw i64 %i.cs, 2
  %i.db = add nsw i64 %i.da, 8
  %i.dc = lshr i64 %i.db, 4
  %i.dd = trunc i64 %i.dc to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  store i16 %i.dd, ptr %i.cl, align 2, !tbaa !80
  %i.df = mul nsw i64 %i.cs, 3
  %i.dg = add nsw i64 %i.df, 7
  %i.dh = add nsw i64 %i.dg, %i.cz
  %i.di = lshr i64 %i.dh, 4
  %i.dj = trunc i64 %i.di to i16
  store i16 %i.dj, ptr %i.de, align 2, !tbaa !80
  %.04852 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.04860 = phi ptr [ %.04852, %.preheader ], [ %.048, %bb.b ] ; 4 uses
  %.04559 = phi i32 [ %i.g, %.preheader ], [ %i.ec, %bb.b ]
  %.04658 = phi i64 [ %i.cs, %.preheader ], [ %.04757, %bb.b ]
  %.04757 = phi i64 [ %i.cz, %.preheader ], [ %i.dr, %bb.b ] ; 3 uses
  %.pn56 = phi ptr [ %i.cl, %.preheader ], [ %.04860, %bb.b ]
  %.15055 = phi ptr [ %i.cw, %.preheader ], [ %i.do, %bb.b ] ; 2 uses
  %.05154 = phi ptr [ %i.cj, %.preheader ], [ %i.dk, %bb.b ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.05154, i64 2
  %i.dl = load i16, ptr %.05154, align 2, !tbaa !80
  %i.dm = sext i16 %i.dl to i64
  %i.dn = mul nsw i64 %i.dm, 3
  %i.do = getelementptr inbounds nuw i8, ptr %.15055, i64 2
  %i.dp = load i16, ptr %.15055, align 2, !tbaa !80
  %i.dq = sext i16 %i.dp to i64
  %i.dr = add nsw i64 %i.dn, %i.dq                ; 4 uses
  %i.ds = mul nsw i64 %.04757, 3                  ; 2 uses
  %i.dt = add nsw i64 %.04658, 8
  %i.du = add nsw i64 %i.dt, %i.ds
  %i.dv = lshr i64 %i.du, 4
  %i.dw = trunc i64 %i.dv to i16
  %i.dx = getelementptr inbounds nuw i8, ptr %.pn56, i64 6
  store i16 %i.dw, ptr %.04860, align 2, !tbaa !80
  %i.dy = add nsw i64 %i.ds, 7
  %i.dz = add nsw i64 %i.dy, %i.dr
  %i.ea = lshr i64 %i.dz, 4
  %i.eb = trunc i64 %i.ea to i16
  store i16 %i.eb, ptr %i.dx, align 2, !tbaa !80
  %i.ec = add i32 %.04559, -1                     ; 2 uses
  %.048 = getelementptr inbounds nuw i8, ptr %.04860, i64 4 ; 2 uses
  %.not = icmp eq i32 %i.ec, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.b
  %i.ed = mul nsw i64 %i.dr, 3
  %i.ee = add nsw i64 %.04757, 8
  %i.ef = add nsw i64 %i.ee, %i.ed
  %i.eg = lshr i64 %i.ef, 4
  %i.eh = trunc i64 %i.eg to i16
  %i.ei = getelementptr inbounds nuw i8, ptr %.04860, i64 6
  store i16 %i.eh, ptr %.048, align 2, !tbaa !80
  %i.ej = shl nsw i64 %i.dr, 2
  %i.ek = add nsw i64 %i.ej, 4
  %i.el = lshr i64 %i.ek, 4
  %i.em = trunc i64 %i.el to i16
  store i16 %i.em, ptr %i.ei, align 2, !tbaa !80
  %.049.in.1 = getelementptr i8, ptr %i.cg, i64 8
  %.049.1 = load ptr, ptr %.049.in.1, align 8, !tbaa !78 ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !78 ; 4 uses
  %i.eq = load i16, ptr %i.ch, align 2, !tbaa !80
  %i.er = sext i16 %i.eq to i64
  %i.es = mul nsw i64 %i.er, 3
  %i.et = getelementptr inbounds nuw i8, ptr %.049.1, i64 2
  %i.eu = load i16, ptr %.049.1, align 2, !tbaa !80
  %i.ev = sext i16 %i.eu to i64
  %i.ew = add nsw i64 %i.es, %i.ev                ; 3 uses
  %i.ex = load i16, ptr %i.ci, align 2, !tbaa !80
  %i.ey = sext i16 %i.ex to i64
  %i.ez = mul nsw i64 %i.ey, 3
  %i.fa = getelementptr inbounds nuw i8, ptr %.049.1, i64 4
  %i.fb = load i16, ptr %i.et, align 2, !tbaa !80
  %i.fc = sext i16 %i.fb to i64
  %i.fd = add nsw i64 %i.ez, %i.fc                ; 2 uses
  %i.fe = shl nsw i64 %i.ew, 2
  %i.ff = add nsw i64 %i.fe, 8
  %i.fg = lshr i64 %i.ff, 4
  %i.fh = trunc i64 %i.fg to i16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  store i16 %i.fh, ptr %i.ep, align 2, !tbaa !80
  %i.fj = mul nsw i64 %i.ew, 3
  %i.fk = add nsw i64 %i.fj, 7
  %i.fl = add nsw i64 %i.fk, %i.fd
  %i.fm = lshr i64 %i.fl, 4
  %i.fn = trunc i64 %i.fm to i16
  store i16 %i.fn, ptr %i.fi, align 2, !tbaa !80
  %.04852.1 = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.04860.1 = phi ptr [ %.04852.1, %._crit_edge ], [ %.048.1, %bb.c ] ; 4 uses
  %.04559.1 = phi i32 [ %i.g, %._crit_edge ], [ %i.gg, %bb.c ]
  %.04658.1 = phi i64 [ %i.ew, %._crit_edge ], [ %.04757.1, %bb.c ]
  %.04757.1 = phi i64 [ %i.fd, %._crit_edge ], [ %i.fv, %bb.c ] ; 3 uses
  %.pn56.1 = phi ptr [ %i.ep, %._crit_edge ], [ %.04860.1, %bb.c ]
  %.15055.1 = phi ptr [ %i.fa, %._crit_edge ], [ %i.fs, %bb.c ] ; 2 uses
  %.05154.1 = phi ptr [ %i.cj, %._crit_edge ], [ %i.fo, %bb.c ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.05154.1, i64 2
  %i.fp = load i16, ptr %.05154.1, align 2, !tbaa !80
  %i.fq = sext i16 %i.fp to i64
  %i.fr = mul nsw i64 %i.fq, 3
  %i.fs = getelementptr inbounds nuw i8, ptr %.15055.1, i64 2
  %i.ft = load i16, ptr %.15055.1, align 2, !tbaa !80
  %i.fu = sext i16 %i.ft to i64
  %i.fv = add nsw i64 %i.fr, %i.fu                ; 4 uses
  %i.fw = mul nsw i64 %.04757.1, 3                ; 2 uses
  %i.fx = add nsw i64 %.04658.1, 8
  %i.fy = add nsw i64 %i.fx, %i.fw
  %i.fz = lshr i64 %i.fy, 4
  %i.ga = trunc i64 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %.pn56.1, i64 6
  store i16 %i.ga, ptr %.04860.1, align 2, !tbaa !80
  %i.gc = add nsw i64 %i.fw, 7
  %i.gd = add nsw i64 %i.gc, %i.fv
  %i.ge = lshr i64 %i.gd, 4
  %i.gf = trunc i64 %i.ge to i16
  store i16 %i.gf, ptr %i.gb, align 2, !tbaa !80
  %i.gg = add i32 %.04559.1, -1                   ; 2 uses
  %.048.1 = getelementptr inbounds nuw i8, ptr %.04860.1, i64 4 ; 2 uses
  %.not.1 = icmp eq i32 %i.gg, 0
  br i1 %.not.1, label %._crit_edge.1, label %bb.c, !llvm.loop !105

._crit_edge.1:                                    ; preds = %bb.c
  %i.gh = mul nsw i64 %i.fv, 3
  %i.gi = add nsw i64 %.04757.1, 8
  %i.gj = add nsw i64 %i.gi, %i.gh
  %i.gk = lshr i64 %i.gj, 4
  %i.gl = trunc i64 %i.gk to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %.04860.1, i64 6
  store i16 %i.gl, ptr %.048.1, align 2, !tbaa !80
  %i.gn = shl nsw i64 %i.fv, 2
  %i.go = add nsw i64 %i.gn, 4
  %i.gp = lshr i64 %i.go, 4
  %i.gq = trunc i64 %i.gp to i16
  store i16 %i.gq, ptr %i.gm, align 2, !tbaa !80
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv, 2
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count89
  br i1 %exitcond.not, label %._crit_edge68, label %.preheader, !llvm.loop !104

._crit_edge68:                                    ; preds = %._crit_edge.1, %.preheader.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @h2v2_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !72     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !61
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph30, label %._crit_edge31

.lr.ph30:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph30, %._crit_edge
  %indvars.iv32 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next33, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %indvars34 = trunc i64 %indvars.iv to i32       ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78   ; 9 uses
  %4 = ptrtoaddr ptr %i.g to i64                  ; 6 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !66   ; 3 uses
  %i.i = zext i32 %i.h to i64
  %.idx = shl nuw nsw i64 %i.i, 1                 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 6 uses
  %i.m = add i64 %.idx, %4
  %i.n = add i64 %4, 4
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %i.n)
  %i.p = xor i64 %4, -1
  %i.q = add i64 %i.o, %i.p                       ; 2 uses
  %i.r = lshr i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 60
  br i1 %min.iters.check, label %.lr.ph.preheader45, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.g, i64 4
  %i.t = add i64 %.idx, %4
  %i.u = add i64 %4, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.u)
  %i.v = xor i64 %4, -1
  %i.w = add i64 %umax, %i.v                      ; 2 uses
  %i.x = and i64 %i.w, -4
  %scevgep37 = getelementptr i8, ptr %scevgep, i64 %i.x
  %scevgep38 = getelementptr i8, ptr %i.l, i64 2
  %i.y = lshr i64 %i.w, 1
  %i.z = and i64 %i.y, 9223372036854775806
  %scevgep39 = getelementptr i8, ptr %scevgep38, i64 %i.z
  %bound0 = icmp ult ptr %i.g, %scevgep39
  %bound1 = icmp ult ptr %i.l, %scevgep37
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader45, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, 9223372036854775800      ; 4 uses
  %i.aa = shl nuw i64 %n.vec, 1
  %i.ab = getelementptr i8, ptr %i.l, i64 %i.aa
  %i.ac = shl i64 %n.vec, 2
  %i.ad = getelementptr i8, ptr %i.g, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.ae ; 2 uses
  %i.af = shl i64 %index, 2                       ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.g, i64 %i.af
  %i.ag = getelementptr i8, ptr %i.g, i64 %i.af
  %next.gep41 = getelementptr i8, ptr %i.ag, i64 16
  %i.ah = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !80, !alias.scope !106
  %wide.load42 = load <4 x i16>, ptr %i.ah, align 2, !tbaa !80, !alias.scope !106
  %interleaved.vec = shufflevector <4 x i16> %wide.load, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec, ptr %next.gep40, align 2, !tbaa !80, !alias.scope !109, !noalias !106
  %interleaved.vec43 = shufflevector <4 x i16> %wide.load42, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec43, ptr %next.gep41, align 2, !tbaa !80, !alias.scope !109, !noalias !106
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader45

.lr.ph.preheader45:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.02326.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  %.02425.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader45, %.lr.ph
  %.02326 = phi ptr [ %i.aj, %.lr.ph ], [ %.02326.ph, %.lr.ph.preheader45 ] ; 2 uses
  %.02425 = phi ptr [ %i.am, %.lr.ph ], [ %.02425.ph, %.lr.ph.preheader45 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.02326, i64 2
  %i.ak = load i16, ptr %.02326, align 2, !tbaa !80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02425, i64 2
  store i16 %i.ak, ptr %.02425, align 2, !tbaa !80
  %i.am = getelementptr inbounds nuw i8, ptr %.02425, i64 4 ; 2 uses
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !80
  %i.an = icmp ult ptr %i.am, %i.j
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !112

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %i.ao = or disjoint i32 %indvars34, 1
  tail call void @j12copy_sample_rows(ptr noundef nonnull %i.a, i32 noundef %indvars34, ptr noundef nonnull %i.a, i32 noundef %i.ao, i32 noundef 1, i32 noundef %i.h) #6
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !61
  %i.aq = trunc nuw i64 %indvars.iv.next to i32
  %i.ar = icmp sgt i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.b, label %._crit_edge31, !llvm.loop !113

._crit_edge31:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @int_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !72     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !114
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39
  %.fr50 = freeze i8 %i.i                         ; 8 uses
  %i.j = zext i8 %.fr50 to i32                    ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 258
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.g
  %i.m = load i8, ptr %i.l, align 1, !tbaa !39
  %.fr = freeze i8 %i.m                           ; 3 uses
  %i.n = zext i8 %.fr to i32                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !61   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge44

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %.not = icmp eq i8 %.fr50, 0
  %i.s = icmp ugt i8 %.fr, 1                      ; 2 uses
  %i.t = add nsw i32 %i.n, -1                     ; 2 uses
  br i1 %.not, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.u = zext i8 %.fr to i64                      ; 2 uses
  br i1 %i.s, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %i.v = zext i8 %.fr50 to i64                    ; 5 uses
  %min.iters.check98 = icmp ult i8 %.fr50, 4
  %min.iters.check100 = icmp ult i8 %.fr50, 16
  %n.mod.vf102 = and i64 %i.v, 12
  %n.vec103 = and i64 %i.v, 240                   ; 5 uses
  %i.w = shl nuw nsw i64 %n.vec103, 1
  %i.x = trunc nuw nsw i64 %n.vec103 to i32
  %i.y = sub nsw i32 %i.j, %i.x
  %cmp.n111 = icmp eq i64 %n.vec103, %i.v
  %min.epilog.iters.check117 = icmp eq i64 %n.mod.vf102, 0
  %n.vec120 = and i64 %i.v, 252                   ; 4 uses
  %i.z = shl nuw nsw i64 %n.vec120, 1
  %i.aa = trunc nuw nsw i64 %n.vec120 to i32
  %i.ab = sub nsw i32 %i.j, %i.aa
  %cmp.n128 = icmp eq i64 %n.vec120, %i.v
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader, %._crit_edge.split.us.us.us
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %._crit_edge.split.us.us.us ], [ 0, %.lr.ph.split.us.split.us.preheader ] ; 2 uses
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %._crit_edge.split.us.us.us ], [ 0, %.lr.ph.split.us.split.us.preheader ] ; 3 uses
  %indvars69 = trunc i64 %indvars.iv65 to i32     ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv65
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !78 ; 2 uses
  %i.ae = load i32, ptr %i.r, align 8, !tbaa !66  ; 3 uses
  %i.af = zext i32 %i.ae to i64
  %.idx54 = shl nuw nsw i64 %i.af, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx54
  %.not55 = icmp eq i32 %i.ae, 0
  br i1 %.not55, label %._crit_edge.split.us.us.us, label %.lr.ph.us.us.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph.split.us.split.us
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv67
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !78
  br label %iter.check114

._crit_edge.split.us.us.us:                       ; preds = %..loopexit_crit_edge.us.us.us, %.lr.ph.split.us.split.us
  %i.aj = add nuw nsw i32 %indvars69, 1
  tail call void @j12copy_sample_rows(ptr noundef %i.c, i32 noundef %indvars69, ptr noundef %i.c, i32 noundef %i.aj, i32 noundef %i.t, i32 noundef %i.ae) #6
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, %i.u ; 2 uses
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !61
  %i.al = trunc nuw i64 %indvars.iv.next66 to i32
  %i.am = icmp sgt i32 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph.split.us.split.us, label %._crit_edge44, !llvm.loop !115

iter.check114:                                    ; preds = %.lr.ph.us.us.us.preheader, %..loopexit_crit_edge.us.us.us
  %.03239.us.us.us = phi ptr [ %i.ay, %..loopexit_crit_edge.us.us.us ], [ %i.ai, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %.03338.us.us.us = phi ptr [ %.lcssa, %..loopexit_crit_edge.us.us.us ], [ %i.ad, %.lr.ph.us.us.us.preheader ] ; 5 uses
  %i.an = load i16, ptr %.03239.us.us.us, align 2, !tbaa !80 ; 3 uses
  br i1 %min.iters.check98, label %vec.epilog.scalar.ph115.preheader, label %vector.main.loop.iter.check99

vector.main.loop.iter.check99:                    ; preds = %iter.check114
  br i1 %min.iters.check100, label %vec.epilog.ph118, label %vector.ph101

vector.ph101:                                     ; preds = %vector.main.loop.iter.check99
  %i.ao = getelementptr i8, ptr %.03338.us.us.us, i64 %i.w ; 2 uses
  %broadcast.splatinsert104 = insertelement <8 x i16> poison, i16 %i.an, i64 0
  %broadcast.splat105 = shufflevector <8 x i16> %broadcast.splatinsert104, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph101
  %index107 = phi i64 [ 0, %vector.ph101 ], [ %index.next109, %vector.body106 ] ; 2 uses
  %i.ap = shl i64 %index107, 1
  %next.gep108 = getelementptr i8, ptr %.03338.us.us.us, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep108, i64 16
  store <8 x i16> %broadcast.splat105, ptr %next.gep108, align 2, !tbaa !80
  store <8 x i16> %broadcast.splat105, ptr %i.aq, align 2, !tbaa !80
  %index.next109 = add nuw i64 %index107, 16      ; 2 uses
  %i.ar = icmp eq i64 %index.next109, %n.vec103
  br i1 %i.ar, label %middle.block110, label %vector.body106, !llvm.loop !116

middle.block110:                                  ; preds = %vector.body106
  br i1 %cmp.n111, label %..loopexit_crit_edge.us.us.us, label %vec.epilog.iter.check116

vec.epilog.iter.check116:                         ; preds = %middle.block110
  br i1 %min.epilog.iters.check117, label %vec.epilog.scalar.ph115.preheader, label %vec.epilog.ph118, !prof !117

vec.epilog.ph118:                                 ; preds = %vector.main.loop.iter.check99, %vec.epilog.iter.check116
end_hunk_1
