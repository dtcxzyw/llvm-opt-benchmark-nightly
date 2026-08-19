loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@h2v1_fancy_upsample:bb.a
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
  %i.j = ptrtoaddr ptr %i.i to i64                ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78   ; 6 uses
  %i.n = add i64 %.idx, %i.j
  %i.o = add i64 %i.j, 4
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.o)
  %i.q = xor i64 %i.j, -1
  %i.r = add i64 %i.p, %i.q                       ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 60
  br i1 %min.iters.check, label %.lr.ph.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.i, i64 4
  %i.u = add i64 %.idx, %i.j
  %i.v = add i64 %i.j, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.v)
  %i.w = xor i64 %i.j, -1
  %i.x = add i64 %umax, %i.w                      ; 2 uses
  %i.y = and i64 %i.x, -4
  %scevgep25 = getelementptr i8, ptr %scevgep, i64 %i.y
  %scevgep26 = getelementptr i8, ptr %i.m, i64 2
  %i.z = lshr i64 %i.x, 1
  %i.aa = and i64 %i.z, 9223372036854775806
  %scevgep27 = getelementptr i8, ptr %scevgep26, i64 %i.aa
  %bound0 = icmp ult ptr %i.i, %scevgep27
  %bound1 = icmp ult ptr %i.m, %scevgep25
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 9223372036854775800      ; 4 uses
  %i.ab = shl i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %i.i, i64 %i.ab
  %i.ad = shl nuw i64 %n.vec, 1
  %i.ae = getelementptr i8, ptr %i.m, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.af
  %i.ag = getelementptr i8, ptr %i.i, i64 %i.af
  %next.gep28 = getelementptr i8, ptr %i.ag, i64 16
  %i.ah = shl i64 %index, 1
  %next.gep29 = getelementptr i8, ptr %i.m, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep29, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep29, align 2, !tbaa !80, !alias.scope !91
  %wide.load30 = load <4 x i16>, ptr %i.ai, align 2, !tbaa !80, !alias.scope !91
  %interleaved.vec = shufflevector <4 x i16> %wide.load, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !80, !alias.scope !94, !noalias !91
  %interleaved.vec31 = shufflevector <4 x i16> %wide.load30, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec31, ptr %next.gep28, align 2, !tbaa !80, !alias.scope !94, !noalias !91
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader33

.lr.ph.preheader33:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.01619.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  %.01718.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader33, %.lr.ph
  %.01619 = phi ptr [ %i.an, %.lr.ph ], [ %.01619.ph, %.lr.ph.preheader33 ] ; 3 uses
  %.01718 = phi ptr [ %i.ak, %.lr.ph ], [ %.01718.ph, %.lr.ph.preheader33 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01718, i64 2
  %i.al = load i16, ptr %.01718, align 2, !tbaa !80 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01619, i64 2
  store i16 %i.al, ptr %.01619, align 2, !tbaa !80
  %i.an = getelementptr inbounds nuw i8, ptr %.01619, i64 4 ; 2 uses
  store i16 %i.al, ptr %i.am, align 2, !tbaa !80
  %i.ao = icmp ult ptr %i.an, %i.k
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !97

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
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %min.iters.check63 = icmp ult i32 %i.f, 8
  %n.vec65 = and i64 %i.g, 4294967288             ; 4 uses
  %i.h = trunc nuw i64 %n.vec65 to i32
  %i.i = shl nuw nsw i64 %n.vec65, 1              ; 3 uses
  %cmp.n75 = icmp eq i64 %n.vec65, %i.g
  %i.j = zext i32 %i.f to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.f, 8
  %n.vec = and i64 %i.j, 4294967288               ; 4 uses
  %i.k = trunc nuw i64 %n.vec to i32
  %i.l = shl nuw nsw i64 %n.vec, 1                ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.j
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us.us.1
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %._crit_edge.us.us.1 ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next41.a, %._crit_edge.us.us.1 ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv42 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !78   ; 9 uses
  %i.o = ptrtoaddr ptr %i.n to i64                ; 2 uses
  %.027.in.us.us = getelementptr i8, ptr %i.m, i64 -8
  %.027.us.us = load ptr, ptr %.027.in.us.us, align 8, !tbaa !78 ; 5 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !78   ; 5 uses
  br i1 %min.iters.check63, label %scalar.ph62.preheader, label %vector.memcheck57

vector.memcheck57:                                ; preds = %.preheader.us
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %.027.us.us59 = ptrtoaddr ptr %.027.us.us to i64
  %i.s = sub i64 %i.o, %i.r
  %diff.check58 = icmp ugt i64 %i.s, -16
  %i.t = sub i64 %.027.us.us59, %i.r
  %diff.check60 = icmp ugt i64 %i.t, -16
  %conflict.rdx61 = or i1 %diff.check58, %diff.check60
  br i1 %conflict.rdx61, label %scalar.ph62.preheader, label %vector.ph64

vector.ph64:                                      ; preds = %vector.memcheck57
  %i.u = getelementptr i8, ptr %i.q, i64 %i.i
  %i.v = getelementptr i8, ptr %.027.us.us, i64 %i.i
  %i.w = getelementptr i8, ptr %i.n, i64 %i.i
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next73, %vector.body66 ] ; 2 uses
  %i.x = shl i64 %index67, 1                      ; 3 uses
  %next.gep68 = getelementptr i8, ptr %i.q, i64 %i.x
  %next.gep69 = getelementptr i8, ptr %.027.us.us, i64 %i.x
  %next.gep70 = getelementptr i8, ptr %i.n, i64 %i.x
  %wide.load71 = load <8 x i16>, ptr %next.gep70, align 2, !tbaa !80
  %i.y = sext <8 x i16> %wide.load71 to <8 x i32>
  %i.z = mul nsw <8 x i32> %i.y, splat (i32 3)
  %wide.load72 = load <8 x i16>, ptr %next.gep69, align 2, !tbaa !80
  %i.aa = sext <8 x i16> %wide.load72 to <8 x i32>
  %i.ab = add nsw <8 x i32> %i.aa, splat (i32 1)
  %i.ac = add nsw <8 x i32> %i.ab, %i.z
  %i.ad = lshr <8 x i32> %i.ac, splat (i32 2)
  %i.ae = trunc <8 x i32> %i.ad to <8 x i16>
  store <8 x i16> %i.ae, ptr %next.gep68, align 2, !tbaa !80
  %index.next73 = add nuw i64 %index67, 8         ; 2 uses
  %i.af = icmp eq i64 %index.next73, %n.vec65
  br i1 %i.af, label %middle.block74, label %vector.body66, !llvm.loop !99

middle.block74:                                   ; preds = %vector.body66
  br i1 %cmp.n75, label %._crit_edge.us.us, label %scalar.ph62.preheader

scalar.ph62.preheader:                            ; preds = %vector.memcheck57, %.preheader.us, %middle.block74
  %.02433.us.us.ph = phi i32 [ 0, %vector.memcheck57 ], [ 0, %.preheader.us ], [ %i.h, %middle.block74 ] ; 4 uses
  %.02632.us.us.ph = phi ptr [ %i.q, %vector.memcheck57 ], [ %i.q, %.preheader.us ], [ %i.u, %middle.block74 ] ; 3 uses
  %.12831.us.us.ph = phi ptr [ %.027.us.us, %vector.memcheck57 ], [ %.027.us.us, %.preheader.us ], [ %i.v, %middle.block74 ] ; 3 uses
  %.02930.us.us.ph = phi ptr [ %i.n, %vector.memcheck57 ], [ %i.n, %.preheader.us ], [ %i.w, %middle.block74 ] ; 3 uses
  %i.ag = sub i32 %i.f, %.02433.us.us.ph
  %.neg = add i32 %.02433.us.us.ph, 1
  %xtraiter = and i32 %i.ag, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph62.prol.loopexit, label %scalar.ph62.prol

scalar.ph62.prol:                                 ; preds = %scalar.ph62.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %.02930.us.us.ph, i64 2
  %i.ai = load i16, ptr %.02930.us.us.ph, align 2, !tbaa !80
  %i.aj = sext i16 %i.ai to i32
  %i.ak = mul nsw i32 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %.12831.us.us.ph, i64 2
  %i.am = load i16, ptr %.12831.us.us.ph, align 2, !tbaa !80
  %i.an = sext i16 %i.am to i32
  %i.ao = add nsw i32 %i.an, 1
  %i.ap = add nsw i32 %i.ao, %i.ak
  %i.aq = lshr i32 %i.ap, 2
  %i.ar = trunc i32 %i.aq to i16
  %i.as = getelementptr inbounds nuw i8, ptr %.02632.us.us.ph, i64 2
  store i16 %i.ar, ptr %.02632.us.us.ph, align 2, !tbaa !80
  %i.at = add nuw i32 %.02433.us.us.ph, 1
  br label %scalar.ph62.prol.loopexit

scalar.ph62.prol.loopexit:                        ; preds = %scalar.ph62.prol, %scalar.ph62.preheader
  %.02433.us.us.unr = phi i32 [ %.02433.us.us.ph, %scalar.ph62.preheader ], [ %i.at, %scalar.ph62.prol ]
  %.02632.us.us.unr = phi ptr [ %.02632.us.us.ph, %scalar.ph62.preheader ], [ %i.as, %scalar.ph62.prol ]
  %.12831.us.us.unr = phi ptr [ %.12831.us.us.ph, %scalar.ph62.preheader ], [ %i.al, %scalar.ph62.prol ]
  %.02930.us.us.unr = phi ptr [ %.02930.us.us.ph, %scalar.ph62.preheader ], [ %i.ah, %scalar.ph62.prol ]
  %i.au = icmp eq i32 %i.f, %.neg
  br i1 %i.au, label %._crit_edge.us.us, label %scalar.ph62

scalar.ph62:                                      ; preds = %scalar.ph62.prol.loopexit, %scalar.ph62
  %.02433.us.us = phi i32 [ %i.bt, %scalar.ph62 ], [ %.02433.us.us.unr, %scalar.ph62.prol.loopexit ]
  %.02632.us.us = phi ptr [ %i.bs, %scalar.ph62 ], [ %.02632.us.us.unr, %scalar.ph62.prol.loopexit ] ; 3 uses
  %.12831.us.us = phi ptr [ %i.bl, %scalar.ph62 ], [ %.12831.us.us.unr, %scalar.ph62.prol.loopexit ] ; 3 uses
  %.02930.us.us = phi ptr [ %i.bh, %scalar.ph62 ], [ %.02930.us.us.unr, %scalar.ph62.prol.loopexit ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.02930.us.us, i64 2
  %i.aw = load i16, ptr %.02930.us.us, align 2, !tbaa !80
  %i.ax = sext i16 %i.aw to i32
  %i.ay = mul nsw i32 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %.12831.us.us, i64 2
  %i.ba = load i16, ptr %.12831.us.us, align 2, !tbaa !80
  %i.bb = sext i16 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, 1
  %i.bd = add nsw i32 %i.bc, %i.ay
  %i.be = lshr i32 %i.bd, 2
  %i.bf = trunc i32 %i.be to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %.02632.us.us, i64 2
  store i16 %i.bf, ptr %.02632.us.us, align 2, !tbaa !80
  %i.bh = getelementptr inbounds nuw i8, ptr %.02930.us.us, i64 4
  %i.bi = load i16, ptr %i.av, align 2, !tbaa !80
  %i.bj = sext i16 %i.bi to i32
  %i.bk = mul nsw i32 %i.bj, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.12831.us.us, i64 4
  %i.bm = load i16, ptr %i.az, align 2, !tbaa !80
  %i.bn = sext i16 %i.bm to i32
  %i.bo = add nsw i32 %i.bn, 1
  %i.bp = add nsw i32 %i.bo, %i.bk
  %i.bq = lshr i32 %i.bp, 2
  %i.br = trunc i32 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %.02632.us.us, i64 4
  store i16 %i.br, ptr %i.bg, align 2, !tbaa !80
  %i.bt = add nuw i32 %.02433.us.us, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.bt, %i.f
  br i1 %exitcond.not.1, label %._crit_edge.us.us, label %scalar.ph62, !llvm.loop !100

._crit_edge.us.us:                                ; preds = %scalar.ph62.prol.loopexit, %scalar.ph62, %middle.block74
  %.027.in.us.us.1 = getelementptr i8, ptr %i.m, i64 8
  %.027.us.us.1 = load ptr, ptr %.027.in.us.us.1, align 8, !tbaa !78 ; 5 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !78 ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge.us.us
  %i.bx = ptrtoaddr ptr %i.bw to i64              ; 2 uses
  %.027.us.us.149 = ptrtoaddr ptr %.027.us.us.1 to i64
  %i.by = sub i64 %i.o, %i.bx
  %diff.check = icmp ugt i64 %i.by, -16
  %i.bz = sub i64 %.027.us.us.149, %i.bx
  %diff.check50 = icmp ugt i64 %i.bz, -16
  %conflict.rdx = or i1 %diff.check, %diff.check50
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ca = getelementptr i8, ptr %i.bw, i64 %i.l
  %i.cb = getelementptr i8, ptr %.027.us.us.1, i64 %i.l
  %i.cc = getelementptr i8, ptr %i.n, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = shl i64 %index, 1                       ; 3 uses
  %next.gep = getelementptr i8, ptr %i.bw, i64 %i.cd
  %next.gep51 = getelementptr i8, ptr %.027.us.us.1, i64 %i.cd
  %next.gep52 = getelementptr i8, ptr %i.n, i64 %i.cd
  %wide.load = load <8 x i16>, ptr %next.gep52, align 2, !tbaa !80
  %i.ce = sext <8 x i16> %wide.load to <8 x i32>
  %i.cf = mul nsw <8 x i32> %i.ce, splat (i32 3)
  %wide.load53 = load <8 x i16>, ptr %next.gep51, align 2, !tbaa !80
  %i.cg = sext <8 x i16> %wide.load53 to <8 x i32>
  %i.ch = add nsw <8 x i32> %i.cg, splat (i32 2)
  %i.ci = add nsw <8 x i32> %i.ch, %i.cf
  %i.cj = lshr <8 x i32> %i.ci, splat (i32 2)
  %i.ck = trunc <8 x i32> %i.cj to <8 x i16>
  store <8 x i16> %i.ck, ptr %next.gep, align 2, !tbaa !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.1, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %._crit_edge.us.us, %middle.block
  %.02433.us.us.1.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %._crit_edge.us.us ], [ %i.k, %middle.block ] ; 4 uses
  %.02632.us.us.1.ph = phi ptr [ %i.bw, %vector.memcheck ], [ %i.bw, %._crit_edge.us.us ], [ %i.ca, %middle.block ] ; 3 uses
  %.12831.us.us.1.ph = phi ptr [ %.027.us.us.1, %vector.memcheck ], [ %.027.us.us.1, %._crit_edge.us.us ], [ %i.cb, %middle.block ] ; 3 uses
  %.02930.us.us.1.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %._crit_edge.us.us ], [ %i.cc, %middle.block ] ; 3 uses
  %i.cm = sub i32 %i.f, %.02433.us.us.1.ph
  %.neg86 = add i32 %.02433.us.us.1.ph, 1
  %xtraiter84 = and i32 %i.cm, 1
  %lcmp.mod85.not = icmp eq i32 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cn = getelementptr inbounds nuw i8, ptr %.02930.us.us.1.ph, i64 2
  %i.co = load i16, ptr %.02930.us.us.1.ph, align 2, !tbaa !80
  %i.cp = sext i16 %i.co to i32
  %i.cq = mul nsw i32 %i.cp, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %.12831.us.us.1.ph, i64 2
  %i.cs = load i16, ptr %.12831.us.us.1.ph, align 2, !tbaa !80
  %i.ct = sext i16 %i.cs to i32
  %i.cu = add nsw i32 %i.ct, 2
  %i.cv = add nsw i32 %i.cu, %i.cq
  %i.cw = lshr i32 %i.cv, 2
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %.02632.us.us.1.ph, i64 2
  store i16 %i.cx, ptr %.02632.us.us.1.ph, align 2, !tbaa !80
  %i.cz = add nuw i32 %.02433.us.us.1.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.02433.us.us.1.unr = phi i32 [ %.02433.us.us.1.ph, %scalar.ph.preheader ], [ %i.cz, %scalar.ph.prol ]
  %.02632.us.us.1.unr = phi ptr [ %.02632.us.us.1.ph, %scalar.ph.preheader ], [ %i.cy, %scalar.ph.prol ]
  %.12831.us.us.1.unr = phi ptr [ %.12831.us.us.1.ph, %scalar.ph.preheader ], [ %i.cr, %scalar.ph.prol ]
  %.02930.us.us.1.unr = phi ptr [ %.02930.us.us.1.ph, %scalar.ph.preheader ], [ %i.cn, %scalar.ph.prol ]
  %i.da = icmp eq i32 %i.f, %.neg86
  br i1 %i.da, label %._crit_edge.us.us.1, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.02433.us.us.1 = phi i32 [ %i.dz, %scalar.ph ], [ %.02433.us.us.1.unr, %scalar.ph.prol.loopexit ]
  %.02632.us.us.1 = phi ptr [ %i.dy, %scalar.ph ], [ %.02632.us.us.1.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.12831.us.us.1 = phi ptr [ %i.dr, %scalar.ph ], [ %.12831.us.us.1.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.02930.us.us.1 = phi ptr [ %i.dn, %scalar.ph ], [ %.02930.us.us.1.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.02930.us.us.1, i64 2
  %i.dc = load i16, ptr %.02930.us.us.1, align 2, !tbaa !80
  %i.dd = sext i16 %i.dc to i32
  %i.de = mul nsw i32 %i.dd, 3
  %i.df = getelementptr inbounds nuw i8, ptr %.12831.us.us.1, i64 2
  %i.dg = load i16, ptr %.12831.us.us.1, align 2, !tbaa !80
  %i.dh = sext i16 %i.dg to i32
  %i.di = add nsw i32 %i.dh, 2
  %i.dj = add nsw i32 %i.di, %i.de
  %i.dk = lshr i32 %i.dj, 2
  %i.dl = trunc i32 %i.dk to i16
  %i.dm = getelementptr inbounds nuw i8, ptr %.02632.us.us.1, i64 2
  store i16 %i.dl, ptr %.02632.us.us.1, align 2, !tbaa !80
  %i.dn = getelementptr inbounds nuw i8, ptr %.02930.us.us.1, i64 4
  %i.do = load i16, ptr %i.db, align 2, !tbaa !80
  %i.dp = sext i16 %i.do to i32
  %i.dq = mul nsw i32 %i.dp, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %.12831.us.us.1, i64 4
  %i.ds = load i16, ptr %i.df, align 2, !tbaa !80
  %i.dt = sext i16 %i.ds to i32
  %i.du = add nsw i32 %i.dt, 2
  %i.dv = add nsw i32 %i.du, %i.dq
  %i.dw = lshr i32 %i.dv, 2
  %i.dx = trunc i32 %i.dw to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %.02632.us.us.1, i64 4
  store i16 %i.dx, ptr %i.dm, align 2, !tbaa !80
  %i.dz = add nuw i32 %.02433.us.us.1, 2          ; 2 uses
  %exitcond.1.not.1 = icmp eq i32 %i.dz, %i.f
  br i1 %exitcond.1.not.1, label %._crit_edge.us.us.1, label %scalar.ph, !llvm.loop !102

._crit_edge.us.us.1:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next41.a = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %4 = trunc nsw i64 %indvars.iv.next41.a to i32
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %5 = icmp sgt i32 %i.c, %4
  br i1 %5, label %.preheader.us, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %._crit_edge.us.us.1, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v2_fancy_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !72     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.c = load i32, ptr %i.b, align 4, !tbaa !61   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge68

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !63
  %i.g = add i32 %i.f, -2                         ; 3 uses
  %.not53 = icmp eq i32 %i.g, 0
  br i1 %.not53, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %.preheader.us
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %.preheader.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv82 = phi i64 [ %indvars.iv.next76.1, %.preheader.us ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv84 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !78   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  %.049.in.us.us = getelementptr i8, ptr %i.h, i64 -8
  %.049.us.us = load ptr, ptr %.049.in.us.us, align 8, !tbaa !78 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv82
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 4 uses
  %i.m = load i16, ptr %i.i, align 2, !tbaa !80
  %i.n = sext i16 %i.m to i64
  %i.o = mul nsw i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %.049.us.us, i64 2
  %i.q = load i16, ptr %.049.us.us, align 2, !tbaa !80
  %i.r = sext i16 %i.q to i64
  %i.s = add nsw i64 %i.o, %i.r                   ; 3 uses
  %i.t = load i16, ptr %i.j, align 2, !tbaa !80
  %i.u = sext i16 %i.t to i64
  %i.v = mul nsw i64 %i.u, 3
  %i.w = load i16, ptr %i.p, align 2, !tbaa !80
  %i.x = sext i16 %i.w to i64
  %i.y = add nsw i64 %i.v, %i.x                   ; 3 uses
  %i.z = shl nsw i64 %i.s, 2
  %i.aa = add nsw i64 %i.z, 8
  %i.ab = lshr i64 %i.aa, 4
  %i.ac = trunc i64 %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i16 %i.ac, ptr %i.l, align 2, !tbaa !80
  %i.ae = mul nsw i64 %i.s, 3
  %i.af = add nsw i64 %i.ae, 7
  %i.ag = add nsw i64 %i.af, %i.y
  %i.ah = lshr i64 %i.ag, 4
  %i.ai = trunc i64 %i.ah to i16
  store i16 %i.ai, ptr %i.ad, align 2, !tbaa !80
  %.04852.us.us = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.aj = mul nsw i64 %i.y, 3
  %i.ak = add nsw i64 %i.s, 8
  %i.al = add nsw i64 %i.ak, %i.aj
  %i.am = lshr i64 %i.al, 4
  %i.an = trunc i64 %i.am to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  store i16 %i.an, ptr %.04852.us.us, align 2, !tbaa !80
  %i.ap = shl nsw i64 %i.y, 2
  %i.aq = add nsw i64 %i.ap, 4
  %i.ar = lshr i64 %i.aq, 4
  %i.as = trunc i64 %i.ar to i16
  store i16 %i.as, ptr %i.ao, align 2, !tbaa !80
  %.049.in.us.us.1 = getelementptr i8, ptr %i.h, i64 8
  %.049.us.us.1 = load ptr, ptr %.049.in.us.us.1, align 8, !tbaa !78 ; 2 uses
  %indvars.iv.next76.1 = add nuw nsw i64 %indvars.iv82, 2 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv82
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78 ; 4 uses
  %i.aw = load i16, ptr %i.i, align 2, !tbaa !80
  %i.ax = sext i16 %i.aw to i64
  %i.ay = mul nsw i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %.049.us.us.1, i64 2
  %i.ba = load i16, ptr %.049.us.us.1, align 2, !tbaa !80
  %i.bb = sext i16 %i.ba to i64
  %i.bc = add nsw i64 %i.ay, %i.bb                ; 3 uses
  %i.bd = load i16, ptr %i.j, align 2, !tbaa !80
  %i.be = sext i16 %i.bd to i64
  %i.bf = mul nsw i64 %i.be, 3
  %i.bg = load i16, ptr %i.az, align 2, !tbaa !80
  %i.bh = sext i16 %i.bg to i64
  %i.bi = add nsw i64 %i.bf, %i.bh                ; 3 uses
  %i.bj = shl nsw i64 %i.bc, 2
  %i.bk = add nsw i64 %i.bj, 8
  %i.bl = lshr i64 %i.bk, 4
  %i.bm = trunc i64 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 %i.bm, ptr %i.av, align 2, !tbaa !80
  %i.bo = mul nsw i64 %i.bc, 3
  %i.bp = add nsw i64 %i.bo, 7
  %i.bq = add nsw i64 %i.bp, %i.bi
  %i.br = lshr i64 %i.bq, 4
  %i.bs = trunc i64 %i.br to i16
  store i16 %i.bs, ptr %i.bn, align 2, !tbaa !80
  %.04852.us.us.1 = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bt = mul nsw i64 %i.bi, 3
  %i.bu = add nsw i64 %i.bc, 8
  %i.bv = add nsw i64 %i.bu, %i.bt
  %i.bw = lshr i64 %i.bv, 4
  %i.bx = trunc i64 %i.bw to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  store i16 %i.bx, ptr %.04852.us.us.1, align 2, !tbaa !80
  %i.bz = shl nsw i64 %i.bi, 2
  %i.ca = add nsw i64 %i.bz, 4
  %i.cb = lshr i64 %i.ca, 4
  %i.cc = trunc i64 %i.cb to i16
  store i16 %i.cc, ptr %i.by, align 2, !tbaa !80
  %4 = trunc nsw i64 %indvars.iv.next76.1 to i32
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %5 = icmp sgt i32 %i.c, %4
  br i1 %5, label %.preheader.us, label %._crit_edge68, !llvm.loop !104

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge.1
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %._crit_edge.1 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %._crit_edge.1 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv74 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !78 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 2 uses
  %.049.in = getelementptr i8, ptr %i.cd, i64 -8
  %.049 = load ptr, ptr %.049.in, align 8, !tbaa !78 ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !78 ; 4 uses
  %i.cj = load i16, ptr %i.ce, align 2, !tbaa !80
  %i.ck = sext i16 %i.cj to i64
  %i.cl = mul nsw i64 %i.ck, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %.049, i64 2
  %i.cn = load i16, ptr %.049, align 2, !tbaa !80
  %i.co = sext i16 %i.cn to i64
  %i.cp = add nsw i64 %i.cl, %i.co                ; 3 uses
  %i.cq = load i16, ptr %i.cf, align 2, !tbaa !80
  %i.cr = sext i16 %i.cq to i64
  %i.cs = mul nsw i64 %i.cr, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %.049, i64 4
  %i.cu = load i16, ptr %i.cm, align 2, !tbaa !80
  %i.cv = sext i16 %i.cu to i64
  %i.cw = add nsw i64 %i.cs, %i.cv                ; 2 uses
  %i.cx = shl nsw i64 %i.cp, 2
  %i.cy = add nsw i64 %i.cx, 8
  %i.cz = lshr i64 %i.cy, 4
  %i.da = trunc i64 %i.cz to i16
  %i.db = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store i16 %i.da, ptr %i.ci, align 2, !tbaa !80
  %i.dc = mul nsw i64 %i.cp, 3
  %i.dd = add nsw i64 %i.dc, 7
  %i.de = add nsw i64 %i.dd, %i.cw
  %i.df = lshr i64 %i.de, 4
  %i.dg = trunc i64 %i.df to i16
  store i16 %i.dg, ptr %i.db, align 2, !tbaa !80
  %.04852 = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.04860 = phi ptr [ %.04852, %.preheader ], [ %.048, %bb.b ] ; 4 uses
  %.04559 = phi i32 [ %i.g, %.preheader ], [ %i.dz, %bb.b ]
  %.04658 = phi i64 [ %i.cp, %.preheader ], [ %.04757, %bb.b ]
  %.04757 = phi i64 [ %i.cw, %.preheader ], [ %i.do, %bb.b ] ; 3 uses
  %.pn56 = phi ptr [ %i.ci, %.preheader ], [ %.04860, %bb.b ]
  %.15055 = phi ptr [ %i.ct, %.preheader ], [ %i.dl, %bb.b ] ; 2 uses
  %.05154 = phi ptr [ %i.cg, %.preheader ], [ %i.dh, %bb.b ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.05154, i64 2
  %i.di = load i16, ptr %.05154, align 2, !tbaa !80
  %i.dj = sext i16 %i.di to i64
  %i.dk = mul nsw i64 %i.dj, 3
  %i.dl = getelementptr inbounds nuw i8, ptr %.15055, i64 2
  %i.dm = load i16, ptr %.15055, align 2, !tbaa !80
  %i.dn = sext i16 %i.dm to i64
  %i.do = add nsw i64 %i.dk, %i.dn                ; 4 uses
  %i.dp = mul nsw i64 %.04757, 3                  ; 2 uses
  %i.dq = add nsw i64 %.04658, 8
  %i.dr = add nsw i64 %i.dq, %i.dp
  %i.ds = lshr i64 %i.dr, 4
  %i.dt = trunc i64 %i.ds to i16
  %i.du = getelementptr inbounds nuw i8, ptr %.pn56, i64 6
  store i16 %i.dt, ptr %.04860, align 2, !tbaa !80
  %i.dv = add nsw i64 %i.dp, 7
  %i.dw = add nsw i64 %i.dv, %i.do
  %i.dx = lshr i64 %i.dw, 4
  %i.dy = trunc i64 %i.dx to i16
  store i16 %i.dy, ptr %i.du, align 2, !tbaa !80
  %i.dz = add i32 %.04559, -1                     ; 2 uses
  %.048 = getelementptr inbounds nuw i8, ptr %.04860, i64 4 ; 2 uses
  %.not = icmp eq i32 %i.dz, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.b
  %i.ea = mul nsw i64 %i.do, 3
  %i.eb = add nsw i64 %.04757, 8
  %i.ec = add nsw i64 %i.eb, %i.ea
  %i.ed = lshr i64 %i.ec, 4
  %i.ee = trunc i64 %i.ed to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %.04860, i64 6
  store i16 %i.ee, ptr %.048, align 2, !tbaa !80
  %i.eg = shl nsw i64 %i.do, 2
  %i.eh = add nsw i64 %i.eg, 4
  %i.ei = lshr i64 %i.eh, 4
  %i.ej = trunc i64 %i.ei to i16
  store i16 %i.ej, ptr %i.ef, align 2, !tbaa !80
  %.049.in.1 = getelementptr i8, ptr %i.cd, i64 8
  %.049.1 = load ptr, ptr %.049.in.1, align 8, !tbaa !78 ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !78 ; 4 uses
  %i.en = load i16, ptr %i.ce, align 2, !tbaa !80
  %i.eo = sext i16 %i.en to i64
  %i.ep = mul nsw i64 %i.eo, 3
  %i.eq = getelementptr inbounds nuw i8, ptr %.049.1, i64 2
  %i.er = load i16, ptr %.049.1, align 2, !tbaa !80
  %i.es = sext i16 %i.er to i64
  %i.et = add nsw i64 %i.ep, %i.es                ; 3 uses
  %i.eu = load i16, ptr %i.cf, align 2, !tbaa !80
  %i.ev = sext i16 %i.eu to i64
  %i.ew = mul nsw i64 %i.ev, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %.049.1, i64 4
  %i.ey = load i16, ptr %i.eq, align 2, !tbaa !80
  %i.ez = sext i16 %i.ey to i64
  %i.fa = add nsw i64 %i.ew, %i.ez                ; 2 uses
  %i.fb = shl nsw i64 %i.et, 2
  %i.fc = add nsw i64 %i.fb, 8
  %i.fd = lshr i64 %i.fc, 4
  %i.fe = trunc i64 %i.fd to i16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  store i16 %i.fe, ptr %i.em, align 2, !tbaa !80
  %i.fg = mul nsw i64 %i.et, 3
  %i.fh = add nsw i64 %i.fg, 7
  %i.fi = add nsw i64 %i.fh, %i.fa
  %i.fj = lshr i64 %i.fi, 4
  %i.fk = trunc i64 %i.fj to i16
  store i16 %i.fk, ptr %i.ff, align 2, !tbaa !80
  %.04852.1 = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.04860.1 = phi ptr [ %.04852.1, %._crit_edge ], [ %.048.1, %bb.c ] ; 4 uses
  %.04559.1 = phi i32 [ %i.g, %._crit_edge ], [ %i.gd, %bb.c ]
  %.04658.1 = phi i64 [ %i.et, %._crit_edge ], [ %.04757.1, %bb.c ]
  %.04757.1 = phi i64 [ %i.fa, %._crit_edge ], [ %i.fs, %bb.c ] ; 3 uses
  %.pn56.1 = phi ptr [ %i.em, %._crit_edge ], [ %.04860.1, %bb.c ]
  %.15055.1 = phi ptr [ %i.ex, %._crit_edge ], [ %i.fp, %bb.c ] ; 2 uses
  %.05154.1 = phi ptr [ %i.cg, %._crit_edge ], [ %i.fl, %bb.c ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.05154.1, i64 2
  %i.fm = load i16, ptr %.05154.1, align 2, !tbaa !80
  %i.fn = sext i16 %i.fm to i64
  %i.fo = mul nsw i64 %i.fn, 3
  %i.fp = getelementptr inbounds nuw i8, ptr %.15055.1, i64 2
  %i.fq = load i16, ptr %.15055.1, align 2, !tbaa !80
  %i.fr = sext i16 %i.fq to i64
  %i.fs = add nsw i64 %i.fo, %i.fr                ; 4 uses
  %i.ft = mul nsw i64 %.04757.1, 3                ; 2 uses
  %i.fu = add nsw i64 %.04658.1, 8
  %i.fv = add nsw i64 %i.fu, %i.ft
  %i.fw = lshr i64 %i.fv, 4
  %i.fx = trunc i64 %i.fw to i16
  %i.fy = getelementptr inbounds nuw i8, ptr %.pn56.1, i64 6
  store i16 %i.fx, ptr %.04860.1, align 2, !tbaa !80
  %i.fz = add nsw i64 %i.ft, 7
  %i.ga = add nsw i64 %i.fz, %i.fs
  %i.gb = lshr i64 %i.ga, 4
  %i.gc = trunc i64 %i.gb to i16
  store i16 %i.gc, ptr %i.fy, align 2, !tbaa !80
  %i.gd = add i32 %.04559.1, -1                   ; 2 uses
  %.048.1 = getelementptr inbounds nuw i8, ptr %.04860.1, i64 4 ; 2 uses
  %.not.1 = icmp eq i32 %i.gd, 0
  br i1 %.not.1, label %._crit_edge.1, label %bb.c, !llvm.loop !105

._crit_edge.1:                                    ; preds = %bb.c
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ge = mul nsw i64 %i.fs, 3
  %i.gf = add nsw i64 %.04757.1, 8
  %i.gg = add nsw i64 %i.gf, %i.ge
  %i.gh = lshr i64 %i.gg, 4
  %i.gi = trunc i64 %i.gh to i16
  %i.gj = getelementptr inbounds nuw i8, ptr %.04860.1, i64 6
  store i16 %i.gi, ptr %.048.1, align 2, !tbaa !80
  %i.gk = shl nsw i64 %i.fs, 2
  %i.gl = add nsw i64 %i.gk, 4
  %i.gm = lshr i64 %i.gl, 4
  %i.gn = trunc i64 %i.gm to i16
  store i16 %i.gn, ptr %i.gj, align 2, !tbaa !80
  %6 = trunc nsw i64 %indvars.iv.next.1 to i32
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %7 = icmp sgt i32 %i.c, %6
  br i1 %7, label %.preheader, label %._crit_edge68, !llvm.loop !104

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
  %i.ab = shl i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %i.g, i64 %i.ab
  %i.ad = shl nuw i64 %n.vec, 1
  %i.ae = getelementptr i8, ptr %i.m, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.af
  %i.ag = getelementptr i8, ptr %i.g, i64 %i.af
  %next.gep40 = getelementptr i8, ptr %i.ag, i64 16
  %i.ah = shl i64 %index, 1
  %next.gep41 = getelementptr i8, ptr %i.m, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep41, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep41, align 2, !tbaa !80, !alias.scope !106
  %wide.load42 = load <4 x i16>, ptr %i.ai, align 2, !tbaa !80, !alias.scope !106
  %interleaved.vec = shufflevector <4 x i16> %wide.load, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !80, !alias.scope !109, !noalias !106
  %interleaved.vec43 = shufflevector <4 x i16> %wide.load42, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec43, ptr %next.gep40, align 2, !tbaa !80, !alias.scope !109, !noalias !106
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader45

.lr.ph.preheader45:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.02326.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  %.02425.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader45, %.lr.ph
  %.02326 = phi ptr [ %i.an, %.lr.ph ], [ %.02326.ph, %.lr.ph.preheader45 ] ; 3 uses
  %.02425 = phi ptr [ %i.ak, %.lr.ph ], [ %.02425.ph, %.lr.ph.preheader45 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02425, i64 2
  %i.al = load i16, ptr %.02425, align 2, !tbaa !80 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02326, i64 2
  store i16 %i.al, ptr %.02326, align 2, !tbaa !80
  %i.an = getelementptr inbounds nuw i8, ptr %.02326, i64 4 ; 2 uses
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
  %min.iters.check97 = icmp ult i8 %.fr50, 4
  %min.iters.check99 = icmp ult i8 %.fr50, 16
  %i.w = and i64 %i.v, 12
  %n.vec101 = and i64 %i.v, 240                   ; 5 uses
  %i.x = trunc nuw nsw i64 %n.vec101 to i32
  %i.y = sub nsw i32 %i.j, %i.x
  %i.z = shl nuw nsw i64 %n.vec101, 1
  %cmp.n109 = icmp eq i64 %n.vec101, %i.v
  %min.epilog.iters.check115 = icmp eq i64 %i.w, 0
  %n.vec117 = and i64 %i.v, 252                   ; 4 uses
  %i.aa = trunc nuw nsw i64 %n.vec117 to i32
  %i.ab = sub nsw i32 %i.j, %i.aa
  %i.ac = shl nuw nsw i64 %n.vec117, 1
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
end_hunk_0
