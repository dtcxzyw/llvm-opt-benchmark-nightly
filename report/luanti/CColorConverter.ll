inline.NumInlined: 21
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN5video15CColorConverter26convert_A8R8G8B8toA1R5G5B5EPKviPv:bb.a
.lr.ph.preheader14:                               ; preds = %.lr.ph.preheader, %middle.block
  %.010.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.c, %middle.block ]
  %.069.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.078.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader14, %.lr.ph
  %.010 = phi i32 [ %i.al, %.lr.ph ], [ %.010.ph, %.lr.ph.preheader14 ]
  %.069 = phi ptr [ %i.ak, %.lr.ph ], [ %.069.ph, %.lr.ph.preheader14 ] ; 2 uses
  %.078 = phi ptr [ %i.w, %.lr.ph ], [ %.078.ph, %.lr.ph.preheader14 ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.078, i64 4
  %i.x = load i32, ptr %.078, align 4, !tbaa !15  ; 4 uses
  %i.y = lshr i32 %i.x, 16
  %i.z = and i32 %i.y, 32768
  %i.aa = lshr i32 %i.x, 9
  %i.ab = and i32 %i.aa, 31744
  %i.ac = or disjoint i32 %i.z, %i.ab
  %i.ad = lshr i32 %i.x, 6
  %i.ae = and i32 %i.ad, 992
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = lshr i32 %i.x, 3
  %i.ah = and i32 %i.ag, 31
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = trunc nuw i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %.069, i64 2
  store i16 %i.aj, ptr %.069, align 2, !tbaa !33
  %i.al = add nuw nsw i32 %.010, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.al, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !53
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5video15CColorConverter26convert_A8R8G8B8toA1B5G5R5EPKviPv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader31, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = add nsw i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = shl nuw nsw i64 %i.d, 1
  %i.f = getelementptr i8, ptr %2, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.f, i64 2
  %i.g = shl nuw nsw i64 %i.d, 2
  %i.h = getelementptr i8, ptr %0, i64 %i.g
  %scevgep20 = getelementptr i8, ptr %i.h, i64 4
  %bound0 = icmp ult ptr %2, %scevgep20
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader31, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483640               ; 5 uses
  %i.i = shl nuw nsw i64 %n.vec, 2
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = shl nuw nsw i64 %n.vec, 1
  %i.l = getelementptr i8, ptr %2, i64 %i.k
  %i.m = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = shl i64 %index, 2                        ; 8 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.n  ; 4 uses
  %i.o = getelementptr i8, ptr %0, i64 %i.n       ; 4 uses
  %next.gep21 = getelementptr i8, ptr %i.o, i64 4
  %i.p = getelementptr i8, ptr %0, i64 %i.n       ; 4 uses
  %next.gep22 = getelementptr i8, ptr %i.p, i64 8
  %i.q = getelementptr i8, ptr %0, i64 %i.n       ; 4 uses
  %next.gep23 = getelementptr i8, ptr %i.q, i64 12
  %i.r = getelementptr i8, ptr %0, i64 %i.n       ; 4 uses
  %next.gep24 = getelementptr i8, ptr %i.r, i64 16
  %i.s = getelementptr i8, ptr %0, i64 %i.n       ; 4 uses
  %next.gep25 = getelementptr i8, ptr %i.s, i64 20
  %i.t = getelementptr i8, ptr %0, i64 %i.n       ; 4 uses
  %next.gep26 = getelementptr i8, ptr %i.t, i64 24
  %i.u = getelementptr i8, ptr %0, i64 %i.n       ; 4 uses
  %next.gep27 = getelementptr i8, ptr %i.u, i64 28
  %i.v = shl i64 %index, 1
  %next.gep28 = getelementptr i8, ptr %2, i64 %i.v
  %i.w = load i8, ptr %next.gep, align 1, !tbaa !8, !alias.scope !54
  %i.x = load i8, ptr %next.gep21, align 1, !tbaa !8, !alias.scope !54
  %i.y = load i8, ptr %next.gep22, align 1, !tbaa !8, !alias.scope !54
  %i.z = load i8, ptr %next.gep23, align 1, !tbaa !8, !alias.scope !54
  %i.aa = load i8, ptr %next.gep24, align 1, !tbaa !8, !alias.scope !54
  %i.ab = load i8, ptr %next.gep25, align 1, !tbaa !8, !alias.scope !54
  %i.ac = load i8, ptr %next.gep26, align 1, !tbaa !8, !alias.scope !54
  %i.ad = load i8, ptr %next.gep27, align 1, !tbaa !8, !alias.scope !54
  %i.ae = insertelement <8 x i8> poison, i8 %i.w, i64 0
  %i.af = insertelement <8 x i8> %i.ae, i8 %i.x, i64 1
  %i.ag = insertelement <8 x i8> %i.af, i8 %i.y, i64 2
  %i.ah = insertelement <8 x i8> %i.ag, i8 %i.z, i64 3
  %i.ai = insertelement <8 x i8> %i.ah, i8 %i.aa, i64 4
  %i.aj = insertelement <8 x i8> %i.ai, i8 %i.ab, i64 5
  %i.ak = insertelement <8 x i8> %i.aj, i8 %i.ac, i64 6
  %i.al = insertelement <8 x i8> %i.ak, i8 %i.ad, i64 7
  %i.am = lshr <8 x i8> %i.al, splat (i8 3)
  %i.an = zext nneg <8 x i8> %i.am to <8 x i16>
  %i.ao = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.ap = getelementptr i8, ptr %i.o, i64 5
  %i.aq = getelementptr i8, ptr %i.p, i64 9
  %i.ar = getelementptr i8, ptr %i.q, i64 13
  %i.as = getelementptr i8, ptr %i.r, i64 17
  %i.at = getelementptr i8, ptr %i.s, i64 21
  %i.au = getelementptr i8, ptr %i.t, i64 25
  %i.av = getelementptr i8, ptr %i.u, i64 29
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !8, !alias.scope !54
  %i.ax = load i8, ptr %i.ap, align 1, !tbaa !8, !alias.scope !54
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !8, !alias.scope !54
  %i.az = load i8, ptr %i.ar, align 1, !tbaa !8, !alias.scope !54
  %i.ba = load i8, ptr %i.as, align 1, !tbaa !8, !alias.scope !54
  %i.bb = load i8, ptr %i.at, align 1, !tbaa !8, !alias.scope !54
  %i.bc = load i8, ptr %i.au, align 1, !tbaa !8, !alias.scope !54
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !8, !alias.scope !54
  %i.be = insertelement <8 x i8> poison, i8 %i.aw, i64 0
  %i.bf = insertelement <8 x i8> %i.be, i8 %i.ax, i64 1
  %i.bg = insertelement <8 x i8> %i.bf, i8 %i.ay, i64 2
  %i.bh = insertelement <8 x i8> %i.bg, i8 %i.az, i64 3
  %i.bi = insertelement <8 x i8> %i.bh, i8 %i.ba, i64 4
  %i.bj = insertelement <8 x i8> %i.bi, i8 %i.bb, i64 5
  %i.bk = insertelement <8 x i8> %i.bj, i8 %i.bc, i64 6
  %i.bl = insertelement <8 x i8> %i.bk, i8 %i.bd, i64 7
  %i.bm = lshr <8 x i8> %i.bl, splat (i8 3)
  %i.bn = zext nneg <8 x i8> %i.bm to <8 x i16>
  %i.bo = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.bp = getelementptr i8, ptr %i.o, i64 6
  %i.bq = getelementptr i8, ptr %i.p, i64 10
  %i.br = getelementptr i8, ptr %i.q, i64 14
  %i.bs = getelementptr i8, ptr %i.r, i64 18
  %i.bt = getelementptr i8, ptr %i.s, i64 22
  %i.bu = getelementptr i8, ptr %i.t, i64 26
  %i.bv = getelementptr i8, ptr %i.u, i64 30
  %i.bw = load i8, ptr %i.bo, align 1, !tbaa !8, !alias.scope !54
  %i.bx = load i8, ptr %i.bp, align 1, !tbaa !8, !alias.scope !54
  %i.by = load i8, ptr %i.bq, align 1, !tbaa !8, !alias.scope !54
  %i.bz = load i8, ptr %i.br, align 1, !tbaa !8, !alias.scope !54
  %i.ca = load i8, ptr %i.bs, align 1, !tbaa !8, !alias.scope !54
  %i.cb = load i8, ptr %i.bt, align 1, !tbaa !8, !alias.scope !54
  %i.cc = load i8, ptr %i.bu, align 1, !tbaa !8, !alias.scope !54
  %i.cd = load i8, ptr %i.bv, align 1, !tbaa !8, !alias.scope !54
  %i.ce = insertelement <8 x i8> poison, i8 %i.bw, i64 0
  %i.cf = insertelement <8 x i8> %i.ce, i8 %i.bx, i64 1
  %i.cg = insertelement <8 x i8> %i.cf, i8 %i.by, i64 2
  %i.ch = insertelement <8 x i8> %i.cg, i8 %i.bz, i64 3
  %i.ci = insertelement <8 x i8> %i.ch, i8 %i.ca, i64 4
  %i.cj = insertelement <8 x i8> %i.ci, i8 %i.cb, i64 5
  %i.ck = insertelement <8 x i8> %i.cj, i8 %i.cc, i64 6
  %i.cl = insertelement <8 x i8> %i.ck, i8 %i.cd, i64 7
  %i.cm = lshr <8 x i8> %i.cl, splat (i8 3)
  %i.cn = zext nneg <8 x i8> %i.cm to <8 x i16>
  %i.co = getelementptr inbounds nuw i8, ptr %next.gep, i64 3
  %i.cp = getelementptr i8, ptr %i.o, i64 7
  %i.cq = getelementptr i8, ptr %i.p, i64 11
  %i.cr = getelementptr i8, ptr %i.q, i64 15
  %i.cs = getelementptr i8, ptr %i.r, i64 19
  %i.ct = getelementptr i8, ptr %i.s, i64 23
  %i.cu = getelementptr i8, ptr %i.t, i64 27
  %i.cv = getelementptr i8, ptr %i.u, i64 31
  %i.cw = load i8, ptr %i.co, align 1, !tbaa !8, !alias.scope !54
  %i.cx = load i8, ptr %i.cp, align 1, !tbaa !8, !alias.scope !54
  %i.cy = load i8, ptr %i.cq, align 1, !tbaa !8, !alias.scope !54
  %i.cz = load i8, ptr %i.cr, align 1, !tbaa !8, !alias.scope !54
  %i.da = load i8, ptr %i.cs, align 1, !tbaa !8, !alias.scope !54
  %i.db = load i8, ptr %i.ct, align 1, !tbaa !8, !alias.scope !54
  %i.dc = load i8, ptr %i.cu, align 1, !tbaa !8, !alias.scope !54
  %i.dd = load i8, ptr %i.cv, align 1, !tbaa !8, !alias.scope !54
  %i.de = insertelement <8 x i8> poison, i8 %i.cw, i64 0
  %i.df = insertelement <8 x i8> %i.de, i8 %i.cx, i64 1
  %i.dg = insertelement <8 x i8> %i.df, i8 %i.cy, i64 2
  %i.dh = insertelement <8 x i8> %i.dg, i8 %i.cz, i64 3
  %i.di = insertelement <8 x i8> %i.dh, i8 %i.da, i64 4
  %i.dj = insertelement <8 x i8> %i.di, i8 %i.db, i64 5
  %i.dk = insertelement <8 x i8> %i.dj, i8 %i.dc, i64 6
  %i.dl = insertelement <8 x i8> %i.dk, i8 %i.dd, i64 7
  %i.dm = lshr <8 x i8> %i.dl, splat (i8 3)
  %i.dn = zext nneg <8 x i8> %i.dm to <8 x i16>
  %i.do = shl <8 x i16> %i.dn, splat (i16 15)
  %i.dp = shl nuw nsw <8 x i16> %i.an, splat (i16 10)
  %i.dq = or disjoint <8 x i16> %i.do, %i.dp
  %i.dr = shl nuw nsw <8 x i16> %i.bn, splat (i16 5)
  %i.ds = or disjoint <8 x i16> %i.dq, %i.dr
  %i.dt = or disjoint <8 x i16> %i.ds, %i.cn
  store <8 x i16> %i.dt, ptr %next.gep28, align 2, !tbaa !33, !alias.scope !57, !noalias !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader31

.lr.ph.preheader31:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.019.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.j, %middle.block ] ; 3 uses
  %.01518.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.l, %middle.block ] ; 3 uses
  %.01617.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.m, %middle.block ] ; 4 uses
  %3 = sub i32 %1, %.01617.ph
  %.neg = add i32 %.01617.ph, 1
  %xtraiter = and i32 %3, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader31
  %4 = load <4 x i8>, ptr %.019.ph, align 1, !tbaa !8
  %5 = lshr <4 x i8> %4, splat (i8 3)
  %6 = zext nneg <4 x i8> %5 to <4 x i16>
  %7 = shl <4 x i16> %6, <i16 10, i16 5, i16 0, i16 15>
  %8 = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %7)
  store i16 %8, ptr %.01518.ph, align 2, !tbaa !33
  %9 = getelementptr inbounds nuw i8, ptr %.019.ph, i64 4
  %10 = getelementptr inbounds nuw i8, ptr %.01518.ph, i64 2
  %11 = add nuw nsw i32 %.01617.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader31
  %.019.unr = phi ptr [ %.019.ph, %.lr.ph.preheader31 ], [ %9, %.lr.ph.prol ]
  %.01518.unr = phi ptr [ %.01518.ph, %.lr.ph.preheader31 ], [ %10, %.lr.ph.prol ]
  %.01617.unr = phi i32 [ %.01617.ph, %.lr.ph.preheader31 ], [ %11, %.lr.ph.prol ]
  %12 = icmp eq i32 %1, %.neg
  br i1 %12, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.019 = phi ptr [ %i.ea, %.lr.ph ], [ %.019.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.01518 = phi ptr [ %i.eb, %.lr.ph ], [ %.01518.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.01617 = phi i32 [ %i.ec, %.lr.ph ], [ %.01617.unr, %.lr.ph.prol.loopexit ]
  %13 = load <4 x i8>, ptr %.019, align 1, !tbaa !8
  %14 = lshr <4 x i8> %13, splat (i8 3)
  %15 = zext nneg <4 x i8> %14 to <4 x i16>
  %16 = shl <4 x i16> %15, <i16 10, i16 5, i16 0, i16 15>
  %17 = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %16)
  store i16 %17, ptr %.01518, align 2, !tbaa !33
  %18 = getelementptr inbounds nuw i8, ptr %.019, i64 4
  %19 = getelementptr inbounds nuw i8, ptr %.01518, i64 2
  %i.dv = load <4 x i8>, ptr %18, align 1, !tbaa !8
  %i.dw = lshr <4 x i8> %i.dv, splat (i8 3)
  %i.dx = zext nneg <4 x i8> %i.dw to <4 x i16>
  %i.dy = shl <4 x i16> %i.dx, <i16 10, i16 5, i16 0, i16 15>
  %i.dz = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.dy)
  store i16 %i.dz, ptr %19, align 2, !tbaa !33
  %i.ea = getelementptr inbounds nuw i8, ptr %.019, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %.01518, i64 4
  %i.ec = add nuw nsw i32 %.01617, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ec, %1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5video15CColorConverter24convert_A8R8G8B8toR5G6B5EPKviPv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %1, 9
  br i1 %min.iters.check, label %.lr.ph.preheader29, label %vector.memcheck

.lr.ph.preheader29:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.017.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.m, %vector.body ]
  %.01316.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.o, %vector.body ]
  %.01415.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.p, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = add nsw i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = shl nuw nsw i64 %i.d, 1
  %i.f = getelementptr i8, ptr %2, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.f, i64 2
  %i.g = shl nuw nsw i64 %i.d, 2
  %i.h = getelementptr i8, ptr %0, i64 %i.g
  %scevgep18 = getelementptr i8, ptr %i.h, i64 3
  %bound0 = icmp ult ptr %2, %scevgep18
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader29, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.i = and i64 %i.b, 7                          ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, i64 8, i64 %i.i
  %n.vec = sub nsw i64 %i.b, %i.k                 ; 4 uses
  %i.l = shl nsw i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %i.n = shl nsw i64 %n.vec, 1
  %i.o = getelementptr i8, ptr %2, i64 %i.n
  %i.p = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = shl i64 %index, 2                        ; 8 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.q  ; 3 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.q       ; 3 uses
  %next.gep19 = getelementptr i8, ptr %i.r, i64 4
  %i.s = getelementptr i8, ptr %0, i64 %i.q       ; 3 uses
  %next.gep20 = getelementptr i8, ptr %i.s, i64 8
  %i.t = getelementptr i8, ptr %0, i64 %i.q       ; 3 uses
  %next.gep21 = getelementptr i8, ptr %i.t, i64 12
  %i.u = getelementptr i8, ptr %0, i64 %i.q       ; 3 uses
  %next.gep22 = getelementptr i8, ptr %i.u, i64 16
  %i.v = getelementptr i8, ptr %0, i64 %i.q       ; 3 uses
  %next.gep23 = getelementptr i8, ptr %i.v, i64 20
  %i.w = getelementptr i8, ptr %0, i64 %i.q       ; 3 uses
  %next.gep24 = getelementptr i8, ptr %i.w, i64 24
  %i.x = getelementptr i8, ptr %0, i64 %i.q       ; 3 uses
  %next.gep25 = getelementptr i8, ptr %i.x, i64 28
  %i.y = shl i64 %index, 1
  %next.gep26 = getelementptr i8, ptr %2, i64 %i.y
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.aa = getelementptr i8, ptr %i.r, i64 6
  %i.ab = getelementptr i8, ptr %i.s, i64 10
  %i.ac = getelementptr i8, ptr %i.t, i64 14
  %i.ad = getelementptr i8, ptr %i.u, i64 18
  %i.ae = getelementptr i8, ptr %i.v, i64 22
  %i.af = getelementptr i8, ptr %i.w, i64 26
  %i.ag = getelementptr i8, ptr %i.x, i64 30
  %i.ah = load i8, ptr %i.z, align 1, !tbaa !8, !alias.scope !61
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !8, !alias.scope !61
  %i.aj = load i8, ptr %i.ab, align 1, !tbaa !8, !alias.scope !61
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !8, !alias.scope !61
  %i.al = load i8, ptr %i.ad, align 1, !tbaa !8, !alias.scope !61
  %i.am = load i8, ptr %i.ae, align 1, !tbaa !8, !alias.scope !61
  %i.an = load i8, ptr %i.af, align 1, !tbaa !8, !alias.scope !61
  %i.ao = load i8, ptr %i.ag, align 1, !tbaa !8, !alias.scope !61
  %i.ap = insertelement <8 x i8> poison, i8 %i.ah, i64 0
  %i.aq = insertelement <8 x i8> %i.ap, i8 %i.ai, i64 1
  %i.ar = insertelement <8 x i8> %i.aq, i8 %i.aj, i64 2
  %i.as = insertelement <8 x i8> %i.ar, i8 %i.ak, i64 3
  %i.at = insertelement <8 x i8> %i.as, i8 %i.al, i64 4
  %i.au = insertelement <8 x i8> %i.at, i8 %i.am, i64 5
  %i.av = insertelement <8 x i8> %i.au, i8 %i.an, i64 6
  %i.aw = insertelement <8 x i8> %i.av, i8 %i.ao, i64 7
  %i.ax = lshr <8 x i8> %i.aw, splat (i8 3)
  %i.ay = zext nneg <8 x i8> %i.ax to <8 x i16>
  %i.az = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.ba = getelementptr i8, ptr %i.r, i64 5
  %i.bb = getelementptr i8, ptr %i.s, i64 9
  %i.bc = getelementptr i8, ptr %i.t, i64 13
  %i.bd = getelementptr i8, ptr %i.u, i64 17
  %i.be = getelementptr i8, ptr %i.v, i64 21
  %i.bf = getelementptr i8, ptr %i.w, i64 25
  %i.bg = getelementptr i8, ptr %i.x, i64 29
  %i.bh = load i8, ptr %i.az, align 1, !tbaa !8, !alias.scope !61
  %i.bi = load i8, ptr %i.ba, align 1, !tbaa !8, !alias.scope !61
  %i.bj = load i8, ptr %i.bb, align 1, !tbaa !8, !alias.scope !61
  %i.bk = load i8, ptr %i.bc, align 1, !tbaa !8, !alias.scope !61
  %i.bl = load i8, ptr %i.bd, align 1, !tbaa !8, !alias.scope !61
  %i.bm = load i8, ptr %i.be, align 1, !tbaa !8, !alias.scope !61
  %i.bn = load i8, ptr %i.bf, align 1, !tbaa !8, !alias.scope !61
  %i.bo = load i8, ptr %i.bg, align 1, !tbaa !8, !alias.scope !61
  %i.bp = insertelement <8 x i8> poison, i8 %i.bh, i64 0
  %i.bq = insertelement <8 x i8> %i.bp, i8 %i.bi, i64 1
  %i.br = insertelement <8 x i8> %i.bq, i8 %i.bj, i64 2
  %i.bs = insertelement <8 x i8> %i.br, i8 %i.bk, i64 3
  %i.bt = insertelement <8 x i8> %i.bs, i8 %i.bl, i64 4
  %i.bu = insertelement <8 x i8> %i.bt, i8 %i.bm, i64 5
  %i.bv = insertelement <8 x i8> %i.bu, i8 %i.bn, i64 6
  %i.bw = insertelement <8 x i8> %i.bv, i8 %i.bo, i64 7
  %i.bx = lshr <8 x i8> %i.bw, splat (i8 2)
  %i.by = zext nneg <8 x i8> %i.bx to <8 x i16>
  %i.bz = load i8, ptr %next.gep, align 1, !tbaa !8, !alias.scope !61
  %i.ca = load i8, ptr %next.gep19, align 1, !tbaa !8, !alias.scope !61
  %i.cb = load i8, ptr %next.gep20, align 1, !tbaa !8, !alias.scope !61
  %i.cc = load i8, ptr %next.gep21, align 1, !tbaa !8, !alias.scope !61
  %i.cd = load i8, ptr %next.gep22, align 1, !tbaa !8, !alias.scope !61
  %i.ce = load i8, ptr %next.gep23, align 1, !tbaa !8, !alias.scope !61
  %i.cf = load i8, ptr %next.gep24, align 1, !tbaa !8, !alias.scope !61
  %i.cg = load i8, ptr %next.gep25, align 1, !tbaa !8, !alias.scope !61
  %i.ch = insertelement <8 x i8> poison, i8 %i.bz, i64 0
  %i.ci = insertelement <8 x i8> %i.ch, i8 %i.ca, i64 1
  %i.cj = insertelement <8 x i8> %i.ci, i8 %i.cb, i64 2
  %i.ck = insertelement <8 x i8> %i.cj, i8 %i.cc, i64 3
  %i.cl = insertelement <8 x i8> %i.ck, i8 %i.cd, i64 4
  %i.cm = insertelement <8 x i8> %i.cl, i8 %i.ce, i64 5
  %i.cn = insertelement <8 x i8> %i.cm, i8 %i.cf, i64 6
  %i.co = insertelement <8 x i8> %i.cn, i8 %i.cg, i64 7
  %i.cp = lshr <8 x i8> %i.co, splat (i8 3)
  %i.cq = zext nneg <8 x i8> %i.cp to <8 x i16>
  %i.cr = shl nuw <8 x i16> %i.ay, splat (i16 11)
  %i.cs = shl nuw nsw <8 x i16> %i.by, splat (i16 5)
  %i.ct = or disjoint <8 x i16> %i.cs, %i.cr
  %i.cu = or disjoint <8 x i16> %i.ct, %i.cq
  store <8 x i16> %i.cu, ptr %next.gep26, align 2, !tbaa !33, !alias.scope !64, !noalias !61
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %.lr.ph.preheader29, label %vector.body, !llvm.loop !66

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader29, %.lr.ph
  %.017 = phi ptr [ %i.dl, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader29 ] ; 4 uses
  %.01316 = phi ptr [ %i.dm, %.lr.ph ], [ %.01316.ph, %.lr.ph.preheader29 ] ; 2 uses
  %.01415 = phi i32 [ %i.dn, %.lr.ph ], [ %.01415.ph, %.lr.ph.preheader29 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.017, i64 2
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !8
  %i.cy = lshr i8 %i.cx, 3
  %i.cz = zext nneg i8 %i.cy to i16
  %i.da = getelementptr inbounds nuw i8, ptr %.017, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !8
  %i.dc = lshr i8 %i.db, 2
  %i.dd = zext nneg i8 %i.dc to i16
  %i.de = load i8, ptr %.017, align 1, !tbaa !8
  %i.df = lshr i8 %i.de, 3
  %i.dg = zext nneg i8 %i.df to i16
  %i.dh = shl nuw i16 %i.cz, 11
  %i.di = shl nuw nsw i16 %i.dd, 5
  %i.dj = or disjoint i16 %i.di, %i.dh
  %i.dk = or disjoint i16 %i.dj, %i.dg
  store i16 %i.dk, ptr %.01316, align 2, !tbaa !33
  %i.dl = getelementptr inbounds nuw i8, ptr %.017, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %.01316, i64 2
  %i.dn = add nuw nsw i32 %.01415, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.dn, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5video15CColorConverter24convert_A8R8G8B8toR3G3B2EPKviPv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64                  ; 4 uses
  %min.iters.check = icmp ult i32 %1, 9
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.c = add nsw i32 %1, -1
  %i.d = zext i32 %i.c to i64
  %i.e = zext nneg i32 %1 to i64
  %scevgep = getelementptr i8, ptr %2, i64 %i.e
  %i.f = shl nuw nsw i64 %i.d, 2
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep18 = getelementptr i8, ptr %i.g, i64 3
  %bound0 = icmp ult ptr %2, %scevgep18
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

end_hunk_0
