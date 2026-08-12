loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@h2v1_fancy_upsample:bb.a
  %i.av = sext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i16 %i.au, ptr %i.as, align 2, !tbaa !80
  %i.ax = mul nsw i32 %i.av, 3
  %i.ay = load i16, ptr %i.at, align 2, !tbaa !80
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
  br i1 %.not, label %._crit_edge23, label %bb.b

bb.b:                                             ; preds = %.lr.ph22
  %4 = tail call i64 @llvm.umax.i64(i64 %.idx, i64 4)
  %5 = add nsw i64 %4, -2                         ; 2 uses
  %6 = lshr i64 %5, 2
  %7 = add nuw nsw i64 %6, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %5, 60
  %8 = tail call i64 @llvm.umax.i64(i64 %.idx, i64 4)
  %9 = add nsw i64 %8, -1                         ; 2 uses
  %10 = and i64 %9, -4
  %11 = lshr i64 %9, 1
  %12 = and i64 %11, 9223372036854775806
  %n.vec = and i64 %7, 9223372036854775800        ; 4 uses
  %13 = shl nuw i64 %n.vec, 1
  %14 = shl i64 %n.vec, 2
  %cmp.n = icmp eq i64 %7, %n.vec
  br label %.lr.ph.preheader.a

.lr.ph.preheader.a:                               ; preds = %bb.b, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.b ] ; 3 uses
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %16 = load ptr, ptr %15, align 8, !tbaa !78     ; 8 uses
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 %.idx
  %18 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %19 = load ptr, ptr %18, align 8, !tbaa !78     ; 6 uses
  br i1 %min.iters.check, label %.lr.ph.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.a
  %scevgep = getelementptr i8, ptr %16, i64 4
  %scevgep25 = getelementptr i8, ptr %scevgep, i64 %10
  %scevgep26 = getelementptr i8, ptr %19, i64 2
  %scevgep27 = getelementptr i8, ptr %scevgep26, i64 %12
  %bound0 = icmp ult ptr %16, %scevgep27
  %bound1 = icmp ult ptr %19, %scevgep25
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.h = getelementptr i8, ptr %19, i64 %13
  %i.i = getelementptr i8, ptr %16, i64 %14
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %19, i64 %i.j ; 2 uses
  %i.k = shl i64 %index, 2                        ; 2 uses
  %next.gep28 = getelementptr i8, ptr %16, i64 %i.k
  %i.l = getelementptr i8, ptr %16, i64 %i.k
  %next.gep29 = getelementptr i8, ptr %i.l, i64 16
  %i.m = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !80, !alias.scope !91
  %wide.load30 = load <4 x i16>, ptr %i.m, align 2, !tbaa !80, !alias.scope !91
  %interleaved.vec = shufflevector <4 x i16> %wide.load, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec, ptr %next.gep28, align 2, !tbaa !80, !alias.scope !94, !noalias !91
  %interleaved.vec31 = shufflevector <4 x i16> %wide.load30, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec31, ptr %next.gep29, align 2, !tbaa !80, !alias.scope !94, !noalias !91
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader33

.lr.ph.preheader33:                               ; preds = %vector.memcheck, %.lr.ph.preheader.a, %middle.block
  %.01619.ph = phi ptr [ %19, %vector.memcheck ], [ %19, %.lr.ph.preheader.a ], [ %i.h, %middle.block ]
  %.01718.ph = phi ptr [ %16, %vector.memcheck ], [ %16, %.lr.ph.preheader.a ], [ %i.i, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader33, %.lr.ph
  %.01619 = phi ptr [ %i.o, %.lr.ph ], [ %.01619.ph, %.lr.ph.preheader33 ] ; 2 uses
  %.01718 = phi ptr [ %i.r, %.lr.ph ], [ %.01718.ph, %.lr.ph.preheader33 ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01619, i64 2
  %i.p = load i16, ptr %.01619, align 2, !tbaa !80 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01718, i64 2
  store i16 %i.p, ptr %.01718, align 2, !tbaa !80
  %i.r = getelementptr inbounds nuw i8, ptr %.01718, i64 4 ; 2 uses
  store i16 %i.p, ptr %i.q, align 2, !tbaa !80
  %i.s = icmp ult ptr %i.r, %17
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge23, label %.lr.ph.preheader.a, !llvm.loop !98

._crit_edge23:                                    ; preds = %._crit_edge, %.lr.ph22, %bb.a
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
  %n.vec65 = and i64 %i.j, 4294967288             ; 4 uses
  %i.k = trunc nuw i64 %n.vec65 to i32
  %i.l = shl nuw nsw i64 %n.vec65, 1              ; 3 uses
  %cmp.n75 = icmp eq i64 %n.vec65, %i.j
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
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next73, %vector.body66 ] ; 2 uses
  %i.aa = shl i64 %index67, 1                     ; 3 uses
  %next.gep68 = getelementptr i8, ptr %i.q, i64 %i.aa
  %next.gep69 = getelementptr i8, ptr %i.t, i64 %i.aa
  %next.gep70 = getelementptr i8, ptr %.028.us.us, i64 %i.aa
  %wide.load71 = load <8 x i16>, ptr %next.gep68, align 2, !tbaa !80
  %i.ab = sext <8 x i16> %wide.load71 to <8 x i32>
  %i.ac = mul nsw <8 x i32> %i.ab, splat (i32 3)
  %wide.load72 = load <8 x i16>, ptr %next.gep70, align 2, !tbaa !80
  %i.ad = sext <8 x i16> %wide.load72 to <8 x i32>
  %i.ae = add nsw <8 x i32> %i.ad, splat (i32 1)
  %i.af = add nsw <8 x i32> %i.ae, %i.ac
  %i.ag = lshr <8 x i32> %i.af, splat (i32 2)
  %i.ah = trunc <8 x i32> %i.ag to <8 x i16>
  store <8 x i16> %i.ah, ptr %next.gep69, align 2, !tbaa !80
  %index.next73 = add nuw i64 %index67, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next73, %n.vec65
  br i1 %i.ai, label %middle.block74, label %vector.body66, !llvm.loop !99

middle.block74:                                   ; preds = %vector.body66
  br i1 %cmp.n75, label %._crit_edge.us.us, label %scalar.ph62.preheader

scalar.ph62.preheader:                            ; preds = %vector.memcheck57, %.preheader.us, %middle.block74
  %.02433.us.us.ph = phi i32 [ 0, %vector.memcheck57 ], [ 0, %.preheader.us ], [ %i.k, %middle.block74 ] ; 4 uses
  %.02632.us.us.ph = phi ptr [ %i.q, %vector.memcheck57 ], [ %i.q, %.preheader.us ], [ %i.x, %middle.block74 ] ; 3 uses
  %.02731.us.us.ph = phi ptr [ %i.t, %vector.memcheck57 ], [ %i.t, %.preheader.us ], [ %i.y, %middle.block74 ] ; 3 uses
  %.12930.us.us.ph = phi ptr [ %.028.us.us, %vector.memcheck57 ], [ %.028.us.us, %.preheader.us ], [ %i.z, %middle.block74 ] ; 3 uses
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
  br i1 %i.ax, label %._crit_edge.us.us, label %scalar.ph62

scalar.ph62:                                      ; preds = %scalar.ph62.prol.loopexit, %scalar.ph62
  %.02433.us.us = phi i32 [ %i.bw, %scalar.ph62 ], [ %.02433.us.us.unr, %scalar.ph62.prol.loopexit ]
  %.02632.us.us = phi ptr [ %i.bk, %scalar.ph62 ], [ %.02632.us.us.unr, %scalar.ph62.prol.loopexit ] ; 3 uses
  %.02731.us.us = phi ptr [ %i.bv, %scalar.ph62 ], [ %.02731.us.us.unr, %scalar.ph62.prol.loopexit ] ; 3 uses
  %.12930.us.us = phi ptr [ %i.bo, %scalar.ph62 ], [ %.12930.us.us.unr, %scalar.ph62.prol.loopexit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02632.us.us, i64 2
  %i.az = load i16, ptr %.02632.us.us, align 2, !tbaa !80
  %i.ba = sext i16 %i.az to i32
  %i.bb = mul nsw i32 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %.12930.us.us, i64 2
  %i.bd = load i16, ptr %.12930.us.us, align 2, !tbaa !80
  %i.be = sext i16 %i.bd to i32
  %i.bf = add nsw i32 %i.be, 1
  %i.bg = add nsw i32 %i.bf, %i.bb
  %i.bh = lshr i32 %i.bg, 2
  %i.bi = trunc i32 %i.bh to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %.02731.us.us, i64 2
  store i16 %i.bi, ptr %.02731.us.us, align 2, !tbaa !80
  %i.bk = getelementptr inbounds nuw i8, ptr %.02632.us.us, i64 4
  %i.bl = load i16, ptr %i.ay, align 2, !tbaa !80
  %i.bm = sext i16 %i.bl to i32
  %i.bn = mul nsw i32 %i.bm, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %.12930.us.us, i64 4
  %i.bp = load i16, ptr %i.bc, align 2, !tbaa !80
  %i.bq = sext i16 %i.bp to i32
  %i.br = add nsw i32 %i.bq, 1
  %i.bs = add nsw i32 %i.br, %i.bn
  %i.bt = lshr i32 %i.bs, 2
  %i.bu = trunc i32 %i.bt to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %.02731.us.us, i64 4
  store i16 %i.bu, ptr %i.bj, align 2, !tbaa !80
  %i.bw = add nuw i32 %.02433.us.us, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.bw, %i.f
  br i1 %exitcond.not.1, label %._crit_edge.us.us, label %scalar.ph62, !llvm.loop !100

._crit_edge.us.us:                                ; preds = %scalar.ph62.prol.loopexit, %scalar.ph62, %middle.block74
  %.028.in.us.us.1 = getelementptr i8, ptr %i.p, i64 8
  %.028.us.us.1 = load ptr, ptr %.028.in.us.us.1, align 8, !tbaa !78 ; 5 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !78 ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge.us.us
  %i.ca = ptrtoaddr ptr %i.bz to i64              ; 2 uses
  %.028.us.us.149 = ptrtoaddr ptr %.028.us.us.1 to i64
  %i.cb = sub i64 %i.r, %i.ca
  %diff.check = icmp ugt i64 %i.cb, -16
  %i.cc = sub i64 %.028.us.us.149, %i.ca
  %diff.check50 = icmp ugt i64 %i.cc, -16
  %conflict.rdx = or i1 %diff.check, %diff.check50
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cd = getelementptr i8, ptr %i.q, i64 %i.o
  %i.ce = getelementptr i8, ptr %i.bz, i64 %i.o
  %i.cf = getelementptr i8, ptr %.028.us.us.1, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = shl i64 %index, 1                       ; 3 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.cg
  %next.gep51 = getelementptr i8, ptr %i.bz, i64 %i.cg
  %next.gep52 = getelementptr i8, ptr %.028.us.us.1, i64 %i.cg
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !80
  %i.ch = sext <8 x i16> %wide.load to <8 x i32>
  %i.ci = mul nsw <8 x i32> %i.ch, splat (i32 3)
  %wide.load53 = load <8 x i16>, ptr %next.gep52, align 2, !tbaa !80
  %i.cj = sext <8 x i16> %wide.load53 to <8 x i32>
  %i.ck = add nsw <8 x i32> %i.cj, splat (i32 2)
  %i.cl = add nsw <8 x i32> %i.ck, %i.ci
  %i.cm = lshr <8 x i32> %i.cl, splat (i32 2)
  %i.cn = trunc <8 x i32> %i.cm to <8 x i16>
  store <8 x i16> %i.cn, ptr %next.gep51, align 2, !tbaa !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
end_hunk_0
begin_hunk_1_@h2v2_fancy_upsample:bb.a
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
  %i.h = ptrtoaddr ptr %i.g to i64                ; 6 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !66   ; 3 uses
  %i.j = zext i32 %i.i to i64
  %.idx = shl nuw nsw i64 %i.j, 1                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78   ; 6 uses
  %i.n = add i64 %.idx, %i.h
  %i.o = add i64 %i.h, 4
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.o)
  %i.q = xor i64 %i.h, -1
  %i.r = add i64 %i.p, %i.q                       ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 60
  br i1 %min.iters.check, label %.lr.ph.preheader45, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.g, i64 4
  %i.u = add i64 %.idx, %i.h
  %i.v = add i64 %i.h, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.v)
  %i.w = xor i64 %i.h, -1
  %i.x = add i64 %umax, %i.w                      ; 2 uses
  %i.y = and i64 %i.x, -4
  %scevgep37 = getelementptr i8, ptr %scevgep, i64 %i.y
  %scevgep38 = getelementptr i8, ptr %i.m, i64 2
  %i.z = lshr i64 %i.x, 1
  %i.aa = and i64 %i.z, 9223372036854775806
  %scevgep39 = getelementptr i8, ptr %scevgep38, i64 %i.aa
  %bound0 = icmp ult ptr %i.g, %scevgep39
  %bound1 = icmp ult ptr %i.m, %scevgep37
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader45, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 9223372036854775800      ; 4 uses
  %i.ab = shl nuw i64 %n.vec, 1
  %i.ac = getelementptr i8, ptr %i.m, i64 %i.ab
  %i.ad = shl i64 %n.vec, 2
  %i.ae = getelementptr i8, ptr %i.g, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.af ; 2 uses
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.g, i64 %i.ag
  %i.ah = getelementptr i8, ptr %i.g, i64 %i.ag
  %next.gep41 = getelementptr i8, ptr %i.ah, i64 16
  %i.ai = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !80, !alias.scope !106
  %wide.load42 = load <4 x i16>, ptr %i.ai, align 2, !tbaa !80, !alias.scope !106
  %interleaved.vec = shufflevector <4 x i16> %wide.load, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec, ptr %next.gep40, align 2, !tbaa !80, !alias.scope !109, !noalias !106
  %interleaved.vec43 = shufflevector <4 x i16> %wide.load42, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec43, ptr %next.gep41, align 2, !tbaa !80, !alias.scope !109, !noalias !106
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader45

.lr.ph.preheader45:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.02326.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  %.02425.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader45, %.lr.ph
  %.02326 = phi ptr [ %i.ak, %.lr.ph ], [ %.02326.ph, %.lr.ph.preheader45 ] ; 2 uses
  %.02425 = phi ptr [ %i.an, %.lr.ph ], [ %.02425.ph, %.lr.ph.preheader45 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02326, i64 2
  %i.al = load i16, ptr %.02326, align 2, !tbaa !80 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02425, i64 2
  store i16 %i.al, ptr %.02425, align 2, !tbaa !80
  %i.an = getelementptr inbounds nuw i8, ptr %.02425, i64 4 ; 2 uses
  store i16 %i.al, ptr %i.am, align 2, !tbaa !80
  %i.ao = icmp ult ptr %i.an, %i.k
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !112

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %i.ap = or disjoint i32 %indvars34, 1
  tail call void @j12copy_sample_rows(ptr noundef nonnull %i.a, i32 noundef %indvars34, ptr noundef nonnull %i.a, i32 noundef %i.ap, i32 noundef 1, i32 noundef %i.i) #6
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !61
  %i.ar = trunc nuw i64 %indvars.iv.next to i32
  %i.as = icmp sgt i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.b, label %._crit_edge31, !llvm.loop !113

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
  %i.n = zext i8 %.fr to i32                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !61   ; 2 uses
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
  %min.iters.check97 = icmp ult i8 %.fr50, 4
  %min.iters.check99 = icmp ult i8 %.fr50, 16
  %i.w = and i64 %i.v, 12
  %n.vec101 = and i64 %i.v, 240                   ; 5 uses
  %i.x = shl nuw nsw i64 %n.vec101, 1
  %i.y = trunc nuw nsw i64 %n.vec101 to i32
  %i.z = sub nsw i32 %i.j, %i.y
  %cmp.n109 = icmp eq i64 %n.vec101, %i.v
  %min.epilog.iters.check115 = icmp eq i64 %i.w, 0
  %n.vec117 = and i64 %i.v, 252                   ; 4 uses
  %i.aa = shl nuw nsw i64 %n.vec117, 1
  %i.ab = trunc nuw nsw i64 %n.vec117 to i32
  %i.ac = sub nsw i32 %i.j, %i.ab
  %cmp.n125 = icmp eq i64 %n.vec117, %i.v
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader, %._crit_edge.split.us.us.us
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %._crit_edge.split.us.us.us ], [ 0, %.lr.ph.split.us.split.us.preheader ] ; 2 uses
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %._crit_edge.split.us.us.us ], [ 0, %.lr.ph.split.us.split.us.preheader ] ; 3 uses
  %indvars69 = trunc i64 %indvars.iv65 to i32     ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv65
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !78 ; 2 uses
  %i.af = load i32, ptr %i.r, align 8, !tbaa !66  ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %.idx54 = shl nuw nsw i64 %i.ag, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx54
  %.not55 = icmp eq i32 %i.af, 0
  br i1 %.not55, label %._crit_edge.split.us.us.us, label %.lr.ph.us.us.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph.split.us.split.us
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv67
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !78
  br label %iter.check112

._crit_edge.split.us.us.us:                       ; preds = %..loopexit_crit_edge.us.us.us, %.lr.ph.split.us.split.us
  %i.ak = add nuw nsw i32 %indvars69, 1
  tail call void @j12copy_sample_rows(ptr noundef %i.c, i32 noundef %indvars69, ptr noundef %i.c, i32 noundef %i.ak, i32 noundef %i.t, i32 noundef %i.af) #6
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, %i.u ; 2 uses
  %i.al = load i32, ptr %i.o, align 4, !tbaa !61
  %i.am = trunc nuw i64 %indvars.iv.next66 to i32
  %i.an = icmp sgt i32 %i.al, %i.am
  br i1 %i.an, label %.lr.ph.split.us.split.us, label %._crit_edge44, !llvm.loop !115

iter.check112:                                    ; preds = %.lr.ph.us.us.us.preheader, %..loopexit_crit_edge.us.us.us
  %.03239.us.us.us = phi ptr [ %i.az, %..loopexit_crit_edge.us.us.us ], [ %i.aj, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %.03338.us.us.us = phi ptr [ %.lcssa, %..loopexit_crit_edge.us.us.us ], [ %i.ae, %.lr.ph.us.us.us.preheader ] ; 5 uses
  %i.ao = load i16, ptr %.03239.us.us.us, align 2, !tbaa !80 ; 3 uses
  br i1 %min.iters.check97, label %vec.epilog.scalar.ph113.preheader, label %vector.main.loop.iter.check98

vector.main.loop.iter.check98:                    ; preds = %iter.check112
  br i1 %min.iters.check99, label %vec.epilog.ph116, label %vector.ph100

vector.ph100:                                     ; preds = %vector.main.loop.iter.check98
  %i.ap = getelementptr i8, ptr %.03338.us.us.us, i64 %i.x ; 2 uses
  %broadcast.splatinsert102 = insertelement <8 x i16> poison, i16 %i.ao, i64 0
  %broadcast.splat103 = shufflevector <8 x i16> %broadcast.splatinsert102, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph100
  %index105 = phi i64 [ 0, %vector.ph100 ], [ %index.next107, %vector.body104 ] ; 2 uses
  %i.aq = shl i64 %index105, 1
  %next.gep106 = getelementptr i8, ptr %.03338.us.us.us, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep106, i64 16
  store <8 x i16> %broadcast.splat103, ptr %next.gep106, align 2, !tbaa !80
  store <8 x i16> %broadcast.splat103, ptr %i.ar, align 2, !tbaa !80
  %index.next107 = add nuw i64 %index105, 16      ; 2 uses
  %i.as = icmp eq i64 %index.next107, %n.vec101
  br i1 %i.as, label %middle.block108, label %vector.body104, !llvm.loop !116

middle.block108:                                  ; preds = %vector.body104
  br i1 %cmp.n109, label %..loopexit_crit_edge.us.us.us, label %vec.epilog.iter.check114

vec.epilog.iter.check114:                         ; preds = %middle.block108
  br i1 %min.epilog.iters.check115, label %vec.epilog.scalar.ph113.preheader, label %vec.epilog.ph116, !prof !117

vec.epilog.ph116:                                 ; preds = %vector.main.loop.iter.check98, %vec.epilog.iter.check114
  %vec.epilog.resume.val110 = phi i64 [ %n.vec101, %vec.epilog.iter.check114 ], [ 0, %vector.main.loop.iter.check98 ]
  %i.at = getelementptr i8, ptr %.03338.us.us.us, i64 %i.aa ; 2 uses
  %broadcast.splatinsert118 = insertelement <4 x i16> poison, i16 %i.ao, i64 0
  %broadcast.splat119 = shufflevector <4 x i16> %broadcast.splatinsert118, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body120

vec.epilog.vector.body120:                        ; preds = %vec.epilog.vector.body120, %vec.epilog.ph116
  %index121 = phi i64 [ %vec.epilog.resume.val110, %vec.epilog.ph116 ], [ %index.next123, %vec.epilog.vector.body120 ] ; 2 uses
  %i.au = shl i64 %index121, 1
  %next.gep122 = getelementptr i8, ptr %.03338.us.us.us, i64 %i.au
  store <4 x i16> %broadcast.splat119, ptr %next.gep122, align 2, !tbaa !80
  %index.next123 = add nuw i64 %index121, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next123, %n.vec117
  br i1 %i.av, label %vec.epilog.middle.block124, label %vec.epilog.vector.body120, !llvm.loop !118

vec.epilog.middle.block124:                       ; preds = %vec.epilog.vector.body120
  br i1 %cmp.n125, label %..loopexit_crit_edge.us.us.us, label %vec.epilog.scalar.ph113.preheader

vec.epilog.scalar.ph113.preheader:                ; preds = %iter.check112, %vec.epilog.iter.check114, %vec.epilog.middle.block124
  %.137.us.us.us.ph = phi ptr [ %.03338.us.us.us, %iter.check112 ], [ %i.ap, %vec.epilog.iter.check114 ], [ %i.at, %vec.epilog.middle.block124 ]
  %.03436.us.us.us.ph = phi i32 [ %i.j, %iter.check112 ], [ %i.z, %vec.epilog.iter.check114 ], [ %i.ac, %vec.epilog.middle.block124 ]
  br label %vec.epilog.scalar.ph113

vec.epilog.scalar.ph113:                          ; preds = %vec.epilog.scalar.ph113.preheader, %vec.epilog.scalar.ph113
  %.137.us.us.us = phi ptr [ %i.aw, %vec.epilog.scalar.ph113 ], [ %.137.us.us.us.ph, %vec.epilog.scalar.ph113.preheader ] ; 2 uses
  %.03436.us.us.us = phi i32 [ %i.ax, %vec.epilog.scalar.ph113 ], [ %.03436.us.us.us.ph, %vec.epilog.scalar.ph113.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.137.us.us.us, i64 2 ; 2 uses
  store i16 %i.ao, ptr %.137.us.us.us, align 2, !tbaa !80
  %i.ax = add nsw i32 %.03436.us.us.us, -1
  %i.ay = icmp sgt i32 %.03436.us.us.us, 1
  br i1 %i.ay, label %vec.epilog.scalar.ph113, label %..loopexit_crit_edge.us.us.us, !llvm.loop !119

..loopexit_crit_edge.us.us.us:                    ; preds = %vec.epilog.scalar.ph113, %vec.epilog.middle.block124, %middle.block108
  %.lcssa = phi ptr [ %i.at, %vec.epilog.middle.block124 ], [ %i.ap, %middle.block108 ], [ %i.aw, %vec.epilog.scalar.ph113 ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.03239.us.us.us, i64 2
  %i.ba = icmp ult ptr %.lcssa, %i.ah
  br i1 %i.ba, label %iter.check112, label %._crit_edge.split.us.us.us, !llvm.loop !120

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %4 = zext nneg i32 %i.p to i64
  %.pre = load i32, ptr %i.r, align 8, !tbaa !66  ; 2 uses
  %5 = zext i32 %.pre to i64
  %.idx = shl nuw nsw i64 %5, 1
  %.not53 = icmp eq i32 %.pre, 0
  br i1 %.not53, label %._crit_edge44, label %.lr.ph.split.us.split.a

.lr.ph.split.us.split.a:                          ; preds = %.lr.ph.split.us.split
  %i.bb = zext i8 %.fr50 to i64                   ; 5 uses
  %min.iters.check = icmp ult i8 %.fr50, 4
  %min.iters.check86 = icmp ult i8 %.fr50, 16
  %i.bc = and i64 %i.bb, 12
  %n.vec = and i64 %i.bb, 240                     ; 5 uses
  %i.bd = shl nuw nsw i64 %n.vec, 1
  %i.be = trunc nuw nsw i64 %n.vec to i32
  %i.bf = sub nsw i32 %i.j, %i.be
  %cmp.n = icmp eq i64 %n.vec, %i.bb
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  %n.vec88 = and i64 %i.bb, 252                   ; 4 uses
  %i.bg = shl nuw nsw i64 %n.vec88, 1
  %i.bh = trunc nuw nsw i64 %n.vec88 to i32
  %i.bi = sub nsw i32 %i.j, %i.bh
  %cmp.n94 = icmp eq i64 %n.vec88, %i.bb
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split.a, %._crit_edge.split.us.us
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %._crit_edge.split.us.us ], [ 0, %.lr.ph.split.us.split.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.split.us.us ], [ 0, %.lr.ph.split.us.split.a ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !78 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx
  %6 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv60
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  br label %iter.check

._crit_edge.split.us.us:                          ; preds = %..loopexit_crit_edge.us.us
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.u ; 2 uses
  %i.bm = icmp samesign ult i64 %indvars.iv.next, %4
  br i1 %i.bm, label %bb.b, label %._crit_edge44, !llvm.loop !115

iter.check:                                       ; preds = %bb.b, %..loopexit_crit_edge.us.us
  %.03239.us.us = phi ptr [ %i.by, %..loopexit_crit_edge.us.us ], [ %7, %bb.b ] ; 2 uses
  %.03338.us.us = phi ptr [ %.lcssa85, %..loopexit_crit_edge.us.us ], [ %i.bk, %bb.b ] ; 5 uses
  %i.bn = load i16, ptr %.03239.us.us, align 2, !tbaa !80 ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bo = getelementptr i8, ptr %.03338.us.us, i64 %i.bd ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.bn, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.03338.us.us, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !80
  store <8 x i16> %broadcast.splat, ptr %i.bq, align 2, !tbaa !80
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !117

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bs = getelementptr i8, ptr %.03338.us.us, i64 %i.bg ; 2 uses
  %broadcast.splatinsert89 = insertelement <4 x i16> poison, i16 %i.bn, i64 0
  %broadcast.splat90 = shufflevector <4 x i16> %broadcast.splatinsert89, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index91 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %i.bt = shl i64 %index91, 1
  %next.gep92 = getelementptr i8, ptr %.03338.us.us, i64 %i.bt
  store <4 x i16> %broadcast.splat90, ptr %next.gep92, align 2, !tbaa !80
  %index.next93 = add nuw i64 %index91, 4         ; 2 uses
  %i.bu = icmp eq i64 %index.next93, %n.vec88
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !122

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n94, label %..loopexit_crit_edge.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.137.us.us.ph = phi ptr [ %.03338.us.us, %iter.check ], [ %i.bo, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  %.03436.us.us.ph = phi i32 [ %i.j, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.137.us.us = phi ptr [ %i.bv, %vec.epilog.scalar.ph ], [ %.137.us.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.03436.us.us = phi i32 [ %i.bw, %vec.epilog.scalar.ph ], [ %.03436.us.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.137.us.us, i64 2 ; 2 uses
  store i16 %i.bn, ptr %.137.us.us, align 2, !tbaa !80
  %i.bw = add nsw i32 %.03436.us.us, -1
  %i.bx = icmp sgt i32 %.03436.us.us, 1
  br i1 %i.bx, label %vec.epilog.scalar.ph, label %..loopexit_crit_edge.us.us, !llvm.loop !123

..loopexit_crit_edge.us.us:                       ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa85 = phi ptr [ %i.bs, %vec.epilog.middle.block ], [ %i.bo, %middle.block ], [ %i.bv, %vec.epilog.scalar.ph ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.03239.us.us, i64 2
  %i.bz = icmp ult ptr %.lcssa85, %i.bl
  br i1 %i.bz, label %iter.check, label %._crit_edge.split.us.us, !llvm.loop !120

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.c
  %.042.us45 = phi i32 [ %i.cc, %bb.c ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.ca = load i32, ptr %i.r, align 8, !tbaa !66
  %.not52 = icmp eq i32 %i.ca, 0
  br i1 %.not52, label %bb.c, label %.loopexit.preheader

bb.c:                                             ; preds = %.lr.ph.split.split.us
  %i.cb = add nuw nsw i32 %.042.us45, 1
  tail call void @j12copy_sample_rows(ptr noundef %i.c, i32 noundef %.042.us45, ptr noundef %i.c, i32 noundef %i.cb, i32 noundef %i.t, i32 noundef 0) #6
  %i.cc = add nuw nsw i32 %.042.us45, %i.n        ; 2 uses
  %i.cd = load i32, ptr %i.o, align 4, !tbaa !61
  %i.ce = icmp slt i32 %i.cc, %i.cd
  br i1 %i.ce, label %.lr.ph.split.split.us, label %._crit_edge44, !llvm.loop !115

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.cf = load i32, ptr %i.r, align 8, !tbaa !66
  %.not51 = icmp eq i32 %i.cf, 0
  br i1 %.not51, label %._crit_edge44, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.preheader, %.loopexit
  br label %.loopexit

._crit_edge44:                                    ; preds = %._crit_edge.split.us.us, %._crit_edge.split.us.us.us, %bb.c, %.lr.ph.split.split, %.lr.ph.split.us.split, %bb.a
  ret void
}

declare i64 @jround_up(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @j12copy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !21, i64 568}
!8 = !{!"jpeg_decompress_struct", !9, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !13, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !14, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !15, i64 160, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !17, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !4, i64 296, !10, i64 304, !4, i64 312, !4, i64 316, !4, i64 320, !5, i64 324, !5, i64 340, !5, i64 356, !4, i64 372, !4, i64 376, !5, i64 380, !5, i64 381, !5, i64 382, !18, i64 384, !18, i64 386, !4, i64 388, !5, i64 392, !4, i64 396, !19, i64 400, !4, i64 408, !4, i64 412, !4, i64 416, !4, i64 420, !4, i64 424, !20, i64 432, !4, i64 440, !5, i64 448, !4, i64 480, !4, i64 484, !4, i64 488, !5, i64 492, !4, i64 532, !4, i64 536, !4, i64 540, !4, i64 544, !4, i64 548, !17, i64 552, !4, i64 560, !4, i64 564, !21, i64 568, !22, i64 576, !23, i64 584, !24, i64 592, !25, i64 600, !26, i64 608, !27, i64 616, !28, i64 624, !29, i64 632, !30, i64 640, !31, i64 648}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS15jpeg_source_mgr", !10, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"p2 omnipotent char", !16, i64 0}
!16 = !{!"any p2 pointer", !10, i64 0}
!17 = !{!"p1 int", !10, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"p1 _ZTS18jpeg_marker_struct", !10, i64 0}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"p1 _ZTS18jpeg_decomp_master", !10, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_main_controller", !10, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_coef_controller", !10, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_post_controller", !10, i64 0}
!25 = !{!"p1 _ZTS21jpeg_input_controller", !10, i64 0}
!26 = !{!"p1 _ZTS18jpeg_marker_reader", !10, i64 0}
!27 = !{!"p1 _ZTS20jpeg_entropy_decoder", !10, i64 0}
!28 = !{!"p1 _ZTS16jpeg_inverse_dct", !10, i64 0}
!29 = !{!"p1 _ZTS14jpeg_upsampler", !10, i64 0}
!30 = !{!"p1 _ZTS22jpeg_color_deconverter", !10, i64 0}
!31 = !{!"p1 _ZTS20jpeg_color_quantizer", !10, i64 0}
!32 = !{!33, !4, i64 20}
!33 = !{!"jpeg_decomp_master", !10, i64 0, !10, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !5, i64 32, !5, i64 72, !4, i64 112, !4, i64 116, !19, i64 120}
!34 = !{!8, !4, i64 296}
!35 = !{!8, !9, i64 0}
!36 = !{!37, !4, i64 40}
!37 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40, !5, i64 44, !4, i64 124, !38, i64 128, !15, i64 136, !4, i64 144, !15, i64 152, !4, i64 160, !4, i64 164}
!38 = !{!"long", !5, i64 0}
!39 = !{!5, !5, i64 0}
!40 = !{!37, !10, i64 0}
!41 = !{!33, !4, i64 112}
!42 = !{!8, !11, i64 8}
!43 = !{!44, !10, i64 0}
!44 = !{!"jpeg_memory_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !38, i64 88, !38, i64 96}
!45 = !{!8, !29, i64 632}
!46 = !{!47, !10, i64 0}
!47 = !{!"", !48, i64 0, !5, i64 40, !5, i64 120, !4, i64 200, !4, i64 204, !5, i64 208, !5, i64 248, !5, i64 258}
!48 = !{!"jpeg_upsampler", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !4, i64 32}
!49 = !{!47, !10, i64 16}
!50 = !{!47, !4, i64 32}
!51 = !{!8, !4, i64 396}
!52 = !{!8, !4, i64 100}
!53 = !{!8, !4, i64 416}
!54 = !{!8, !4, i64 56}
!55 = !{!8, !10, i64 304}
!56 = !{!57, !4, i64 8}
!57 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !10, i64 80, !10, i64 88}
!58 = !{!57, !4, i64 36}
!59 = !{!57, !4, i64 12}
!60 = !{!8, !4, i64 408}
!61 = !{!8, !4, i64 412}
!62 = !{!57, !4, i64 52}
!63 = !{!57, !4, i64 44}
!64 = !{!10, !10, i64 0}
!65 = !{!44, !10, i64 16}
!66 = !{!8, !4, i64 136}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!47, !4, i64 200}
!70 = !{!8, !4, i64 140}
!71 = !{!47, !4, i64 204}
!72 = !{!73, !73, i64 0}
!73 = !{!"p2 short", !16, i64 0}
!74 = distinct !{!74, !68}
!75 = !{!8, !30, i64 640}
!76 = !{!77, !10, i64 16}
!77 = !{!"jpeg_color_deconverter", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!78 = !{!79, !79, i64 0}
!79 = !{!"p1 short", !10, i64 0}
!80 = !{!18, !18, i64 0}
!81 = distinct !{!81, !68}
!82 = !{!83}
!83 = distinct !{!83, !84}
!84 = distinct !{!84, !"LVerDomain"}
!85 = !{!86}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !68, !88, !89}
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !{!"llvm.loop.unroll.runtime.disable"}
!90 = distinct !{!90, !68, !88}
!91 = !{!92}
!92 = distinct !{!92, !93}
!93 = distinct !{!93, !"LVerDomain"}
!94 = !{!95}
!95 = distinct !{!95, !93}
!96 = distinct !{!96, !68, !88, !89}
!97 = distinct !{!97, !68, !88}
!98 = distinct !{!98, !68}
!99 = distinct !{!99, !68, !88, !89}
!100 = distinct !{!100, !68, !88}
!101 = distinct !{!101, !68, !88, !89}
!102 = distinct !{!102, !68, !88}
!103 = distinct !{!103, !68}
!104 = distinct !{!104, !68}
!105 = distinct !{!105, !68}
!106 = !{!107}
!107 = distinct !{!107, !108}
!108 = distinct !{!108, !"LVerDomain"}
!109 = !{!110}
!110 = distinct !{!110, !108}
!111 = distinct !{!111, !68, !88, !89}
!112 = distinct !{!112, !68, !88}
!113 = distinct !{!113, !68}
!114 = !{!57, !4, i64 4}
!115 = distinct !{!115, !68}
!116 = distinct !{!116, !68, !88, !89}
!117 = !{!"branch_weights", i32 4, i32 12}
!118 = distinct !{!118, !68, !88, !89}
!119 = distinct !{!119, !68, !89, !88}
!120 = distinct !{!120, !68}
!121 = distinct !{!121, !68, !88, !89}
!122 = distinct !{!122, !68, !88, !89}
!123 = distinct !{!123, !68, !89, !88}
end_hunk_1
