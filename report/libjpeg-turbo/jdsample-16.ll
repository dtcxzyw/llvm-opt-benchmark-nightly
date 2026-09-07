Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jdsample-16?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@h2v1_fancy_upsample:bb.a
  %.03134 = phi ptr [ %i.dk, %scalar.ph ], [ %.03134.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.03134, i64 2 ; 2 uses
  %i.ct = load i16, ptr %.03134, align 2, !tbaa !51
  %i.cu = zext i16 %i.ct to i32
  %i.cv = mul nuw nsw i32 %i.cu, 3                ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.03134, i64 -2
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !51
  %i.cy = zext i16 %i.cx to i32
  %i.cz = add nuw nsw i32 %i.cy, 1
  %i.da = add nuw nsw i32 %i.cz, %i.cv
  %i.db = lshr i32 %i.da, 2
  %i.dc = trunc nuw i32 %i.db to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn35, i64 6
  store i16 %i.dc, ptr %.03037, align 2, !tbaa !51
  %i.de = load i16, ptr %i.cs, align 2, !tbaa !51
  %i.df = zext i16 %i.de to i32
  %i.dg = add nuw nsw i32 %i.cv, 2
  %i.dh = add nuw nsw i32 %i.dg, %i.df
  %i.di = lshr i32 %i.dh, 2
  %i.dj = trunc nuw i32 %i.di to i16
  store i16 %i.dj, ptr %i.dd, align 2, !tbaa !51
  %.030 = getelementptr inbounds nuw i8, ptr %.03037, i64 4 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.03134, i64 4 ; 3 uses
  %i.dl = load i16, ptr %i.cs, align 2, !tbaa !51
  %i.dm = zext i16 %i.dl to i32
  %i.dn = mul nuw nsw i32 %i.dm, 3                ; 2 uses
  %i.do = load i16, ptr %.03134, align 2, !tbaa !51
  %i.dp = zext i16 %i.do to i32
  %i.dq = add nuw nsw i32 %i.dp, 1
  %i.dr = add nuw nsw i32 %i.dq, %i.dn
  %i.ds = lshr i32 %i.dr, 2
  %i.dt = trunc nuw i32 %i.ds to i16
  %i.du = getelementptr inbounds nuw i8, ptr %.03037, i64 6
  store i16 %i.dt, ptr %.030, align 2, !tbaa !51
  %i.dv = load i16, ptr %i.dk, align 2, !tbaa !51
  %i.dw = zext i16 %i.dv to i32
  %i.dx = add nuw nsw i32 %i.dn, 2
  %i.dy = add nuw nsw i32 %i.dx, %i.dw
  %i.dz = lshr i32 %i.dy, 2
  %i.ea = trunc nuw i32 %i.dz to i16
  store i16 %i.ea, ptr %i.du, align 2, !tbaa !51
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
  %i.ed = load i16, ptr %.lcssa, align 2, !tbaa !51 ; 2 uses
  %i.ee = zext i16 %i.ed to i32
  %i.ef = mul nuw nsw i32 %i.ee, 3
  %i.eg = load i16, ptr %.03134.lcssa, align 2, !tbaa !51
  %i.eh = zext i16 %i.eg to i32
  %i.ei = add nuw nsw i32 %i.eh, 1
  %i.ej = add nuw nsw i32 %i.ei, %i.ef
  %i.ek = lshr i32 %i.ej, 2
  %i.el = trunc nuw i32 %i.ek to i16
  %i.em = getelementptr inbounds nuw i8, ptr %.03037.lcssa, i64 6
  store i16 %i.el, ptr %.030.lcssa, align 2, !tbaa !51
  store i16 %i.ed, ptr %i.em, align 2, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count49
  br i1 %exitcond.not, label %._crit_edge43, label %.lr.ph, !llvm.loop !85

._crit_edge43:                                    ; preds = %._crit_edge, %.lr.ph42.split.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v1_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph22, label %._crit_edge23

.lr.ph22:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i32, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.g, 1                 ; 3 uses
  %.not = icmp eq i32 %i.f, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 9 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50   ; 6 uses
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
  %wide.load = load <4 x i16>, ptr %next.gep29, align 2, !tbaa !51, !alias.scope !99
  %wide.load30 = load <4 x i16>, ptr %i.ai, align 2, !tbaa !51, !alias.scope !99
  %interleaved.vec = shufflevector <4 x i16> %wide.load, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !51, !alias.scope !100, !noalias !99
  %interleaved.vec31 = shufflevector <4 x i16> %wide.load30, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec31, ptr %next.gep28, align 2, !tbaa !51, !alias.scope !100, !noalias !99
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
  %i.al = load i16, ptr %.01718, align 2, !tbaa !51 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01619, i64 2
  store i16 %i.al, ptr %.01619, align 2, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %.01619, i64 4 ; 2 uses
  store i16 %i.al, ptr %i.am, align 2, !tbaa !51
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
  %i.a = load ptr, ptr %3, align 8, !tbaa !48     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !41   ; 10 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.g = add nsw i32 %i.c, -1
  %i.h = lshr i32 %i.g, 1
  %i.i = add nuw nsw i32 %i.h, 1
  %wide.trip.count = zext nneg i32 %i.i to i64
  %4 = add i32 %i.f, -1                           ; 2 uses
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
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50   ; 9 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %.027.in.us.us = getelementptr i8, ptr %i.p, i64 -8
  %.027.us.us = load ptr, ptr %.027.in.us.us, align 8, !tbaa !50 ; 5 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50   ; 5 uses
  br i1 %min.iters.check63, label %scalar.ph62.preheader, label %vector.memcheck57

vector.memcheck57:                                ; preds = %.preheader.us
  %i.u = ptrtoaddr ptr %i.t to i64                ; 2 uses
  %.027.us.us59 = ptrtoaddr ptr %.027.us.us to i64
  %i.v = sub i64 %i.r, %i.u
  %diff.check58 = icmp ugt i64 %i.v, -16
  %i.w = sub i64 %.027.us.us59, %i.u
  %diff.check60 = icmp ugt i64 %i.w, -16
  %conflict.rdx61 = or i1 %diff.check58, %diff.check60
  br i1 %conflict.rdx61, label %scalar.ph62.preheader, label %vector.ph64

vector.ph64:                                      ; preds = %vector.memcheck57
  %i.x = getelementptr i8, ptr %i.t, i64 %i.l
  %i.y = getelementptr i8, ptr %.027.us.us, i64 %i.l
  %i.z = getelementptr i8, ptr %i.q, i64 %i.l
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next73, %vector.body66 ] ; 2 uses
  %i.aa = shl i64 %index67, 1                     ; 3 uses
  %next.gep68 = getelementptr i8, ptr %i.t, i64 %i.aa
  %next.gep69 = getelementptr i8, ptr %.027.us.us, i64 %i.aa
  %next.gep70 = getelementptr i8, ptr %i.q, i64 %i.aa
  %wide.load71 = load <8 x i16>, ptr %next.gep70, align 2, !tbaa !51
  %i.ab = zext <8 x i16> %wide.load71 to <8 x i32>
  %i.ac = mul nuw nsw <8 x i32> %i.ab, splat (i32 3)
  %wide.load72 = load <8 x i16>, ptr %next.gep69, align 2, !tbaa !51
  %i.ad = zext <8 x i16> %wide.load72 to <8 x i32>
  %i.ae = add nuw nsw <8 x i32> %i.ad, splat (i32 1)
  %i.af = add nuw nsw <8 x i32> %i.ae, %i.ac
  %i.ag = lshr <8 x i32> %i.af, splat (i32 2)
  %i.ah = trunc nuw <8 x i32> %i.ag to <8 x i16>
  store <8 x i16> %i.ah, ptr %next.gep68, align 2, !tbaa !51
  %index.next73 = add nuw i64 %index67, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next73, %n.vec65
  br i1 %i.ai, label %middle.block74, label %vector.body66, !llvm.loop !101

middle.block74:                                   ; preds = %vector.body66
  br i1 %cmp.n75, label %._crit_edge.us.us, label %scalar.ph62.preheader

scalar.ph62.preheader:                            ; preds = %vector.memcheck57, %.preheader.us, %middle.block74
  %.02433.us.us.ph = phi i32 [ 0, %vector.memcheck57 ], [ 0, %.preheader.us ], [ %i.k, %middle.block74 ] ; 4 uses
  %.02632.us.us.ph = phi ptr [ %i.t, %vector.memcheck57 ], [ %i.t, %.preheader.us ], [ %i.x, %middle.block74 ] ; 3 uses
  %.12831.us.us.ph = phi ptr [ %.027.us.us, %vector.memcheck57 ], [ %.027.us.us, %.preheader.us ], [ %i.y, %middle.block74 ] ; 3 uses
  %.02930.us.us.ph = phi ptr [ %i.q, %vector.memcheck57 ], [ %i.q, %.preheader.us ], [ %i.z, %middle.block74 ] ; 3 uses
  %i.aj = sub i32 %i.f, %.02433.us.us.ph
  %xtraiter = and i32 %i.aj, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph62.prol.loopexit, label %scalar.ph62.prol

scalar.ph62.prol:                                 ; preds = %scalar.ph62.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %.02930.us.us.ph, i64 2
  %i.al = load i16, ptr %.02930.us.us.ph, align 2, !tbaa !51
  %i.am = zext i16 %i.al to i32
  %i.an = mul nuw nsw i32 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %.12831.us.us.ph, i64 2
  %i.ap = load i16, ptr %.12831.us.us.ph, align 2, !tbaa !51
  %i.aq = zext i16 %i.ap to i32
  %i.ar = add nuw nsw i32 %i.aq, 1
  %i.as = add nuw nsw i32 %i.ar, %i.an
  %i.at = lshr i32 %i.as, 2
  %i.au = trunc nuw i32 %i.at to i16
  %i.av = getelementptr inbounds nuw i8, ptr %.02632.us.us.ph, i64 2
  store i16 %i.au, ptr %.02632.us.us.ph, align 2, !tbaa !51
  %i.aw = add nuw i32 %.02433.us.us.ph, 1
  br label %scalar.ph62.prol.loopexit

scalar.ph62.prol.loopexit:                        ; preds = %scalar.ph62.prol, %scalar.ph62.preheader
  %.02433.us.us.unr = phi i32 [ %.02433.us.us.ph, %scalar.ph62.preheader ], [ %i.aw, %scalar.ph62.prol ]
  %.02632.us.us.unr = phi ptr [ %.02632.us.us.ph, %scalar.ph62.preheader ], [ %i.av, %scalar.ph62.prol ]
  %.12831.us.us.unr = phi ptr [ %.12831.us.us.ph, %scalar.ph62.preheader ], [ %i.ao, %scalar.ph62.prol ]
  %.02930.us.us.unr = phi ptr [ %.02930.us.us.ph, %scalar.ph62.preheader ], [ %i.ak, %scalar.ph62.prol ]
  %i.ax = icmp eq i32 %4, %.02433.us.us.ph
  br i1 %i.ax, label %._crit_edge.us.us, label %scalar.ph62

scalar.ph62:                                      ; preds = %scalar.ph62.prol.loopexit, %scalar.ph62
  %.02433.us.us = phi i32 [ %i.bw, %scalar.ph62 ], [ %.02433.us.us.unr, %scalar.ph62.prol.loopexit ]
  %.02632.us.us = phi ptr [ %i.bv, %scalar.ph62 ], [ %.02632.us.us.unr, %scalar.ph62.prol.loopexit ] ; 3 uses
  %.12831.us.us = phi ptr [ %i.bo, %scalar.ph62 ], [ %.12831.us.us.unr, %scalar.ph62.prol.loopexit ] ; 3 uses
  %.02930.us.us = phi ptr [ %i.bk, %scalar.ph62 ], [ %.02930.us.us.unr, %scalar.ph62.prol.loopexit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02930.us.us, i64 2
  %i.az = load i16, ptr %.02930.us.us, align 2, !tbaa !51
  %i.ba = zext i16 %i.az to i32
  %i.bb = mul nuw nsw i32 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %.12831.us.us, i64 2
  %i.bd = load i16, ptr %.12831.us.us, align 2, !tbaa !51
  %i.be = zext i16 %i.bd to i32
  %i.bf = add nuw nsw i32 %i.be, 1
  %i.bg = add nuw nsw i32 %i.bf, %i.bb
  %i.bh = lshr i32 %i.bg, 2
  %i.bi = trunc nuw i32 %i.bh to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %.02632.us.us, i64 2
  store i16 %i.bi, ptr %.02632.us.us, align 2, !tbaa !51
  %i.bk = getelementptr inbounds nuw i8, ptr %.02930.us.us, i64 4
  %i.bl = load i16, ptr %i.ay, align 2, !tbaa !51
  %i.bm = zext i16 %i.bl to i32
  %i.bn = mul nuw nsw i32 %i.bm, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %.12831.us.us, i64 4
  %i.bp = load i16, ptr %i.bc, align 2, !tbaa !51
  %i.bq = zext i16 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bq, 1
  %i.bs = add nuw nsw i32 %i.br, %i.bn
  %i.bt = lshr i32 %i.bs, 2
  %i.bu = trunc nuw i32 %i.bt to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %.02632.us.us, i64 4
  store i16 %i.bu, ptr %i.bj, align 2, !tbaa !51
  %i.bw = add nuw i32 %.02433.us.us, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.bw, %i.f
  br i1 %exitcond.not.1, label %._crit_edge.us.us, label %scalar.ph62, !llvm.loop !102

._crit_edge.us.us:                                ; preds = %scalar.ph62.prol.loopexit, %scalar.ph62, %middle.block74
  %.027.in.us.us.1 = getelementptr i8, ptr %i.p, i64 8
  %.027.us.us.1 = load ptr, ptr %.027.in.us.us.1, align 8, !tbaa !50 ; 5 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !50 ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge.us.us
  %i.ca = ptrtoaddr ptr %i.bz to i64              ; 2 uses
  %.027.us.us.149 = ptrtoaddr ptr %.027.us.us.1 to i64
  %i.cb = sub i64 %i.r, %i.ca
  %diff.check = icmp ugt i64 %i.cb, -16
  %i.cc = sub i64 %.027.us.us.149, %i.ca
  %diff.check50 = icmp ugt i64 %i.cc, -16
  %conflict.rdx = or i1 %diff.check, %diff.check50
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cd = getelementptr i8, ptr %i.bz, i64 %i.o
  %i.ce = getelementptr i8, ptr %.027.us.us.1, i64 %i.o
  %i.cf = getelementptr i8, ptr %i.q, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = shl i64 %index, 1                       ; 3 uses
  %next.gep = getelementptr i8, ptr %i.bz, i64 %i.cg
  %next.gep51 = getelementptr i8, ptr %.027.us.us.1, i64 %i.cg
  %next.gep52 = getelementptr i8, ptr %i.q, i64 %i.cg
  %wide.load = load <8 x i16>, ptr %next.gep52, align 2, !tbaa !51
  %i.ch = zext <8 x i16> %wide.load to <8 x i32>
  %i.ci = mul nuw nsw <8 x i32> %i.ch, splat (i32 3)
  %wide.load53 = load <8 x i16>, ptr %next.gep51, align 2, !tbaa !51
  %i.cj = zext <8 x i16> %wide.load53 to <8 x i32>
  %i.ck = add nuw nsw <8 x i32> %i.cj, splat (i32 2)
  %i.cl = add nuw nsw <8 x i32> %i.ck, %i.ci
  %i.cm = lshr <8 x i32> %i.cl, splat (i32 2)
  %i.cn = trunc nuw <8 x i32> %i.cm to <8 x i16>
  store <8 x i16> %i.cn, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.1, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %._crit_edge.us.us, %middle.block
  %.02433.us.us.1.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %._crit_edge.us.us ], [ %i.n, %middle.block ] ; 4 uses
  %.02632.us.us.1.ph = phi ptr [ %i.bz, %vector.memcheck ], [ %i.bz, %._crit_edge.us.us ], [ %i.cd, %middle.block ] ; 3 uses
  %.12831.us.us.1.ph = phi ptr [ %.027.us.us.1, %vector.memcheck ], [ %.027.us.us.1, %._crit_edge.us.us ], [ %i.ce, %middle.block ] ; 3 uses
  %.02930.us.us.1.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %._crit_edge.us.us ], [ %i.cf, %middle.block ] ; 3 uses
  %i.cp = sub i32 %i.f, %.02433.us.us.1.ph
  %xtraiter84 = and i32 %i.cp, 1
  %lcmp.mod85.not = icmp eq i32 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cq = getelementptr inbounds nuw i8, ptr %.02930.us.us.1.ph, i64 2
  %i.cr = load i16, ptr %.02930.us.us.1.ph, align 2, !tbaa !51
  %i.cs = zext i16 %i.cr to i32
  %i.ct = mul nuw nsw i32 %i.cs, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %.12831.us.us.1.ph, i64 2
  %i.cv = load i16, ptr %.12831.us.us.1.ph, align 2, !tbaa !51
  %i.cw = zext i16 %i.cv to i32
  %i.cx = add nuw nsw i32 %i.cw, 2
  %i.cy = add nuw nsw i32 %i.cx, %i.ct
  %i.cz = lshr i32 %i.cy, 2
  %i.da = trunc nuw i32 %i.cz to i16
  %i.db = getelementptr inbounds nuw i8, ptr %.02632.us.us.1.ph, i64 2
  store i16 %i.da, ptr %.02632.us.us.1.ph, align 2, !tbaa !51
  %i.dc = add nuw i32 %.02433.us.us.1.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.02433.us.us.1.unr = phi i32 [ %.02433.us.us.1.ph, %scalar.ph.preheader ], [ %i.dc, %scalar.ph.prol ]
  %.02632.us.us.1.unr = phi ptr [ %.02632.us.us.1.ph, %scalar.ph.preheader ], [ %i.db, %scalar.ph.prol ]
  %.12831.us.us.1.unr = phi ptr [ %.12831.us.us.1.ph, %scalar.ph.preheader ], [ %i.cu, %scalar.ph.prol ]
  %.02930.us.us.1.unr = phi ptr [ %.02930.us.us.1.ph, %scalar.ph.preheader ], [ %i.cq, %scalar.ph.prol ]
  %i.dd = icmp eq i32 %4, %.02433.us.us.1.ph
  br i1 %i.dd, label %._crit_edge.us.us.1, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.02433.us.us.1 = phi i32 [ %i.ec, %scalar.ph ], [ %.02433.us.us.1.unr, %scalar.ph.prol.loopexit ]
  %.02632.us.us.1 = phi ptr [ %i.eb, %scalar.ph ], [ %.02632.us.us.1.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.12831.us.us.1 = phi ptr [ %i.du, %scalar.ph ], [ %.12831.us.us.1.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.02930.us.us.1 = phi ptr [ %i.dq, %scalar.ph ], [ %.02930.us.us.1.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.02930.us.us.1, i64 2
  %i.df = load i16, ptr %.02930.us.us.1, align 2, !tbaa !51
  %i.dg = zext i16 %i.df to i32
  %i.dh = mul nuw nsw i32 %i.dg, 3
  %i.di = getelementptr inbounds nuw i8, ptr %.12831.us.us.1, i64 2
  %i.dj = load i16, ptr %.12831.us.us.1, align 2, !tbaa !51
  %i.dk = zext i16 %i.dj to i32
  %i.dl = add nuw nsw i32 %i.dk, 2
  %i.dm = add nuw nsw i32 %i.dl, %i.dh
  %i.dn = lshr i32 %i.dm, 2
  %i.do = trunc nuw i32 %i.dn to i16
  %i.dp = getelementptr inbounds nuw i8, ptr %.02632.us.us.1, i64 2
  store i16 %i.do, ptr %.02632.us.us.1, align 2, !tbaa !51
  %i.dq = getelementptr inbounds nuw i8, ptr %.02930.us.us.1, i64 4
  %i.dr = load i16, ptr %i.de, align 2, !tbaa !51
  %i.ds = zext i16 %i.dr to i32
  %i.dt = mul nuw nsw i32 %i.ds, 3
  %i.du = getelementptr inbounds nuw i8, ptr %.12831.us.us.1, i64 4
  %i.dv = load i16, ptr %i.di, align 2, !tbaa !51
  %i.dw = zext i16 %i.dv to i32
  %i.dx = add nuw nsw i32 %i.dw, 2
  %i.dy = add nuw nsw i32 %i.dx, %i.dt
  %i.dz = lshr i32 %i.dy, 2
  %i.ea = trunc nuw i32 %i.dz to i16
  %i.eb = getelementptr inbounds nuw i8, ptr %.02632.us.us.1, i64 4
  store i16 %i.ea, ptr %i.dp, align 2, !tbaa !51
  %i.ec = add nuw i32 %.02433.us.us.1, 2          ; 2 uses
  %exitcond.1.not.1 = icmp eq i32 %i.ec, %i.f
  br i1 %exitcond.1.not.1, label %._crit_edge.us.us.1, label %scalar.ph, !llvm.loop !104

._crit_edge.us.us.1:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv, 2
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count
  br i1 %exitcond47.not, label %._crit_edge, label %.preheader.us, !llvm.loop !105

._crit_edge:                                      ; preds = %._crit_edge.us.us.1, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v2_fancy_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !48     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge68

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.g = add i32 %i.f, -2                         ; 11 uses
  %.not53 = icmp eq i32 %i.g, 0
  %i.h = add nsw i32 %i.c, -1
  %i.i = lshr i32 %i.h, 1
  %i.j = add nuw nsw i32 %i.i, 1
  %wide.trip.count89 = zext nneg i32 %i.j to i64  ; 2 uses
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
  %min.iters.check124 = icmp ult i32 %i.g, 8
  %n.vec126 = and i64 %i.t, 4294967292            ; 5 uses
  %i.u = shl nuw nsw i64 %n.vec126, 2             ; 2 uses
  %i.v = trunc nuw i64 %n.vec126 to i32
  %i.w = sub i32 %i.g, %i.v
  %i.x = shl nuw nsw i64 %n.vec126, 1             ; 2 uses
  %cmp.n144 = icmp eq i64 %n.vec126, %i.t
  %i.y = zext i32 %i.g to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.g, 8
  %n.vec = and i64 %i.y, 4294967292               ; 5 uses
  %i.z = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.aa = trunc nuw i64 %n.vec to i32
  %i.ab = sub i32 %i.g, %i.aa
  %i.ac = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.y
  br label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %.preheader.us
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %.preheader.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %.preheader.us ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv84 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2 ; 2 uses
  %.049.in.us.us = getelementptr i8, ptr %i.ad, i64 -8
  %.049.us.us = load ptr, ptr %.049.in.us.us, align 8, !tbaa !50 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !50 ; 4 uses
  %i.ai = load i16, ptr %i.ae, align 2, !tbaa !51
  %i.aj = zext i16 %i.ai to i64
  %i.ak = mul nuw nsw i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %.049.us.us, i64 2
  %i.am = load i16, ptr %.049.us.us, align 2, !tbaa !51
  %i.an = zext i16 %i.am to i64
  %i.ao = add nuw nsw i64 %i.ak, %i.an            ; 3 uses
  %i.ap = load i16, ptr %i.af, align 2, !tbaa !51
  %i.aq = zext i16 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, 3
  %i.as = load i16, ptr %i.al, align 2, !tbaa !51
  %i.at = zext i16 %i.as to i64
  %i.au = add nuw nsw i64 %i.ar, %i.at            ; 3 uses
  %i.av = shl nuw nsw i64 %i.ao, 2
  %i.aw = add nuw nsw i64 %i.av, 8
  %i.ax = lshr i64 %i.aw, 4
  %i.ay = trunc nuw i64 %i.ax to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i16 %i.ay, ptr %i.ah, align 2, !tbaa !51
  %i.ba = mul nuw nsw i64 %i.ao, 3
  %i.bb = add nuw nsw i64 %i.ba, 7
  %i.bc = add nuw nsw i64 %i.bb, %i.au
  %i.bd = lshr i64 %i.bc, 4
  %i.be = trunc nuw i64 %i.bd to i16
  store i16 %i.be, ptr %i.az, align 2, !tbaa !51
  %.04852.us.us = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.bf = mul nuw nsw i64 %i.au, 3
  %i.bg = add nuw nsw i64 %i.ao, 8
  %i.bh = add nuw nsw i64 %i.bg, %i.bf
  %i.bi = lshr i64 %i.bh, 4
  %i.bj = trunc nuw i64 %i.bi to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  store i16 %i.bj, ptr %.04852.us.us, align 2, !tbaa !51
  %i.bl = shl nuw nsw i64 %i.au, 2
  %i.bm = add nuw nsw i64 %i.bl, 4
  %i.bn = lshr i64 %i.bm, 4
  %i.bo = trunc nuw i64 %i.bn to i16
  store i16 %i.bo, ptr %i.bk, align 2, !tbaa !51
  %.049.in.us.us.1 = getelementptr i8, ptr %i.ad, i64 8
  %.049.us.us.1 = load ptr, ptr %.049.in.us.us.1, align 8, !tbaa !50 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv82
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !50 ; 4 uses
  %i.bs = load i16, ptr %i.ae, align 2, !tbaa !51
  %i.bt = zext i16 %i.bs to i64
  %i.bu = mul nuw nsw i64 %i.bt, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %.049.us.us.1, i64 2
  %i.bw = load i16, ptr %.049.us.us.1, align 2, !tbaa !51
  %i.bx = zext i16 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bu, %i.bx            ; 3 uses
  %i.bz = load i16, ptr %i.af, align 2, !tbaa !51
  %i.ca = zext i16 %i.bz to i64
  %i.cb = mul nuw nsw i64 %i.ca, 3
  %i.cc = load i16, ptr %i.bv, align 2, !tbaa !51
  %i.cd = zext i16 %i.cc to i64
  %i.ce = add nuw nsw i64 %i.cb, %i.cd            ; 3 uses
  %i.cf = shl nuw nsw i64 %i.by, 2
  %i.cg = add nuw nsw i64 %i.cf, 8
  %i.ch = lshr i64 %i.cg, 4
  %i.ci = trunc nuw i64 %i.ch to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i16 %i.ci, ptr %i.br, align 2, !tbaa !51
  %i.ck = mul nuw nsw i64 %i.by, 3
  %i.cl = add nuw nsw i64 %i.ck, 7
  %i.cm = add nuw nsw i64 %i.cl, %i.ce
  %i.cn = lshr i64 %i.cm, 4
  %i.co = trunc nuw i64 %i.cn to i16
  store i16 %i.co, ptr %i.cj, align 2, !tbaa !51
  %.04852.us.us.1 = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.cp = mul nuw nsw i64 %i.ce, 3
  %i.cq = add nuw nsw i64 %i.by, 8
  %i.cr = add nuw nsw i64 %i.cq, %i.cp
  %i.cs = lshr i64 %i.cr, 4
  %i.ct = trunc nuw i64 %i.cs to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  store i16 %i.ct, ptr %.04852.us.us.1, align 2, !tbaa !51
  %i.cv = shl nuw nsw i64 %i.ce, 2
  %i.cw = add nuw nsw i64 %i.cv, 4
  %i.cx = lshr i64 %i.cw, 4
  %i.cy = trunc nuw i64 %i.cx to i16
  store i16 %i.cy, ptr %i.cu, align 2, !tbaa !51
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 2
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count89
  br i1 %exitcond90.not, label %._crit_edge68, label %.preheader.us, !llvm.loop !106

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.1
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %._crit_edge.1 ], [ 0, %.preheader.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next73, %._crit_edge.1 ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv74 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !50 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.da, i64 4      ; 10 uses
  %.049.in = getelementptr i8, ptr %i.cz, i64 -8
  %.049 = load ptr, ptr %.049.in, align 8, !tbaa !50 ; 4 uses
end_hunk_0
