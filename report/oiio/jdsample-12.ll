loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@h2v1_fancy_upsample:bb.a
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
  %i.j = ptrtoint ptr %i.i to i64                 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78   ; 6 uses
  %i.n = add i64 %.idx, %i.j
  %i.o = add i64 %i.j, 4
  %umax28 = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.o)
  %i.p = xor i64 %i.j, -1
  %i.q = add i64 %umax28, %i.p                    ; 2 uses
  %i.r = lshr i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 60
  br i1 %min.iters.check, label %.lr.ph.preheader34, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.i, i64 4
  %i.t = add i64 %.idx, %i.j
  %i.u = add i64 %i.j, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.u)
  %i.v = xor i64 %i.j, -1
  %i.w = add i64 %umax, %i.v                      ; 2 uses
  %i.x = and i64 %i.w, -4
  %scevgep25 = getelementptr i8, ptr %scevgep, i64 %i.x
  %scevgep26 = getelementptr i8, ptr %i.m, i64 2
  %i.y = lshr i64 %i.w, 1
  %i.z = and i64 %i.y, 9223372036854775806
  %scevgep27 = getelementptr i8, ptr %scevgep26, i64 %i.z
  %bound0 = icmp ult ptr %i.i, %scevgep27
  %bound1 = icmp ult ptr %i.m, %scevgep25
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader34, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, 9223372036854775800      ; 4 uses
  %i.aa = shl nuw i64 %n.vec, 1
  %i.ab = getelementptr i8, ptr %i.m, i64 %i.aa
  %i.ac = shl i64 %n.vec, 2
  %i.ad = getelementptr i8, ptr %i.i, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.ae ; 2 uses
  %i.af = shl i64 %index, 2                       ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.i, i64 %i.af
  %i.ag = getelementptr i8, ptr %i.i, i64 %i.af
  %next.gep30 = getelementptr i8, ptr %i.ag, i64 16
  %i.ah = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !80, !alias.scope !91
  %wide.load31 = load <4 x i16>, ptr %i.ah, align 2, !tbaa !80, !alias.scope !91
  %interleaved.vec = shufflevector <4 x i16> %wide.load, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec, ptr %next.gep29, align 2, !tbaa !80, !alias.scope !94, !noalias !91
  %interleaved.vec32 = shufflevector <4 x i16> %wide.load31, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec32, ptr %next.gep30, align 2, !tbaa !80, !alias.scope !94, !noalias !91
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader34

.lr.ph.preheader34:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.01619.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  %.01718.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader34, %.lr.ph
  %.01619 = phi ptr [ %i.aj, %.lr.ph ], [ %.01619.ph, %.lr.ph.preheader34 ] ; 2 uses
  %.01718 = phi ptr [ %i.am, %.lr.ph ], [ %.01718.ph, %.lr.ph.preheader34 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01619, i64 2
  %i.ak = load i16, ptr %.01619, align 2, !tbaa !80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01718, i64 2
  store i16 %i.ak, ptr %.01718, align 2, !tbaa !80
  %i.am = getelementptr inbounds nuw i8, ptr %.01718, i64 4 ; 2 uses
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !80
  %i.an = icmp ult ptr %i.am, %i.k
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
  %i.j = zext nneg i32 %i.i to i64
  %i.k = zext i32 %i.f to i64                     ; 2 uses
  %min.iters.check59 = icmp ult i32 %i.f, 8
  %n.vec62 = and i64 %i.k, 4294967288             ; 4 uses
  %i.l = trunc nuw i64 %n.vec62 to i32
  %i.m = shl nuw nsw i64 %n.vec62, 1              ; 3 uses
  %cmp.n72 = icmp eq i64 %n.vec62, %i.k
  %4 = zext i32 %i.f to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %i.f, 8
  %n.vec = and i64 %4, 4294967288                 ; 4 uses
  %i.n = trunc nuw i64 %n.vec to i32
  %i.o = shl nuw nsw i64 %n.vec, 1                ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %4
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us.us.1
  %indvars.iv = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next41, %._crit_edge.us.us.1 ] ; 2 uses
  %.02237.us = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next.1, %._crit_edge.us.us.1 ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !78   ; 9 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %sext = shl i64 %.02237.us, 32
  %i.s = ashr exact i64 %sext, 32                 ; 3 uses
  %.028.in.us.us = getelementptr i8, ptr %i.p, i64 -8
  %.028.us.us = load ptr, ptr %.028.in.us.us, align 8, !tbaa !78 ; 5 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78   ; 5 uses
  br i1 %min.iters.check59, label %scalar.ph58.preheader, label %vector.memcheck53

vector.memcheck53:                                ; preds = %.preheader.us
  %i.v = ptrtoaddr ptr %i.u to i64                ; 2 uses
  %.028.us.us55 = ptrtoaddr ptr %.028.us.us to i64
  %i.w = sub i64 %i.v, %i.r
  %diff.check54 = icmp ult i64 %i.w, 16
  %i.x = sub i64 %i.v, %.028.us.us55
  %diff.check56 = icmp ult i64 %i.x, 16
  %conflict.rdx57 = or i1 %diff.check54, %diff.check56
  br i1 %conflict.rdx57, label %scalar.ph58.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck53
  %i.y = getelementptr i8, ptr %i.q, i64 %i.m
  %i.z = getelementptr i8, ptr %i.u, i64 %i.m
  %i.aa = getelementptr i8, ptr %.028.us.us, i64 %i.m
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph60
  %index64 = phi i64 [ 0, %vector.ph60 ], [ %index.next70, %vector.body63 ] ; 2 uses
  %i.ab = shl i64 %index64, 1                     ; 3 uses
  %next.gep65 = getelementptr i8, ptr %i.q, i64 %i.ab
  %next.gep66 = getelementptr i8, ptr %i.u, i64 %i.ab
  %next.gep67 = getelementptr i8, ptr %.028.us.us, i64 %i.ab
  %wide.load68 = load <8 x i16>, ptr %next.gep65, align 2, !tbaa !80
  %i.ac = sext <8 x i16> %wide.load68 to <8 x i32>
  %i.ad = mul nsw <8 x i32> %i.ac, splat (i32 3)
  %wide.load69 = load <8 x i16>, ptr %next.gep67, align 2, !tbaa !80
  %i.ae = sext <8 x i16> %wide.load69 to <8 x i32>
  %i.af = add nsw <8 x i32> %i.ae, splat (i32 1)
  %i.ag = add nsw <8 x i32> %i.af, %i.ad
  %i.ah = lshr <8 x i32> %i.ag, splat (i32 2)
  %i.ai = trunc <8 x i32> %i.ah to <8 x i16>
  store <8 x i16> %i.ai, ptr %next.gep66, align 2, !tbaa !80
  %index.next70 = add nuw i64 %index64, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next70, %n.vec62
  br i1 %i.aj, label %middle.block71, label %vector.body63, !llvm.loop !99

middle.block71:                                   ; preds = %vector.body63
  br i1 %cmp.n72, label %._crit_edge.us.us, label %scalar.ph58.preheader

scalar.ph58.preheader:                            ; preds = %vector.memcheck53, %.preheader.us, %middle.block71
  %.02433.us.us.ph = phi i32 [ 0, %vector.memcheck53 ], [ 0, %.preheader.us ], [ %i.l, %middle.block71 ] ; 4 uses
  %.02632.us.us.ph = phi ptr [ %i.q, %vector.memcheck53 ], [ %i.q, %.preheader.us ], [ %i.y, %middle.block71 ] ; 3 uses
  %.02731.us.us.ph = phi ptr [ %i.u, %vector.memcheck53 ], [ %i.u, %.preheader.us ], [ %i.z, %middle.block71 ] ; 3 uses
  %.12930.us.us.ph = phi ptr [ %.028.us.us, %vector.memcheck53 ], [ %.028.us.us, %.preheader.us ], [ %i.aa, %middle.block71 ] ; 3 uses
  %i.ak = sub i32 %i.f, %.02433.us.us.ph
  %.neg = add i32 %.02433.us.us.ph, 1
  %xtraiter = and i32 %i.ak, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph58.prol.loopexit, label %scalar.ph58.prol

scalar.ph58.prol:                                 ; preds = %scalar.ph58.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %.02632.us.us.ph, i64 2
  %i.am = load i16, ptr %.02632.us.us.ph, align 2, !tbaa !80
  %i.an = sext i16 %i.am to i32
  %i.ao = mul nsw i32 %i.an, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %.12930.us.us.ph, i64 2
  %i.aq = load i16, ptr %.12930.us.us.ph, align 2, !tbaa !80
  %i.ar = sext i16 %i.aq to i32
  %i.as = add nsw i32 %i.ar, 1
  %i.at = add nsw i32 %i.as, %i.ao
  %i.au = lshr i32 %i.at, 2
  %i.av = trunc i32 %i.au to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %.02731.us.us.ph, i64 2
  store i16 %i.av, ptr %.02731.us.us.ph, align 2, !tbaa !80
  %i.ax = add nuw i32 %.02433.us.us.ph, 1
  br label %scalar.ph58.prol.loopexit

scalar.ph58.prol.loopexit:                        ; preds = %scalar.ph58.prol, %scalar.ph58.preheader
  %.02433.us.us.unr = phi i32 [ %.02433.us.us.ph, %scalar.ph58.preheader ], [ %i.ax, %scalar.ph58.prol ]
  %.02632.us.us.unr = phi ptr [ %.02632.us.us.ph, %scalar.ph58.preheader ], [ %i.al, %scalar.ph58.prol ]
  %.02731.us.us.unr = phi ptr [ %.02731.us.us.ph, %scalar.ph58.preheader ], [ %i.aw, %scalar.ph58.prol ]
  %.12930.us.us.unr = phi ptr [ %.12930.us.us.ph, %scalar.ph58.preheader ], [ %i.ap, %scalar.ph58.prol ]
  %i.ay = icmp eq i32 %i.f, %.neg
  br i1 %i.ay, label %._crit_edge.us.us, label %scalar.ph58

scalar.ph58:                                      ; preds = %scalar.ph58.prol.loopexit, %scalar.ph58
  %.02433.us.us = phi i32 [ %i.bx, %scalar.ph58 ], [ %.02433.us.us.unr, %scalar.ph58.prol.loopexit ]
  %.02632.us.us = phi ptr [ %i.bl, %scalar.ph58 ], [ %.02632.us.us.unr, %scalar.ph58.prol.loopexit ] ; 3 uses
  %.02731.us.us = phi ptr [ %i.bw, %scalar.ph58 ], [ %.02731.us.us.unr, %scalar.ph58.prol.loopexit ] ; 3 uses
  %.12930.us.us = phi ptr [ %i.bp, %scalar.ph58 ], [ %.12930.us.us.unr, %scalar.ph58.prol.loopexit ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02632.us.us, i64 2
  %i.ba = load i16, ptr %.02632.us.us, align 2, !tbaa !80
  %i.bb = sext i16 %i.ba to i32
  %i.bc = mul nsw i32 %i.bb, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.12930.us.us, i64 2
  %i.be = load i16, ptr %.12930.us.us, align 2, !tbaa !80
  %i.bf = sext i16 %i.be to i32
  %i.bg = add nsw i32 %i.bf, 1
  %i.bh = add nsw i32 %i.bg, %i.bc
  %i.bi = lshr i32 %i.bh, 2
  %i.bj = trunc i32 %i.bi to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %.02731.us.us, i64 2
  store i16 %i.bj, ptr %.02731.us.us, align 2, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %.02632.us.us, i64 4
  %i.bm = load i16, ptr %i.az, align 2, !tbaa !80
  %i.bn = sext i16 %i.bm to i32
  %i.bo = mul nsw i32 %i.bn, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %.12930.us.us, i64 4
  %i.bq = load i16, ptr %i.bd, align 2, !tbaa !80
  %i.br = sext i16 %i.bq to i32
  %i.bs = add nsw i32 %i.br, 1
  %i.bt = add nsw i32 %i.bs, %i.bo
  %i.bu = lshr i32 %i.bt, 2
  %i.bv = trunc i32 %i.bu to i16
  %i.bw = getelementptr inbounds nuw i8, ptr %.02731.us.us, i64 4
  store i16 %i.bv, ptr %i.bk, align 2, !tbaa !80
  %i.bx = add nuw i32 %.02433.us.us, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.bx, %i.f
  br i1 %exitcond.not.1, label %._crit_edge.us.us, label %scalar.ph58, !llvm.loop !100

._crit_edge.us.us:                                ; preds = %scalar.ph58.prol.loopexit, %scalar.ph58, %middle.block71
  %.028.in.us.us.1 = getelementptr i8, ptr %i.p, i64 8
  %.028.us.us.1 = load ptr, ptr %.028.in.us.us.1, align 8, !tbaa !78 ; 5 uses
  %i.by = getelementptr [8 x i8], ptr %i.a, i64 %i.s
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !78 ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge.us.us
  %i.cb = ptrtoaddr ptr %i.ca to i64              ; 2 uses
  %.028.us.us.145 = ptrtoaddr ptr %.028.us.us.1 to i64
  %i.cc = sub i64 %i.cb, %i.r
  %diff.check = icmp ult i64 %i.cc, 16
  %i.cd = sub i64 %i.cb, %.028.us.us.145
  %diff.check46 = icmp ult i64 %i.cd, 16
  %conflict.rdx = or i1 %diff.check, %diff.check46
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ce = getelementptr i8, ptr %i.q, i64 %i.o
  %i.cf = getelementptr i8, ptr %i.ca, i64 %i.o
  %i.cg = getelementptr i8, ptr %.028.us.us.1, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 1                       ; 3 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ch
  %next.gep47 = getelementptr i8, ptr %i.ca, i64 %i.ch
  %next.gep48 = getelementptr i8, ptr %.028.us.us.1, i64 %i.ch
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !80
  %i.ci = sext <8 x i16> %wide.load to <8 x i32>
  %i.cj = mul nsw <8 x i32> %i.ci, splat (i32 3)
  %wide.load49 = load <8 x i16>, ptr %next.gep48, align 2, !tbaa !80
  %i.ck = sext <8 x i16> %wide.load49 to <8 x i32>
  %i.cl = add nsw <8 x i32> %i.ck, splat (i32 2)
  %i.cm = add nsw <8 x i32> %i.cl, %i.cj
  %i.cn = lshr <8 x i32> %i.cm, splat (i32 2)
  %i.co = trunc <8 x i32> %i.cn to <8 x i16>
  store <8 x i16> %i.co, ptr %next.gep47, align 2, !tbaa !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.1, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %._crit_edge.us.us, %middle.block
  %.02433.us.us.1.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %._crit_edge.us.us ], [ %i.n, %middle.block ] ; 4 uses
  %.02632.us.us.1.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %._crit_edge.us.us ], [ %i.ce, %middle.block ] ; 3 uses
  %.02731.us.us.1.ph = phi ptr [ %i.ca, %vector.memcheck ], [ %i.ca, %._crit_edge.us.us ], [ %i.cf, %middle.block ] ; 3 uses
  %.12930.us.us.1.ph = phi ptr [ %.028.us.us.1, %vector.memcheck ], [ %.028.us.us.1, %._crit_edge.us.us ], [ %i.cg, %middle.block ] ; 3 uses
  %i.cq = sub i32 %i.f, %.02433.us.us.1.ph
  %.neg83 = add i32 %.02433.us.us.1.ph, 1
  %xtraiter81 = and i32 %i.cq, 1
  %lcmp.mod82.not = icmp eq i32 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %.02632.us.us.1.ph, i64 2
  %i.cs = load i16, ptr %.02632.us.us.1.ph, align 2, !tbaa !80
  %i.ct = sext i16 %i.cs to i32
  %i.cu = mul nsw i32 %i.ct, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %.12930.us.us.1.ph, i64 2
  %i.cw = load i16, ptr %.12930.us.us.1.ph, align 2, !tbaa !80
  %i.cx = sext i16 %i.cw to i32
  %i.cy = add nsw i32 %i.cx, 2
  %i.cz = add nsw i32 %i.cy, %i.cu
  %i.da = lshr i32 %i.cz, 2
  %i.db = trunc i32 %i.da to i16
  %i.dc = getelementptr inbounds nuw i8, ptr %.02731.us.us.1.ph, i64 2
  store i16 %i.db, ptr %.02731.us.us.1.ph, align 2, !tbaa !80
  %i.dd = add nuw i32 %.02433.us.us.1.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.02433.us.us.1.unr = phi i32 [ %.02433.us.us.1.ph, %scalar.ph.preheader ], [ %i.dd, %scalar.ph.prol ]
  %.02632.us.us.1.unr = phi ptr [ %.02632.us.us.1.ph, %scalar.ph.preheader ], [ %i.cr, %scalar.ph.prol ]
  %.02731.us.us.1.unr = phi ptr [ %.02731.us.us.1.ph, %scalar.ph.preheader ], [ %i.dc, %scalar.ph.prol ]
  %.12930.us.us.1.unr = phi ptr [ %.12930.us.us.1.ph, %scalar.ph.preheader ], [ %i.cv, %scalar.ph.prol ]
  %i.de = icmp eq i32 %i.f, %.neg83
  br i1 %i.de, label %._crit_edge.us.us.1, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.02433.us.us.1 = phi i32 [ %i.ed, %scalar.ph ], [ %.02433.us.us.1.unr, %scalar.ph.prol.loopexit ]
  %.02632.us.us.1 = phi ptr [ %i.dr, %scalar.ph ], [ %.02632.us.us.1.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.02731.us.us.1 = phi ptr [ %i.ec, %scalar.ph ], [ %.02731.us.us.1.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.12930.us.us.1 = phi ptr [ %i.dv, %scalar.ph ], [ %.12930.us.us.1.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.02632.us.us.1, i64 2
  %i.dg = load i16, ptr %.02632.us.us.1, align 2, !tbaa !80
  %i.dh = sext i16 %i.dg to i32
  %i.di = mul nsw i32 %i.dh, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %.12930.us.us.1, i64 2
  %i.dk = load i16, ptr %.12930.us.us.1, align 2, !tbaa !80
  %i.dl = sext i16 %i.dk to i32
  %i.dm = add nsw i32 %i.dl, 2
  %i.dn = add nsw i32 %i.dm, %i.di
  %i.do = lshr i32 %i.dn, 2
  %i.dp = trunc i32 %i.do to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %.02731.us.us.1, i64 2
  store i16 %i.dp, ptr %.02731.us.us.1, align 2, !tbaa !80
  %i.dr = getelementptr inbounds nuw i8, ptr %.02632.us.us.1, i64 4
  %i.ds = load i16, ptr %i.df, align 2, !tbaa !80
  %i.dt = sext i16 %i.ds to i32
  %i.du = mul nsw i32 %i.dt, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %.12930.us.us.1, i64 4
  %i.dw = load i16, ptr %i.dj, align 2, !tbaa !80
  %i.dx = sext i16 %i.dw to i32
  %i.dy = add nsw i32 %i.dx, 2
  %i.dz = add nsw i32 %i.dy, %i.du
  %i.ea = lshr i32 %i.dz, 2
  %i.eb = trunc i32 %i.ea to i16
  %i.ec = getelementptr inbounds nuw i8, ptr %.02731.us.us.1, i64 4
  store i16 %i.eb, ptr %i.dq, align 2, !tbaa !80
  %i.ed = add nuw i32 %.02433.us.us.1, 2          ; 2 uses
  %exitcond.1.not.1 = icmp eq i32 %i.ed, %i.f
  br i1 %exitcond.1.not.1, label %._crit_edge.us.us.1, label %scalar.ph, !llvm.loop !102

._crit_edge.us.us.1:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next.1 = add nsw i64 %i.s, 2
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next41, %i.j
  br i1 %exitcond43.not, label %._crit_edge, label %.preheader.us, !llvm.loop !103

._crit_edge:                                      ; preds = %._crit_edge.us.us.1, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v2_fancy_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !72     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.c = load i32, ptr %i.b, align 4, !tbaa !61   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge68

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !63
  %i.g = add i32 %i.f, -2                         ; 3 uses
  %.not53 = icmp eq i32 %i.g, 0
  %i.h = add nsw i32 %i.c, -1
  %i.i = lshr i32 %i.h, 1
  %i.j = add nuw nsw i32 %i.i, 1
  %wide.trip.count81 = zext nneg i32 %i.j to i64  ; 2 uses
  br i1 %.not53, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %.preheader.us
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.preheader.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.04367.us = phi i64 [ %indvars.iv.next76.1, %.preheader.us ], [ 0, %.preheader.lr.ph ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv78 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 2 uses
  %sext84 = shl i64 %.04367.us, 32
  %i.n = ashr exact i64 %sext84, 32               ; 3 uses
  %.049.in.us.us = getelementptr i8, ptr %i.k, i64 -8
  %.049.us.us = load ptr, ptr %.049.in.us.us, align 8, !tbaa !78 ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !78   ; 4 uses
  %i.q = load i16, ptr %i.l, align 2, !tbaa !80
  %i.r = sext i16 %i.q to i64
  %i.s = mul nsw i64 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %.049.us.us, i64 2
  %i.u = load i16, ptr %.049.us.us, align 2, !tbaa !80
  %i.v = sext i16 %i.u to i64
  %i.w = add nsw i64 %i.s, %i.v                   ; 3 uses
  %i.x = load i16, ptr %i.m, align 2, !tbaa !80
  %i.y = sext i16 %i.x to i64
  %i.z = mul nsw i64 %i.y, 3
  %i.aa = load i16, ptr %i.t, align 2, !tbaa !80
  %i.ab = sext i16 %i.aa to i64
  %i.ac = add nsw i64 %i.z, %i.ab                 ; 3 uses
  %i.ad = shl nsw i64 %i.w, 2
  %i.ae = add nsw i64 %i.ad, 8
  %i.af = lshr i64 %i.ae, 4
  %i.ag = trunc i64 %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i16 %i.ag, ptr %i.p, align 2, !tbaa !80
  %i.ai = mul nsw i64 %i.w, 3
  %i.aj = add nsw i64 %i.ai, 7
  %i.ak = add nsw i64 %i.aj, %i.ac
  %i.al = lshr i64 %i.ak, 4
  %i.am = trunc i64 %i.al to i16
  store i16 %i.am, ptr %i.ah, align 2, !tbaa !80
  %.04852.us.us = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.an = mul nsw i64 %i.ac, 3
  %i.ao = add nsw i64 %i.w, 8
  %i.ap = add nsw i64 %i.ao, %i.an
  %i.aq = lshr i64 %i.ap, 4
  %i.ar = trunc i64 %i.aq to i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  store i16 %i.ar, ptr %.04852.us.us, align 2, !tbaa !80
  %i.at = shl nsw i64 %i.ac, 2
  %i.au = add nsw i64 %i.at, 4
  %i.av = lshr i64 %i.au, 4
  %i.aw = trunc i64 %i.av to i16
  store i16 %i.aw, ptr %i.as, align 2, !tbaa !80
  %.049.in.us.us.1 = getelementptr i8, ptr %i.k, i64 8
  %.049.us.us.1 = load ptr, ptr %.049.in.us.us.1, align 8, !tbaa !78 ; 2 uses
  %indvars.iv.next76.1 = add nsw i64 %i.n, 2
  %i.ax = getelementptr [8 x i8], ptr %i.a, i64 %i.n
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !78 ; 4 uses
  %i.ba = load i16, ptr %i.l, align 2, !tbaa !80
  %i.bb = sext i16 %i.ba to i64
  %i.bc = mul nsw i64 %i.bb, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.049.us.us.1, i64 2
  %i.be = load i16, ptr %.049.us.us.1, align 2, !tbaa !80
  %i.bf = sext i16 %i.be to i64
  %i.bg = add nsw i64 %i.bc, %i.bf                ; 3 uses
  %i.bh = load i16, ptr %i.m, align 2, !tbaa !80
  %i.bi = sext i16 %i.bh to i64
  %i.bj = mul nsw i64 %i.bi, 3
  %i.bk = load i16, ptr %i.bd, align 2, !tbaa !80
  %i.bl = sext i16 %i.bk to i64
  %i.bm = add nsw i64 %i.bj, %i.bl                ; 3 uses
  %i.bn = shl nsw i64 %i.bg, 2
  %i.bo = add nsw i64 %i.bn, 8
  %i.bp = lshr i64 %i.bo, 4
  %i.bq = trunc i64 %i.bp to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i16 %i.bq, ptr %i.az, align 2, !tbaa !80
  %i.bs = mul nsw i64 %i.bg, 3
  %i.bt = add nsw i64 %i.bs, 7
  %i.bu = add nsw i64 %i.bt, %i.bm
  %i.bv = lshr i64 %i.bu, 4
  %i.bw = trunc i64 %i.bv to i16
  store i16 %i.bw, ptr %i.br, align 2, !tbaa !80
  %.04852.us.us.1 = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bx = mul nsw i64 %i.bm, 3
  %i.by = add nsw i64 %i.bg, 8
  %i.bz = add nsw i64 %i.by, %i.bx
  %i.ca = lshr i64 %i.bz, 4
  %i.cb = trunc i64 %i.ca to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.az, i64 6
  store i16 %i.cb, ptr %.04852.us.us.1, align 2, !tbaa !80
  %i.cd = shl nsw i64 %i.bm, 2
  %i.ce = add nsw i64 %i.cd, 4
  %i.cf = lshr i64 %i.ce, 4
  %i.cg = trunc i64 %i.cf to i16
  store i16 %i.cg, ptr %i.cc, align 2, !tbaa !80
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %._crit_edge68, label %.preheader.us, !llvm.loop !104

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge.1
  %indvars.iv = phi i64 [ %indvars.iv.next73, %._crit_edge.1 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.04367 = phi i64 [ %indvars.iv.next.1, %._crit_edge.1 ], [ 0, %.preheader.lr.ph ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !78 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %sext = shl i64 %.04367, 32
  %i.cl = ashr exact i64 %sext, 32                ; 3 uses
  %.049.in = getelementptr i8, ptr %i.ch, i64 -8
  %.049 = load ptr, ptr %.049.in, align 8, !tbaa !78 ; 3 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !78 ; 4 uses
  %i.co = load i16, ptr %i.ci, align 2, !tbaa !80
  %i.cp = sext i16 %i.co to i64
  %i.cq = mul nsw i64 %i.cp, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %.049, i64 2
  %i.cs = load i16, ptr %.049, align 2, !tbaa !80
  %i.ct = sext i16 %i.cs to i64
  %i.cu = add nsw i64 %i.cq, %i.ct                ; 3 uses
  %i.cv = load i16, ptr %i.cj, align 2, !tbaa !80
  %i.cw = sext i16 %i.cv to i64
  %i.cx = mul nsw i64 %i.cw, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %.049, i64 4
  %i.cz = load i16, ptr %i.cr, align 2, !tbaa !80
  %i.da = sext i16 %i.cz to i64
  %i.db = add nsw i64 %i.cx, %i.da                ; 2 uses
  %i.dc = shl nsw i64 %i.cu, 2
  %i.dd = add nsw i64 %i.dc, 8
  %i.de = lshr i64 %i.dd, 4
  %i.df = trunc i64 %i.de to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  store i16 %i.df, ptr %i.cn, align 2, !tbaa !80
  %i.dh = mul nsw i64 %i.cu, 3
  %i.di = add nsw i64 %i.dh, 7
  %i.dj = add nsw i64 %i.di, %i.db
  %i.dk = lshr i64 %i.dj, 4
  %i.dl = trunc i64 %i.dk to i16
  store i16 %i.dl, ptr %i.dg, align 2, !tbaa !80
  %.04852 = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.04860 = phi ptr [ %.04852, %.preheader ], [ %.048, %bb.b ] ; 4 uses
  %.04559 = phi i32 [ %i.g, %.preheader ], [ %i.ee, %bb.b ]
  %.04658 = phi i64 [ %i.cu, %.preheader ], [ %.04757, %bb.b ]
  %.04757 = phi i64 [ %i.db, %.preheader ], [ %i.dt, %bb.b ] ; 3 uses
  %.pn56 = phi ptr [ %i.cn, %.preheader ], [ %.04860, %bb.b ]
  %.15055 = phi ptr [ %i.cy, %.preheader ], [ %i.dq, %bb.b ] ; 2 uses
  %.05154 = phi ptr [ %i.ck, %.preheader ], [ %i.dm, %bb.b ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.05154, i64 2
  %i.dn = load i16, ptr %.05154, align 2, !tbaa !80
  %i.do = sext i16 %i.dn to i64
  %i.dp = mul nsw i64 %i.do, 3
  %i.dq = getelementptr inbounds nuw i8, ptr %.15055, i64 2
  %i.dr = load i16, ptr %.15055, align 2, !tbaa !80
  %i.ds = sext i16 %i.dr to i64
  %i.dt = add nsw i64 %i.dp, %i.ds                ; 4 uses
  %i.du = mul nsw i64 %.04757, 3                  ; 2 uses
  %i.dv = add nsw i64 %.04658, 8
  %i.dw = add nsw i64 %i.dv, %i.du
  %i.dx = lshr i64 %i.dw, 4
  %i.dy = trunc i64 %i.dx to i16
  %i.dz = getelementptr inbounds nuw i8, ptr %.pn56, i64 6
  store i16 %i.dy, ptr %.04860, align 2, !tbaa !80
  %i.ea = add nsw i64 %i.du, 7
  %i.eb = add nsw i64 %i.ea, %i.dt
  %i.ec = lshr i64 %i.eb, 4
  %i.ed = trunc i64 %i.ec to i16
  store i16 %i.ed, ptr %i.dz, align 2, !tbaa !80
  %i.ee = add i32 %.04559, -1                     ; 2 uses
  %.048 = getelementptr inbounds nuw i8, ptr %.04860, i64 4 ; 2 uses
  %.not = icmp eq i32 %i.ee, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.b
end_hunk_0
