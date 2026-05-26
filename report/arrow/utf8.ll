inline.NumInlined: 486
inline.NumDeleted: 221
begin_hunk_0_@_ZN5arrow4util8internalL20InitializeLargeTableEv:.preheader
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv.6, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.next.6
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !9
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 328
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !9
  %i.dx = udiv i8 %i.dw, 12
  %i.dy = zext nneg i8 %i.dx to i16
  %i.dz = shl nuw nsw i16 %i.dy, 8
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.next.6
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 3072
  store i16 %i.dz, ptr %i.eb, align 2, !tbaa !10
  %indvars.iv.next.6.1 = add nuw nsw i64 %indvars.iv.6, 2 ; 2 uses
  %exitcond.6.not.1 = icmp eq i64 %indvars.iv.next.6.1, 256
  br i1 %exitcond.6.not.1, label %.preheader.7, label %.preheader.6, !llvm.loop !12

.preheader.7:                                     ; preds = %.preheader.6, %.preheader.7
  %indvars.iv.7 = phi i64 [ %indvars.iv.next.7.1, %.preheader.7 ], [ 0, %.preheader.6 ] ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.7
  %i.ed = load i8, ptr %i.ec, align 2, !tbaa !9
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 340
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !9
  %i.ei = udiv i8 %i.eh, 12
  %i.ej = zext nneg i8 %i.ei to i16
  %i.ek = shl nuw nsw i16 %i.ej, 8
  %i.el = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.7
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 3584
  store i16 %i.ek, ptr %i.em, align 4, !tbaa !10
  %indvars.iv.next.7 = or disjoint i64 %indvars.iv.7, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.next.7
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !9
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 340
  %i.es = load i8, ptr %i.er, align 1, !tbaa !9
  %i.et = udiv i8 %i.es, 12
  %i.eu = zext nneg i8 %i.et to i16
  %i.ev = shl nuw nsw i16 %i.eu, 8
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.next.7
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 3584
  store i16 %i.ev, ptr %i.ex, align 2, !tbaa !10
  %indvars.iv.next.7.1 = add nuw nsw i64 %indvars.iv.7, 2 ; 2 uses
  %exitcond.7.not.1 = icmp eq i64 %indvars.iv.next.7.1, 256
  br i1 %exitcond.7.not.1, label %.preheader.8, label %.preheader.7, !llvm.loop !12

.preheader.8:                                     ; preds = %.preheader.7, %.preheader.8
  %indvars.iv.8 = phi i64 [ %indvars.iv.next.8.1, %.preheader.8 ], [ 0, %.preheader.7 ] ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.8
  %i.ez = load i8, ptr %i.ey, align 2, !tbaa !9
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 352
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !9
  %i.fe = udiv i8 %i.fd, 12
  %i.ff = zext nneg i8 %i.fe to i16
  %i.fg = shl nuw nsw i16 %i.ff, 8
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4096
  store i16 %i.fg, ptr %i.fi, align 4, !tbaa !10
  %indvars.iv.next.8 = or disjoint i64 %indvars.iv.8, 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv.next.8
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !9
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 352
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !9
  %i.fp = udiv i8 %i.fo, 12
  %i.fq = zext nneg i8 %i.fp to i16
  %i.fr = shl nuw nsw i16 %i.fq, 8
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv.next.8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4096
  store i16 %i.fr, ptr %i.ft, align 2, !tbaa !10
  %indvars.iv.next.8.1 = add nuw nsw i64 %indvars.iv.8, 2 ; 2 uses
  %exitcond.8.not.1 = icmp eq i64 %indvars.iv.next.8.1, 256
  br i1 %exitcond.8.not.1, label %bb.a, label %.preheader.8, !llvm.loop !12

bb.a:                                             ; preds = %.preheader.8
  ret void

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %indvars.iv
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !9
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr @_ZN5arrow4util8internal16utf8_small_tableE, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 256
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !9
  %i.ga = udiv i8 %i.fz, 12
  %i.gb = zext nneg i8 %i.ga to i16
  %i.gc = shl nuw nsw i16 %i.gb, 8
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %indvars.iv
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %.preheader.1, label %bb.b, !llvm.loop !12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5arrow4util12ValidateUTF8EPKhl(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN5arrow4utilL18ValidateUTF8InlineEPKhl(ptr noundef %0, i64 noundef %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN5arrow4utilL18ValidateUTF8InlineEPKhl(ptr noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i64 %1, 7
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %select.unfold
  %.07999 = phi ptr [ %.281, %select.unfold ], [ %0, %bb.a ] ; 6 uses
  %.08298 = phi i64 [ %.284, %select.unfold ], [ %1, %bb.a ] ; 5 uses
  %i.b = load i64, ptr %.07999, align 1           ; 9 uses
  %i.c = and i64 %i.b, -9187201950435737472
  %i.d = icmp eq i64 %i.c, 0
  %i.e = lshr i64 %i.b, 40
  %i.f = lshr i64 %i.b, 48
  %i.g = lshr i64 %i.b, 56
  br i1 %i.d, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %.lr.ph
  %i.h = add nsw i64 %.08298, -8
  %i.i = getelementptr inbounds nuw i8, ptr %.07999, i64 8
  br label %select.unfold, !llvm.loop !15

bb.c:                                             ; preds = %.lr.ph
  %i.j = lshr i64 %i.b, 32
  %i.k = lshr i64 %i.b, 24
  %i.l = lshr i64 %i.b, 16
  %i.m = lshr i64 %i.b, 8
  %i.n = and i64 %i.b, 255
  %i.o = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !10
  %i.q = zext i16 %i.p to i64
  %i.r = and i64 %i.m, 255
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.q
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.r
  %i.u = load i16, ptr %i.t, align 2, !tbaa !10
  %i.v = zext i16 %i.u to i64
  %i.w = and i64 %i.l, 255
  %i.x = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.v
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.w
  %i.z = load i16, ptr %i.y, align 2, !tbaa !10
  %i.aa = zext i16 %i.z to i64
  %i.ab = and i64 %i.k, 255
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.aa
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !10
  %i.af = zext i16 %i.ae to i64
  %i.ag = and i64 %i.j, 255
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.af
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !10 ; 2 uses
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.07999, i64 5
  %i.am = add nsw i64 %.08298, -5
  br label %select.unfold, !llvm.loop !15

bb.e:                                             ; preds = %bb.c
  %i.an = zext i16 %i.aj to i64
  %i.ao = and i64 %i.e, 255
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.an
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !10 ; 2 uses
  %i.as = icmp eq i16 %i.ar, 0
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.07999, i64 6
  %i.au = add nsw i64 %.08298, -6
  br label %select.unfold, !llvm.loop !15

bb.g:                                             ; preds = %bb.e
  %i.av = zext i16 %i.ar to i64
  %i.aw = and i64 %i.f, 255
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.av
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !10 ; 2 uses
  %i.ba = icmp eq i16 %i.az, 0
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %.07999, i64 7
  %i.bc = add nsw i64 %.08298, -7
  br label %select.unfold, !llvm.loop !15

bb.i:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %.07999, i64 8
  %i.be = zext i16 %i.az to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.be
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.g
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !10
  %i.bi = add nsw i64 %.08298, -8
  %.fr = freeze i16 %i.bh
  %i.bj = icmp eq i16 %.fr, 0
  br i1 %i.bj, label %select.unfold, label %.thread, !llvm.loop !15

select.unfold:                                    ; preds = %bb.i, %bb.d, %bb.f, %bb.h, %bb.b
  %.284 = phi i64 [ %i.h, %bb.b ], [ %i.am, %bb.d ], [ %i.au, %bb.f ], [ %i.bc, %bb.h ], [ %i.bi, %bb.i ] ; 3 uses
  %.281 = phi ptr [ %i.i, %bb.b ], [ %i.al, %bb.d ], [ %i.at, %bb.f ], [ %i.bb, %bb.h ], [ %i.bd, %bb.i ] ; 2 uses
  %i.bk = icmp sgt i64 %.284, 7
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %select.unfold, %bb.a
  %.082.lcssa = phi i64 [ %1, %bb.a ], [ %.284, %select.unfold ] ; 10 uses
  %.079.lcssa = phi ptr [ %0, %bb.a ], [ %.281, %select.unfold ] ; 9 uses
  %i.bl = icmp sgt i64 %.082.lcssa, 3
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.lcssa, i64 %.082.lcssa
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -4
  %i.bo = load i32, ptr %i.bn, align 1            ; 3 uses
  %i.bp = load i32, ptr %.079.lcssa, align 1      ; 2 uses
  %i.bq = or i32 %i.bp, %i.bo
  %i.br = and i32 %i.bq, -2139062144
  %.not94 = icmp eq i32 %i.br, 0
  %i.bs = zext i32 %i.bp to i64
  %i.bt = lshr i32 %i.bo, 16
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = lshr i32 %i.bo, 24
  %i.bw = trunc nuw i32 %i.bv to i8
  br i1 %.not94, label %.thread, label %bb.o

bb.k:                                             ; preds = %._crit_edge
  %i.bx = icmp sgt i64 %.082.lcssa, 1
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %.079.lcssa, i64 %.082.lcssa
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -2
  %i.ca = load i16, ptr %i.bz, align 1            ; 3 uses
  %i.cb = load i16, ptr %.079.lcssa, align 1      ; 2 uses
  %i.cc = or i16 %i.cb, %i.ca
  %i.cd = and i16 %i.cc, -32640
  %.not = icmp eq i16 %i.cd, 0
  %i.ce = zext i16 %i.cb to i64
  %i.cf = zext i16 %i.ca to i64
  %i.cg = lshr i16 %i.ca, 8
  %i.ch = trunc nuw i16 %i.cg to i8
  br i1 %.not, label %.thread, label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.ci = icmp eq i64 %.082.lcssa, 1
  br i1 %i.ci, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.cj = load i8, ptr %.079.lcssa, align 1, !tbaa !9 ; 2 uses
  %i.ck = icmp sgt i8 %i.cj, -1
  br i1 %i.ck, label %.thread, label %.thread93, !prof !14

bb.o:                                             ; preds = %bb.l, %bb.j
  %i.cl = phi i8 [ %i.ch, %bb.l ], [ %i.bw, %bb.j ]
  %i.cm = phi i64 [ %i.cf, %bb.l ], [ %i.bu, %bb.j ]
  %i.cn = phi i64 [ %i.ce, %bb.l ], [ %i.bs, %bb.j ]
  switch i64 %.082.lcssa, label %default.unreachable [
    i64 7, label %bb.p
    i64 6, label %bb.q
    i64 5, label %bb.r
    i64 4, label %bb.s
    i64 3, label %bb.t
    i64 2, label %bb.u
  ]

bb.p:                                             ; preds = %bb.o
  %i.co = and i64 %i.cn, 255
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !10
  %i.cr = zext i16 %i.cq to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0 = phi i64 [ %i.cr, %bb.p ], [ 0, %bb.o ]
  %i.cs = getelementptr i8, ptr %.079.lcssa, i64 %.082.lcssa
  %i.ct = getelementptr i8, ptr %i.cs, i64 -6
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !9
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %.0
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.cv
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !10
  %i.cz = zext i16 %i.cy to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.1 = phi i64 [ %i.cz, %bb.q ], [ 0, %bb.o ]
  %i.da = getelementptr i8, ptr %.079.lcssa, i64 %.082.lcssa
  %i.db = getelementptr i8, ptr %i.da, i64 -5
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !9
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %.1
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %i.dd
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !10
  %i.dh = zext i16 %i.dg to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.2 = phi i64 [ %i.dh, %bb.r ], [ 0, %bb.o ]
  %i.di = getelementptr i8, ptr %.079.lcssa, i64 %.082.lcssa
  %i.dj = getelementptr i8, ptr %i.di, i64 -4
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !9
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %.2
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.dl
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !10
  %i.dp = zext i16 %i.do to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o
  %.3 = phi i64 [ %i.dp, %bb.s ], [ 0, %bb.o ]
  %i.dq = getelementptr i8, ptr %.079.lcssa, i64 %.082.lcssa
  %i.dr = getelementptr i8, ptr %i.dq, i64 -3
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !9
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %.3
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.dt
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !10
  %i.dx = zext i16 %i.dw to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  %.4 = phi i64 [ %i.dx, %bb.t ], [ 0, %bb.o ]
  %i.dy = and i64 %i.cm, 255
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %.4
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dz, i64 %i.dy
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !10
  %i.ec = zext i16 %i.eb to i64
  br label %.thread93

.thread93:                                        ; preds = %bb.n, %bb.u
  %i.ed = phi i8 [ %i.cl, %bb.u ], [ %i.cj, %bb.n ]
  %.5 = phi i64 [ %i.ec, %bb.u ], [ 0, %bb.n ]
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %.5
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ef, i64 %i.ee
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !10
  %i.ei = icmp eq i16 %i.eh, 0
  br label %.thread

default.unreachable:                              ; preds = %bb.o
  unreachable

.thread:                                          ; preds = %bb.i, %bb.l, %bb.j, %.thread93, %bb.m, %bb.n
  %.578 = phi i1 [ %i.ei, %.thread93 ], [ true, %bb.m ], [ true, %bb.j ], [ true, %bb.l ], [ true, %bb.n ], [ false, %bb.i ]
  ret i1 %.578
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5arrow4util12ValidateUTF8ESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN5arrow4utilL18ValidateUTF8InlineEPKhl(ptr noundef readonly %1, i64 noundef %0)
  ret i1 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util11SkipUTF8BOMEPKhl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !19
  br label %bb.m

bb.c:                                             ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN5arrow6Status8FromArgsIJRA51_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(51) @.str.1)
  call void @_ZN5arrow6ResultIPKhEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  %i.c = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !21, !range !33, !noundef !34
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.g = load i8, ptr %1, align 1, !tbaa !9
  %.not = icmp eq i8 %i.g, -17
  br i1 %.not, label %bb.h, label %bb.g
end_hunk_0
begin_hunk_1_@_ZN5arrow6ResultINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEC2ERKNS_6StatusE:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !9
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !77
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !78
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !78
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !35

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !9
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #27
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !79
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !79
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN4utf84nextIPKcEEjRT_S3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.b = call noundef i32 @_ZN4utf88internal13validate_nextIPKcEENS0_9utf_errorERT_S5_Rj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  switch i32 %i.b, label %bb.e [
    i32 5, label %bb.d
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4utf815not_enough_roomE, i64 16), ptr %i.c, align 8, !tbaa !49
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN4utf815not_enough_roomE, ptr nonnull @_ZNSt9exceptionD2Ev) #26
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.d = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !19
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4utf812invalid_utf8E, i64 16), ptr %i.d, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.f, ptr %i.g, align 8, !tbaa !80
  call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN4utf812invalid_utf8E, ptr nonnull @_ZNSt9exceptionD2Ev) #26
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.h = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !3
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4utf818invalid_code_pointE, i64 16), ptr %i.h, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !84
  call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN4utf818invalid_code_pointE, ptr nonnull @_ZNSt9exceptionD2Ev) #26
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %i.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN4utf88internal13validate_nextIPKcEENS0_9utf_errorERT_S5_Rj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 25 uses
  %i.b = icmp eq ptr %i.a, %1
  br i1 %i.b, label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1, !tbaa !9
  %.fr47 = freeze i8 %i.c                         ; 2 uses
  %i.d = zext i8 %.fr47 to i32                    ; 7 uses
  %i.e = icmp sgt i8 %.fr47, -1                   ; 2 uses
  br i1 %i.e, label %_ZN4utf88internal14get_sequence_1IPKcEENS0_9utf_errorERT_S5_Rj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.mask.i = and i32 %i.d, 224
  %i.f = icmp eq i32 %.mask.i, 192
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.mask6.i = and i32 %i.d, 240
  %i.g = icmp eq i32 %.mask6.i, 224
  br i1 %i.g, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.mask7.i = and i32 %i.d, 248
  %i.h = icmp eq i32 %.mask7.i, 240
  br i1 %i.h, label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit, label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !19
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split, label %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit.i

_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit.i: ; preds = %bb.f
  %i.k = load i8, ptr %i.i, align 1, !tbaa !9     ; 2 uses
  %i.l = icmp slt i8 %i.k, -64
  br i1 %i.l, label %bb.g, label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split

bb.g:                                             ; preds = %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit.i
  %i.m = shl nuw nsw i32 %i.d, 6
  %i.n = and i32 %i.m, 1984
  %i.o = and i8 %i.k, 63
  %i.p = zext nneg i8 %i.o to i32
  %i.q = or disjoint i32 %i.n, %i.p
  br label %_ZN4utf88internal14get_sequence_1IPKcEENS0_9utf_errorERT_S5_Rj.exit

bb.h:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !19
  %i.s = icmp eq ptr %i.r, %1
  br i1 %i.s, label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split, label %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit.i25

_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit.i25: ; preds = %bb.h
  %i.t = load i8, ptr %i.r, align 1, !tbaa !9     ; 2 uses
  %i.u = icmp slt i8 %i.t, -64
  br i1 %i.u, label %bb.i, label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split

bb.i:                                             ; preds = %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit.i25
  %i.v = shl nuw nsw i32 %i.d, 12
  %i.w = and i32 %i.v, 61440
  %i.x = zext i8 %i.t to i32
  %i.y = shl nuw nsw i32 %i.x, 6
  %i.z = and i32 %i.y, 4032
  %i.aa = or disjoint i32 %i.z, %i.w
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 4 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !19
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split, label %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit27.i

_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit27.i: ; preds = %bb.i
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !9   ; 2 uses
  %i.ae = icmp slt i8 %i.ad, -64
  br i1 %i.ae, label %bb.j, label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split

bb.j:                                             ; preds = %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit27.i
  %i.af = and i8 %i.ad, 63
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = or disjoint i32 %i.aa, %i.ag
  br label %_ZN4utf88internal14get_sequence_1IPKcEENS0_9utf_errorERT_S5_Rj.exit

_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit: ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !19
  %i.aj = icmp eq ptr %i.ai, %1
  br i1 %i.aj, label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split, label %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit.i26

_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit.i26: ; preds = %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !9   ; 2 uses
  %i.al = icmp slt i8 %i.ak, -64
  br i1 %i.al, label %bb.k, label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split

bb.k:                                             ; preds = %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit.i26
  %i.am = shl nuw nsw i32 %i.d, 18
  %i.an = and i32 %i.am, 1835008
  %i.ao = zext i8 %i.ak to i32
  %i.ap = shl nuw nsw i32 %i.ao, 12
  %i.aq = and i32 %i.ap, 258048
  %i.ar = or disjoint i32 %i.aq, %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !19
  %i.at = icmp eq ptr %i.as, %1
  br i1 %i.at, label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split, label %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit38.i

_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit38.i: ; preds = %bb.k
  %i.au = load i8, ptr %i.as, align 1, !tbaa !9   ; 2 uses
  %i.av = icmp slt i8 %i.au, -64
  br i1 %i.av, label %bb.l, label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split

bb.l:                                             ; preds = %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit38.i
  %i.aw = zext i8 %i.au to i32
  %i.ax = shl nuw nsw i32 %i.aw, 6
  %i.ay = and i32 %i.ax, 4032
  %i.az = or disjoint i32 %i.ar, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 4 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !19
  %i.bb = icmp eq ptr %i.ba, %1
  br i1 %i.bb, label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split, label %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit41.i

_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit41.i: ; preds = %bb.l
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !9   ; 2 uses
  %i.bd = icmp slt i8 %i.bc, -64
  br i1 %i.bd, label %bb.m, label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split

bb.m:                                             ; preds = %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit41.i
  %i.be = and i8 %i.bc, 63
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = or disjoint i32 %i.az, %i.bf
  br label %_ZN4utf88internal14get_sequence_1IPKcEENS0_9utf_errorERT_S5_Rj.exit

_ZN4utf88internal14get_sequence_1IPKcEENS0_9utf_errorERT_S5_Rj.exit: ; preds = %bb.b, %bb.g, %bb.j, %bb.m
  %i.bh = phi ptr [ %i.ab, %bb.j ], [ %i.i, %bb.g ], [ %i.a, %bb.b ], [ %i.ba, %bb.m ]
  %i.bi = phi i1 [ false, %bb.j ], [ true, %bb.g ], [ true, %bb.b ], [ true, %bb.m ]
  %.not.i = phi i1 [ false, %bb.j ], [ true, %bb.g ], [ false, %bb.b ], [ false, %bb.m ]
  %.030 = phi i32 [ %i.ah, %bb.j ], [ %i.q, %bb.g ], [ %i.d, %bb.b ], [ %i.bg, %bb.m ] ; 6 uses
  %i.bj = icmp samesign ult i32 %.030, 1114112
  %i.bk = and i32 %.030, 2095104
  %i.bl = icmp ne i32 %i.bk, 55296
  %i.bm = and i1 %i.bj, %i.bl
  br i1 %i.bm, label %bb.n, label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split

bb.n:                                             ; preds = %_ZN4utf88internal14get_sequence_1IPKcEENS0_9utf_errorERT_S5_Rj.exit
  %i.bn = icmp samesign ult i32 %.030, 128
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br i1 %i.e, label %_ZN4utf88internal20is_overlong_sequenceIlEEbjT_.exit, label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split

bb.p:                                             ; preds = %bb.n
  %i.bo = icmp samesign ult i32 %.030, 2048
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i, label %_ZN4utf88internal20is_overlong_sequenceIlEEbjT_.exit, label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split

bb.r:                                             ; preds = %bb.p
  %i.bp = icmp samesign ult i32 %.030, 65536
  %or.cond.i = and i1 %i.bi, %i.bp
  br i1 %or.cond.i, label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split, label %_ZN4utf88internal20is_overlong_sequenceIlEEbjT_.exit

_ZN4utf88internal20is_overlong_sequenceIlEEbjT_.exit: ; preds = %bb.r, %bb.q, %bb.o
  store i32 %.030, ptr %2, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  br label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split

_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split: ; preds = %_ZN4utf88internal14get_sequence_1IPKcEENS0_9utf_errorERT_S5_Rj.exit, %bb.h, %bb.f, %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit.i, %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit.i25, %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit27.i, %bb.i, %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit.i26, %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit41.i, %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit38.i, %bb.l, %bb.k, %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit, %bb.q, %bb.o, %bb.r, %_ZN4utf88internal20is_overlong_sequenceIlEEbjT_.exit
  %.sink = phi ptr [ %i.bq, %_ZN4utf88internal20is_overlong_sequenceIlEEbjT_.exit ], [ %i.a, %bb.r ], [ %i.a, %bb.o ], [ %i.a, %bb.q ], [ %i.a, %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit ], [ %i.a, %bb.k ], [ %i.a, %bb.l ], [ %i.a, %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit38.i ], [ %i.a, %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit41.i ], [ %i.a, %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit.i26 ], [ %i.a, %bb.i ], [ %i.a, %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit27.i ], [ %i.a, %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit.i25 ], [ %i.a, %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit.i ], [ %i.a, %bb.f ], [ %i.a, %bb.h ], [ %i.a, %_ZN4utf88internal14get_sequence_1IPKcEENS0_9utf_errorERT_S5_Rj.exit ]
  %.121.ph = phi i32 [ 0, %_ZN4utf88internal20is_overlong_sequenceIlEEbjT_.exit ], [ 4, %bb.r ], [ 4, %bb.o ], [ 4, %bb.q ], [ 1, %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit ], [ 1, %bb.k ], [ 1, %bb.l ], [ 3, %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit38.i ], [ 3, %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit41.i ], [ 3, %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit.i26 ], [ 1, %bb.i ], [ 3, %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit27.i ], [ 3, %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit.i25 ], [ 3, %_ZN4utf88internal15increase_safelyIPKcEENS0_9utf_errorERT_S5_.exit.i ], [ 1, %bb.f ], [ 1, %bb.h ], [ 5, %_ZN4utf88internal14get_sequence_1IPKcEENS0_9utf_errorERT_S5_Rj.exit ]
  store ptr %.sink, ptr %0, align 8, !tbaa !19
  br label %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread

_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread: ; preds = %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split, %bb.e, %bb.a
  %.121 = phi i32 [ 1, %bb.a ], [ 2, %bb.e ], [ %.121.ph, %_ZN4utf88internal15sequence_lengthIPKcEENSt15iterator_traitsIT_E15difference_typeES5_.exit.thread.sink.split ]
  ret i32 %.121
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4utf815not_enough_roomD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK4utf815not_enough_room4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr @.str.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4utf812invalid_utf8D0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK4utf812invalid_utf84whatEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr @.str.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4utf818invalid_code_pointD0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #13 comdat align 2 {
end_hunk_1
