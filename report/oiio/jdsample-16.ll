loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@h2v1_fancy_upsample:bb.a
  %i.cz = add nuw nsw i32 %i.cy, 1
  %i.da = add nuw nsw i32 %i.cz, %i.cv
  %i.db = lshr i32 %i.da, 2
  %i.dc = trunc nuw i32 %i.db to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn35, i64 6
  store i16 %i.dc, ptr %.03037, align 2, !tbaa !80
  %i.de = load i16, ptr %i.cs, align 2, !tbaa !80
  %i.df = zext i16 %i.de to i32
  %i.dg = add nuw nsw i32 %i.cv, 2
  %i.dh = add nuw nsw i32 %i.dg, %i.df
  %i.di = lshr i32 %i.dh, 2
  %i.dj = trunc nuw i32 %i.di to i16
  store i16 %i.dj, ptr %i.dd, align 2, !tbaa !80
  %.030 = getelementptr inbounds nuw i8, ptr %.03037, i64 4 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.03134, i64 4 ; 3 uses
  %i.dl = load i16, ptr %i.cs, align 2, !tbaa !80
  %i.dm = zext i16 %i.dl to i32
  %i.dn = mul nuw nsw i32 %i.dm, 3                ; 2 uses
  %i.do = load i16, ptr %.03134, align 2, !tbaa !80
  %i.dp = zext i16 %i.do to i32
  %i.dq = add nuw nsw i32 %i.dp, 1
  %i.dr = add nuw nsw i32 %i.dq, %i.dn
  %i.ds = lshr i32 %i.dr, 2
  %i.dt = trunc nuw i32 %i.ds to i16
  %i.du = getelementptr inbounds nuw i8, ptr %.03037, i64 6
  store i16 %i.dt, ptr %.030, align 2, !tbaa !80
  %i.dv = load i16, ptr %i.dk, align 2, !tbaa !80
  %i.dw = zext i16 %i.dv to i32
  %i.dx = add nuw nsw i32 %i.dn, 2
  %i.dy = add nuw nsw i32 %i.dx, %i.dw
  %i.dz = lshr i32 %i.dy, 2
  %i.ea = trunc nuw i32 %i.dz to i16
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
  %i.ee = zext i16 %i.ed to i32
  %i.ef = mul nuw nsw i32 %i.ee, 3
  %i.eg = load i16, ptr %.03134.lcssa, align 2, !tbaa !80
  %i.eh = zext i16 %i.eg to i32
  %i.ei = add nuw nsw i32 %i.eh, 1
  %i.ej = add nuw nsw i32 %i.ei, %i.ef
  %i.ek = lshr i32 %i.ej, 2
  %i.el = trunc nuw i32 %i.ek to i16
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
  %i.ac = zext <8 x i16> %wide.load68 to <8 x i32>
  %i.ad = mul nuw nsw <8 x i32> %i.ac, splat (i32 3)
  %wide.load69 = load <8 x i16>, ptr %next.gep67, align 2, !tbaa !80
  %i.ae = zext <8 x i16> %wide.load69 to <8 x i32>
  %i.af = add nuw nsw <8 x i32> %i.ae, splat (i32 1)
  %i.ag = add nuw nsw <8 x i32> %i.af, %i.ad
  %i.ah = lshr <8 x i32> %i.ag, splat (i32 2)
  %i.ai = trunc nuw <8 x i32> %i.ah to <8 x i16>
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
  %i.an = zext i16 %i.am to i32
  %i.ao = mul nuw nsw i32 %i.an, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %.12930.us.us.ph, i64 2
  %i.aq = load i16, ptr %.12930.us.us.ph, align 2, !tbaa !80
  %i.ar = zext i16 %i.aq to i32
  %i.as = add nuw nsw i32 %i.ar, 1
  %i.at = add nuw nsw i32 %i.as, %i.ao
  %i.au = lshr i32 %i.at, 2
  %i.av = trunc nuw i32 %i.au to i16
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
  %i.bb = zext i16 %i.ba to i32
  %i.bc = mul nuw nsw i32 %i.bb, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.12930.us.us, i64 2
  %i.be = load i16, ptr %.12930.us.us, align 2, !tbaa !80
  %i.bf = zext i16 %i.be to i32
  %i.bg = add nuw nsw i32 %i.bf, 1
  %i.bh = add nuw nsw i32 %i.bg, %i.bc
  %i.bi = lshr i32 %i.bh, 2
  %i.bj = trunc nuw i32 %i.bi to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %.02731.us.us, i64 2
  store i16 %i.bj, ptr %.02731.us.us, align 2, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %.02632.us.us, i64 4
  %i.bm = load i16, ptr %i.az, align 2, !tbaa !80
  %i.bn = zext i16 %i.bm to i32
  %i.bo = mul nuw nsw i32 %i.bn, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %.12930.us.us, i64 4
  %i.bq = load i16, ptr %i.bd, align 2, !tbaa !80
  %i.br = zext i16 %i.bq to i32
  %i.bs = add nuw nsw i32 %i.br, 1
  %i.bt = add nuw nsw i32 %i.bs, %i.bo
  %i.bu = lshr i32 %i.bt, 2
  %i.bv = trunc nuw i32 %i.bu to i16
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
  %i.ci = zext <8 x i16> %wide.load to <8 x i32>
  %i.cj = mul nuw nsw <8 x i32> %i.ci, splat (i32 3)
  %wide.load49 = load <8 x i16>, ptr %next.gep48, align 2, !tbaa !80
  %i.ck = zext <8 x i16> %wide.load49 to <8 x i32>
  %i.cl = add nuw nsw <8 x i32> %i.ck, splat (i32 2)
  %i.cm = add nuw nsw <8 x i32> %i.cl, %i.cj
  %i.cn = lshr <8 x i32> %i.cm, splat (i32 2)
  %i.co = trunc nuw <8 x i32> %i.cn to <8 x i16>
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
  %i.ct = zext i16 %i.cs to i32
  %i.cu = mul nuw nsw i32 %i.ct, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %.12930.us.us.1.ph, i64 2
  %i.cw = load i16, ptr %.12930.us.us.1.ph, align 2, !tbaa !80
  %i.cx = zext i16 %i.cw to i32
  %i.cy = add nuw nsw i32 %i.cx, 2
  %i.cz = add nuw nsw i32 %i.cy, %i.cu
  %i.da = lshr i32 %i.cz, 2
  %i.db = trunc nuw i32 %i.da to i16
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
  %i.dh = zext i16 %i.dg to i32
  %i.di = mul nuw nsw i32 %i.dh, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %.12930.us.us.1, i64 2
  %i.dk = load i16, ptr %.12930.us.us.1, align 2, !tbaa !80
  %i.dl = zext i16 %i.dk to i32
  %i.dm = add nuw nsw i32 %i.dl, 2
  %i.dn = add nuw nsw i32 %i.dm, %i.di
  %i.do = lshr i32 %i.dn, 2
  %i.dp = trunc nuw i32 %i.do to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %.02731.us.us.1, i64 2
  store i16 %i.dp, ptr %.02731.us.us.1, align 2, !tbaa !80
  %i.dr = getelementptr inbounds nuw i8, ptr %.02632.us.us.1, i64 4
  %i.ds = load i16, ptr %i.df, align 2, !tbaa !80
  %i.dt = zext i16 %i.ds to i32
  %i.du = mul nuw nsw i32 %i.dt, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %.12930.us.us.1, i64 4
  %i.dw = load i16, ptr %i.dj, align 2, !tbaa !80
  %i.dx = zext i16 %i.dw to i32
  %i.dy = add nuw nsw i32 %i.dx, 2
  %i.dz = add nuw nsw i32 %i.dy, %i.du
  %i.ea = lshr i32 %i.dz, 2
  %i.eb = trunc nuw i32 %i.ea to i16
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
  %i.f = load i32, ptr %i.e, align 4, !tbaa !63   ; 2 uses
  %i.g = add i32 %i.f, -2                         ; 11 uses
  %.not53 = icmp eq i32 %i.g, 0
  %i.h = add nsw i32 %i.c, -1
  %i.i = lshr i32 %i.h, 1
  %i.j = add nuw nsw i32 %i.i, 1
  %wide.trip.count81 = zext nneg i32 %i.j to i64  ; 2 uses
  br i1 %.not53, label %.preheader.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.k = add i32 %i.f, -3                         ; 2 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = shl nuw nsw i64 %i.l, 1
  %i.o = add nuw nsw i64 %i.n, 6                  ; 2 uses
  %i.p = zext i32 %i.k to i64                     ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = shl nuw nsw i64 %i.p, 1
  %i.s = add nuw nsw i64 %i.r, 6                  ; 2 uses
  %i.t = zext i32 %i.g to i64                     ; 2 uses
  %min.iters.check117 = icmp ult i32 %i.g, 8
  %n.vec120 = and i64 %i.t, 4294967292            ; 5 uses
  %i.u = shl nuw nsw i64 %n.vec120, 2             ; 2 uses
  %i.v = trunc nuw i64 %n.vec120 to i32
  %i.w = sub i32 %i.g, %i.v
  %i.x = shl nuw nsw i64 %n.vec120, 1             ; 2 uses
  %cmp.n138 = icmp eq i64 %n.vec120, %i.t
  %4 = zext i32 %i.g to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %i.g, 8
  %n.vec = and i64 %4, 4294967292                 ; 5 uses
  %i.y = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.z = trunc nuw i64 %n.vec to i32
  %i.aa = sub i32 %i.g, %i.z
  %i.ab = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %4
  br label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %.preheader.us
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.preheader.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.04367.us = phi i64 [ %indvars.iv.next76.1, %.preheader.us ], [ 0, %.preheader.lr.ph ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv78 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !78 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2 ; 2 uses
  %sext84 = shl i64 %.04367.us, 32
  %i.af = ashr exact i64 %sext84, 32              ; 3 uses
  %.049.in.us.us = getelementptr i8, ptr %i.ac, i64 -8
  %.049.us.us = load ptr, ptr %.049.in.us.us, align 8, !tbaa !78 ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !78 ; 4 uses
  %i.ai = load i16, ptr %i.ad, align 2, !tbaa !80
  %i.aj = zext i16 %i.ai to i64
  %i.ak = mul nuw nsw i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %.049.us.us, i64 2
  %i.am = load i16, ptr %.049.us.us, align 2, !tbaa !80
  %i.an = zext i16 %i.am to i64
  %i.ao = add nuw nsw i64 %i.ak, %i.an            ; 3 uses
  %i.ap = load i16, ptr %i.ae, align 2, !tbaa !80
  %i.aq = zext i16 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, 3
  %i.as = load i16, ptr %i.al, align 2, !tbaa !80
  %i.at = zext i16 %i.as to i64
  %i.au = add nuw nsw i64 %i.ar, %i.at            ; 3 uses
  %i.av = shl nuw nsw i64 %i.ao, 2
  %i.aw = add nuw nsw i64 %i.av, 8
  %i.ax = lshr i64 %i.aw, 4
  %i.ay = trunc nuw i64 %i.ax to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i16 %i.ay, ptr %i.ah, align 2, !tbaa !80
  %i.ba = mul nuw nsw i64 %i.ao, 3
  %i.bb = add nuw nsw i64 %i.ba, 7
  %i.bc = add nuw nsw i64 %i.bb, %i.au
  %i.bd = lshr i64 %i.bc, 4
  %i.be = trunc nuw i64 %i.bd to i16
  store i16 %i.be, ptr %i.az, align 2, !tbaa !80
  %.04852.us.us = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.bf = mul nuw nsw i64 %i.au, 3
  %i.bg = add nuw nsw i64 %i.ao, 8
  %i.bh = add nuw nsw i64 %i.bg, %i.bf
  %i.bi = lshr i64 %i.bh, 4
  %i.bj = trunc nuw i64 %i.bi to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  store i16 %i.bj, ptr %.04852.us.us, align 2, !tbaa !80
  %i.bl = shl nuw nsw i64 %i.au, 2
  %i.bm = add nuw nsw i64 %i.bl, 4
  %i.bn = lshr i64 %i.bm, 4
  %i.bo = trunc nuw i64 %i.bn to i16
  store i16 %i.bo, ptr %i.bk, align 2, !tbaa !80
  %.049.in.us.us.1 = getelementptr i8, ptr %i.ac, i64 8
  %.049.us.us.1 = load ptr, ptr %.049.in.us.us.1, align 8, !tbaa !78 ; 2 uses
  %indvars.iv.next76.1 = add nsw i64 %i.af, 2
  %i.bp = getelementptr [8 x i8], ptr %i.a, i64 %i.af
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !78 ; 4 uses
  %i.bs = load i16, ptr %i.ad, align 2, !tbaa !80
  %i.bt = zext i16 %i.bs to i64
  %i.bu = mul nuw nsw i64 %i.bt, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %.049.us.us.1, i64 2
  %i.bw = load i16, ptr %.049.us.us.1, align 2, !tbaa !80
  %i.bx = zext i16 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bu, %i.bx            ; 3 uses
  %i.bz = load i16, ptr %i.ae, align 2, !tbaa !80
  %i.ca = zext i16 %i.bz to i64
  %i.cb = mul nuw nsw i64 %i.ca, 3
  %i.cc = load i16, ptr %i.bv, align 2, !tbaa !80
  %i.cd = zext i16 %i.cc to i64
  %i.ce = add nuw nsw i64 %i.cb, %i.cd            ; 3 uses
  %i.cf = shl nuw nsw i64 %i.by, 2
  %i.cg = add nuw nsw i64 %i.cf, 8
  %i.ch = lshr i64 %i.cg, 4
  %i.ci = trunc nuw i64 %i.ch to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i16 %i.ci, ptr %i.br, align 2, !tbaa !80
  %i.ck = mul nuw nsw i64 %i.by, 3
  %i.cl = add nuw nsw i64 %i.ck, 7
  %i.cm = add nuw nsw i64 %i.cl, %i.ce
  %i.cn = lshr i64 %i.cm, 4
  %i.co = trunc nuw i64 %i.cn to i16
  store i16 %i.co, ptr %i.cj, align 2, !tbaa !80
  %.04852.us.us.1 = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.cp = mul nuw nsw i64 %i.ce, 3
  %i.cq = add nuw nsw i64 %i.by, 8
  %i.cr = add nuw nsw i64 %i.cq, %i.cp
  %i.cs = lshr i64 %i.cr, 4
  %i.ct = trunc nuw i64 %i.cs to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  store i16 %i.ct, ptr %.04852.us.us.1, align 2, !tbaa !80
  %i.cv = shl nuw nsw i64 %i.ce, 2
  %i.cw = add nuw nsw i64 %i.cv, 4
  %i.cx = lshr i64 %i.cw, 4
  %i.cy = trunc nuw i64 %i.cx to i16
  store i16 %i.cy, ptr %i.cu, align 2, !tbaa !80
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %._crit_edge68, label %.preheader.us, !llvm.loop !104

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.1
  %indvars.iv = phi i64 [ %indvars.iv.next73, %._crit_edge.1 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.04367 = phi i64 [ %indvars.iv.next.1, %._crit_edge.1 ], [ 0, %.preheader.preheader ]
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !78 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.da, i64 4      ; 10 uses
  %sext = shl i64 %.04367, 32
  %i.dd = ashr exact i64 %sext, 32                ; 3 uses
  %.049.in = getelementptr i8, ptr %i.cz, i64 -8
  %.049 = load ptr, ptr %.049.in, align 8, !tbaa !78 ; 4 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !78 ; 7 uses
  %i.dg = load i16, ptr %i.da, align 2, !tbaa !80
  %i.dh = zext i16 %i.dg to i64
  %i.di = mul nuw nsw i64 %i.dh, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %.049, i64 2
  %i.dk = load i16, ptr %.049, align 2, !tbaa !80
  %i.dl = zext i16 %i.dk to i64
  %i.dm = add nuw nsw i64 %i.di, %i.dl            ; 5 uses
  %i.dn = load i16, ptr %i.db, align 2, !tbaa !80
  %i.do = zext i16 %i.dn to i64
  %i.dp = mul nuw nsw i64 %i.do, 3
  %i.dq = getelementptr i8, ptr %.049, i64 4      ; 5 uses
  %i.dr = load i16, ptr %i.dj, align 2, !tbaa !80
  %i.ds = zext i16 %i.dr to i64
  %i.dt = add nuw nsw i64 %i.dp, %i.ds            ; 4 uses
  %i.du = shl nuw nsw i64 %i.dm, 2
  %i.dv = add nuw nsw i64 %i.du, 8
  %i.dw = lshr i64 %i.dv, 4
  %i.dx = trunc nuw i64 %i.dw to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  store i16 %i.dx, ptr %i.df, align 2, !tbaa !80
  %i.dz = mul nuw nsw i64 %i.dm, 3
  %i.ea = add nuw nsw i64 %i.dz, 7
  %i.eb = add nuw nsw i64 %i.ea, %i.dt
  %i.ec = lshr i64 %i.eb, 4
  %i.ed = trunc nuw i64 %i.ec to i16
  store i16 %i.ed, ptr %i.dy, align 2, !tbaa !80
  %.04852 = getelementptr i8, ptr %i.df, i64 4    ; 6 uses
  br i1 %min.iters.check117, label %scalar.ph116.preheader, label %vector.memcheck105

vector.memcheck105:                               ; preds = %.preheader
  %i.ee = getelementptr i8, ptr %i.df, i64 %i.q
  %scevgep106 = getelementptr i8, ptr %i.ee, i64 8 ; 2 uses
  %scevgep107 = getelementptr i8, ptr %i.da, i64 %i.s
  %scevgep108 = getelementptr i8, ptr %.049, i64 %i.s
  %bound0109 = icmp ult ptr %.04852, %scevgep107
  %bound1110 = icmp ult ptr %i.dc, %scevgep106
  %found.conflict111 = and i1 %bound0109, %bound1110
  %bound0112 = icmp ult ptr %.04852, %scevgep108
  %bound1113 = icmp ult ptr %i.dq, %scevgep106
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx115 = or i1 %found.conflict111, %found.conflict114
  br i1 %conflict.rdx115, label %scalar.ph116.preheader, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck105
  %i.ef = getelementptr i8, ptr %.04852, i64 %i.u ; 2 uses
  %i.eg = getelementptr i8, ptr %i.df, i64 %i.u   ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dq, i64 %i.x
  %i.ei = getelementptr i8, ptr %i.dc, i64 %i.x
  %vector.recur.init123 = insertelement <4 x i64> poison, i64 %i.dm, i64 3
  %vector.recur.init125 = insertelement <4 x i64> poison, i64 %i.dt, i64 3
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph118
  %index122 = phi i64 [ 0, %vector.ph118 ], [ %index.next133, %vector.body121 ] ; 3 uses
  %vector.recur124 = phi <4 x i64> [ %vector.recur.init123, %vector.ph118 ], [ %i.ep, %vector.body121 ]
  %vector.recur126 = phi <4 x i64> [ %vector.recur.init125, %vector.ph118 ], [ %i.eo, %vector.body121 ]
  %i.ej = shl i64 %index122, 2
  %next.gep127 = getelementptr i8, ptr %.04852, i64 %i.ej
  %i.ek = shl i64 %index122, 1                    ; 2 uses
  %next.gep128 = getelementptr i8, ptr %i.dq, i64 %i.ek
  %next.gep129 = getelementptr i8, ptr %i.dc, i64 %i.ek
  %wide.load130 = load <4 x i16>, ptr %next.gep129, align 2, !tbaa !80, !alias.scope !105
  %i.el = zext <4 x i16> %wide.load130 to <4 x i64>
  %i.em = mul nuw nsw <4 x i64> %i.el, splat (i64 3)
  %wide.load131 = load <4 x i16>, ptr %next.gep128, align 2, !tbaa !80, !alias.scope !108
  %i.en = zext <4 x i16> %wide.load131 to <4 x i64>
  %i.eo = add nuw nsw <4 x i64> %i.em, %i.en      ; 6 uses
  %i.ep = shufflevector <4 x i64> %vector.recur126, <4 x i64> %i.eo, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.eq = shufflevector <4 x i64> %vector.recur124, <4 x i64> %i.ep, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.er = mul nuw nsw <4 x i64> %i.ep, splat (i64 3) ; 2 uses
  %i.es = add nuw nsw <4 x i64> %i.eq, splat (i64 8)
  %i.et = add nuw nsw <4 x i64> %i.es, %i.er
  %i.eu = lshr <4 x i64> %i.et, splat (i64 4)
  %i.ev = trunc nuw <4 x i64> %i.eu to <4 x i16>
  %i.ew = add nuw nsw <4 x i64> %i.er, splat (i64 7)
  %i.ex = add nuw nsw <4 x i64> %i.ew, %i.eo
  %i.ey = lshr <4 x i64> %i.ex, splat (i64 4)
  %i.ez = trunc nuw <4 x i64> %i.ey to <4 x i16>
  %interleaved.vec132 = shufflevector <4 x i16> %i.ev, <4 x i16> %i.ez, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec132, ptr %next.gep127, align 2, !tbaa !80, !alias.scope !110, !noalias !112
end_hunk_0
