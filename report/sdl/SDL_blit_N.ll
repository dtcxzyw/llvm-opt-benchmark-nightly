begin_hunk_0_@SDL_CalculateBlitN:bb.a
  %i.by = icmp eq i32 %i.bw, %i.bx
  br i1 %i.by, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.n, %bb.o, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %indvars.iv.next ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cb = load i32, ptr %i.ca, align 4            ; 2 uses
  %.not95 = icmp eq i32 %i.cb, 0
  br i1 %.not95, label %._crit_edge, label %bb.h, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.p, %bb.q, %bb.g
  %.lcssa = phi ptr [ %i.x, %bb.g ], [ %i.bz, %bb.q ], [ %i.ai, %bb.p ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8            ; 3 uses
  %i.ce = icmp eq ptr %i.cd, @BlitNtoN
  br i1 %i.ce, label %bb.r, label %.thread

bb.r:                                             ; preds = %._crit_edge
  %i.cf = load i8, ptr %i.q, align 1              ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = icmp eq i8 %i.cf, %i.ch
  br i1 %i.ci, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = icmp eq i32 %i.ck, %i.cm
  br i1 %i.cn, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp eq i32 %i.cp, %i.cr
  br i1 %i.cs, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = icmp eq i32 %i.cu, %i.cw
  br i1 %i.cx, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cy = icmp eq i32 %.0, 4
  br i1 %i.cy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = load i32, ptr %i.l, align 4
  %i.dc = icmp eq i32 %i.da, %i.db
  %SDL_BlitCopy.BlitNtoNCopyAlpha = select i1 %i.dc, ptr @SDL_BlitCopy, ptr @BlitNtoNCopyAlpha
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %switch.selectcmp = icmp eq i8 %i.cf, 2
  %switch.select = select i1 %switch.selectcmp, ptr @Blit2to2MaskAlpha, ptr @BlitNtoN
  %switch.selectcmp104 = icmp eq i8 %i.cf, 4
  %switch.select105 = select i1 %switch.selectcmp104, ptr @Blit4to4MaskAlpha, ptr %switch.select
  br label %.thread

bb.y:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.dd = icmp eq i32 %.0, 4
  %spec.select = select i1 %i.dd, ptr @BlitNtoNCopyAlpha, ptr %i.cd
  br label %.thread

bb.z:                                             ; preds = %bb.b
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = icmp eq i8 %i.df, 2
  br i1 %i.dg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dh = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.dh, 0
  br i1 %.not, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.dj = load i32, ptr %i.di, align 4
  %.not89 = icmp eq i32 %i.dj, 0
  br i1 %.not89, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.dl = load i32, ptr %i.dk, align 4
  %.not90 = icmp eq i32 %i.dl, 0
  br i1 %.not90, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br label %.thread

.thread:                                          ; preds = %bb.x, %bb.f, %bb.y, %bb.b, %bb.ac, %bb.aa, %bb.c, %bb.w, %._crit_edge, %bb.a, %bb.ad
  %.079 = phi ptr [ @BlitNtoNKey, %bb.ad ], [ @BlitNtoNKeyCopyAlpha, %bb.ac ], [ null, %bb.a ], [ null, %bb.b ], [ @Blit2to2Key, %bb.aa ], [ null, %bb.c ], [ %SDL_BlitCopy.BlitNtoNCopyAlpha, %bb.w ], [ %i.cd, %._crit_edge ], [ %spec.select, %bb.y ], [ %switch.select105, %bb.x ], [ null, %bb.f ]
  ret ptr %.079
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @SDL_HasSSE41_REAL() local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @BlitNtoN(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 3 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %i.n = alloca i32, align 4                      ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i32, ptr %i.o, align 8              ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.r = load i32, ptr %i.q, align 4              ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = load i32, ptr %i.u, align 4              ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.z = load i32, ptr %i.y, align 4              ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8            ; 15 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  %i.ad = load i8, ptr %i.ac, align 1             ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load ptr, ptr %i.ae, align 8            ; 15 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 5
  %i.ah = load i8, ptr %i.ag, align 1             ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.aj = load i32, ptr %i.ai, align 4
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.an = phi i32 [ %i.am, %bb.b ], [ 0, %bb.a ]  ; 14 uses
  %i.ao = icmp eq i8 %i.ad, 4                     ; 2 uses
  %i.ap = icmp eq i8 %i.ah, 4                     ; 2 uses
  %or.cond = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.aq = load i32, ptr %i.ab, align 4
  %i.ar = and i32 %i.aq, -15794176
  %or.cond706 = icmp eq i32 %i.ar, 369557504
  br i1 %or.cond706, label %.thread704, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = load i32, ptr %i.af, align 4
  %i.at = and i32 %i.as, -15794176
  %or.cond707 = icmp eq i32 %i.at, 369557504
  br i1 %or.cond707, label %.thread704, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call fastcc void @get_permutation(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.af, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, ptr noundef nonnull %i.a)
  %.not689722 = icmp eq i32 %i.r, 0
  br i1 %.not689722, label %._crit_edge727, label %.lr.ph726

.lr.ph726:                                        ; preds = %bb.f
  %i.au = add nsw i32 %i.p, 3
  %i.av = sdiv i32 %i.au, 4                       ; 4 uses
  %i.aw = and i32 %i.p, 3
  %i.ax = trunc nuw i32 %i.an to i8               ; 4 uses
  %i.ay = sext i32 %i.v to i64
  %i.az = sext i32 %i.z to i64
  br label %.lr.ph726.split

.lr.ph726.split:                                  ; preds = %.lr.ph726, %bb.k
  %.in735 = phi i32 [ %i.ba, %bb.k ], [ %i.r, %.lr.ph726 ]
  %.0615724 = phi ptr [ %i.ev, %bb.k ], [ %i.t, %.lr.ph726 ] ; 4 uses
  %.0619723 = phi ptr [ %i.ew, %bb.k ], [ %i.x, %.lr.ph726 ] ; 4 uses
  %i.ba = add nsw i32 %.in735, -1                 ; 2 uses
  switch i32 %i.aw, label %default.unreachable [
    i32 0, label %bb.g
    i32 3, label %bb.h
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.g:                                             ; preds = %.lr.ph726.split, %bb.j
  %.0642 = phi i32 [ %i.av, %.lr.ph726.split ], [ %i.et, %bb.j ]
  %.1620 = phi ptr [ %.0619723, %.lr.ph726.split ], [ %i.es, %bb.j ] ; 6 uses
  %.1616 = phi ptr [ %.0615724, %.lr.ph726.split ], [ %i.er, %bb.j ] ; 5 uses
  %i.bb = load i32, ptr %i.b, align 4
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %.1616, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1
  store i8 %i.be, ptr %.1620, align 1
  %i.bf = load i32, ptr %i.c, align 4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %.1616, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.1620, i64 1
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = load i32, ptr %i.d, align 4
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %.1616, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.1620, i64 2
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = load i32, ptr %i.e, align 4
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %.1616, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.1620, i64 3
  store i8 %i.bs, ptr %i.bt, align 1
  %i.bu = load i32, ptr %i.a, align 4
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %.1620, i64 %i.bv
  store i8 %i.ax, ptr %i.bw, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.1616, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %.1620, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph726.split
  %.1643 = phi i32 [ %.0642, %bb.g ], [ %i.av, %.lr.ph726.split ]
  %.2621 = phi ptr [ %i.by, %bb.g ], [ %.0619723, %.lr.ph726.split ] ; 6 uses
  %.2617 = phi ptr [ %i.bx, %bb.g ], [ %.0615724, %.lr.ph726.split ] ; 5 uses
  %i.bz = load i32, ptr %i.b, align 4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %.2617, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1
  store i8 %i.cc, ptr %.2621, align 1
  %i.cd = load i32, ptr %i.c, align 4
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %.2617, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.2621, i64 1
  store i8 %i.cg, ptr %i.ch, align 1
  %i.ci = load i32, ptr %i.d, align 4
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %.2617, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.2621, i64 2
  store i8 %i.cl, ptr %i.cm, align 1
  %i.cn = load i32, ptr %i.e, align 4
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %.2617, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.2621, i64 3
  store i8 %i.cq, ptr %i.cr, align 1
  %i.cs = load i32, ptr %i.a, align 4
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %.2621, i64 %i.ct
  store i8 %i.ax, ptr %i.cu, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %.2617, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %.2621, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph726.split
  %.2644 = phi i32 [ %.1643, %bb.h ], [ %i.av, %.lr.ph726.split ]
  %.3622 = phi ptr [ %i.cw, %bb.h ], [ %.0619723, %.lr.ph726.split ] ; 6 uses
  %.3618 = phi ptr [ %i.cv, %bb.h ], [ %.0615724, %.lr.ph726.split ] ; 5 uses
  %i.cx = load i32, ptr %i.b, align 4
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %.3618, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1
  store i8 %i.da, ptr %.3622, align 1
  %i.db = load i32, ptr %i.c, align 4
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds i8, ptr %.3618, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %.3622, i64 1
  store i8 %i.de, ptr %i.df, align 1
  %i.dg = load i32, ptr %i.d, align 4
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr %.3618, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %.3622, i64 2
  store i8 %i.dj, ptr %i.dk, align 1
  %i.dl = load i32, ptr %i.e, align 4
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %.3618, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.3622, i64 3
  store i8 %i.do, ptr %i.dp, align 1
  %i.dq = load i32, ptr %i.a, align 4
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %.3622, i64 %i.dr
  store i8 %i.ax, ptr %i.ds, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %.3618, i64 4
  %i.du = getelementptr inbounds nuw i8, ptr %.3622, i64 4
  br label %bb.j

default.unreachable:                              ; preds = %.lr.ph726.split
  unreachable

bb.j:                                             ; preds = %.lr.ph726.split, %bb.i
  %.3645 = phi i32 [ %.2644, %bb.i ], [ %i.av, %.lr.ph726.split ] ; 2 uses
  %.4623 = phi ptr [ %i.du, %bb.i ], [ %.0619723, %.lr.ph726.split ] ; 6 uses
  %.4 = phi ptr [ %i.dt, %bb.i ], [ %.0615724, %.lr.ph726.split ] ; 5 uses
  %i.dv = load i32, ptr %i.b, align 4
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr %.4, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1
  store i8 %i.dy, ptr %.4623, align 1
  %i.dz = load i32, ptr %i.c, align 4
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds i8, ptr %.4, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %.4623, i64 1
  store i8 %i.ec, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.d, align 4
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds i8, ptr %.4, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %.4623, i64 2
  store i8 %i.eh, ptr %i.ei, align 1
  %i.ej = load i32, ptr %i.e, align 4
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds i8, ptr %.4, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %.4623, i64 3
  store i8 %i.em, ptr %i.en, align 1
  %i.eo = load i32, ptr %i.a, align 4
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %.4623, i64 %i.ep
  store i8 %i.ax, ptr %i.eq, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %.4, i64 4 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.4623, i64 4 ; 2 uses
  %i.et = add nsw i32 %.3645, -1
  %i.eu = icmp sgt i32 %.3645, 1
  br i1 %i.eu, label %bb.g, label %bb.k, !llvm.loop !5

bb.k:                                             ; preds = %bb.j
  %i.ev = getelementptr inbounds i8, ptr %i.er, i64 %i.ay
  %i.ew = getelementptr inbounds i8, ptr %i.es, i64 %i.az
  %.not689 = icmp eq i32 %i.ba, 0
  br i1 %.not689, label %._crit_edge727, label %.lr.ph726.split, !llvm.loop !6

._crit_edge727:                                   ; preds = %bb.k, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.loopexit

bb.l:                                             ; preds = %bb.c
  %i.ex = icmp eq i8 %i.ah, 3
  %or.cond3 = select i1 %i.ao, i1 %i.ex, i1 false
  br i1 %or.cond3, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.ey = load i32, ptr %i.ab, align 4
  %i.ez = and i32 %i.ey, -15794176
  %or.cond708 = icmp eq i32 %i.ez, 369557504
  br i1 %or.cond708, label %.thread704, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  call fastcc void @get_permutation(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.af, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef null)
  %.not688716 = icmp eq i32 %i.r, 0
  br i1 %.not688716, label %._crit_edge721, label %.lr.ph720

.lr.ph720:                                        ; preds = %bb.n
  %i.fa = add nsw i32 %i.p, 3
  %i.fb = sdiv i32 %i.fa, 4                       ; 4 uses
  %i.fc = and i32 %i.p, 3
  %i.fd = sext i32 %i.v to i64
  %i.fe = sext i32 %i.z to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph720, %bb.t
  %.in734 = phi i32 [ %i.r, %.lr.ph720 ], [ %i.ff, %bb.t ]
  %.5718 = phi ptr [ %i.t, %.lr.ph720 ], [ %i.hu, %bb.t ] ; 4 uses
  %.5624717 = phi ptr [ %i.x, %.lr.ph720 ], [ %i.hv, %bb.t ] ; 4 uses
  %i.ff = add nsw i32 %.in734, -1                 ; 2 uses
  switch i32 %i.fc, label %.unreachabledefault [
    i32 0, label %bb.p
    i32 3, label %bb.q
    i32 2, label %bb.r
    i32 1, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o, %bb.s
  %.0646 = phi i32 [ %i.fb, %bb.o ], [ %i.hs, %bb.s ]
  %.6625 = phi ptr [ %.5624717, %bb.o ], [ %i.hr, %bb.s ] ; 4 uses
  %.6 = phi ptr [ %.5718, %bb.o ], [ %i.hq, %bb.s ] ; 4 uses
  %i.fg = load i32, ptr %i.f, align 4
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds i8, ptr %.6, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1
  store i8 %i.fj, ptr %.6625, align 1
  %i.fk = load i32, ptr %i.g, align 4
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %.6, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = getelementptr inbounds nuw i8, ptr %.6625, i64 1
  store i8 %i.fn, ptr %i.fo, align 1
  %i.fp = load i32, ptr %i.h, align 4
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds i8, ptr %.6, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %.6625, i64 2
  store i8 %i.fs, ptr %i.ft, align 1
  %i.fu = getelementptr inbounds nuw i8, ptr %.6, i64 4
  %i.fv = getelementptr inbounds nuw i8, ptr %.6625, i64 3
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1647 = phi i32 [ %.0646, %bb.p ], [ %i.fb, %bb.o ]
  %.7626 = phi ptr [ %i.fv, %bb.p ], [ %.5624717, %bb.o ] ; 4 uses
  %.7 = phi ptr [ %i.fu, %bb.p ], [ %.5718, %bb.o ] ; 4 uses
  %i.fw = load i32, ptr %i.f, align 4
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds i8, ptr %.7, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1
  store i8 %i.fz, ptr %.7626, align 1
  %i.ga = load i32, ptr %i.g, align 4
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds i8, ptr %.7, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = getelementptr inbounds nuw i8, ptr %.7626, i64 1
  store i8 %i.gd, ptr %i.ge, align 1
  %i.gf = load i32, ptr %i.h, align 4
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds i8, ptr %.7, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = getelementptr inbounds nuw i8, ptr %.7626, i64 2
  store i8 %i.gi, ptr %i.gj, align 1
  %i.gk = getelementptr inbounds nuw i8, ptr %.7, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %.7626, i64 3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.2648 = phi i32 [ %.1647, %bb.q ], [ %i.fb, %bb.o ]
  %.8627 = phi ptr [ %i.gl, %bb.q ], [ %.5624717, %bb.o ] ; 4 uses
  %.8 = phi ptr [ %i.gk, %bb.q ], [ %.5718, %bb.o ] ; 4 uses
  %i.gm = load i32, ptr %i.f, align 4
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds i8, ptr %.8, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1
  store i8 %i.gp, ptr %.8627, align 1
  %i.gq = load i32, ptr %i.g, align 4
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds i8, ptr %.8, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = getelementptr inbounds nuw i8, ptr %.8627, i64 1
  store i8 %i.gt, ptr %i.gu, align 1
  %i.gv = load i32, ptr %i.h, align 4
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds i8, ptr %.8, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1
  %i.gz = getelementptr inbounds nuw i8, ptr %.8627, i64 2
  store i8 %i.gy, ptr %i.gz, align 1
  %i.ha = getelementptr inbounds nuw i8, ptr %.8, i64 4
  %i.hb = getelementptr inbounds nuw i8, ptr %.8627, i64 3
  br label %bb.s

.unreachabledefault:                              ; preds = %bb.o
  unreachable

bb.s:                                             ; preds = %bb.o, %bb.r
  %.3649 = phi i32 [ %.2648, %bb.r ], [ %i.fb, %bb.o ] ; 2 uses
  %.9628 = phi ptr [ %i.hb, %bb.r ], [ %.5624717, %bb.o ] ; 4 uses
  %.9 = phi ptr [ %i.ha, %bb.r ], [ %.5718, %bb.o ] ; 4 uses
  %i.hc = load i32, ptr %i.f, align 4
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds i8, ptr %.9, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1
  store i8 %i.hf, ptr %.9628, align 1
  %i.hg = load i32, ptr %i.g, align 4
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds i8, ptr %.9, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1
  %i.hk = getelementptr inbounds nuw i8, ptr %.9628, i64 1
  store i8 %i.hj, ptr %i.hk, align 1
  %i.hl = load i32, ptr %i.h, align 4
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds i8, ptr %.9, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.9628, i64 2
  store i8 %i.ho, ptr %i.hp, align 1
  %i.hq = getelementptr inbounds nuw i8, ptr %.9, i64 4 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.9628, i64 3 ; 2 uses
  %i.hs = add nsw i32 %.3649, -1
  %i.ht = icmp sgt i32 %.3649, 1
  br i1 %i.ht, label %bb.p, label %bb.t, !llvm.loop !7

bb.t:                                             ; preds = %bb.s
  %i.hu = getelementptr inbounds i8, ptr %i.hq, i64 %i.fd
  %i.hv = getelementptr inbounds i8, ptr %i.hr, i64 %i.fe
  %.not688 = icmp eq i32 %i.ff, 0
  br i1 %.not688, label %._crit_edge721, label %bb.o, !llvm.loop !8

._crit_edge721:                                   ; preds = %bb.t, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br label %.loopexit

bb.u:                                             ; preds = %bb.l
  %i.hw = icmp eq i8 %i.ad, 3
  %or.cond6 = select i1 %i.hw, i1 %i.ap, i1 false
  br i1 %or.cond6, label %bb.v, label %.thread704

bb.v:                                             ; preds = %bb.u
  %i.hx = load i32, ptr %i.af, align 4
  %i.hy = and i32 %i.hx, -15794176
  %or.cond709 = icmp eq i32 %i.hy, 369557504
  br i1 %or.cond709, label %.thread704, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #6
  call fastcc void @get_permutation(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.af, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef nonnull %i.j)
  %.not687713 = icmp eq i32 %i.r, 0
  br i1 %.not687713, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.hz = add nsw i32 %i.p, 3
  %i.ia = sdiv i32 %i.hz, 4                       ; 4 uses
  %i.ib = and i32 %i.p, 3
  %i.ic = trunc nuw i32 %i.an to i8               ; 4 uses
  %i.id = sext i32 %i.v to i64
  %i.ie = sext i32 %i.z to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.ac
  %.in = phi i32 [ %i.r, %.lr.ph ], [ %i.if, %bb.ac ]
  %.10715 = phi ptr [ %i.t, %.lr.ph ], [ %i.ma, %bb.ac ] ; 4 uses
  %.10629714 = phi ptr [ %i.x, %.lr.ph ], [ %i.mb, %bb.ac ] ; 4 uses
  %i.if = add nsw i32 %.in, -1                    ; 2 uses
  switch i32 %i.ib, label %.unreachabledefault745 [
    i32 0, label %bb.y
    i32 3, label %bb.z
    i32 2, label %bb.aa
    i32 1, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x, %bb.ab
  %.0653 = phi i32 [ %i.ia, %bb.x ], [ %i.ly, %bb.ab ]
  %.11630 = phi ptr [ %.10629714, %bb.x ], [ %i.lx, %bb.ab ] ; 6 uses
  %.11 = phi ptr [ %.10715, %bb.x ], [ %i.lw, %bb.ab ] ; 5 uses
  %i.ig = load i32, ptr %i.k, align 4
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds i8, ptr %.11, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1
  store i8 %i.ij, ptr %.11630, align 1
  %i.ik = load i32, ptr %i.l, align 4
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds i8, ptr %.11, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1
  %i.io = getelementptr inbounds nuw i8, ptr %.11630, i64 1
  store i8 %i.in, ptr %i.io, align 1
  %i.ip = load i32, ptr %i.m, align 4
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds i8, ptr %.11, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1
  %i.it = getelementptr inbounds nuw i8, ptr %.11630, i64 2
  store i8 %i.is, ptr %i.it, align 1
  %i.iu = load i32, ptr %i.n, align 4
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds i8, ptr %.11, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1
  %i.iy = getelementptr inbounds nuw i8, ptr %.11630, i64 3
  store i8 %i.ix, ptr %i.iy, align 1
  %i.iz = load i32, ptr %i.j, align 4
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds i8, ptr %.11630, i64 %i.ja
  store i8 %i.ic, ptr %i.jb, align 1
  %i.jc = getelementptr inbounds nuw i8, ptr %.11, i64 3
  %i.jd = getelementptr inbounds nuw i8, ptr %.11630, i64 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1654 = phi i32 [ %.0653, %bb.y ], [ %i.ia, %bb.x ]
  %.12631 = phi ptr [ %i.jd, %bb.y ], [ %.10629714, %bb.x ] ; 6 uses
  %.12 = phi ptr [ %i.jc, %bb.y ], [ %.10715, %bb.x ] ; 5 uses
  %i.je = load i32, ptr %i.k, align 4
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds i8, ptr %.12, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1
  store i8 %i.jh, ptr %.12631, align 1
  %i.ji = load i32, ptr %i.l, align 4
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds i8, ptr %.12, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1
  %i.jm = getelementptr inbounds nuw i8, ptr %.12631, i64 1
  store i8 %i.jl, ptr %i.jm, align 1
  %i.jn = load i32, ptr %i.m, align 4
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds i8, ptr %.12, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1
  %i.jr = getelementptr inbounds nuw i8, ptr %.12631, i64 2
  store i8 %i.jq, ptr %i.jr, align 1
  %i.js = load i32, ptr %i.n, align 4
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds i8, ptr %.12, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1
  %i.jw = getelementptr inbounds nuw i8, ptr %.12631, i64 3
  store i8 %i.jv, ptr %i.jw, align 1
  %i.jx = load i32, ptr %i.j, align 4
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds i8, ptr %.12631, i64 %i.jy
  store i8 %i.ic, ptr %i.jz, align 1
  %i.ka = getelementptr inbounds nuw i8, ptr %.12, i64 3
  %i.kb = getelementptr inbounds nuw i8, ptr %.12631, i64 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %.2655 = phi i32 [ %.1654, %bb.z ], [ %i.ia, %bb.x ]
  %.13632 = phi ptr [ %i.kb, %bb.z ], [ %.10629714, %bb.x ] ; 6 uses
  %.13 = phi ptr [ %i.ka, %bb.z ], [ %.10715, %bb.x ] ; 5 uses
  %i.kc = load i32, ptr %i.k, align 4
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds i8, ptr %.13, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1
  store i8 %i.kf, ptr %.13632, align 1
  %i.kg = load i32, ptr %i.l, align 4
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds i8, ptr %.13, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1
  %i.kk = getelementptr inbounds nuw i8, ptr %.13632, i64 1
  store i8 %i.kj, ptr %i.kk, align 1
  %i.kl = load i32, ptr %i.m, align 4
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds i8, ptr %.13, i64 %i.km
  %i.ko = load i8, ptr %i.kn, align 1
  %i.kp = getelementptr inbounds nuw i8, ptr %.13632, i64 2
  store i8 %i.ko, ptr %i.kp, align 1
  %i.kq = load i32, ptr %i.n, align 4
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds i8, ptr %.13, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1
  %i.ku = getelementptr inbounds nuw i8, ptr %.13632, i64 3
  store i8 %i.kt, ptr %i.ku, align 1
  %i.kv = load i32, ptr %i.j, align 4
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds i8, ptr %.13632, i64 %i.kw
  store i8 %i.ic, ptr %i.kx, align 1
  %i.ky = getelementptr inbounds nuw i8, ptr %.13, i64 3
  %i.kz = getelementptr inbounds nuw i8, ptr %.13632, i64 4
  br label %bb.ab

.unreachabledefault745:                           ; preds = %bb.x
  unreachable

bb.ab:                                            ; preds = %bb.x, %bb.aa
  %.3656 = phi i32 [ %.2655, %bb.aa ], [ %i.ia, %bb.x ] ; 2 uses
  %.14633 = phi ptr [ %i.kz, %bb.aa ], [ %.10629714, %bb.x ] ; 6 uses
  %.14 = phi ptr [ %i.ky, %bb.aa ], [ %.10715, %bb.x ] ; 5 uses
  %i.la = load i32, ptr %i.k, align 4
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds i8, ptr %.14, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1
  store i8 %i.ld, ptr %.14633, align 1
  %i.le = load i32, ptr %i.l, align 4
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds i8, ptr %.14, i64 %i.lf
  %i.lh = load i8, ptr %i.lg, align 1
  %i.li = getelementptr inbounds nuw i8, ptr %.14633, i64 1
  store i8 %i.lh, ptr %i.li, align 1
  %i.lj = load i32, ptr %i.m, align 4
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds i8, ptr %.14, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1
  %i.ln = getelementptr inbounds nuw i8, ptr %.14633, i64 2
  store i8 %i.lm, ptr %i.ln, align 1
  %i.lo = load i32, ptr %i.n, align 4
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds i8, ptr %.14, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1
  %i.ls = getelementptr inbounds nuw i8, ptr %.14633, i64 3
  store i8 %i.lr, ptr %i.ls, align 1
  %i.lt = load i32, ptr %i.j, align 4
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds i8, ptr %.14633, i64 %i.lu
  store i8 %i.ic, ptr %i.lv, align 1
  %i.lw = getelementptr inbounds nuw i8, ptr %.14, i64 3 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.14633, i64 4 ; 2 uses
  %i.ly = add nsw i32 %.3656, -1
  %i.lz = icmp sgt i32 %.3656, 1
  br i1 %i.lz, label %bb.y, label %bb.ac, !llvm.loop !9

bb.ac:                                            ; preds = %bb.ab
  %i.ma = getelementptr inbounds i8, ptr %i.lw, i64 %i.id
  %i.mb = getelementptr inbounds i8, ptr %i.lx, i64 %i.ie
  %.not687 = icmp eq i32 %i.if, 0
  br i1 %.not687, label %._crit_edge, label %bb.x, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.ac, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  br label %.loopexit

.thread704:                                       ; preds = %bb.v, %bb.m, %bb.e, %bb.d, %bb.u
  %.not686728 = icmp eq i32 %i.r, 0
  br i1 %.not686728, label %.loopexit, label %.lr.ph731

.lr.ph731:                                        ; preds = %.thread704
  %i.mc = add nsw i32 %i.p, 3
  %i.md = sdiv i32 %i.mc, 4                       ; 4 uses
  %i.me = and i32 %i.p, 3
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 12 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 12 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ab, i64 28 ; 16 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ab, i64 25 ; 12 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ab, i64 12 ; 12 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ab, i64 29 ; 16 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ab, i64 26 ; 12 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 12 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ab, i64 30 ; 16 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 12 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.af, i64 28 ; 16 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.af, i64 25 ; 12 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.af, i64 29 ; 16 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.af, i64 26 ; 12 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.af, i64 30 ; 16 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.af, i64 27 ; 12 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.af, i64 31 ; 12 uses
  %i.mw = zext i8 %i.ah to i64                    ; 4 uses
  %i.mx = zext i8 %i.ad to i64                    ; 4 uses
  %i.my = sext i32 %i.v to i64
  %i.mz = sext i32 %i.z to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph731, %bb.bw
  %.in736 = phi i32 [ %i.r, %.lr.ph731 ], [ %i.na, %bb.bw ]
  %.15730 = phi ptr [ %i.t, %.lr.ph731 ], [ %i.axp, %bb.bw ] ; 4 uses
  %.15634729 = phi ptr [ %i.x, %.lr.ph731 ], [ %i.axq, %bb.bw ] ; 4 uses
  %i.na = add nsw i32 %.in736, -1                 ; 2 uses
  switch i32 %i.me, label %.unreachabledefault746 [
    i32 0, label %bb.ae
    i32 3, label %bb.ap
    i32 2, label %bb.ba
    i32 1, label %bb.bl
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.bv
  %.0657 = phi i32 [ %i.md, %bb.ad ], [ %i.axn, %bb.bv ]
  %.16635 = phi ptr [ %.15634729, %bb.ad ], [ %i.axl, %bb.bv ] ; 7 uses
  %.16 = phi ptr [ %.15730, %bb.ad ], [ %i.axm, %bb.bv ] ; 7 uses
  switch i8 %i.ad, label %bb.aj [
    i8 1, label %bb.af
    i8 2, label %bb.ag
    i8 3, label %bb.ah
    i8 4, label %bb.ai
  ]

bb.af:                                            ; preds = %bb.ae
  %i.nb = load i8, ptr %.16, align 1
  %i.nc = zext i8 %i.nb to i32                    ; 3 uses
  %i.nd = load i8, ptr %i.mf, align 4
  %i.ne = zext i8 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ne
  %i.ng = load ptr, ptr %i.nf, align 8
  %i.nh = load i32, ptr %i.mg, align 4
  %i.ni = and i32 %i.nh, %i.nc
  %i.nj = load i8, ptr %i.mh, align 4
  %i.nk = zext nneg i8 %i.nj to i32
  %i.nl = lshr i32 %i.ni, %i.nk
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1
  %i.np = load i8, ptr %i.mi, align 1
  %i.nq = zext i8 %i.np to i64
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.nq
  %i.ns = load ptr, ptr %i.nr, align 8
  %i.nt = load i32, ptr %i.mj, align 4
  %i.nu = and i32 %i.nt, %i.nc
  %i.nv = load i8, ptr %i.mk, align 1
  %i.nw = zext nneg i8 %i.nv to i32
  %i.nx = lshr i32 %i.nu, %i.nw
  %i.ny = zext nneg i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.ny
  %i.oa = load i8, ptr %i.nz, align 1
  %i.ob = load i8, ptr %i.ml, align 2
  %i.oc = zext i8 %i.ob to i64
  %i.od = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.oc
  %i.oe = load ptr, ptr %i.od, align 8
  %i.of = load i32, ptr %i.mm, align 4
  %i.og = and i32 %i.of, %i.nc
  %i.oh = load i8, ptr %i.mn, align 2
  %i.oi = zext nneg i8 %i.oh to i32
  %i.oj = lshr i32 %i.og, %i.oi
  %i.ok = zext nneg i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %i.on = load i16, ptr %.16, align 2
  %i.oo = zext i16 %i.on to i32                   ; 3 uses
  %i.op = load i8, ptr %i.mf, align 4
  %i.oq = zext i8 %i.op to i64
  %i.or = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.oq
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = load i32, ptr %i.mg, align 4
  %i.ou = and i32 %i.ot, %i.oo
  %i.ov = load i8, ptr %i.mh, align 4
  %i.ow = zext nneg i8 %i.ov to i32
  %i.ox = lshr i32 %i.ou, %i.ow
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1
  %i.pb = load i8, ptr %i.mi, align 1
  %i.pc = zext i8 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.pc
  %i.pe = load ptr, ptr %i.pd, align 8
  %i.pf = load i32, ptr %i.mj, align 4
  %i.pg = and i32 %i.pf, %i.oo
  %i.ph = load i8, ptr %i.mk, align 1
  %i.pi = zext nneg i8 %i.ph to i32
  %i.pj = lshr i32 %i.pg, %i.pi
  %i.pk = zext nneg i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.pk
  %i.pm = load i8, ptr %i.pl, align 1
  %i.pn = load i8, ptr %i.ml, align 2
  %i.po = zext i8 %i.pn to i64
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.po
  %i.pq = load ptr, ptr %i.pp, align 8
  %i.pr = load i32, ptr %i.mm, align 4
  %i.ps = and i32 %i.pr, %i.oo
  %i.pt = load i8, ptr %i.mn, align 2
  %i.pu = zext nneg i8 %i.pt to i32
  %i.pv = lshr i32 %i.ps, %i.pu
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.pw
  %i.py = load i8, ptr %i.px, align 1
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  %i.pz = load i8, ptr %i.mh, align 4
  %i.qa = lshr i8 %i.pz, 3
  %i.qb = zext nneg i8 %i.qa to i64
  %i.qc = getelementptr inbounds nuw i8, ptr %.16, i64 %i.qb
  %i.qd = load i8, ptr %i.qc, align 1
  %i.qe = load i8, ptr %i.mk, align 1
  %i.qf = lshr i8 %i.qe, 3
  %i.qg = zext nneg i8 %i.qf to i64
  %i.qh = getelementptr inbounds nuw i8, ptr %.16, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1
  %i.qj = load i8, ptr %i.mn, align 2
  %i.qk = lshr i8 %i.qj, 3
  %i.ql = zext nneg i8 %i.qk to i64
  %i.qm = getelementptr inbounds nuw i8, ptr %.16, i64 %i.ql
  %i.qn = load i8, ptr %i.qm, align 1
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae
  %i.qo = load i32, ptr %.16, align 4             ; 3 uses
  %i.qp = load i8, ptr %i.mf, align 4
  %i.qq = zext i8 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.qq
  %i.qs = load ptr, ptr %i.qr, align 8
  %i.qt = load i32, ptr %i.mg, align 4
  %i.qu = and i32 %i.qt, %i.qo
  %i.qv = load i8, ptr %i.mh, align 4
  %i.qw = zext nneg i8 %i.qv to i32
  %i.qx = lshr i32 %i.qu, %i.qw
  %i.qy = zext i32 %i.qx to i64
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qs, i64 %i.qy
  %i.ra = load i8, ptr %i.qz, align 1
  %i.rb = load i8, ptr %i.mi, align 1
  %i.rc = zext i8 %i.rb to i64
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.rc
  %i.re = load ptr, ptr %i.rd, align 8
  %i.rf = load i32, ptr %i.mj, align 4
  %i.rg = and i32 %i.rf, %i.qo
  %i.rh = load i8, ptr %i.mk, align 1
  %i.ri = zext nneg i8 %i.rh to i32
  %i.rj = lshr i32 %i.rg, %i.ri
  %i.rk = zext i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.rk
  %i.rm = load i8, ptr %i.rl, align 1
  %i.rn = load i8, ptr %i.ml, align 2
  %i.ro = zext i8 %i.rn to i64
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ro
  %i.rq = load ptr, ptr %i.rp, align 8
  %i.rr = load i32, ptr %i.mm, align 4
  %i.rs = and i32 %i.rr, %i.qo
  %i.rt = load i8, ptr %i.mn, align 2
  %i.ru = zext nneg i8 %i.rt to i32
  %i.rv = lshr i32 %i.rs, %i.ru
  %i.rw = zext i32 %i.rv to i64
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ae, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.0666.shrunk = phi i8 [ %i.ry, %bb.ai ], [ %i.om, %bb.af ], [ %i.py, %bb.ag ], [ %i.qn, %bb.ah ], [ 0, %bb.ae ] ; 2 uses
  %.0665.shrunk = phi i8 [ %i.rm, %bb.ai ], [ %i.oa, %bb.af ], [ %i.pm, %bb.ag ], [ %i.qi, %bb.ah ], [ 0, %bb.ae ] ; 2 uses
  %.0664.shrunk = phi i8 [ %i.ra, %bb.ai ], [ %i.no, %bb.af ], [ %i.pa, %bb.ag ], [ %i.qd, %bb.ah ], [ 0, %bb.ae ] ; 2 uses
  %.0664 = zext i8 %.0664.shrunk to i32           ; 3 uses
  %.0665 = zext i8 %.0665.shrunk to i32           ; 3 uses
  %.0666 = zext i8 %.0666.shrunk to i32           ; 3 uses
  switch i8 %i.ah, label %bb.ao [
    i8 1, label %bb.ak
    i8 2, label %bb.al
    i8 3, label %bb.am
    i8 4, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.rz = load i8, ptr %i.mo, align 4
  %i.sa = zext i8 %i.rz to i32
  %i.sb = sub nsw i32 8, %i.sa
  %i.sc = lshr i32 %.0664, %i.sb
  %i.sd = load i8, ptr %i.mp, align 4
  %i.se = zext nneg i8 %i.sd to i32
  %i.sf = shl i32 %i.sc, %i.se
  %i.sg = load i8, ptr %i.mq, align 1
  %i.sh = zext i8 %i.sg to i32
  %i.si = sub nsw i32 8, %i.sh
  %i.sj = lshr i32 %.0665, %i.si
  %i.sk = load i8, ptr %i.mr, align 1
  %i.sl = zext nneg i8 %i.sk to i32
  %i.sm = shl i32 %i.sj, %i.sl
  %i.sn = or i32 %i.sm, %i.sf
  %i.so = load i8, ptr %i.ms, align 2
  %i.sp = zext i8 %i.so to i32
  %i.sq = sub nsw i32 8, %i.sp
  %i.sr = lshr i32 %.0666, %i.sq
  %i.ss = load i8, ptr %i.mt, align 2
  %i.st = zext nneg i8 %i.ss to i32
  %i.su = shl i32 %i.sr, %i.st
  %i.sv = or i32 %i.sn, %i.su
  %i.sw = load i8, ptr %i.mu, align 1
  %i.sx = zext i8 %i.sw to i32
  %i.sy = sub nsw i32 8, %i.sx
  %i.sz = lshr i32 %i.an, %i.sy
  %i.ta = load i8, ptr %i.mv, align 1
end_hunk_0
begin_hunk_1_@BlitNtoN:bb.a
  %i.aig = lshr i8 %i.aif, 3
  %i.aih = zext nneg i8 %i.aig to i64
  %i.aii = getelementptr inbounds nuw i8, ptr %.18, i64 %i.aih
  %i.aij = load i8, ptr %i.aii, align 1
  %i.aik = load i8, ptr %i.mk, align 1
  %i.ail = lshr i8 %i.aik, 3
  %i.aim = zext nneg i8 %i.ail to i64
  %i.ain = getelementptr inbounds nuw i8, ptr %.18, i64 %i.aim
  %i.aio = load i8, ptr %i.ain, align 1
  %i.aip = load i8, ptr %i.mn, align 2
  %i.aiq = lshr i8 %i.aip, 3
  %i.air = zext nneg i8 %i.aiq to i64
  %i.ais = getelementptr inbounds nuw i8, ptr %.18, i64 %i.air
  %i.ait = load i8, ptr %i.ais, align 1
  br label %bb.bf

bb.be:                                            ; preds = %bb.ba
  %i.aiu = load i32, ptr %.18, align 4            ; 3 uses
  %i.aiv = load i8, ptr %i.mf, align 4
  %i.aiw = zext i8 %i.aiv to i64
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aiw
  %i.aiy = load ptr, ptr %i.aix, align 8
  %i.aiz = load i32, ptr %i.mg, align 4
  %i.aja = and i32 %i.aiz, %i.aiu
  %i.ajb = load i8, ptr %i.mh, align 4
  %i.ajc = zext nneg i8 %i.ajb to i32
  %i.ajd = lshr i32 %i.aja, %i.ajc
  %i.aje = zext i32 %i.ajd to i64
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aiy, i64 %i.aje
  %i.ajg = load i8, ptr %i.ajf, align 1
  %i.ajh = load i8, ptr %i.mi, align 1
  %i.aji = zext i8 %i.ajh to i64
  %i.ajj = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aji
  %i.ajk = load ptr, ptr %i.ajj, align 8
  %i.ajl = load i32, ptr %i.mj, align 4
  %i.ajm = and i32 %i.ajl, %i.aiu
  %i.ajn = load i8, ptr %i.mk, align 1
  %i.ajo = zext nneg i8 %i.ajn to i32
  %i.ajp = lshr i32 %i.ajm, %i.ajo
  %i.ajq = zext i32 %i.ajp to i64
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajk, i64 %i.ajq
  %i.ajs = load i8, ptr %i.ajr, align 1
  %i.ajt = load i8, ptr %i.ml, align 2
  %i.aju = zext i8 %i.ajt to i64
  %i.ajv = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aju
  %i.ajw = load ptr, ptr %i.ajv, align 8
  %i.ajx = load i32, ptr %i.mm, align 4
  %i.ajy = and i32 %i.ajx, %i.aiu
  %i.ajz = load i8, ptr %i.mn, align 2
  %i.aka = zext nneg i8 %i.ajz to i32
  %i.akb = lshr i32 %i.ajy, %i.aka
  %i.akc = zext i32 %i.akb to i64
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.akc
  %i.ake = load i8, ptr %i.akd, align 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.ba, %bb.be, %bb.bd, %bb.bc, %bb.bb
  %.0652.shrunk = phi i8 [ %i.ajg, %bb.be ], [ %i.afu, %bb.bb ], [ %i.ahg, %bb.bc ], [ %i.aij, %bb.bd ], [ 0, %bb.ba ] ; 2 uses
  %.0651.shrunk = phi i8 [ %i.ajs, %bb.be ], [ %i.agg, %bb.bb ], [ %i.ahs, %bb.bc ], [ %i.aio, %bb.bd ], [ 0, %bb.ba ] ; 2 uses
  %.0650.shrunk = phi i8 [ %i.ake, %bb.be ], [ %i.ags, %bb.bb ], [ %i.aie, %bb.bc ], [ %i.ait, %bb.bd ], [ 0, %bb.ba ] ; 2 uses
  %.0650 = zext i8 %.0650.shrunk to i32           ; 3 uses
  %.0651 = zext i8 %.0651.shrunk to i32           ; 3 uses
  %.0652 = zext i8 %.0652.shrunk to i32           ; 3 uses
  switch i8 %i.ah, label %bb.bk [
    i8 1, label %bb.bg
    i8 2, label %bb.bh
    i8 3, label %bb.bi
    i8 4, label %bb.bj
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.akf = load i8, ptr %i.mo, align 4
  %i.akg = zext i8 %i.akf to i32
  %i.akh = sub nsw i32 8, %i.akg
  %i.aki = lshr i32 %.0652, %i.akh
  %i.akj = load i8, ptr %i.mp, align 4
  %i.akk = zext nneg i8 %i.akj to i32
  %i.akl = shl i32 %i.aki, %i.akk
  %i.akm = load i8, ptr %i.mq, align 1
  %i.akn = zext i8 %i.akm to i32
  %i.ako = sub nsw i32 8, %i.akn
  %i.akp = lshr i32 %.0651, %i.ako
  %i.akq = load i8, ptr %i.mr, align 1
  %i.akr = zext nneg i8 %i.akq to i32
  %i.aks = shl i32 %i.akp, %i.akr
  %i.akt = or i32 %i.aks, %i.akl
  %i.aku = load i8, ptr %i.ms, align 2
  %i.akv = zext i8 %i.aku to i32
  %i.akw = sub nsw i32 8, %i.akv
  %i.akx = lshr i32 %.0650, %i.akw
  %i.aky = load i8, ptr %i.mt, align 2
  %i.akz = zext nneg i8 %i.aky to i32
  %i.ala = shl i32 %i.akx, %i.akz
  %i.alb = or i32 %i.akt, %i.ala
  %i.alc = load i8, ptr %i.mu, align 1
  %i.ald = zext i8 %i.alc to i32
  %i.ale = sub nsw i32 8, %i.ald
  %i.alf = lshr i32 %i.an, %i.ale
  %i.alg = load i8, ptr %i.mv, align 1
  %i.alh = zext nneg i8 %i.alg to i32
  %i.ali = shl i32 %i.alf, %i.alh
  %i.alj = or i32 %i.alb, %i.ali
  %i.alk = trunc i32 %i.alj to i8
  store i8 %i.alk, ptr %.18637, align 1
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bf
  %i.all = load i8, ptr %i.mo, align 4
  %i.alm = zext i8 %i.all to i32
  %i.aln = sub nsw i32 8, %i.alm
  %i.alo = lshr i32 %.0652, %i.aln
  %i.alp = load i8, ptr %i.mp, align 4
  %i.alq = zext nneg i8 %i.alp to i32
  %i.alr = shl i32 %i.alo, %i.alq
  %i.als = load i8, ptr %i.mq, align 1
  %i.alt = zext i8 %i.als to i32
  %i.alu = sub nsw i32 8, %i.alt
  %i.alv = lshr i32 %.0651, %i.alu
  %i.alw = load i8, ptr %i.mr, align 1
  %i.alx = zext nneg i8 %i.alw to i32
  %i.aly = shl i32 %i.alv, %i.alx
  %i.alz = or i32 %i.aly, %i.alr
  %i.ama = load i8, ptr %i.ms, align 2
  %i.amb = zext i8 %i.ama to i32
  %i.amc = sub nsw i32 8, %i.amb
  %i.amd = lshr i32 %.0650, %i.amc
  %i.ame = load i8, ptr %i.mt, align 2
  %i.amf = zext nneg i8 %i.ame to i32
  %i.amg = shl i32 %i.amd, %i.amf
  %i.amh = or i32 %i.alz, %i.amg
  %i.ami = load i8, ptr %i.mu, align 1
  %i.amj = zext i8 %i.ami to i32
  %i.amk = sub nsw i32 8, %i.amj
  %i.aml = lshr i32 %i.an, %i.amk
  %i.amm = load i8, ptr %i.mv, align 1
  %i.amn = zext nneg i8 %i.amm to i32
  %i.amo = shl i32 %i.aml, %i.amn
  %i.amp = or i32 %i.amh, %i.amo
  %i.amq = trunc i32 %i.amp to i16
  store i16 %i.amq, ptr %.18637, align 2
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bf
  %i.amr = load i8, ptr %i.mp, align 4
  %i.ams = lshr i8 %i.amr, 3
  %i.amt = zext nneg i8 %i.ams to i64
  %i.amu = getelementptr inbounds nuw i8, ptr %.18637, i64 %i.amt
  store i8 %.0652.shrunk, ptr %i.amu, align 1
  %i.amv = load i8, ptr %i.mr, align 1
  %i.amw = lshr i8 %i.amv, 3
  %i.amx = zext nneg i8 %i.amw to i64
  %i.amy = getelementptr inbounds nuw i8, ptr %.18637, i64 %i.amx
  store i8 %.0651.shrunk, ptr %i.amy, align 1
  %i.amz = load i8, ptr %i.mt, align 2
  %i.ana = lshr i8 %i.amz, 3
  %i.anb = zext nneg i8 %i.ana to i64
  %i.anc = getelementptr inbounds nuw i8, ptr %.18637, i64 %i.anb
  store i8 %.0650.shrunk, ptr %i.anc, align 1
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bf
  %i.and = load i8, ptr %i.mo, align 4
  %i.ane = zext i8 %i.and to i32
  %i.anf = sub nsw i32 8, %i.ane
  %i.ang = lshr i32 %.0652, %i.anf
  %i.anh = load i8, ptr %i.mp, align 4
  %i.ani = zext nneg i8 %i.anh to i32
  %i.anj = shl i32 %i.ang, %i.ani
  %i.ank = load i8, ptr %i.mq, align 1
  %i.anl = zext i8 %i.ank to i32
  %i.anm = sub nsw i32 8, %i.anl
  %i.ann = lshr i32 %.0651, %i.anm
  %i.ano = load i8, ptr %i.mr, align 1
  %i.anp = zext nneg i8 %i.ano to i32
  %i.anq = shl i32 %i.ann, %i.anp
  %i.anr = or i32 %i.anq, %i.anj
  %i.ans = load i8, ptr %i.ms, align 2
  %i.ant = zext i8 %i.ans to i32
  %i.anu = sub nsw i32 8, %i.ant
  %i.anv = lshr i32 %.0650, %i.anu
  %i.anw = load i8, ptr %i.mt, align 2
  %i.anx = zext nneg i8 %i.anw to i32
  %i.any = shl i32 %i.anv, %i.anx
  %i.anz = or i32 %i.anr, %i.any
  %i.aoa = load i8, ptr %i.mu, align 1
  %i.aob = zext i8 %i.aoa to i32
  %i.aoc = sub nsw i32 8, %i.aob
  %i.aod = lshr i32 %i.an, %i.aoc
  %i.aoe = load i8, ptr %i.mv, align 1
  %i.aof = zext nneg i8 %i.aoe to i32
  %i.aog = shl i32 %i.aod, %i.aof
  %i.aoh = or i32 %i.anz, %i.aog
  store i32 %i.aoh, ptr %.18637, align 4
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %i.aoi = getelementptr inbounds nuw i8, ptr %.18637, i64 %i.mw
  %i.aoj = getelementptr inbounds nuw i8, ptr %.18, i64 %i.mx
  br label %bb.bl

.unreachabledefault746:                           ; preds = %bb.ad
  unreachable

bb.bl:                                            ; preds = %bb.ad, %bb.bk
  %.3660 = phi i32 [ %.2659, %bb.bk ], [ %i.md, %bb.ad ] ; 2 uses
  %.19638 = phi ptr [ %i.aoi, %bb.bk ], [ %.15634729, %bb.ad ] ; 7 uses
  %.19 = phi ptr [ %i.aoj, %bb.bk ], [ %.15730, %bb.ad ] ; 7 uses
  switch i8 %i.ad, label %bb.bq [
    i8 1, label %bb.bm
    i8 2, label %bb.bn
    i8 3, label %bb.bo
    i8 4, label %bb.bp
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.aok = load i8, ptr %.19, align 1
  %i.aol = zext i8 %i.aok to i32                  ; 3 uses
  %i.aom = load i8, ptr %i.mf, align 4
  %i.aon = zext i8 %i.aom to i64
  %i.aoo = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aon
  %i.aop = load ptr, ptr %i.aoo, align 8
  %i.aoq = load i32, ptr %i.mg, align 4
  %i.aor = and i32 %i.aoq, %i.aol
  %i.aos = load i8, ptr %i.mh, align 4
  %i.aot = zext nneg i8 %i.aos to i32
  %i.aou = lshr i32 %i.aor, %i.aot
  %i.aov = zext nneg i32 %i.aou to i64
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aop, i64 %i.aov
  %i.aox = load i8, ptr %i.aow, align 1
  %i.aoy = load i8, ptr %i.mi, align 1
  %i.aoz = zext i8 %i.aoy to i64
  %i.apa = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aoz
  %i.apb = load ptr, ptr %i.apa, align 8
  %i.apc = load i32, ptr %i.mj, align 4
  %i.apd = and i32 %i.apc, %i.aol
  %i.ape = load i8, ptr %i.mk, align 1
  %i.apf = zext nneg i8 %i.ape to i32
  %i.apg = lshr i32 %i.apd, %i.apf
  %i.aph = zext nneg i32 %i.apg to i64
  %i.api = getelementptr inbounds nuw i8, ptr %i.apb, i64 %i.aph
  %i.apj = load i8, ptr %i.api, align 1
  %i.apk = load i8, ptr %i.ml, align 2
  %i.apl = zext i8 %i.apk to i64
  %i.apm = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.apl
  %i.apn = load ptr, ptr %i.apm, align 8
  %i.apo = load i32, ptr %i.mm, align 4
  %i.app = and i32 %i.apo, %i.aol
  %i.apq = load i8, ptr %i.mn, align 2
  %i.apr = zext nneg i8 %i.apq to i32
  %i.aps = lshr i32 %i.app, %i.apr
  %i.apt = zext nneg i32 %i.aps to i64
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apn, i64 %i.apt
  %i.apv = load i8, ptr %i.apu, align 1
  br label %bb.bq

bb.bn:                                            ; preds = %bb.bl
  %i.apw = load i16, ptr %.19, align 2
  %i.apx = zext i16 %i.apw to i32                 ; 3 uses
  %i.apy = load i8, ptr %i.mf, align 4
  %i.apz = zext i8 %i.apy to i64
  %i.aqa = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.apz
  %i.aqb = load ptr, ptr %i.aqa, align 8
  %i.aqc = load i32, ptr %i.mg, align 4
  %i.aqd = and i32 %i.aqc, %i.apx
  %i.aqe = load i8, ptr %i.mh, align 4
  %i.aqf = zext nneg i8 %i.aqe to i32
  %i.aqg = lshr i32 %i.aqd, %i.aqf
  %i.aqh = zext nneg i32 %i.aqg to i64
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqb, i64 %i.aqh
  %i.aqj = load i8, ptr %i.aqi, align 1
  %i.aqk = load i8, ptr %i.mi, align 1
  %i.aql = zext i8 %i.aqk to i64
  %i.aqm = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aql
  %i.aqn = load ptr, ptr %i.aqm, align 8
  %i.aqo = load i32, ptr %i.mj, align 4
  %i.aqp = and i32 %i.aqo, %i.apx
  %i.aqq = load i8, ptr %i.mk, align 1
  %i.aqr = zext nneg i8 %i.aqq to i32
  %i.aqs = lshr i32 %i.aqp, %i.aqr
  %i.aqt = zext nneg i32 %i.aqs to i64
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqn, i64 %i.aqt
  %i.aqv = load i8, ptr %i.aqu, align 1
  %i.aqw = load i8, ptr %i.ml, align 2
  %i.aqx = zext i8 %i.aqw to i64
  %i.aqy = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aqx
  %i.aqz = load ptr, ptr %i.aqy, align 8
  %i.ara = load i32, ptr %i.mm, align 4
  %i.arb = and i32 %i.ara, %i.apx
  %i.arc = load i8, ptr %i.mn, align 2
  %i.ard = zext nneg i8 %i.arc to i32
  %i.are = lshr i32 %i.arb, %i.ard
  %i.arf = zext nneg i32 %i.are to i64
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aqz, i64 %i.arf
  %i.arh = load i8, ptr %i.arg, align 1
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bl
  %i.ari = load i8, ptr %i.mh, align 4
  %i.arj = lshr i8 %i.ari, 3
  %i.ark = zext nneg i8 %i.arj to i64
  %i.arl = getelementptr inbounds nuw i8, ptr %.19, i64 %i.ark
  %i.arm = load i8, ptr %i.arl, align 1
  %i.arn = load i8, ptr %i.mk, align 1
  %i.aro = lshr i8 %i.arn, 3
  %i.arp = zext nneg i8 %i.aro to i64
  %i.arq = getelementptr inbounds nuw i8, ptr %.19, i64 %i.arp
  %i.arr = load i8, ptr %i.arq, align 1
  %i.ars = load i8, ptr %i.mn, align 2
  %i.art = lshr i8 %i.ars, 3
  %i.aru = zext nneg i8 %i.art to i64
  %i.arv = getelementptr inbounds nuw i8, ptr %.19, i64 %i.aru
  %i.arw = load i8, ptr %i.arv, align 1
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bl
  %i.arx = load i32, ptr %.19, align 4            ; 3 uses
  %i.ary = load i8, ptr %i.mf, align 4
  %i.arz = zext i8 %i.ary to i64
  %i.asa = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.arz
  %i.asb = load ptr, ptr %i.asa, align 8
  %i.asc = load i32, ptr %i.mg, align 4
  %i.asd = and i32 %i.asc, %i.arx
  %i.ase = load i8, ptr %i.mh, align 4
  %i.asf = zext nneg i8 %i.ase to i32
  %i.asg = lshr i32 %i.asd, %i.asf
  %i.ash = zext i32 %i.asg to i64
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asb, i64 %i.ash
  %i.asj = load i8, ptr %i.asi, align 1
  %i.ask = load i8, ptr %i.mi, align 1
  %i.asl = zext i8 %i.ask to i64
  %i.asm = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.asl
  %i.asn = load ptr, ptr %i.asm, align 8
  %i.aso = load i32, ptr %i.mj, align 4
  %i.asp = and i32 %i.aso, %i.arx
  %i.asq = load i8, ptr %i.mk, align 1
  %i.asr = zext nneg i8 %i.asq to i32
  %i.ass = lshr i32 %i.asp, %i.asr
  %i.ast = zext i32 %i.ass to i64
  %i.asu = getelementptr inbounds nuw i8, ptr %i.asn, i64 %i.ast
  %i.asv = load i8, ptr %i.asu, align 1
  %i.asw = load i8, ptr %i.ml, align 2
  %i.asx = zext i8 %i.asw to i64
  %i.asy = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.asx
  %i.asz = load ptr, ptr %i.asy, align 8
  %i.ata = load i32, ptr %i.mm, align 4
  %i.atb = and i32 %i.ata, %i.arx
  %i.atc = load i8, ptr %i.mn, align 2
  %i.atd = zext nneg i8 %i.atc to i32
  %i.ate = lshr i32 %i.atb, %i.atd
  %i.atf = zext i32 %i.ate to i64
  %i.atg = getelementptr inbounds nuw i8, ptr %i.asz, i64 %i.atf
  %i.ath = load i8, ptr %i.atg, align 1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bl, %bb.bp, %bb.bo, %bb.bn, %bb.bm
  %.0641.shrunk = phi i8 [ %i.asj, %bb.bp ], [ %i.aox, %bb.bm ], [ %i.aqj, %bb.bn ], [ %i.arm, %bb.bo ], [ 0, %bb.bl ] ; 2 uses
  %.0640.shrunk = phi i8 [ %i.asv, %bb.bp ], [ %i.apj, %bb.bm ], [ %i.aqv, %bb.bn ], [ %i.arr, %bb.bo ], [ 0, %bb.bl ] ; 2 uses
  %.0639.shrunk = phi i8 [ %i.ath, %bb.bp ], [ %i.apv, %bb.bm ], [ %i.arh, %bb.bn ], [ %i.arw, %bb.bo ], [ 0, %bb.bl ] ; 2 uses
  %.0639 = zext i8 %.0639.shrunk to i32           ; 3 uses
  %.0640 = zext i8 %.0640.shrunk to i32           ; 3 uses
  %.0641 = zext i8 %.0641.shrunk to i32           ; 3 uses
  switch i8 %i.ah, label %bb.bv [
    i8 1, label %bb.br
    i8 2, label %bb.bs
    i8 3, label %bb.bt
    i8 4, label %bb.bu
  ]

bb.br:                                            ; preds = %bb.bq
  %i.ati = load i8, ptr %i.mo, align 4
  %i.atj = zext i8 %i.ati to i32
  %i.atk = sub nsw i32 8, %i.atj
  %i.atl = lshr i32 %.0641, %i.atk
  %i.atm = load i8, ptr %i.mp, align 4
  %i.atn = zext nneg i8 %i.atm to i32
  %i.ato = shl i32 %i.atl, %i.atn
  %i.atp = load i8, ptr %i.mq, align 1
  %i.atq = zext i8 %i.atp to i32
  %i.atr = sub nsw i32 8, %i.atq
  %i.ats = lshr i32 %.0640, %i.atr
  %i.att = load i8, ptr %i.mr, align 1
  %i.atu = zext nneg i8 %i.att to i32
  %i.atv = shl i32 %i.ats, %i.atu
  %i.atw = or i32 %i.atv, %i.ato
  %i.atx = load i8, ptr %i.ms, align 2
  %i.aty = zext i8 %i.atx to i32
  %i.atz = sub nsw i32 8, %i.aty
  %i.aua = lshr i32 %.0639, %i.atz
  %i.aub = load i8, ptr %i.mt, align 2
  %i.auc = zext nneg i8 %i.aub to i32
  %i.aud = shl i32 %i.aua, %i.auc
  %i.aue = or i32 %i.atw, %i.aud
  %i.auf = load i8, ptr %i.mu, align 1
  %i.aug = zext i8 %i.auf to i32
  %i.auh = sub nsw i32 8, %i.aug
  %i.aui = lshr i32 %i.an, %i.auh
  %i.auj = load i8, ptr %i.mv, align 1
  %i.auk = zext nneg i8 %i.auj to i32
  %i.aul = shl i32 %i.aui, %i.auk
  %i.aum = or i32 %i.aue, %i.aul
  %i.aun = trunc i32 %i.aum to i8
  store i8 %i.aun, ptr %.19638, align 1
  br label %bb.bv
end_hunk_1
begin_hunk_2_@BlitNtoNCopyAlpha:bb.a
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
    i8 4, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  %i.la = load i8, ptr %i.eg, align 4
  %i.lb = zext i8 %i.la to i32
  %i.lc = sub nsw i32 8, %i.lb
  %i.ld = lshr i32 %.0204, %i.lc
  %i.le = load i8, ptr %i.eh, align 4
  %i.lf = zext nneg i8 %i.le to i32
  %i.lg = shl i32 %i.ld, %i.lf
  %i.lh = load i8, ptr %i.ei, align 1
  %i.li = zext i8 %i.lh to i32
  %i.lj = sub nsw i32 8, %i.li
  %i.lk = lshr i32 %.0203, %i.lj
  %i.ll = load i8, ptr %i.ej, align 1
  %i.lm = zext nneg i8 %i.ll to i32
  %i.ln = shl i32 %i.lk, %i.lm
  %i.lo = or i32 %i.ln, %i.lg
  %i.lp = load i8, ptr %i.ek, align 2
  %i.lq = zext i8 %i.lp to i32
  %i.lr = sub nsw i32 8, %i.lq
  %i.ls = lshr i32 %.0202, %i.lr
  %i.lt = load i8, ptr %i.el, align 2
  %i.lu = zext nneg i8 %i.lt to i32
  %i.lv = shl i32 %i.ls, %i.lu
  %i.lw = or i32 %i.lo, %i.lv
  %i.lx = load i8, ptr %i.em, align 1
  %i.ly = zext i8 %i.lx to i32
  %i.lz = sub nsw i32 8, %i.ly
  %i.ma = lshr i32 %.0201, %i.lz
  %i.mb = load i8, ptr %i.en, align 1
  %i.mc = zext nneg i8 %i.mb to i32
  %i.md = shl i32 %i.ma, %i.mc
  %i.me = or i32 %i.lw, %i.md
  %i.mf = trunc i32 %i.me to i8
  store i8 %i.mf, ptr %.6200233, align 1
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.mg = load i8, ptr %i.eg, align 4
  %i.mh = zext i8 %i.mg to i32
  %i.mi = sub nsw i32 8, %i.mh
  %i.mj = lshr i32 %.0204, %i.mi
  %i.mk = load i8, ptr %i.eh, align 4
  %i.ml = zext nneg i8 %i.mk to i32
  %i.mm = shl i32 %i.mj, %i.ml
  %i.mn = load i8, ptr %i.ei, align 1
  %i.mo = zext i8 %i.mn to i32
  %i.mp = sub nsw i32 8, %i.mo
  %i.mq = lshr i32 %.0203, %i.mp
  %i.mr = load i8, ptr %i.ej, align 1
  %i.ms = zext nneg i8 %i.mr to i32
  %i.mt = shl i32 %i.mq, %i.ms
  %i.mu = or i32 %i.mt, %i.mm
  %i.mv = load i8, ptr %i.ek, align 2
  %i.mw = zext i8 %i.mv to i32
  %i.mx = sub nsw i32 8, %i.mw
  %i.my = lshr i32 %.0202, %i.mx
  %i.mz = load i8, ptr %i.el, align 2
  %i.na = zext nneg i8 %i.mz to i32
  %i.nb = shl i32 %i.my, %i.na
  %i.nc = or i32 %i.mu, %i.nb
  %i.nd = load i8, ptr %i.em, align 1
  %i.ne = zext i8 %i.nd to i32
  %i.nf = sub nsw i32 8, %i.ne
  %i.ng = lshr i32 %.0201, %i.nf
  %i.nh = load i8, ptr %i.en, align 1
  %i.ni = zext nneg i8 %i.nh to i32
  %i.nj = shl i32 %i.ng, %i.ni
  %i.nk = or i32 %i.nc, %i.nj
  %i.nl = trunc i32 %i.nk to i16
  store i16 %i.nl, ptr %.6200233, align 2
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.nm = load i8, ptr %i.eh, align 4
  %i.nn = lshr i8 %i.nm, 3
  %i.no = zext nneg i8 %i.nn to i64
  %i.np = getelementptr inbounds nuw i8, ptr %.6200233, i64 %i.no
  store i8 %.0204.shrunk, ptr %i.np, align 1
  %i.nq = load i8, ptr %i.ej, align 1
  %i.nr = lshr i8 %i.nq, 3
  %i.ns = zext nneg i8 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %.6200233, i64 %i.ns
  store i8 %.0203.shrunk, ptr %i.nt, align 1
  %i.nu = load i8, ptr %i.el, align 2
  %i.nv = lshr i8 %i.nu, 3
  %i.nw = zext nneg i8 %i.nv to i64
  %i.nx = getelementptr inbounds nuw i8, ptr %.6200233, i64 %i.nw
  store i8 %.0202.shrunk, ptr %i.nx, align 1
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.ny = load i8, ptr %i.eg, align 4
  %i.nz = zext i8 %i.ny to i32
  %i.oa = sub nsw i32 8, %i.nz
  %i.ob = lshr i32 %.0204, %i.oa
  %i.oc = load i8, ptr %i.eh, align 4
  %i.od = zext nneg i8 %i.oc to i32
  %i.oe = shl i32 %i.ob, %i.od
  %i.of = load i8, ptr %i.ei, align 1
  %i.og = zext i8 %i.of to i32
  %i.oh = sub nsw i32 8, %i.og
  %i.oi = lshr i32 %.0203, %i.oh
  %i.oj = load i8, ptr %i.ej, align 1
  %i.ok = zext nneg i8 %i.oj to i32
  %i.ol = shl i32 %i.oi, %i.ok
  %i.om = or i32 %i.ol, %i.oe
  %i.on = load i8, ptr %i.ek, align 2
  %i.oo = zext i8 %i.on to i32
  %i.op = sub nsw i32 8, %i.oo
  %i.oq = lshr i32 %.0202, %i.op
  %i.or = load i8, ptr %i.el, align 2
  %i.os = zext nneg i8 %i.or to i32
  %i.ot = shl i32 %i.oq, %i.os
  %i.ou = or i32 %i.om, %i.ot
  %i.ov = load i8, ptr %i.em, align 1
  %i.ow = zext i8 %i.ov to i32
  %i.ox = sub nsw i32 8, %i.ow
  %i.oy = lshr i32 %.0201, %i.ox
  %i.oz = load i8, ptr %i.en, align 1
  %i.pa = zext nneg i8 %i.oz to i32
  %i.pb = shl i32 %i.oy, %i.pa
  %i.pc = or i32 %i.ou, %i.pb
  store i32 %i.pc, ptr %.6200233, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %i.pd = getelementptr inbounds nuw i8, ptr %.6200233, i64 %i.eo ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.6234, i64 %i.ep ; 2 uses
  %i.pf = add nsw i32 %.0209232, -1               ; 2 uses
  %.not218 = icmp eq i32 %i.pf, 0
  br i1 %.not218, label %._crit_edge236, label %bb.l, !llvm.loop !15

._crit_edge236:                                   ; preds = %bb.v
  %i.pg = add nsw i32 %.in241, -1                 ; 2 uses
  %i.ph = getelementptr inbounds i8, ptr %i.pe, i64 %i.eq
  %i.pi = getelementptr inbounds i8, ptr %i.pd, i64 %i.er
  %.not217 = icmp eq i32 %i.pg, 0
  br i1 %.not217, label %.loopexit, label %.preheader, !llvm.loop !16

.loopexit:                                        ; preds = %._crit_edge236, %bb.k, %.preheader.lr.ph, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Blit4to4MaskAlpha(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.p = load i32, ptr %i.o, align 4
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 27
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = sub nsw i32 8, %i.v
  %i.x = lshr i32 %i.s, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 31
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl i32 %i.x, %i.aa                     ; 8 uses
  %.not150153 = icmp eq i32 %i.d, 0
  br i1 %.not150153, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ac = add nsw i32 %i.b, 7
  %i.ad = sdiv i32 %i.ac, 8                       ; 8 uses
  %i.ae = and i32 %i.b, 7
  %i.af = sext i32 %i.h to i64
  %i.ag = sext i32 %i.l to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %.in = phi i32 [ %i.ah, %bb.k ], [ %i.d, %.lr.ph ]
  %.0121155 = phi ptr [ %i.bq, %bb.k ], [ %i.f, %.lr.ph ] ; 8 uses
  %.0129154 = phi ptr [ %i.br, %bb.k ], [ %i.j, %.lr.ph ] ; 8 uses
  %i.ah = add nsw i32 %.in, -1                    ; 2 uses
  switch i32 %i.ae, label %default.unreachable [
    i32 0, label %bb.c
    i32 7, label %bb.d
    i32 6, label %bb.e
    i32 5, label %bb.f
    i32 4, label %bb.g
    i32 3, label %bb.h
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.c:                                             ; preds = %.lr.ph.split, %bb.j
  %.1130 = phi ptr [ %.0129154, %.lr.ph.split ], [ %i.bm, %bb.j ] ; 2 uses
  %.1122 = phi ptr [ %.0121155, %.lr.ph.split ], [ %i.bn, %bb.j ] ; 2 uses
  %.0113 = phi i32 [ %i.ad, %.lr.ph.split ], [ %i.bo, %bb.j ]
  %i.ai = load i32, ptr %.1122, align 4
  %i.aj = or i32 %i.ai, %i.ab
  store i32 %i.aj, ptr %.1130, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.1130, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %.1122, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split
  %.2131 = phi ptr [ %i.ak, %bb.c ], [ %.0129154, %.lr.ph.split ] ; 2 uses
  %.2123 = phi ptr [ %i.al, %bb.c ], [ %.0121155, %.lr.ph.split ] ; 2 uses
  %.1114 = phi i32 [ %.0113, %bb.c ], [ %i.ad, %.lr.ph.split ]
  %i.am = load i32, ptr %.2123, align 4
  %i.an = or i32 %i.am, %i.ab
  store i32 %i.an, ptr %.2131, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.2131, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.2123, i64 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split
  %.3132 = phi ptr [ %i.ao, %bb.d ], [ %.0129154, %.lr.ph.split ] ; 2 uses
  %.3124 = phi ptr [ %i.ap, %bb.d ], [ %.0121155, %.lr.ph.split ] ; 2 uses
  %.2115 = phi i32 [ %.1114, %bb.d ], [ %i.ad, %.lr.ph.split ]
  %i.aq = load i32, ptr %.3124, align 4
  %i.ar = or i32 %i.aq, %i.ab
  store i32 %i.ar, ptr %.3132, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.3132, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %.3124, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split
  %.4133 = phi ptr [ %i.as, %bb.e ], [ %.0129154, %.lr.ph.split ] ; 2 uses
  %.4125 = phi ptr [ %i.at, %bb.e ], [ %.0121155, %.lr.ph.split ] ; 2 uses
  %.3116 = phi i32 [ %.2115, %bb.e ], [ %i.ad, %.lr.ph.split ]
  %i.au = load i32, ptr %.4125, align 4
  %i.av = or i32 %i.au, %i.ab
  store i32 %i.av, ptr %.4133, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.4133, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.4125, i64 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split
  %.5134 = phi ptr [ %i.aw, %bb.f ], [ %.0129154, %.lr.ph.split ] ; 2 uses
  %.5126 = phi ptr [ %i.ax, %bb.f ], [ %.0121155, %.lr.ph.split ] ; 2 uses
  %.4117 = phi i32 [ %.3116, %bb.f ], [ %i.ad, %.lr.ph.split ]
  %i.ay = load i32, ptr %.5126, align 4
  %i.az = or i32 %i.ay, %i.ab
  store i32 %i.az, ptr %.5134, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.5134, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.5126, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split
  %.6135 = phi ptr [ %i.ba, %bb.g ], [ %.0129154, %.lr.ph.split ] ; 2 uses
  %.6127 = phi ptr [ %i.bb, %bb.g ], [ %.0121155, %.lr.ph.split ] ; 2 uses
  %.5118 = phi i32 [ %.4117, %bb.g ], [ %i.ad, %.lr.ph.split ]
  %i.bc = load i32, ptr %.6127, align 4
  %i.bd = or i32 %i.bc, %i.ab
  store i32 %i.bd, ptr %.6135, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %.6135, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.6127, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split
  %.7136 = phi ptr [ %i.be, %bb.h ], [ %.0129154, %.lr.ph.split ] ; 2 uses
  %.7128 = phi ptr [ %i.bf, %bb.h ], [ %.0121155, %.lr.ph.split ] ; 2 uses
  %.6119 = phi i32 [ %.5118, %bb.h ], [ %i.ad, %.lr.ph.split ]
  %i.bg = load i32, ptr %.7128, align 4
  %i.bh = or i32 %i.bg, %i.ab
  store i32 %i.bh, ptr %.7136, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.7136, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.7128, i64 4
  br label %bb.j

default.unreachable:                              ; preds = %.lr.ph.split
  unreachable

bb.j:                                             ; preds = %.lr.ph.split, %bb.i
  %.8137 = phi ptr [ %i.bi, %bb.i ], [ %.0129154, %.lr.ph.split ] ; 2 uses
  %.8 = phi ptr [ %i.bj, %bb.i ], [ %.0121155, %.lr.ph.split ] ; 2 uses
  %.7120 = phi i32 [ %.6119, %bb.i ], [ %i.ad, %.lr.ph.split ] ; 2 uses
  %i.bk = load i32, ptr %.8, align 4
  %i.bl = or i32 %i.bk, %i.ab
  store i32 %i.bl, ptr %.8137, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.8137, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.8, i64 4 ; 2 uses
  %i.bo = add nsw i32 %.7120, -1
  %i.bp = icmp sgt i32 %.7120, 1
  br i1 %i.bp, label %bb.c, label %bb.k, !llvm.loop !17

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 %i.af
  %i.br = getelementptr inbounds i8, ptr %i.bm, i64 %i.ag
  %.not150 = icmp eq i32 %i.ah, 0
  br i1 %.not150, label %.loopexit, label %.lr.ph.split, !llvm.loop !18

bb.l:                                             ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = or i32 %i.bx, %i.bv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = or i32 %i.by, %i.ca                     ; 8 uses
  %.not149156 = icmp eq i32 %i.d, 0
  br i1 %.not149156, label %.loopexit, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.l
  %i.cc = add nsw i32 %i.b, 7
  %i.cd = sdiv i32 %i.cc, 8                       ; 8 uses
  %i.ce = and i32 %i.b, 7
  %i.cf = sext i32 %i.h to i64
  %i.cg = sext i32 %i.l to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph159, %bb.v
  %.in160 = phi i32 [ %i.d, %.lr.ph159 ], [ %i.ch, %bb.v ]
  %.9158 = phi ptr [ %i.f, %.lr.ph159 ], [ %i.dq, %bb.v ] ; 8 uses
  %.9138157 = phi ptr [ %i.j, %.lr.ph159 ], [ %i.dr, %bb.v ] ; 8 uses
  %i.ch = add nsw i32 %.in160, -1                 ; 2 uses
  switch i32 %i.ce, label %.unreachabledefault [
    i32 0, label %bb.n
    i32 7, label %bb.o
    i32 6, label %bb.p
    i32 5, label %bb.q
    i32 4, label %bb.r
    i32 3, label %bb.s
    i32 2, label %bb.t
    i32 1, label %bb.u
  ]

bb.n:                                             ; preds = %bb.m, %bb.u
  %.10139 = phi ptr [ %.9138157, %bb.m ], [ %i.dm, %bb.u ] ; 2 uses
  %.10 = phi ptr [ %.9158, %bb.m ], [ %i.dn, %bb.u ] ; 2 uses
  %.0 = phi i32 [ %i.cd, %bb.m ], [ %i.do, %bb.u ]
  %i.ci = load i32, ptr %.10, align 4
  %i.cj = and i32 %i.ci, %i.cb
  store i32 %i.cj, ptr %.10139, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.10139, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.10, i64 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.11140 = phi ptr [ %i.ck, %bb.n ], [ %.9138157, %bb.m ] ; 2 uses
  %.11 = phi ptr [ %i.cl, %bb.n ], [ %.9158, %bb.m ] ; 2 uses
  %.1 = phi i32 [ %.0, %bb.n ], [ %i.cd, %bb.m ]
  %i.cm = load i32, ptr %.11, align 4
  %i.cn = and i32 %i.cm, %i.cb
  store i32 %i.cn, ptr %.11140, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %.11140, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.11, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.12141 = phi ptr [ %i.co, %bb.o ], [ %.9138157, %bb.m ] ; 2 uses
  %.12 = phi ptr [ %i.cp, %bb.o ], [ %.9158, %bb.m ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.o ], [ %i.cd, %bb.m ]
  %i.cq = load i32, ptr %.12, align 4
  %i.cr = and i32 %i.cq, %i.cb
  store i32 %i.cr, ptr %.12141, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.12141, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %.12, i64 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.13142 = phi ptr [ %i.cs, %bb.p ], [ %.9138157, %bb.m ] ; 2 uses
  %.13 = phi ptr [ %i.ct, %bb.p ], [ %.9158, %bb.m ] ; 2 uses
  %.3 = phi i32 [ %.2, %bb.p ], [ %i.cd, %bb.m ]
  %i.cu = load i32, ptr %.13, align 4
  %i.cv = and i32 %i.cu, %i.cb
  store i32 %i.cv, ptr %.13142, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %.13142, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %.13, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m
  %.14143 = phi ptr [ %i.cw, %bb.q ], [ %.9138157, %bb.m ] ; 2 uses
  %.14 = phi ptr [ %i.cx, %bb.q ], [ %.9158, %bb.m ] ; 2 uses
  %.4 = phi i32 [ %.3, %bb.q ], [ %i.cd, %bb.m ]
  %i.cy = load i32, ptr %.14, align 4
  %i.cz = and i32 %i.cy, %i.cb
  store i32 %i.cz, ptr %.14143, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %.14143, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %.14, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %.15144 = phi ptr [ %i.da, %bb.r ], [ %.9138157, %bb.m ] ; 2 uses
  %.15 = phi ptr [ %i.db, %bb.r ], [ %.9158, %bb.m ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.r ], [ %i.cd, %bb.m ]
  %i.dc = load i32, ptr %.15, align 4
  %i.dd = and i32 %i.dc, %i.cb
  store i32 %i.dd, ptr %.15144, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %.15144, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %.15, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m
  %.16145 = phi ptr [ %i.de, %bb.s ], [ %.9138157, %bb.m ] ; 2 uses
  %.16 = phi ptr [ %i.df, %bb.s ], [ %.9158, %bb.m ] ; 2 uses
  %.6 = phi i32 [ %.5, %bb.s ], [ %i.cd, %bb.m ]
  %i.dg = load i32, ptr %.16, align 4
  %i.dh = and i32 %i.dg, %i.cb
  store i32 %i.dh, ptr %.16145, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %.16145, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.16, i64 4
  br label %bb.u

.unreachabledefault:                              ; preds = %bb.m
  unreachable

bb.u:                                             ; preds = %bb.m, %bb.t
  %.17146 = phi ptr [ %i.di, %bb.t ], [ %.9138157, %bb.m ] ; 2 uses
  %.17 = phi ptr [ %i.dj, %bb.t ], [ %.9158, %bb.m ] ; 2 uses
  %.7 = phi i32 [ %.6, %bb.t ], [ %i.cd, %bb.m ]  ; 2 uses
  %i.dk = load i32, ptr %.17, align 4
  %i.dl = and i32 %i.dk, %i.cb
  store i32 %i.dl, ptr %.17146, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %.17146, i64 4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.17, i64 4 ; 2 uses
  %i.do = add nsw i32 %.7, -1
  %i.dp = icmp sgt i32 %.7, 1
  br i1 %i.dp, label %bb.n, label %bb.v, !llvm.loop !19

bb.v:                                             ; preds = %bb.u
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %i.cf
  %i.dr = getelementptr inbounds i8, ptr %i.dm, i64 %i.cg
  %.not149 = icmp eq i32 %i.ch, 0
  br i1 %.not149, label %.loopexit, label %bb.m, !llvm.loop !20

.loopexit:                                        ; preds = %bb.k, %bb.v, %bb.b, %bb.l
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Blit2to2MaskAlpha(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.p = load i32, ptr %i.o, align 4
  %.not = icmp eq i32 %i.p, 0
  %.not149156 = icmp eq i32 %i.d, 0               ; 2 uses
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not149156, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 27
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = sub nsw i32 8, %i.v
  %i.x = lshr i32 %i.s, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 31
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl i32 %i.x, %i.aa
  %i.ac = add nsw i32 %i.b, 7
  %i.ad = sdiv i32 %i.ac, 8                       ; 8 uses
  %i.ae = and i32 %i.b, 7
  %i.af = trunc i32 %i.ab to i16                  ; 8 uses
  %i.ag = sext i32 %i.h to i64
  %i.ah = sext i32 %i.l to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %.in = phi i32 [ %i.ai, %bb.k ], [ %i.d, %.lr.ph ]
  %.0121155 = phi ptr [ %i.br, %bb.k ], [ %i.f, %.lr.ph ] ; 8 uses
  %.0129154 = phi ptr [ %i.bs, %bb.k ], [ %i.j, %.lr.ph ] ; 8 uses
  %i.ai = add nsw i32 %.in, -1                    ; 2 uses
  switch i32 %i.ae, label %default.unreachable [
    i32 0, label %bb.c
    i32 7, label %bb.d
    i32 6, label %bb.e
    i32 5, label %bb.f
    i32 4, label %bb.g
    i32 3, label %bb.h
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.c:                                             ; preds = %.lr.ph.split, %bb.j
  %.1130 = phi ptr [ %.0129154, %.lr.ph.split ], [ %i.bn, %bb.j ] ; 2 uses
  %.1122 = phi ptr [ %.0121155, %.lr.ph.split ], [ %i.bo, %bb.j ] ; 2 uses
  %.0113 = phi i32 [ %i.ad, %.lr.ph.split ], [ %i.bp, %bb.j ]
  %i.aj = load i16, ptr %.1122, align 2
  %i.ak = or i16 %i.aj, %i.af
  store i16 %i.ak, ptr %.1130, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %.1130, i64 2
  %i.am = getelementptr inbounds nuw i8, ptr %.1122, i64 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split
  %.2131 = phi ptr [ %i.al, %bb.c ], [ %.0129154, %.lr.ph.split ] ; 2 uses
  %.2123 = phi ptr [ %i.am, %bb.c ], [ %.0121155, %.lr.ph.split ] ; 2 uses
  %.1114 = phi i32 [ %.0113, %bb.c ], [ %i.ad, %.lr.ph.split ]
  %i.an = load i16, ptr %.2123, align 2
  %i.ao = or i16 %i.an, %i.af
  store i16 %i.ao, ptr %.2131, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %.2131, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.2123, i64 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split
  %.3132 = phi ptr [ %i.ap, %bb.d ], [ %.0129154, %.lr.ph.split ] ; 2 uses
  %.3124 = phi ptr [ %i.aq, %bb.d ], [ %.0121155, %.lr.ph.split ] ; 2 uses
  %.2115 = phi i32 [ %.1114, %bb.d ], [ %i.ad, %.lr.ph.split ]
  %i.ar = load i16, ptr %.3124, align 2
  %i.as = or i16 %i.ar, %i.af
  store i16 %i.as, ptr %.3132, align 2
  %i.at = getelementptr inbounds nuw i8, ptr %.3132, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %.3124, i64 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split
  %.4133 = phi ptr [ %i.at, %bb.e ], [ %.0129154, %.lr.ph.split ] ; 2 uses
  %.4125 = phi ptr [ %i.au, %bb.e ], [ %.0121155, %.lr.ph.split ] ; 2 uses
  %.3116 = phi i32 [ %.2115, %bb.e ], [ %i.ad, %.lr.ph.split ]
  %i.av = load i16, ptr %.4125, align 2
  %i.aw = or i16 %i.av, %i.af
  store i16 %i.aw, ptr %.4133, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %.4133, i64 2
  %i.ay = getelementptr inbounds nuw i8, ptr %.4125, i64 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split
  %.5134 = phi ptr [ %i.ax, %bb.f ], [ %.0129154, %.lr.ph.split ] ; 2 uses
  %.5126 = phi ptr [ %i.ay, %bb.f ], [ %.0121155, %.lr.ph.split ] ; 2 uses
  %.4117 = phi i32 [ %.3116, %bb.f ], [ %i.ad, %.lr.ph.split ]
  %i.az = load i16, ptr %.5126, align 2
  %i.ba = or i16 %i.az, %i.af
  store i16 %i.ba, ptr %.5134, align 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.5134, i64 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.5126, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split
  %.6135 = phi ptr [ %i.bb, %bb.g ], [ %.0129154, %.lr.ph.split ] ; 2 uses
  %.6127 = phi ptr [ %i.bc, %bb.g ], [ %.0121155, %.lr.ph.split ] ; 2 uses
  %.5118 = phi i32 [ %.4117, %bb.g ], [ %i.ad, %.lr.ph.split ]
  %i.bd = load i16, ptr %.6127, align 2
  %i.be = or i16 %i.bd, %i.af
  store i16 %i.be, ptr %.6135, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.6135, i64 2
  %i.bg = getelementptr inbounds nuw i8, ptr %.6127, i64 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split
  %.7136 = phi ptr [ %i.bf, %bb.h ], [ %.0129154, %.lr.ph.split ] ; 2 uses
  %.7128 = phi ptr [ %i.bg, %bb.h ], [ %.0121155, %.lr.ph.split ] ; 2 uses
  %.6119 = phi i32 [ %.5118, %bb.h ], [ %i.ad, %.lr.ph.split ]
  %i.bh = load i16, ptr %.7128, align 2
  %i.bi = or i16 %i.bh, %i.af
  store i16 %i.bi, ptr %.7136, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %.7136, i64 2
  %i.bk = getelementptr inbounds nuw i8, ptr %.7128, i64 2
  br label %bb.j

default.unreachable:                              ; preds = %.lr.ph.split
  unreachable

bb.j:                                             ; preds = %.lr.ph.split, %bb.i
  %.8137 = phi ptr [ %i.bj, %bb.i ], [ %.0129154, %.lr.ph.split ] ; 2 uses
  %.8 = phi ptr [ %i.bk, %bb.i ], [ %.0121155, %.lr.ph.split ] ; 2 uses
  %.7120 = phi i32 [ %.6119, %bb.i ], [ %i.ad, %.lr.ph.split ] ; 2 uses
  %i.bl = load i16, ptr %.8, align 2
  %i.bm = or i16 %i.bl, %i.af
  store i16 %i.bm, ptr %.8137, align 2
  %i.bn = getelementptr inbounds nuw i8, ptr %.8137, i64 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.8, i64 2 ; 2 uses
  %i.bp = add nsw i32 %.7120, -1
  %i.bq = icmp sgt i32 %.7120, 1
  br i1 %i.bq, label %bb.c, label %bb.k, !llvm.loop !21

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 %i.ag
  %i.bs = getelementptr inbounds i8, ptr %i.bn, i64 %i.ah
  %.not150 = icmp eq i32 %i.ai, 0
  br i1 %.not150, label %.loopexit, label %.lr.ph.split, !llvm.loop !22

bb.l:                                             ; preds = %bb.a
  br i1 %.not149156, label %.loopexit, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = or i32 %i.bw, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = or i32 %i.bz, %i.cb
  %i.cd = add nsw i32 %i.b, 7
  %i.ce = sdiv i32 %i.cd, 8                       ; 8 uses
  %i.cf = and i32 %i.b, 7
  %i.cg = trunc i32 %i.cc to i16                  ; 8 uses
  %i.ch = sext i32 %i.h to i64
  %i.ci = sext i32 %i.l to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph159, %bb.v
  %.in160 = phi i32 [ %i.d, %.lr.ph159 ], [ %i.cj, %bb.v ]
  %.9158 = phi ptr [ %i.f, %.lr.ph159 ], [ %i.ds, %bb.v ] ; 8 uses
  %.9138157 = phi ptr [ %i.j, %.lr.ph159 ], [ %i.dt, %bb.v ] ; 8 uses
  %i.cj = add nsw i32 %.in160, -1                 ; 2 uses
  switch i32 %i.cf, label %.unreachabledefault [
    i32 0, label %bb.n
    i32 7, label %bb.o
    i32 6, label %bb.p
    i32 5, label %bb.q
    i32 4, label %bb.r
    i32 3, label %bb.s
    i32 2, label %bb.t
    i32 1, label %bb.u
  ]

bb.n:                                             ; preds = %bb.m, %bb.u
  %.10139 = phi ptr [ %.9138157, %bb.m ], [ %i.do, %bb.u ] ; 2 uses
  %.10 = phi ptr [ %.9158, %bb.m ], [ %i.dp, %bb.u ] ; 2 uses
  %.0 = phi i32 [ %i.ce, %bb.m ], [ %i.dq, %bb.u ]
  %i.ck = load i16, ptr %.10, align 2
  %i.cl = and i16 %i.ck, %i.cg
  store i16 %i.cl, ptr %.10139, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %.10139, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %.10, i64 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.11140 = phi ptr [ %i.cm, %bb.n ], [ %.9138157, %bb.m ] ; 2 uses
  %.11 = phi ptr [ %i.cn, %bb.n ], [ %.9158, %bb.m ] ; 2 uses
  %.1 = phi i32 [ %.0, %bb.n ], [ %i.ce, %bb.m ]
  %i.co = load i16, ptr %.11, align 2
  %i.cp = and i16 %i.co, %i.cg
  store i16 %i.cp, ptr %.11140, align 2
  %i.cq = getelementptr inbounds nuw i8, ptr %.11140, i64 2
  %i.cr = getelementptr inbounds nuw i8, ptr %.11, i64 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.12141 = phi ptr [ %i.cq, %bb.o ], [ %.9138157, %bb.m ] ; 2 uses
  %.12 = phi ptr [ %i.cr, %bb.o ], [ %.9158, %bb.m ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.o ], [ %i.ce, %bb.m ]
  %i.cs = load i16, ptr %.12, align 2
  %i.ct = and i16 %i.cs, %i.cg
  store i16 %i.ct, ptr %.12141, align 2
  %i.cu = getelementptr inbounds nuw i8, ptr %.12141, i64 2
  %i.cv = getelementptr inbounds nuw i8, ptr %.12, i64 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.13142 = phi ptr [ %i.cu, %bb.p ], [ %.9138157, %bb.m ] ; 2 uses
  %.13 = phi ptr [ %i.cv, %bb.p ], [ %.9158, %bb.m ] ; 2 uses
  %.3 = phi i32 [ %.2, %bb.p ], [ %i.ce, %bb.m ]
  %i.cw = load i16, ptr %.13, align 2
  %i.cx = and i16 %i.cw, %i.cg
  store i16 %i.cx, ptr %.13142, align 2
  %i.cy = getelementptr inbounds nuw i8, ptr %.13142, i64 2
  %i.cz = getelementptr inbounds nuw i8, ptr %.13, i64 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m
  %.14143 = phi ptr [ %i.cy, %bb.q ], [ %.9138157, %bb.m ] ; 2 uses
  %.14 = phi ptr [ %i.cz, %bb.q ], [ %.9158, %bb.m ] ; 2 uses
  %.4 = phi i32 [ %.3, %bb.q ], [ %i.ce, %bb.m ]
  %i.da = load i16, ptr %.14, align 2
  %i.db = and i16 %i.da, %i.cg
  store i16 %i.db, ptr %.14143, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %.14143, i64 2
  %i.dd = getelementptr inbounds nuw i8, ptr %.14, i64 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %.15144 = phi ptr [ %i.dc, %bb.r ], [ %.9138157, %bb.m ] ; 2 uses
  %.15 = phi ptr [ %i.dd, %bb.r ], [ %.9158, %bb.m ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.r ], [ %i.ce, %bb.m ]
  %i.de = load i16, ptr %.15, align 2
  %i.df = and i16 %i.de, %i.cg
  store i16 %i.df, ptr %.15144, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %.15144, i64 2
  %i.dh = getelementptr inbounds nuw i8, ptr %.15, i64 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m
  %.16145 = phi ptr [ %i.dg, %bb.s ], [ %.9138157, %bb.m ] ; 2 uses
  %.16 = phi ptr [ %i.dh, %bb.s ], [ %.9158, %bb.m ] ; 2 uses
  %.6 = phi i32 [ %.5, %bb.s ], [ %i.ce, %bb.m ]
  %i.di = load i16, ptr %.16, align 2
  %i.dj = and i16 %i.di, %i.cg
  store i16 %i.dj, ptr %.16145, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %.16145, i64 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.16, i64 2
  br label %bb.u

.unreachabledefault:                              ; preds = %bb.m
  unreachable

bb.u:                                             ; preds = %bb.m, %bb.t
  %.17146 = phi ptr [ %i.dk, %bb.t ], [ %.9138157, %bb.m ] ; 2 uses
  %.17 = phi ptr [ %i.dl, %bb.t ], [ %.9158, %bb.m ] ; 2 uses
  %.7 = phi i32 [ %.6, %bb.t ], [ %i.ce, %bb.m ]  ; 2 uses
  %i.dm = load i16, ptr %.17, align 2
  %i.dn = and i16 %i.dm, %i.cg
  store i16 %i.dn, ptr %.17146, align 2
  %i.do = getelementptr inbounds nuw i8, ptr %.17146, i64 2 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.17, i64 2 ; 2 uses
  %i.dq = add nsw i32 %.7, -1
  %i.dr = icmp sgt i32 %.7, 1
  br i1 %i.dr, label %bb.n, label %bb.v, !llvm.loop !23

bb.v:                                             ; preds = %bb.u
  %i.ds = getelementptr inbounds i8, ptr %i.dp, i64 %i.ch
  %i.dt = getelementptr inbounds i8, ptr %i.do, i64 %i.ci
  %.not149 = icmp eq i32 %i.cj, 0
  br i1 %.not149, label %.loopexit, label %bb.m, !llvm.loop !24

.loopexit:                                        ; preds = %bb.k, %bb.v, %bb.b, %bb.l
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Blit2to2Key(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4
  %i.i = xor i32 %i.h, -1                         ; 9 uses
  %i.j = and i32 %i.d, %i.i                       ; 8 uses
  %.not102 = icmp eq i32 %i.b, 0
  br i1 %.not102, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = load i32, ptr %i.k, align 4
  %i.m = sdiv i32 %i.l, 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i32, ptr %i.n, align 4
  %i.p = sdiv i32 %i.o, 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = add nsw i32 %i.v, 7
  %i.x = sdiv i32 %i.w, 8                         ; 8 uses
  %i.y = and i32 %i.v, 7
  %i.z = sext i32 %i.p to i64
  %i.aa = sext i32 %i.m to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aa
  %.in = phi i32 [ %i.b, %.lr.ph ], [ %i.ab, %bb.aa ]
  %.076104 = phi ptr [ %i.r, %.lr.ph ], [ %i.bt, %bb.aa ] ; 8 uses
  %.084103 = phi ptr [ %i.t, %.lr.ph ], [ %i.bs, %bb.aa ] ; 8 uses
  %i.ab = add nsw i32 %.in, -1                    ; 2 uses
  switch i32 %i.y, label %default.unreachable107 [
    i32 0, label %bb.c
    i32 7, label %bb.f
    i32 6, label %bb.i
    i32 5, label %bb.l
    i32 4, label %bb.o
    i32 3, label %bb.r
    i32 2, label %bb.u
    i32 1, label %bb.x
  ]

bb.c:                                             ; preds = %bb.b, %bb.z
  %.185 = phi ptr [ %.084103, %bb.b ], [ %i.bp, %bb.z ] ; 2 uses
  %.177 = phi ptr [ %.076104, %bb.b ], [ %i.bo, %bb.z ] ; 2 uses
  %.0 = phi i32 [ %i.x, %bb.b ], [ %i.bq, %bb.z ]
  %i.ac = load i16, ptr %.185, align 2            ; 2 uses
  %i.ad = zext i16 %i.ac to i32
  %i.ae = and i32 %i.ad, %i.i
  %.not94 = icmp eq i32 %i.ae, %i.j
  br i1 %.not94, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i16 %i.ac, ptr %.177, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.177, i64 2
  %i.ag = getelementptr inbounds nuw i8, ptr %.185, i64 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.286 = phi ptr [ %i.ag, %bb.e ], [ %.084103, %bb.b ] ; 2 uses
  %.278 = phi ptr [ %i.af, %bb.e ], [ %.076104, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %.0, %bb.e ], [ %i.x, %bb.b ]
  %i.ah = load i16, ptr %.286, align 2            ; 2 uses
  %i.ai = zext i16 %i.ah to i32
  %i.aj = and i32 %i.ai, %i.i
  %.not95 = icmp eq i32 %i.aj, %i.j
  br i1 %.not95, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i16 %i.ah, ptr %.278, align 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.278, i64 2
  %i.al = getelementptr inbounds nuw i8, ptr %.286, i64 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.387 = phi ptr [ %i.al, %bb.h ], [ %.084103, %bb.b ] ; 2 uses
  %.379 = phi ptr [ %i.ak, %bb.h ], [ %.076104, %bb.b ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.h ], [ %i.x, %bb.b ]
  %i.am = load i16, ptr %.387, align 2            ; 2 uses
  %i.an = zext i16 %i.am to i32
  %i.ao = and i32 %i.an, %i.i
  %.not96 = icmp eq i32 %i.ao, %i.j
  br i1 %.not96, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i16 %i.am, ptr %.379, align 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.379, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.387, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %.488 = phi ptr [ %i.aq, %bb.k ], [ %.084103, %bb.b ] ; 2 uses
  %.480 = phi ptr [ %i.ap, %bb.k ], [ %.076104, %bb.b ] ; 2 uses
  %.3 = phi i32 [ %.2, %bb.k ], [ %i.x, %bb.b ]
  %i.ar = load i16, ptr %.488, align 2            ; 2 uses
  %i.as = zext i16 %i.ar to i32
  %i.at = and i32 %i.as, %i.i
  %.not97 = icmp eq i32 %i.at, %i.j
  br i1 %.not97, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i16 %i.ar, ptr %.480, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %.480, i64 2
  %i.av = getelementptr inbounds nuw i8, ptr %.488, i64 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.b
  %.589 = phi ptr [ %i.av, %bb.n ], [ %.084103, %bb.b ] ; 2 uses
  %.581 = phi ptr [ %i.au, %bb.n ], [ %.076104, %bb.b ] ; 2 uses
  %.4 = phi i32 [ %.3, %bb.n ], [ %i.x, %bb.b ]
  %i.aw = load i16, ptr %.589, align 2            ; 2 uses
  %i.ax = zext i16 %i.aw to i32
  %i.ay = and i32 %i.ax, %i.i
  %.not98 = icmp eq i32 %i.ay, %i.j
  br i1 %.not98, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i16 %i.aw, ptr %.581, align 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %.581, i64 2
  %i.ba = getelementptr inbounds nuw i8, ptr %.589, i64 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.b
  %.690 = phi ptr [ %i.ba, %bb.q ], [ %.084103, %bb.b ] ; 2 uses
  %.682 = phi ptr [ %i.az, %bb.q ], [ %.076104, %bb.b ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.q ], [ %i.x, %bb.b ]
  %i.bb = load i16, ptr %.690, align 2            ; 2 uses
  %i.bc = zext i16 %i.bb to i32
  %i.bd = and i32 %i.bc, %i.i
  %.not99 = icmp eq i32 %i.bd, %i.j
  br i1 %.not99, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i16 %i.bb, ptr %.682, align 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %.682, i64 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.690, i64 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.b
  %.791 = phi ptr [ %i.bf, %bb.t ], [ %.084103, %bb.b ] ; 2 uses
  %.783 = phi ptr [ %i.be, %bb.t ], [ %.076104, %bb.b ] ; 2 uses
  %.6 = phi i32 [ %.5, %bb.t ], [ %i.x, %bb.b ]
  %i.bg = load i16, ptr %.791, align 2            ; 2 uses
  %i.bh = zext i16 %i.bg to i32
  %i.bi = and i32 %i.bh, %i.i
  %.not100 = icmp eq i32 %i.bi, %i.j
  br i1 %.not100, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i16 %i.bg, ptr %.783, align 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %.783, i64 2
  %i.bk = getelementptr inbounds nuw i8, ptr %.791, i64 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.b
  %.892 = phi ptr [ %i.bk, %bb.w ], [ %.084103, %bb.b ] ; 2 uses
  %.8 = phi ptr [ %i.bj, %bb.w ], [ %.076104, %bb.b ] ; 2 uses
  %.7 = phi i32 [ %.6, %bb.w ], [ %i.x, %bb.b ]   ; 2 uses
  %i.bl = load i16, ptr %.892, align 2            ; 2 uses
  %i.bm = zext i16 %i.bl to i32
  %i.bn = and i32 %i.bm, %i.i
  %.not101 = icmp eq i32 %i.bn, %i.j
  br i1 %.not101, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i16 %i.bl, ptr %.8, align 2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %.8, i64 2 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.892, i64 2 ; 2 uses
  %i.bq = add nsw i32 %.7, -1
  %i.br = icmp sgt i32 %.7, 1
  br i1 %i.br, label %bb.c, label %bb.aa, !llvm.loop !25

default.unreachable107:                           ; preds = %bb.b
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.z
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.aa
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.aa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @BlitNtoNKeyCopyAlpha(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.e, align 8              ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4              ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.p = load i32, ptr %i.o, align 4              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8              ; 15 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.u, align 8              ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 20 ; 13 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = xor i32 %i.x, -1                         ; 17 uses
  %i.z = and i32 %i.r, %i.y                       ; 16 uses
  %i.aa = load i32, ptr %i.t, align 4             ; 3 uses
  %i.ab = load i32, ptr %i.v, align 4             ; 2 uses
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.ad = add i32 %i.aa, -372645892               ; 2 uses
  %i.ae = tail call i32 @llvm.fshl.i32(i32 %i.ad, i32 %i.ad, i32 12)
  switch i32 %i.ae, label %.loopexit [
    i32 0, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.c
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %.not728756 = icmp eq i32 %i.h, 0
  br i1 %.not728756, label %.loopexit, label %.lr.ph760

.lr.ph760:                                        ; preds = %bb.c
  %i.af = add nsw i32 %i.f, 7
  %i.ag = sdiv i32 %i.af, 8                       ; 8 uses
  %i.ah = and i32 %i.f, 7
  %i.ai = sext i32 %i.l to i64
  %i.aj = sext i32 %i.p to i64
  br label %.lr.ph760.split

.lr.ph760.split:                                  ; preds = %.lr.ph760, %bb.ab
  %.in763 = phi i32 [ %i.ak, %bb.ab ], [ %i.h, %.lr.ph760 ]
  %.0674758 = phi ptr [ %i.bt, %bb.ab ], [ %i.j, %.lr.ph760 ] ; 8 uses
  %.0683757 = phi ptr [ %i.bu, %bb.ab ], [ %i.n, %.lr.ph760 ] ; 8 uses
  %i.ak = add nsw i32 %.in763, -1                 ; 2 uses
  switch i32 %i.ah, label %default.unreachable [
    i32 0, label %bb.d
    i32 7, label %bb.g
    i32 6, label %bb.j
    i32 5, label %bb.m
    i32 4, label %bb.p
    i32 3, label %bb.s
    i32 2, label %bb.v
    i32 1, label %bb.y
  ]

bb.d:                                             ; preds = %.lr.ph760.split, %bb.aa
  %.0692 = phi i32 [ %i.ag, %.lr.ph760.split ], [ %i.br, %bb.aa ]
  %.1684 = phi ptr [ %.0683757, %.lr.ph760.split ], [ %i.bq, %bb.aa ] ; 2 uses
  %.1675 = phi ptr [ %.0674758, %.lr.ph760.split ], [ %i.bp, %bb.aa ] ; 2 uses
  %i.al = load i32, ptr %.1675, align 4           ; 2 uses
  %i.am = and i32 %i.al, %i.y
  %.not729 = icmp eq i32 %i.am, %i.z
  br i1 %.not729, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.al, ptr %.1684, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %.1675, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.1684, i64 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph760.split
  %.1693 = phi i32 [ %.0692, %bb.f ], [ %i.ag, %.lr.ph760.split ]
  %.2685 = phi ptr [ %i.ao, %bb.f ], [ %.0683757, %.lr.ph760.split ] ; 2 uses
  %.2676 = phi ptr [ %i.an, %bb.f ], [ %.0674758, %.lr.ph760.split ] ; 2 uses
  %i.ap = load i32, ptr %.2676, align 4           ; 2 uses
  %i.aq = and i32 %i.ap, %i.y
  %.not730 = icmp eq i32 %i.aq, %i.z
  br i1 %.not730, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.ap, ptr %.2685, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.2676, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %.2685, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph760.split
  %.2694 = phi i32 [ %.1693, %bb.i ], [ %i.ag, %.lr.ph760.split ]
  %.3686 = phi ptr [ %i.as, %bb.i ], [ %.0683757, %.lr.ph760.split ] ; 2 uses
  %.3677 = phi ptr [ %i.ar, %bb.i ], [ %.0674758, %.lr.ph760.split ] ; 2 uses
  %i.at = load i32, ptr %.3677, align 4           ; 2 uses
  %i.au = and i32 %i.at, %i.y
  %.not731 = icmp eq i32 %i.au, %i.z
  br i1 %.not731, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.at, ptr %.3686, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %.3677, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.3686, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph760.split
  %.3695 = phi i32 [ %.2694, %bb.l ], [ %i.ag, %.lr.ph760.split ]
  %.4687 = phi ptr [ %i.aw, %bb.l ], [ %.0683757, %.lr.ph760.split ] ; 2 uses
  %.4678 = phi ptr [ %i.av, %bb.l ], [ %.0674758, %.lr.ph760.split ] ; 2 uses
  %i.ax = load i32, ptr %.4678, align 4           ; 2 uses
  %i.ay = and i32 %i.ax, %i.y
  %.not732 = icmp eq i32 %i.ay, %i.z
  br i1 %.not732, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.ax, ptr %.4687, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %.4678, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.4687, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph760.split
  %.4696 = phi i32 [ %.3695, %bb.o ], [ %i.ag, %.lr.ph760.split ]
  %.5688 = phi ptr [ %i.ba, %bb.o ], [ %.0683757, %.lr.ph760.split ] ; 2 uses
  %.5679 = phi ptr [ %i.az, %bb.o ], [ %.0674758, %.lr.ph760.split ] ; 2 uses
  %i.bb = load i32, ptr %.5679, align 4           ; 2 uses
  %i.bc = and i32 %i.bb, %i.y
  %.not733 = icmp eq i32 %i.bc, %i.z
  br i1 %.not733, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.bb, ptr %.5688, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %.5679, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %.5688, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph760.split
  %.5697 = phi i32 [ %.4696, %bb.r ], [ %i.ag, %.lr.ph760.split ]
  %.6689 = phi ptr [ %i.be, %bb.r ], [ %.0683757, %.lr.ph760.split ] ; 2 uses
  %.6680 = phi ptr [ %i.bd, %bb.r ], [ %.0674758, %.lr.ph760.split ] ; 2 uses
  %i.bf = load i32, ptr %.6680, align 4           ; 2 uses
  %i.bg = and i32 %i.bf, %i.y
  %.not734 = icmp eq i32 %i.bg, %i.z
  br i1 %.not734, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.bf, ptr %.6689, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %.6680, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.6689, i64 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph760.split
  %.6698 = phi i32 [ %.5697, %bb.u ], [ %i.ag, %.lr.ph760.split ]
  %.7690 = phi ptr [ %i.bi, %bb.u ], [ %.0683757, %.lr.ph760.split ] ; 2 uses
  %.7681 = phi ptr [ %i.bh, %bb.u ], [ %.0674758, %.lr.ph760.split ] ; 2 uses
  %i.bj = load i32, ptr %.7681, align 4           ; 2 uses
  %i.bk = and i32 %i.bj, %i.y
  %.not735 = icmp eq i32 %i.bk, %i.z
  br i1 %.not735, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %i.bj, ptr %.7690, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %.7681, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.7690, i64 4
  br label %bb.y

default.unreachable:                              ; preds = %.lr.ph760.split
  unreachable

bb.y:                                             ; preds = %.lr.ph760.split, %bb.x
  %.7699 = phi i32 [ %.6698, %bb.x ], [ %i.ag, %.lr.ph760.split ] ; 2 uses
  %.8691 = phi ptr [ %i.bm, %bb.x ], [ %.0683757, %.lr.ph760.split ] ; 2 uses
  %.8682 = phi ptr [ %i.bl, %bb.x ], [ %.0674758, %.lr.ph760.split ] ; 2 uses
  %i.bn = load i32, ptr %.8682, align 4           ; 2 uses
  %i.bo = and i32 %i.bn, %i.y
  %.not736 = icmp eq i32 %i.bo, %i.z
  br i1 %.not736, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 %i.bn, ptr %.8691, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %.8682, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.8691, i64 4 ; 2 uses
  %i.br = add nsw i32 %.7699, -1
  %i.bs = icmp sgt i32 %.7699, 1
  br i1 %i.bs, label %bb.d, label %bb.ab, !llvm.loop !27

bb.ab:                                            ; preds = %bb.aa
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.ai
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.aj
  %.not728 = icmp eq i32 %i.ak, 0
  br i1 %.not728, label %.loopexit, label %.lr.ph760.split, !llvm.loop !28

bb.ac:                                            ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %i.bw = load i8, ptr %i.bv, align 1             ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  %i.by = load i8, ptr %i.bx, align 1             ; 6 uses
  %i.bz = icmp ne i8 %i.by, 4
  %i.ca = icmp ne i8 %i.bw, 4
  %or.cond.not777 = select i1 %i.bz, i1 true, i1 %i.ca
  %i.cb = and i32 %i.aa, -15794176
  %or.cond743 = icmp eq i32 %i.cb, 369557504
  %or.cond774 = or i1 %or.cond.not777, %or.cond743
  %i.cc = and i32 %i.ab, -15794176
  %or.cond744 = icmp eq i32 %i.cc, 369557504
  %or.cond775 = or i1 %or.cond774, %or.cond744
  br i1 %or.cond775, label %bb.as, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call fastcc void @get_permutation(ptr noundef nonnull %i.t, ptr noundef nonnull %i.v, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef null)
  %.not723748 = icmp eq i32 %i.h, 0
  br i1 %.not723748, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad
  %i.cd = add nsw i32 %i.f, 3
  %i.ce = sdiv i32 %i.cd, 4                       ; 4 uses
  %i.cf = and i32 %i.f, 3
  %i.cg = sext i32 %i.l to i64
  %i.ch = sext i32 %i.p to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %bb.ar
  %.in = phi i32 [ %i.h, %.lr.ph ], [ %i.ci, %bb.ar ]
  %.0641750 = phi ptr [ %i.j, %.lr.ph ], [ %i.fz, %bb.ar ] ; 4 uses
  %.0644749 = phi ptr [ %i.n, %.lr.ph ], [ %i.ga, %bb.ar ] ; 4 uses
  %i.ci = add nsw i32 %.in, -1                    ; 2 uses
  switch i32 %i.cf, label %.unreachabledefault [
    i32 0, label %bb.af
    i32 3, label %bb.ai
    i32 2, label %bb.al
    i32 1, label %bb.ao
  ]

bb.af:                                            ; preds = %bb.ae, %bb.aq
  %.0704 = phi i32 [ %i.ce, %bb.ae ], [ %i.fx, %bb.aq ]
  %.1645 = phi ptr [ %.0644749, %bb.ae ], [ %i.fw, %bb.aq ] ; 5 uses
  %.1642 = phi ptr [ %.0641750, %bb.ae ], [ %i.fv, %bb.aq ] ; 6 uses
  %i.cj = load i32, ptr %.1642, align 4
  %i.ck = and i32 %i.cj, %i.y
  %.not724 = icmp eq i32 %i.ck, %i.z
  br i1 %.not724, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cl = load i32, ptr %i.a, align 4
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %.1642, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1
  store i8 %i.co, ptr %.1645, align 1
  %i.cp = load i32, ptr %i.b, align 4
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %.1642, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.1645, i64 1
  store i8 %i.cs, ptr %i.ct, align 1
  %i.cu = load i32, ptr %i.c, align 4
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %.1642, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.1645, i64 2
  store i8 %i.cx, ptr %i.cy, align 1
  %i.cz = load i32, ptr %i.d, align 4
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr %.1642, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.1645, i64 3
  store i8 %i.dc, ptr %i.dd, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.de = getelementptr inbounds nuw i8, ptr %.1642, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %.1645, i64 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.1705 = phi i32 [ %.0704, %bb.ah ], [ %i.ce, %bb.ae ]
  %.2646 = phi ptr [ %i.df, %bb.ah ], [ %.0644749, %bb.ae ] ; 5 uses
  %.2643 = phi ptr [ %i.de, %bb.ah ], [ %.0641750, %bb.ae ] ; 6 uses
  %i.dg = load i32, ptr %.2643, align 4
  %i.dh = and i32 %i.dg, %i.y
  %.not725 = icmp eq i32 %i.dh, %i.z
  br i1 %.not725, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.di = load i32, ptr %i.a, align 4
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds i8, ptr %.2643, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1
  store i8 %i.dl, ptr %.2646, align 1
  %i.dm = load i32, ptr %i.b, align 4
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %.2643, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.2646, i64 1
  store i8 %i.dp, ptr %i.dq, align 1
  %i.dr = load i32, ptr %i.c, align 4
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds i8, ptr %.2643, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.2646, i64 2
  store i8 %i.du, ptr %i.dv, align 1
  %i.dw = load i32, ptr %i.d, align 4
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %.2643, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %.2646, i64 3
  store i8 %i.dz, ptr %i.ea, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.eb = getelementptr inbounds nuw i8, ptr %.2643, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %.2646, i64 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ae
  %.2706 = phi i32 [ %.1705, %bb.ak ], [ %i.ce, %bb.ae ]
  %.3647 = phi ptr [ %i.ec, %bb.ak ], [ %.0644749, %bb.ae ] ; 5 uses
  %.3 = phi ptr [ %i.eb, %bb.ak ], [ %.0641750, %bb.ae ] ; 6 uses
  %i.ed = load i32, ptr %.3, align 4
  %i.ee = and i32 %i.ed, %i.y
  %.not726 = icmp eq i32 %i.ee, %i.z
  br i1 %.not726, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ef = load i32, ptr %i.a, align 4
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds i8, ptr %.3, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1
  store i8 %i.ei, ptr %.3647, align 1
  %i.ej = load i32, ptr %i.b, align 4
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds i8, ptr %.3, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %.3647, i64 1
  store i8 %i.em, ptr %i.en, align 1
  %i.eo = load i32, ptr %i.c, align 4
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %.3, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %.3647, i64 2
  store i8 %i.er, ptr %i.es, align 1
  %i.et = load i32, ptr %i.d, align 4
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds i8, ptr %.3, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = getelementptr inbounds nuw i8, ptr %.3647, i64 3
  store i8 %i.ew, ptr %i.ex, align 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ey = getelementptr inbounds nuw i8, ptr %.3, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %.3647, i64 4
  br label %bb.ao

.unreachabledefault:                              ; preds = %bb.ae
  unreachable

bb.ao:                                            ; preds = %bb.ae, %bb.an
  %.3707 = phi i32 [ %.2706, %bb.an ], [ %i.ce, %bb.ae ] ; 2 uses
  %.4648 = phi ptr [ %i.ez, %bb.an ], [ %.0644749, %bb.ae ] ; 5 uses
  %.4 = phi ptr [ %i.ey, %bb.an ], [ %.0641750, %bb.ae ] ; 6 uses
  %i.fa = load i32, ptr %.4, align 4
  %i.fb = and i32 %i.fa, %i.y
  %.not727 = icmp eq i32 %i.fb, %i.z
  br i1 %.not727, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fc = load i32, ptr %i.a, align 4
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %.4, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1
  store i8 %i.ff, ptr %.4648, align 1
  %i.fg = load i32, ptr %i.b, align 4
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds i8, ptr %.4, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = getelementptr inbounds nuw i8, ptr %.4648, i64 1
  store i8 %i.fj, ptr %i.fk, align 1
  %i.fl = load i32, ptr %i.c, align 4
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds i8, ptr %.4, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = getelementptr inbounds nuw i8, ptr %.4648, i64 2
  store i8 %i.fo, ptr %i.fp, align 1
  %i.fq = load i32, ptr %i.d, align 4
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds i8, ptr %.4, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1
  %i.fu = getelementptr inbounds nuw i8, ptr %.4648, i64 3
  store i8 %i.ft, ptr %i.fu, align 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fv = getelementptr inbounds nuw i8, ptr %.4, i64 4 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.4648, i64 4 ; 2 uses
  %i.fx = add nsw i32 %.3707, -1
  %i.fy = icmp sgt i32 %.3707, 1
  br i1 %i.fy, label %bb.af, label %bb.ar, !llvm.loop !29

bb.ar:                                            ; preds = %bb.aq
  %i.fz = getelementptr inbounds i8, ptr %i.fv, i64 %i.cg
  %i.ga = getelementptr inbounds i8, ptr %i.fw, i64 %i.ch
  %.not723 = icmp eq i32 %i.ci, 0
  br i1 %.not723, label %._crit_edge, label %bb.ae, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.ar, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.loopexit

bb.as:                                            ; preds = %bb.ac
  %.not718751 = icmp eq i32 %i.h, 0
  br i1 %.not718751, label %.loopexit, label %.lr.ph755

.lr.ph755:                                        ; preds = %bb.as
  %i.gb = add nsw i32 %i.f, 3
  %i.gc = sdiv i32 %i.gb, 4                       ; 4 uses
  %i.gd = and i32 %i.f, 3
  %i.ge = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 12 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 12 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.t, i64 28 ; 16 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.t, i64 25 ; 12 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 12 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.t, i64 29 ; 16 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.t, i64 26 ; 12 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 12 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.t, i64 30 ; 16 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.t, i64 27 ; 12 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.t, i64 31 ; 12 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 12 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.v, i64 28 ; 16 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.v, i64 25 ; 12 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.v, i64 29 ; 16 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.v, i64 26 ; 12 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.v, i64 30 ; 16 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.v, i64 27 ; 12 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.v, i64 31 ; 12 uses
  %i.gx = zext i8 %i.bw to i64                    ; 4 uses
  %i.gy = zext i8 %i.by to i64                    ; 4 uses
  %i.gz = sext i32 %i.l to i64
  %i.ha = sext i32 %i.p to i64
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph755, %bb.cq
  %.in762 = phi i32 [ %i.h, %.lr.ph755 ], [ %i.hb, %bb.cq ]
  %.5753 = phi ptr [ %i.j, %.lr.ph755 ], [ %i.axi, %bb.cq ] ; 4 uses
  %.5649752 = phi ptr [ %i.n, %.lr.ph755 ], [ %i.axj, %bb.cq ] ; 4 uses
  %i.hb = add nsw i32 %.in762, -1                 ; 2 uses
  switch i32 %i.gd, label %.unreachabledefault777 [
    i32 0, label %bb.au
    i32 3, label %bb.bg
    i32 2, label %bb.bs
    i32 1, label %bb.ce
  ]

bb.au:                                            ; preds = %bb.at, %bb.cp
  %.0700 = phi i32 [ %i.gc, %bb.at ], [ %i.axg, %bb.cp ]
  %.6650 = phi ptr [ %.5649752, %bb.at ], [ %i.axe, %bb.cp ] ; 7 uses
  %.6 = phi ptr [ %.5753, %bb.at ], [ %i.axf, %bb.cp ] ; 7 uses
  switch i8 %i.by, label %bb.az [
    i8 1, label %bb.av
    i8 2, label %bb.aw
    i8 3, label %bb.ax
    i8 4, label %bb.ay
  ]

bb.av:                                            ; preds = %bb.au
  %i.hc = load i8, ptr %.6, align 1
  %i.hd = zext i8 %i.hc to i32                    ; 5 uses
  %i.he = load i8, ptr %i.ge, align 4
  %i.hf = zext i8 %i.he to i64
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.hf
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = load i32, ptr %i.gf, align 4
  %i.hj = and i32 %i.hi, %i.hd
  %i.hk = load i8, ptr %i.gg, align 4
  %i.hl = zext nneg i8 %i.hk to i32
  %i.hm = lshr i32 %i.hj, %i.hl
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1
  %i.hq = load i8, ptr %i.gh, align 1
  %i.hr = zext i8 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.hr
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = load i32, ptr %i.gi, align 4
  %i.hv = and i32 %i.hu, %i.hd
  %i.hw = load i8, ptr %i.gj, align 1
  %i.hx = zext nneg i8 %i.hw to i32
  %i.hy = lshr i32 %i.hv, %i.hx
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1
  %i.ic = load i8, ptr %i.gk, align 2
  %i.id = zext i8 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.id
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = load i32, ptr %i.gl, align 4
  %i.ih = and i32 %i.ig, %i.hd
  %i.ii = load i8, ptr %i.gm, align 2
  %i.ij = zext nneg i8 %i.ii to i32
  %i.ik = lshr i32 %i.ih, %i.ij
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1
  %i.io = load i8, ptr %i.gn, align 1
  %i.ip = zext i8 %i.io to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = load i32, ptr %i.w, align 4
  %i.it = and i32 %i.is, %i.hd
  %i.iu = load i8, ptr %i.go, align 1
  %i.iv = zext nneg i8 %i.iu to i32
  %i.iw = lshr i32 %i.it, %i.iv
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1
  br label %bb.az

bb.aw:                                            ; preds = %bb.au
  %i.ja = load i16, ptr %.6, align 2
  %i.jb = zext i16 %i.ja to i32                   ; 5 uses
  %i.jc = load i8, ptr %i.ge, align 4
  %i.jd = zext i8 %i.jc to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.jd
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = load i32, ptr %i.gf, align 4
  %i.jh = and i32 %i.jg, %i.jb
  %i.ji = load i8, ptr %i.gg, align 4
  %i.jj = zext nneg i8 %i.ji to i32
  %i.jk = lshr i32 %i.jh, %i.jj
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1
  %i.jo = load i8, ptr %i.gh, align 1
  %i.jp = zext i8 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.jp
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = load i32, ptr %i.gi, align 4
  %i.jt = and i32 %i.js, %i.jb
  %i.ju = load i8, ptr %i.gj, align 1
  %i.jv = zext nneg i8 %i.ju to i32
  %i.jw = lshr i32 %i.jt, %i.jv
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1
  %i.ka = load i8, ptr %i.gk, align 2
  %i.kb = zext i8 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.kb
  %i.kd = load ptr, ptr %i.kc, align 8
  %i.ke = load i32, ptr %i.gl, align 4
  %i.kf = and i32 %i.ke, %i.jb
  %i.kg = load i8, ptr %i.gm, align 2
  %i.kh = zext nneg i8 %i.kg to i32
  %i.ki = lshr i32 %i.kf, %i.kh
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = load i8, ptr %i.gn, align 1
  %i.kn = zext i8 %i.km to i64
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.kn
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = load i32, ptr %i.w, align 4
  %i.kr = and i32 %i.kq, %i.jb
  %i.ks = load i8, ptr %i.go, align 1
  %i.kt = zext nneg i8 %i.ks to i32
  %i.ku = lshr i32 %i.kr, %i.kt
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1
  br label %bb.az

bb.ax:                                            ; preds = %bb.au
  %i.ky = load i8, ptr %i.gg, align 4
  %i.kz = lshr i8 %i.ky, 3
  %i.la = zext nneg i8 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %.6, i64 %i.la
  %i.lc = load i8, ptr %i.lb, align 1
  %i.ld = load i8, ptr %i.gj, align 1
  %i.le = lshr i8 %i.ld, 3
  %i.lf = zext nneg i8 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %.6, i64 %i.lf
  %i.lh = load i8, ptr %i.lg, align 1
  %i.li = load i8, ptr %i.gm, align 2
  %i.lj = lshr i8 %i.li, 3
  %i.lk = zext nneg i8 %i.lj to i64
  %i.ll = getelementptr inbounds nuw i8, ptr %.6, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  %i.ln = load i32, ptr %.6, align 4              ; 5 uses
  %i.lo = load i8, ptr %i.ge, align 4
  %i.lp = zext i8 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.lp
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = load i32, ptr %i.gf, align 4
  %i.lt = and i32 %i.ls, %i.ln
  %i.lu = load i8, ptr %i.gg, align 4
  %i.lv = zext nneg i8 %i.lu to i32
  %i.lw = lshr i32 %i.lt, %i.lv
  %i.lx = zext i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1
  %i.ma = load i8, ptr %i.gh, align 1
  %i.mb = zext i8 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.mb
  %i.md = load ptr, ptr %i.mc, align 8
  %i.me = load i32, ptr %i.gi, align 4
  %i.mf = and i32 %i.me, %i.ln
  %i.mg = load i8, ptr %i.gj, align 1
  %i.mh = zext nneg i8 %i.mg to i32
  %i.mi = lshr i32 %i.mf, %i.mh
  %i.mj = zext i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mj
  %i.ml = load i8, ptr %i.mk, align 1
  %i.mm = load i8, ptr %i.gk, align 2
  %i.mn = zext i8 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.mn
  %i.mp = load ptr, ptr %i.mo, align 8
  %i.mq = load i32, ptr %i.gl, align 4
  %i.mr = and i32 %i.mq, %i.ln
  %i.ms = load i8, ptr %i.gm, align 2
  %i.mt = zext nneg i8 %i.ms to i32
  %i.mu = lshr i32 %i.mr, %i.mt
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1
  %i.my = load i8, ptr %i.gn, align 1
  %i.mz = zext i8 %i.my to i64
  %i.na = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.mz
  %i.nb = load ptr, ptr %i.na, align 8
  %i.nc = load i32, ptr %i.w, align 4
  %i.nd = and i32 %i.nc, %i.ln
  %i.ne = load i8, ptr %i.go, align 1
  %i.nf = zext nneg i8 %i.ne to i32
  %i.ng = lshr i32 %i.nd, %i.nf
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nh
  %i.nj = load i8, ptr %i.ni, align 1
  br label %bb.az

bb.az:                                            ; preds = %bb.au, %bb.ay, %bb.ax, %bb.aw, %bb.av
  %.0670.shrunk = phi i8 [ %i.nj, %bb.ay ], [ %i.iz, %bb.av ], [ %i.kx, %bb.aw ], [ -1, %bb.ax ], [ 0, %bb.au ]
  %.0666.shrunk = phi i8 [ %i.mx, %bb.ay ], [ %i.in, %bb.av ], [ %i.kl, %bb.aw ], [ %i.lm, %bb.ax ], [ 0, %bb.au ] ; 2 uses
  %.0662.shrunk = phi i8 [ %i.ml, %bb.ay ], [ %i.ib, %bb.av ], [ %i.jz, %bb.aw ], [ %i.lh, %bb.ax ], [ 0, %bb.au ] ; 2 uses
  %.0658.shrunk = phi i8 [ %i.lz, %bb.ay ], [ %i.hp, %bb.av ], [ %i.jn, %bb.aw ], [ %i.lc, %bb.ax ], [ 0, %bb.au ] ; 2 uses
  %.0654 = phi i32 [ %i.ln, %bb.ay ], [ %i.hd, %bb.av ], [ %i.jb, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.au ]
  %.0658 = zext i8 %.0658.shrunk to i32           ; 3 uses
end_hunk_2
begin_hunk_3_@BlitNtoNKeyCopyAlpha:bb.a
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.agr
  %i.agt = load ptr, ptr %i.ags, align 8
  %i.agu = load i32, ptr %i.gf, align 4
  %i.agv = and i32 %i.agu, %i.agp
  %i.agw = load i8, ptr %i.gg, align 4
  %i.agx = zext nneg i8 %i.agw to i32
  %i.agy = lshr i32 %i.agv, %i.agx
  %i.agz = zext i32 %i.agy to i64
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agt, i64 %i.agz
  %i.ahb = load i8, ptr %i.aha, align 1
  %i.ahc = load i8, ptr %i.gh, align 1
  %i.ahd = zext i8 %i.ahc to i64
  %i.ahe = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ahd
  %i.ahf = load ptr, ptr %i.ahe, align 8
  %i.ahg = load i32, ptr %i.gi, align 4
  %i.ahh = and i32 %i.ahg, %i.agp
  %i.ahi = load i8, ptr %i.gj, align 1
  %i.ahj = zext nneg i8 %i.ahi to i32
  %i.ahk = lshr i32 %i.ahh, %i.ahj
  %i.ahl = zext i32 %i.ahk to i64
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahf, i64 %i.ahl
  %i.ahn = load i8, ptr %i.ahm, align 1
  %i.aho = load i8, ptr %i.gk, align 2
  %i.ahp = zext i8 %i.aho to i64
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ahp
  %i.ahr = load ptr, ptr %i.ahq, align 8
  %i.ahs = load i32, ptr %i.gl, align 4
  %i.aht = and i32 %i.ahs, %i.agp
  %i.ahu = load i8, ptr %i.gm, align 2
  %i.ahv = zext nneg i8 %i.ahu to i32
  %i.ahw = lshr i32 %i.aht, %i.ahv
  %i.ahx = zext i32 %i.ahw to i64
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahr, i64 %i.ahx
  %i.ahz = load i8, ptr %i.ahy, align 1
  %i.aia = load i8, ptr %i.gn, align 1
  %i.aib = zext i8 %i.aia to i64
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aib
  %i.aid = load ptr, ptr %i.aic, align 8
  %i.aie = load i32, ptr %i.w, align 4
  %i.aif = and i32 %i.aie, %i.agp
  %i.aig = load i8, ptr %i.go, align 1
  %i.aih = zext nneg i8 %i.aig to i32
  %i.aii = lshr i32 %i.aif, %i.aih
  %i.aij = zext i32 %i.aii to i64
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aid, i64 %i.aij
  %i.ail = load i8, ptr %i.aik, align 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bs, %bb.bw, %bb.bv, %bb.bu, %bb.bt
  %.2672.shrunk = phi i8 [ %i.ail, %bb.bw ], [ %i.aeb, %bb.bt ], [ %i.afz, %bb.bu ], [ -1, %bb.bv ], [ 0, %bb.bs ]
  %.2668.shrunk = phi i8 [ %i.ahz, %bb.bw ], [ %i.adp, %bb.bt ], [ %i.afn, %bb.bu ], [ %i.ago, %bb.bv ], [ 0, %bb.bs ] ; 2 uses
  %.2664.shrunk = phi i8 [ %i.ahn, %bb.bw ], [ %i.add, %bb.bt ], [ %i.afb, %bb.bu ], [ %i.agj, %bb.bv ], [ 0, %bb.bs ] ; 2 uses
  %.2660.shrunk = phi i8 [ %i.ahb, %bb.bw ], [ %i.acr, %bb.bt ], [ %i.aep, %bb.bu ], [ %i.age, %bb.bv ], [ 0, %bb.bs ] ; 2 uses
  %.2656 = phi i32 [ %i.agp, %bb.bw ], [ %i.acf, %bb.bt ], [ %i.aed, %bb.bu ], [ 0, %bb.bv ], [ 0, %bb.bs ]
  %.2660 = zext i8 %.2660.shrunk to i32           ; 3 uses
  %.2664 = zext i8 %.2664.shrunk to i32           ; 3 uses
  %.2668 = zext i8 %.2668.shrunk to i32           ; 3 uses
  %.2672 = zext i8 %.2672.shrunk to i32           ; 3 uses
  %i.aim = and i32 %.2656, %i.y
  %.not721 = icmp eq i32 %i.aim, %i.z
  br i1 %.not721, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  switch i8 %i.bw, label %bb.cd [
    i8 1, label %bb.bz
    i8 2, label %bb.ca
    i8 3, label %bb.cb
    i8 4, label %bb.cc
  ]

bb.bz:                                            ; preds = %bb.by
  %i.ain = load i8, ptr %i.gp, align 4
  %i.aio = zext i8 %i.ain to i32
  %i.aip = sub nsw i32 8, %i.aio
  %i.aiq = lshr i32 %.2660, %i.aip
  %i.air = load i8, ptr %i.gq, align 4
  %i.ais = zext nneg i8 %i.air to i32
  %i.ait = shl i32 %i.aiq, %i.ais
  %i.aiu = load i8, ptr %i.gr, align 1
  %i.aiv = zext i8 %i.aiu to i32
  %i.aiw = sub nsw i32 8, %i.aiv
  %i.aix = lshr i32 %.2664, %i.aiw
  %i.aiy = load i8, ptr %i.gs, align 1
  %i.aiz = zext nneg i8 %i.aiy to i32
  %i.aja = shl i32 %i.aix, %i.aiz
  %i.ajb = or i32 %i.aja, %i.ait
  %i.ajc = load i8, ptr %i.gt, align 2
  %i.ajd = zext i8 %i.ajc to i32
  %i.aje = sub nsw i32 8, %i.ajd
  %i.ajf = lshr i32 %.2668, %i.aje
  %i.ajg = load i8, ptr %i.gu, align 2
  %i.ajh = zext nneg i8 %i.ajg to i32
  %i.aji = shl i32 %i.ajf, %i.ajh
  %i.ajj = or i32 %i.ajb, %i.aji
  %i.ajk = load i8, ptr %i.gv, align 1
  %i.ajl = zext i8 %i.ajk to i32
  %i.ajm = sub nsw i32 8, %i.ajl
  %i.ajn = lshr i32 %.2672, %i.ajm
  %i.ajo = load i8, ptr %i.gw, align 1
  %i.ajp = zext nneg i8 %i.ajo to i32
  %i.ajq = shl i32 %i.ajn, %i.ajp
  %i.ajr = or i32 %i.ajj, %i.ajq
  %i.ajs = trunc i32 %i.ajr to i8
  store i8 %i.ajs, ptr %.8652, align 1
  br label %bb.cd

bb.ca:                                            ; preds = %bb.by
  %i.ajt = load i8, ptr %i.gp, align 4
  %i.aju = zext i8 %i.ajt to i32
  %i.ajv = sub nsw i32 8, %i.aju
  %i.ajw = lshr i32 %.2660, %i.ajv
  %i.ajx = load i8, ptr %i.gq, align 4
  %i.ajy = zext nneg i8 %i.ajx to i32
  %i.ajz = shl i32 %i.ajw, %i.ajy
  %i.aka = load i8, ptr %i.gr, align 1
  %i.akb = zext i8 %i.aka to i32
  %i.akc = sub nsw i32 8, %i.akb
  %i.akd = lshr i32 %.2664, %i.akc
  %i.ake = load i8, ptr %i.gs, align 1
  %i.akf = zext nneg i8 %i.ake to i32
  %i.akg = shl i32 %i.akd, %i.akf
  %i.akh = or i32 %i.akg, %i.ajz
  %i.aki = load i8, ptr %i.gt, align 2
  %i.akj = zext i8 %i.aki to i32
  %i.akk = sub nsw i32 8, %i.akj
  %i.akl = lshr i32 %.2668, %i.akk
  %i.akm = load i8, ptr %i.gu, align 2
  %i.akn = zext nneg i8 %i.akm to i32
  %i.ako = shl i32 %i.akl, %i.akn
  %i.akp = or i32 %i.akh, %i.ako
  %i.akq = load i8, ptr %i.gv, align 1
  %i.akr = zext i8 %i.akq to i32
  %i.aks = sub nsw i32 8, %i.akr
  %i.akt = lshr i32 %.2672, %i.aks
  %i.aku = load i8, ptr %i.gw, align 1
  %i.akv = zext nneg i8 %i.aku to i32
  %i.akw = shl i32 %i.akt, %i.akv
  %i.akx = or i32 %i.akp, %i.akw
  %i.aky = trunc i32 %i.akx to i16
  store i16 %i.aky, ptr %.8652, align 2
  br label %bb.cd

bb.cb:                                            ; preds = %bb.by
  %i.akz = load i8, ptr %i.gq, align 4
  %i.ala = lshr i8 %i.akz, 3
  %i.alb = zext nneg i8 %i.ala to i64
  %i.alc = getelementptr inbounds nuw i8, ptr %.8652, i64 %i.alb
  store i8 %.2660.shrunk, ptr %i.alc, align 1
  %i.ald = load i8, ptr %i.gs, align 1
  %i.ale = lshr i8 %i.ald, 3
  %i.alf = zext nneg i8 %i.ale to i64
  %i.alg = getelementptr inbounds nuw i8, ptr %.8652, i64 %i.alf
  store i8 %.2664.shrunk, ptr %i.alg, align 1
  %i.alh = load i8, ptr %i.gu, align 2
  %i.ali = lshr i8 %i.alh, 3
  %i.alj = zext nneg i8 %i.ali to i64
  %i.alk = getelementptr inbounds nuw i8, ptr %.8652, i64 %i.alj
  store i8 %.2668.shrunk, ptr %i.alk, align 1
  br label %bb.cd

bb.cc:                                            ; preds = %bb.by
  %i.all = load i8, ptr %i.gp, align 4
  %i.alm = zext i8 %i.all to i32
  %i.aln = sub nsw i32 8, %i.alm
  %i.alo = lshr i32 %.2660, %i.aln
  %i.alp = load i8, ptr %i.gq, align 4
  %i.alq = zext nneg i8 %i.alp to i32
  %i.alr = shl i32 %i.alo, %i.alq
  %i.als = load i8, ptr %i.gr, align 1
  %i.alt = zext i8 %i.als to i32
  %i.alu = sub nsw i32 8, %i.alt
  %i.alv = lshr i32 %.2664, %i.alu
  %i.alw = load i8, ptr %i.gs, align 1
  %i.alx = zext nneg i8 %i.alw to i32
  %i.aly = shl i32 %i.alv, %i.alx
  %i.alz = or i32 %i.aly, %i.alr
  %i.ama = load i8, ptr %i.gt, align 2
  %i.amb = zext i8 %i.ama to i32
  %i.amc = sub nsw i32 8, %i.amb
  %i.amd = lshr i32 %.2668, %i.amc
  %i.ame = load i8, ptr %i.gu, align 2
  %i.amf = zext nneg i8 %i.ame to i32
  %i.amg = shl i32 %i.amd, %i.amf
  %i.amh = or i32 %i.alz, %i.amg
  %i.ami = load i8, ptr %i.gv, align 1
  %i.amj = zext i8 %i.ami to i32
  %i.amk = sub nsw i32 8, %i.amj
  %i.aml = lshr i32 %.2672, %i.amk
  %i.amm = load i8, ptr %i.gw, align 1
  %i.amn = zext nneg i8 %i.amm to i32
  %i.amo = shl i32 %i.aml, %i.amn
  %i.amp = or i32 %i.amh, %i.amo
  store i32 %i.amp, ptr %.8652, align 4
  br label %bb.cd

bb.cd:                                            ; preds = %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.bx
  %i.amq = getelementptr inbounds nuw i8, ptr %.8652, i64 %i.gx
  %i.amr = getelementptr inbounds nuw i8, ptr %.8, i64 %i.gy
  br label %bb.ce

.unreachabledefault777:                           ; preds = %bb.at
  unreachable

bb.ce:                                            ; preds = %bb.at, %bb.cd
  %.3703 = phi i32 [ %.2702, %bb.cd ], [ %i.gc, %bb.at ] ; 2 uses
  %.9653 = phi ptr [ %i.amq, %bb.cd ], [ %.5649752, %bb.at ] ; 7 uses
  %.9 = phi ptr [ %i.amr, %bb.cd ], [ %.5753, %bb.at ] ; 7 uses
  switch i8 %i.by, label %bb.cj [
    i8 1, label %bb.cf
    i8 2, label %bb.cg
    i8 3, label %bb.ch
    i8 4, label %bb.ci
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.ams = load i8, ptr %.9, align 1
  %i.amt = zext i8 %i.ams to i32                  ; 5 uses
  %i.amu = load i8, ptr %i.ge, align 4
  %i.amv = zext i8 %i.amu to i64
  %i.amw = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.amv
  %i.amx = load ptr, ptr %i.amw, align 8
  %i.amy = load i32, ptr %i.gf, align 4
  %i.amz = and i32 %i.amy, %i.amt
  %i.ana = load i8, ptr %i.gg, align 4
  %i.anb = zext nneg i8 %i.ana to i32
  %i.anc = lshr i32 %i.amz, %i.anb
  %i.and = zext nneg i32 %i.anc to i64
  %i.ane = getelementptr inbounds nuw i8, ptr %i.amx, i64 %i.and
  %i.anf = load i8, ptr %i.ane, align 1
  %i.ang = load i8, ptr %i.gh, align 1
  %i.anh = zext i8 %i.ang to i64
  %i.ani = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.anh
  %i.anj = load ptr, ptr %i.ani, align 8
  %i.ank = load i32, ptr %i.gi, align 4
  %i.anl = and i32 %i.ank, %i.amt
  %i.anm = load i8, ptr %i.gj, align 1
  %i.ann = zext nneg i8 %i.anm to i32
  %i.ano = lshr i32 %i.anl, %i.ann
  %i.anp = zext nneg i32 %i.ano to i64
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anj, i64 %i.anp
  %i.anr = load i8, ptr %i.anq, align 1
  %i.ans = load i8, ptr %i.gk, align 2
  %i.ant = zext i8 %i.ans to i64
  %i.anu = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ant
  %i.anv = load ptr, ptr %i.anu, align 8
  %i.anw = load i32, ptr %i.gl, align 4
  %i.anx = and i32 %i.anw, %i.amt
  %i.any = load i8, ptr %i.gm, align 2
  %i.anz = zext nneg i8 %i.any to i32
  %i.aoa = lshr i32 %i.anx, %i.anz
  %i.aob = zext nneg i32 %i.aoa to i64
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anv, i64 %i.aob
  %i.aod = load i8, ptr %i.aoc, align 1
  %i.aoe = load i8, ptr %i.gn, align 1
  %i.aof = zext i8 %i.aoe to i64
  %i.aog = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aof
  %i.aoh = load ptr, ptr %i.aog, align 8
  %i.aoi = load i32, ptr %i.w, align 4
  %i.aoj = and i32 %i.aoi, %i.amt
  %i.aok = load i8, ptr %i.go, align 1
  %i.aol = zext nneg i8 %i.aok to i32
  %i.aom = lshr i32 %i.aoj, %i.aol
  %i.aon = zext nneg i32 %i.aom to i64
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aoh, i64 %i.aon
  %i.aop = load i8, ptr %i.aoo, align 1
  br label %bb.cj

bb.cg:                                            ; preds = %bb.ce
  %i.aoq = load i16, ptr %.9, align 2
  %i.aor = zext i16 %i.aoq to i32                 ; 5 uses
  %i.aos = load i8, ptr %i.ge, align 4
  %i.aot = zext i8 %i.aos to i64
  %i.aou = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aot
  %i.aov = load ptr, ptr %i.aou, align 8
  %i.aow = load i32, ptr %i.gf, align 4
  %i.aox = and i32 %i.aow, %i.aor
  %i.aoy = load i8, ptr %i.gg, align 4
  %i.aoz = zext nneg i8 %i.aoy to i32
  %i.apa = lshr i32 %i.aox, %i.aoz
  %i.apb = zext nneg i32 %i.apa to i64
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aov, i64 %i.apb
  %i.apd = load i8, ptr %i.apc, align 1
  %i.ape = load i8, ptr %i.gh, align 1
  %i.apf = zext i8 %i.ape to i64
  %i.apg = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.apf
  %i.aph = load ptr, ptr %i.apg, align 8
  %i.api = load i32, ptr %i.gi, align 4
  %i.apj = and i32 %i.api, %i.aor
  %i.apk = load i8, ptr %i.gj, align 1
  %i.apl = zext nneg i8 %i.apk to i32
  %i.apm = lshr i32 %i.apj, %i.apl
  %i.apn = zext nneg i32 %i.apm to i64
  %i.apo = getelementptr inbounds nuw i8, ptr %i.aph, i64 %i.apn
  %i.app = load i8, ptr %i.apo, align 1
  %i.apq = load i8, ptr %i.gk, align 2
  %i.apr = zext i8 %i.apq to i64
  %i.aps = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.apr
  %i.apt = load ptr, ptr %i.aps, align 8
  %i.apu = load i32, ptr %i.gl, align 4
  %i.apv = and i32 %i.apu, %i.aor
  %i.apw = load i8, ptr %i.gm, align 2
  %i.apx = zext nneg i8 %i.apw to i32
  %i.apy = lshr i32 %i.apv, %i.apx
  %i.apz = zext nneg i32 %i.apy to i64
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apt, i64 %i.apz
  %i.aqb = load i8, ptr %i.aqa, align 1
  %i.aqc = load i8, ptr %i.gn, align 1
  %i.aqd = zext i8 %i.aqc to i64
  %i.aqe = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aqd
  %i.aqf = load ptr, ptr %i.aqe, align 8
  %i.aqg = load i32, ptr %i.w, align 4
  %i.aqh = and i32 %i.aqg, %i.aor
  %i.aqi = load i8, ptr %i.go, align 1
  %i.aqj = zext nneg i8 %i.aqi to i32
  %i.aqk = lshr i32 %i.aqh, %i.aqj
  %i.aql = zext nneg i32 %i.aqk to i64
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.aql
  %i.aqn = load i8, ptr %i.aqm, align 1
  br label %bb.cj

bb.ch:                                            ; preds = %bb.ce
  %i.aqo = load i8, ptr %i.gg, align 4
  %i.aqp = lshr i8 %i.aqo, 3
  %i.aqq = zext nneg i8 %i.aqp to i64
  %i.aqr = getelementptr inbounds nuw i8, ptr %.9, i64 %i.aqq
  %i.aqs = load i8, ptr %i.aqr, align 1
  %i.aqt = load i8, ptr %i.gj, align 1
  %i.aqu = lshr i8 %i.aqt, 3
  %i.aqv = zext nneg i8 %i.aqu to i64
  %i.aqw = getelementptr inbounds nuw i8, ptr %.9, i64 %i.aqv
  %i.aqx = load i8, ptr %i.aqw, align 1
  %i.aqy = load i8, ptr %i.gm, align 2
  %i.aqz = lshr i8 %i.aqy, 3
  %i.ara = zext nneg i8 %i.aqz to i64
  %i.arb = getelementptr inbounds nuw i8, ptr %.9, i64 %i.ara
  %i.arc = load i8, ptr %i.arb, align 1
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ce
  %i.ard = load i32, ptr %.9, align 4             ; 5 uses
  %i.are = load i8, ptr %i.ge, align 4
  %i.arf = zext i8 %i.are to i64
  %i.arg = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.arf
  %i.arh = load ptr, ptr %i.arg, align 8
  %i.ari = load i32, ptr %i.gf, align 4
  %i.arj = and i32 %i.ari, %i.ard
  %i.ark = load i8, ptr %i.gg, align 4
  %i.arl = zext nneg i8 %i.ark to i32
  %i.arm = lshr i32 %i.arj, %i.arl
  %i.arn = zext i32 %i.arm to i64
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arh, i64 %i.arn
  %i.arp = load i8, ptr %i.aro, align 1
  %i.arq = load i8, ptr %i.gh, align 1
  %i.arr = zext i8 %i.arq to i64
  %i.ars = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.arr
  %i.art = load ptr, ptr %i.ars, align 8
  %i.aru = load i32, ptr %i.gi, align 4
  %i.arv = and i32 %i.aru, %i.ard
  %i.arw = load i8, ptr %i.gj, align 1
  %i.arx = zext nneg i8 %i.arw to i32
  %i.ary = lshr i32 %i.arv, %i.arx
  %i.arz = zext i32 %i.ary to i64
  %i.asa = getelementptr inbounds nuw i8, ptr %i.art, i64 %i.arz
  %i.asb = load i8, ptr %i.asa, align 1
  %i.asc = load i8, ptr %i.gk, align 2
  %i.asd = zext i8 %i.asc to i64
  %i.ase = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.asd
  %i.asf = load ptr, ptr %i.ase, align 8
  %i.asg = load i32, ptr %i.gl, align 4
  %i.ash = and i32 %i.asg, %i.ard
  %i.asi = load i8, ptr %i.gm, align 2
  %i.asj = zext nneg i8 %i.asi to i32
  %i.ask = lshr i32 %i.ash, %i.asj
  %i.asl = zext i32 %i.ask to i64
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asf, i64 %i.asl
  %i.asn = load i8, ptr %i.asm, align 1
  %i.aso = load i8, ptr %i.gn, align 1
  %i.asp = zext i8 %i.aso to i64
  %i.asq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.asp
  %i.asr = load ptr, ptr %i.asq, align 8
  %i.ass = load i32, ptr %i.w, align 4
  %i.ast = and i32 %i.ass, %i.ard
  %i.asu = load i8, ptr %i.go, align 1
  %i.asv = zext nneg i8 %i.asu to i32
  %i.asw = lshr i32 %i.ast, %i.asv
  %i.asx = zext i32 %i.asw to i64
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asr, i64 %i.asx
  %i.asz = load i8, ptr %i.asy, align 1
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ce, %bb.ci, %bb.ch, %bb.cg, %bb.cf
  %.3673.shrunk = phi i8 [ %i.asz, %bb.ci ], [ %i.aop, %bb.cf ], [ %i.aqn, %bb.cg ], [ -1, %bb.ch ], [ 0, %bb.ce ]
  %.3669.shrunk = phi i8 [ %i.asn, %bb.ci ], [ %i.aod, %bb.cf ], [ %i.aqb, %bb.cg ], [ %i.arc, %bb.ch ], [ 0, %bb.ce ] ; 2 uses
  %.3665.shrunk = phi i8 [ %i.asb, %bb.ci ], [ %i.anr, %bb.cf ], [ %i.app, %bb.cg ], [ %i.aqx, %bb.ch ], [ 0, %bb.ce ] ; 2 uses
  %.3661.shrunk = phi i8 [ %i.arp, %bb.ci ], [ %i.anf, %bb.cf ], [ %i.apd, %bb.cg ], [ %i.aqs, %bb.ch ], [ 0, %bb.ce ] ; 2 uses
  %.3657 = phi i32 [ %i.ard, %bb.ci ], [ %i.amt, %bb.cf ], [ %i.aor, %bb.cg ], [ 0, %bb.ch ], [ 0, %bb.ce ]
  %.3661 = zext i8 %.3661.shrunk to i32           ; 3 uses
  %.3665 = zext i8 %.3665.shrunk to i32           ; 3 uses
  %.3669 = zext i8 %.3669.shrunk to i32           ; 3 uses
  %.3673 = zext i8 %.3673.shrunk to i32           ; 3 uses
  %i.ata = and i32 %.3657, %i.y
  %.not722 = icmp eq i32 %i.ata, %i.z
  br i1 %.not722, label %bb.cp, label %bb.ck
end_hunk_3
begin_hunk_4_@BlitNtoNKeyCopyAlpha:bb.a
  %i.ava = load i8, ptr %i.gu, align 2
  %i.avb = zext nneg i8 %i.ava to i32
  %i.avc = shl i32 %i.auz, %i.avb
  %i.avd = or i32 %i.auv, %i.avc
  %i.ave = load i8, ptr %i.gv, align 1
  %i.avf = zext i8 %i.ave to i32
  %i.avg = sub nsw i32 8, %i.avf
  %i.avh = lshr i32 %.3673, %i.avg
  %i.avi = load i8, ptr %i.gw, align 1
  %i.avj = zext nneg i8 %i.avi to i32
  %i.avk = shl i32 %i.avh, %i.avj
  %i.avl = or i32 %i.avd, %i.avk
  %i.avm = trunc i32 %i.avl to i16
  store i16 %i.avm, ptr %.9653, align 2
  br label %bb.cp

bb.cn:                                            ; preds = %bb.ck
  %i.avn = load i8, ptr %i.gq, align 4
  %i.avo = lshr i8 %i.avn, 3
  %i.avp = zext nneg i8 %i.avo to i64
  %i.avq = getelementptr inbounds nuw i8, ptr %.9653, i64 %i.avp
  store i8 %.3661.shrunk, ptr %i.avq, align 1
  %i.avr = load i8, ptr %i.gs, align 1
  %i.avs = lshr i8 %i.avr, 3
  %i.avt = zext nneg i8 %i.avs to i64
  %i.avu = getelementptr inbounds nuw i8, ptr %.9653, i64 %i.avt
  store i8 %.3665.shrunk, ptr %i.avu, align 1
  %i.avv = load i8, ptr %i.gu, align 2
  %i.avw = lshr i8 %i.avv, 3
  %i.avx = zext nneg i8 %i.avw to i64
  %i.avy = getelementptr inbounds nuw i8, ptr %.9653, i64 %i.avx
  store i8 %.3669.shrunk, ptr %i.avy, align 1
  br label %bb.cp

bb.co:                                            ; preds = %bb.ck
  %i.avz = load i8, ptr %i.gp, align 4
  %i.awa = zext i8 %i.avz to i32
  %i.awb = sub nsw i32 8, %i.awa
  %i.awc = lshr i32 %.3661, %i.awb
  %i.awd = load i8, ptr %i.gq, align 4
  %i.awe = zext nneg i8 %i.awd to i32
  %i.awf = shl i32 %i.awc, %i.awe
  %i.awg = load i8, ptr %i.gr, align 1
  %i.awh = zext i8 %i.awg to i32
  %i.awi = sub nsw i32 8, %i.awh
  %i.awj = lshr i32 %.3665, %i.awi
  %i.awk = load i8, ptr %i.gs, align 1
  %i.awl = zext nneg i8 %i.awk to i32
  %i.awm = shl i32 %i.awj, %i.awl
  %i.awn = or i32 %i.awm, %i.awf
  %i.awo = load i8, ptr %i.gt, align 2
  %i.awp = zext i8 %i.awo to i32
  %i.awq = sub nsw i32 8, %i.awp
  %i.awr = lshr i32 %.3669, %i.awq
  %i.aws = load i8, ptr %i.gu, align 2
  %i.awt = zext nneg i8 %i.aws to i32
  %i.awu = shl i32 %i.awr, %i.awt
  %i.awv = or i32 %i.awn, %i.awu
  %i.aww = load i8, ptr %i.gv, align 1
  %i.awx = zext i8 %i.aww to i32
  %i.awy = sub nsw i32 8, %i.awx
  %i.awz = lshr i32 %.3673, %i.awy
  %i.axa = load i8, ptr %i.gw, align 1
  %i.axb = zext nneg i8 %i.axa to i32
  %i.axc = shl i32 %i.awz, %i.axb
  %i.axd = or i32 %i.awv, %i.axc
  store i32 %i.axd, ptr %.9653, align 4
  br label %bb.cp

bb.cp:                                            ; preds = %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cj
  %i.axe = getelementptr inbounds nuw i8, ptr %.9653, i64 %i.gx ; 2 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %.9, i64 %i.gy ; 2 uses
  %i.axg = add nsw i32 %.3703, -1
  %i.axh = icmp sgt i32 %.3703, 1
  br i1 %i.axh, label %bb.au, label %bb.cq, !llvm.loop !31

bb.cq:                                            ; preds = %bb.cp
  %i.axi = getelementptr inbounds i8, ptr %i.axf, i64 %i.gz
  %i.axj = getelementptr inbounds i8, ptr %i.axe, i64 %i.ha
  %.not718 = icmp eq i32 %i.hb, 0
  br i1 %.not718, label %.loopexit, label %bb.at, !llvm.loop !32

.loopexit:                                        ; preds = %bb.cq, %bb.ab, %bb.as, %bb.c, %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @BlitNtoNKey(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 3 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %i.n = alloca i32, align 4                      ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i32, ptr %i.o, align 8              ; 16 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.r = load i32, ptr %i.q, align 4              ; 16 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = load i32, ptr %i.u, align 4              ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8              ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.z = load i32, ptr %i.y, align 4              ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8            ; 18 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load ptr, ptr %i.ae, align 8            ; 18 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 5
  %i.ah = load i8, ptr %i.ag, align 1             ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 5
  %i.aj = load i8, ptr %i.ai, align 1             ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.al = load i32, ptr %i.ak, align 4
  %.not = icmp eq i32 %i.al, 0                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ap = phi i32 [ %i.ao, %bb.b ], [ 0, %bb.a ]  ; 14 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = xor i32 %i.ar, -1                       ; 29 uses
  %i.at = load i32, ptr %i.ad, align 4            ; 5 uses
  %i.au = load i32, ptr %i.af, align 4            ; 5 uses
  %i.av = and i32 %i.ab, %i.as                    ; 37 uses
  %i.aw = icmp eq i8 %i.ah, 4                     ; 2 uses
  %i.ax = icmp eq i8 %i.aj, 4                     ; 2 uses
  %or.cond = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.az = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.e, label %bb.bi

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = icmp eq i32 %i.be, %i.bg
  br i1 %i.bh, label %bb.f, label %bb.bi

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.g, label %bb.bi

bb.g:                                             ; preds = %bb.f
  br i1 %.not, label %bb.ah, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 31
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = shl i32 %i.bp, %i.bs                    ; 8 uses
  %.not11481235 = icmp eq i32 %i.r, 0
  br i1 %.not11481235, label %.loopexit, label %.lr.ph1239

.lr.ph1239:                                       ; preds = %bb.h
  %i.bu = add nsw i32 %i.p, 7
  %i.bv = sdiv i32 %i.bu, 8                       ; 8 uses
  %i.bw = and i32 %i.p, 7
  %i.bx = sext i32 %i.v to i64
  %i.by = sext i32 %i.z to i64
  br label %.lr.ph1239.split

.lr.ph1239.split:                                 ; preds = %.lr.ph1239, %bb.ag
  %.in1256 = phi i32 [ %i.bz, %bb.ag ], [ %i.r, %.lr.ph1239 ]
  %.09781237 = phi ptr [ %i.dq, %bb.ag ], [ %i.t, %.lr.ph1239 ] ; 8 uses
  %.09961236 = phi ptr [ %i.dr, %bb.ag ], [ %i.x, %.lr.ph1239 ] ; 8 uses
  %i.bz = add nsw i32 %.in1256, -1                ; 2 uses
  switch i32 %i.bw, label %default.unreachable [
    i32 0, label %bb.i
    i32 7, label %bb.l
    i32 6, label %bb.o
    i32 5, label %bb.r
    i32 4, label %bb.u
    i32 3, label %bb.x
    i32 2, label %bb.aa
    i32 1, label %bb.ad
  ]

bb.i:                                             ; preds = %.lr.ph1239.split, %bb.af
  %.01014 = phi i32 [ %i.bv, %.lr.ph1239.split ], [ %i.do, %bb.af ]
  %.1997 = phi ptr [ %.09961236, %.lr.ph1239.split ], [ %i.dm, %bb.af ] ; 2 uses
  %.1979 = phi ptr [ %.09781237, %.lr.ph1239.split ], [ %i.dn, %bb.af ] ; 2 uses
  %i.ca = load i32, ptr %.1979, align 4           ; 2 uses
  %i.cb = and i32 %i.ca, %i.as
  %.not1149 = icmp eq i32 %i.cb, %i.av
  br i1 %.not1149, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = or i32 %i.ca, %i.bt
  store i32 %i.cc, ptr %.1997, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.1997, i64 4
  %i.ce = getelementptr inbounds nuw i8, ptr %.1979, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph1239.split
  %.11015 = phi i32 [ %.01014, %bb.k ], [ %i.bv, %.lr.ph1239.split ]
  %.2998 = phi ptr [ %i.cd, %bb.k ], [ %.09961236, %.lr.ph1239.split ] ; 2 uses
  %.2980 = phi ptr [ %i.ce, %bb.k ], [ %.09781237, %.lr.ph1239.split ] ; 2 uses
  %i.cf = load i32, ptr %.2980, align 4           ; 2 uses
  %i.cg = and i32 %i.cf, %i.as
  %.not1150 = icmp eq i32 %i.cg, %i.av
  br i1 %.not1150, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = or i32 %i.cf, %i.bt
  store i32 %i.ch, ptr %.2998, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %.2998, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.2980, i64 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph1239.split
  %.21016 = phi i32 [ %.11015, %bb.n ], [ %i.bv, %.lr.ph1239.split ]
  %.3999 = phi ptr [ %i.ci, %bb.n ], [ %.09961236, %.lr.ph1239.split ] ; 2 uses
  %.3981 = phi ptr [ %i.cj, %bb.n ], [ %.09781237, %.lr.ph1239.split ] ; 2 uses
  %i.ck = load i32, ptr %.3981, align 4           ; 2 uses
  %i.cl = and i32 %i.ck, %i.as
  %.not1151 = icmp eq i32 %i.cl, %i.av
  br i1 %.not1151, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = or i32 %i.ck, %i.bt
  store i32 %i.cm, ptr %.3999, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %.3999, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %.3981, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph1239.split
  %.31017 = phi i32 [ %.21016, %bb.q ], [ %i.bv, %.lr.ph1239.split ]
  %.41000 = phi ptr [ %i.cn, %bb.q ], [ %.09961236, %.lr.ph1239.split ] ; 2 uses
  %.4982 = phi ptr [ %i.co, %bb.q ], [ %.09781237, %.lr.ph1239.split ] ; 2 uses
  %i.cp = load i32, ptr %.4982, align 4           ; 2 uses
  %i.cq = and i32 %i.cp, %i.as
  %.not1152 = icmp eq i32 %i.cq, %i.av
  br i1 %.not1152, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = or i32 %i.cp, %i.bt
  store i32 %i.cr, ptr %.41000, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %.41000, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %.4982, i64 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph1239.split
  %.41018 = phi i32 [ %.31017, %bb.t ], [ %i.bv, %.lr.ph1239.split ]
  %.51001 = phi ptr [ %i.cs, %bb.t ], [ %.09961236, %.lr.ph1239.split ] ; 2 uses
  %.5983 = phi ptr [ %i.ct, %bb.t ], [ %.09781237, %.lr.ph1239.split ] ; 2 uses
  %i.cu = load i32, ptr %.5983, align 4           ; 2 uses
  %i.cv = and i32 %i.cu, %i.as
  %.not1153 = icmp eq i32 %i.cv, %i.av
  br i1 %.not1153, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = or i32 %i.cu, %i.bt
  store i32 %i.cw, ptr %.51001, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cx = getelementptr inbounds nuw i8, ptr %.51001, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %.5983, i64 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph1239.split
  %.51019 = phi i32 [ %.41018, %bb.w ], [ %i.bv, %.lr.ph1239.split ]
  %.61002 = phi ptr [ %i.cx, %bb.w ], [ %.09961236, %.lr.ph1239.split ] ; 2 uses
  %.6984 = phi ptr [ %i.cy, %bb.w ], [ %.09781237, %.lr.ph1239.split ] ; 2 uses
  %i.cz = load i32, ptr %.6984, align 4           ; 2 uses
  %i.da = and i32 %i.cz, %i.as
  %.not1154 = icmp eq i32 %i.da, %i.av
  br i1 %.not1154, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.db = or i32 %i.cz, %i.bt
  store i32 %i.db, ptr %.61002, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %.61002, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.6984, i64 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph1239.split
  %.61020 = phi i32 [ %.51019, %bb.z ], [ %i.bv, %.lr.ph1239.split ]
  %.71003 = phi ptr [ %i.dc, %bb.z ], [ %.09961236, %.lr.ph1239.split ] ; 2 uses
  %.7985 = phi ptr [ %i.dd, %bb.z ], [ %.09781237, %.lr.ph1239.split ] ; 2 uses
  %i.de = load i32, ptr %.7985, align 4           ; 2 uses
  %i.df = and i32 %i.de, %i.as
  %.not1155 = icmp eq i32 %i.df, %i.av
  br i1 %.not1155, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dg = or i32 %i.de, %i.bt
  store i32 %i.dg, ptr %.71003, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %.71003, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %.7985, i64 4
  br label %bb.ad

default.unreachable:                              ; preds = %.lr.ph1239.split
  unreachable

bb.ad:                                            ; preds = %.lr.ph1239.split, %bb.ac
  %.71021 = phi i32 [ %.61020, %bb.ac ], [ %i.bv, %.lr.ph1239.split ] ; 2 uses
  %.81004 = phi ptr [ %i.dh, %bb.ac ], [ %.09961236, %.lr.ph1239.split ] ; 2 uses
  %.8986 = phi ptr [ %i.di, %bb.ac ], [ %.09781237, %.lr.ph1239.split ] ; 2 uses
  %i.dj = load i32, ptr %.8986, align 4           ; 2 uses
  %i.dk = and i32 %i.dj, %i.as
  %.not1156 = icmp eq i32 %i.dk, %i.av
  br i1 %.not1156, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dl = or i32 %i.dj, %i.bt
  store i32 %i.dl, ptr %.81004, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.dm = getelementptr inbounds nuw i8, ptr %.81004, i64 4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.8986, i64 4 ; 2 uses
  %i.do = add nsw i32 %.71021, -1
  %i.dp = icmp sgt i32 %.71021, 1
  br i1 %i.dp, label %bb.i, label %bb.ag, !llvm.loop !33

bb.ag:                                            ; preds = %bb.af
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %i.bx
  %i.dr = getelementptr inbounds i8, ptr %i.dm, i64 %i.by
  %.not1148 = icmp eq i32 %i.bz, 0
  br i1 %.not1148, label %.loopexit, label %.lr.ph1239.split, !llvm.loop !34

bb.ah:                                            ; preds = %bb.g
  %i.ds = or i32 %i.be, %i.az
  %i.dt = or i32 %i.ds, %i.bj                     ; 8 uses
  %.not11391240 = icmp eq i32 %i.r, 0
  br i1 %.not11391240, label %.loopexit, label %.lr.ph1244

.lr.ph1244:                                       ; preds = %bb.ah
  %i.du = add nsw i32 %i.p, 7
  %i.dv = sdiv i32 %i.du, 8                       ; 8 uses
  %i.dw = and i32 %i.p, 7
  %i.dx = sext i32 %i.v to i64
  %i.dy = sext i32 %i.z to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph1244, %bb.bh
  %.in1257 = phi i32 [ %i.r, %.lr.ph1244 ], [ %i.dz, %bb.bh ]
  %.99871242 = phi ptr [ %i.t, %.lr.ph1244 ], [ %i.fq, %bb.bh ] ; 8 uses
  %.910051241 = phi ptr [ %i.x, %.lr.ph1244 ], [ %i.fr, %bb.bh ] ; 8 uses
  %i.dz = add nsw i32 %.in1257, -1                ; 2 uses
  switch i32 %i.dw, label %.unreachabledefault [
    i32 0, label %bb.aj
    i32 7, label %bb.am
    i32 6, label %bb.ap
    i32 5, label %bb.as
    i32 4, label %bb.av
    i32 3, label %bb.ay
    i32 2, label %bb.bb
    i32 1, label %bb.be
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.bg
  %.01023 = phi i32 [ %i.dv, %bb.ai ], [ %i.fo, %bb.bg ]
  %.101006 = phi ptr [ %.910051241, %bb.ai ], [ %i.fm, %bb.bg ] ; 2 uses
  %.10988 = phi ptr [ %.99871242, %bb.ai ], [ %i.fn, %bb.bg ] ; 2 uses
  %i.ea = load i32, ptr %.10988, align 4          ; 2 uses
  %i.eb = and i32 %i.ea, %i.as
  %.not1140 = icmp eq i32 %i.eb, %i.av
  br i1 %.not1140, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ec = and i32 %i.ea, %i.dt
  store i32 %i.ec, ptr %.101006, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ed = getelementptr inbounds nuw i8, ptr %.101006, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %.10988, i64 4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.11024 = phi i32 [ %.01023, %bb.al ], [ %i.dv, %bb.ai ]
  %.111007 = phi ptr [ %i.ed, %bb.al ], [ %.910051241, %bb.ai ] ; 2 uses
  %.11989 = phi ptr [ %i.ee, %bb.al ], [ %.99871242, %bb.ai ] ; 2 uses
  %i.ef = load i32, ptr %.11989, align 4          ; 2 uses
  %i.eg = and i32 %i.ef, %i.as
  %.not1141 = icmp eq i32 %i.eg, %i.av
  br i1 %.not1141, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eh = and i32 %i.ef, %i.dt
  store i32 %i.eh, ptr %.111007, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ei = getelementptr inbounds nuw i8, ptr %.111007, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %.11989, i64 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ai
  %.21025 = phi i32 [ %.11024, %bb.ao ], [ %i.dv, %bb.ai ]
  %.121008 = phi ptr [ %i.ei, %bb.ao ], [ %.910051241, %bb.ai ] ; 2 uses
  %.12990 = phi ptr [ %i.ej, %bb.ao ], [ %.99871242, %bb.ai ] ; 2 uses
  %i.ek = load i32, ptr %.12990, align 4          ; 2 uses
  %i.el = and i32 %i.ek, %i.as
  %.not1142 = icmp eq i32 %i.el, %i.av
  br i1 %.not1142, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.em = and i32 %i.ek, %i.dt
  store i32 %i.em, ptr %.121008, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.en = getelementptr inbounds nuw i8, ptr %.121008, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.12990, i64 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ai
  %.31026 = phi i32 [ %.21025, %bb.ar ], [ %i.dv, %bb.ai ]
  %.131009 = phi ptr [ %i.en, %bb.ar ], [ %.910051241, %bb.ai ] ; 2 uses
  %.13991 = phi ptr [ %i.eo, %bb.ar ], [ %.99871242, %bb.ai ] ; 2 uses
  %i.ep = load i32, ptr %.13991, align 4          ; 2 uses
  %i.eq = and i32 %i.ep, %i.as
  %.not1143 = icmp eq i32 %i.eq, %i.av
  br i1 %.not1143, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.er = and i32 %i.ep, %i.dt
  store i32 %i.er, ptr %.131009, align 4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.es = getelementptr inbounds nuw i8, ptr %.131009, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %.13991, i64 4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ai
  %.41027 = phi i32 [ %.31026, %bb.au ], [ %i.dv, %bb.ai ]
  %.141010 = phi ptr [ %i.es, %bb.au ], [ %.910051241, %bb.ai ] ; 2 uses
  %.14992 = phi ptr [ %i.et, %bb.au ], [ %.99871242, %bb.ai ] ; 2 uses
  %i.eu = load i32, ptr %.14992, align 4          ; 2 uses
  %i.ev = and i32 %i.eu, %i.as
  %.not1144 = icmp eq i32 %i.ev, %i.av
  br i1 %.not1144, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ew = and i32 %i.eu, %i.dt
  store i32 %i.ew, ptr %.141010, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ex = getelementptr inbounds nuw i8, ptr %.141010, i64 4
  %i.ey = getelementptr inbounds nuw i8, ptr %.14992, i64 4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.ai
  %.51028 = phi i32 [ %.41027, %bb.ax ], [ %i.dv, %bb.ai ]
  %.151011 = phi ptr [ %i.ex, %bb.ax ], [ %.910051241, %bb.ai ] ; 2 uses
  %.15993 = phi ptr [ %i.ey, %bb.ax ], [ %.99871242, %bb.ai ] ; 2 uses
  %i.ez = load i32, ptr %.15993, align 4          ; 2 uses
  %i.fa = and i32 %i.ez, %i.as
  %.not1145 = icmp eq i32 %i.fa, %i.av
  br i1 %.not1145, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fb = and i32 %i.ez, %i.dt
  store i32 %i.fb, ptr %.151011, align 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.fc = getelementptr inbounds nuw i8, ptr %.151011, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %.15993, i64 4
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ai
  %.61029 = phi i32 [ %.51028, %bb.ba ], [ %i.dv, %bb.ai ]
  %.161012 = phi ptr [ %i.fc, %bb.ba ], [ %.910051241, %bb.ai ] ; 2 uses
  %.16994 = phi ptr [ %i.fd, %bb.ba ], [ %.99871242, %bb.ai ] ; 2 uses
  %i.fe = load i32, ptr %.16994, align 4          ; 2 uses
  %i.ff = and i32 %i.fe, %i.as
  %.not1146 = icmp eq i32 %i.ff, %i.av
  br i1 %.not1146, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fg = and i32 %i.fe, %i.dt
  store i32 %i.fg, ptr %.161012, align 4
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.fh = getelementptr inbounds nuw i8, ptr %.161012, i64 4
  %i.fi = getelementptr inbounds nuw i8, ptr %.16994, i64 4
  br label %bb.be

.unreachabledefault:                              ; preds = %bb.ai
  unreachable

bb.be:                                            ; preds = %bb.ai, %bb.bd
  %.71030 = phi i32 [ %.61029, %bb.bd ], [ %i.dv, %bb.ai ] ; 2 uses
  %.171013 = phi ptr [ %i.fh, %bb.bd ], [ %.910051241, %bb.ai ] ; 2 uses
  %.17995 = phi ptr [ %i.fi, %bb.bd ], [ %.99871242, %bb.ai ] ; 2 uses
  %i.fj = load i32, ptr %.17995, align 4          ; 2 uses
  %i.fk = and i32 %i.fj, %i.as
  %.not1147 = icmp eq i32 %i.fk, %i.av
  br i1 %.not1147, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fl = and i32 %i.fj, %i.dt
  store i32 %i.fl, ptr %.171013, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.fm = getelementptr inbounds nuw i8, ptr %.171013, i64 4 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.17995, i64 4 ; 2 uses
  %i.fo = add nsw i32 %.71030, -1
  %i.fp = icmp sgt i32 %.71030, 1
  br i1 %i.fp, label %bb.aj, label %bb.bh, !llvm.loop !35

bb.bh:                                            ; preds = %bb.bg
  %i.fq = getelementptr inbounds i8, ptr %i.fn, i64 %i.dx
  %i.fr = getelementptr inbounds i8, ptr %i.fm, i64 %i.dy
  %.not1139 = icmp eq i32 %i.dz, 0
  br i1 %.not1139, label %.loopexit, label %bb.ai, !llvm.loop !36

bb.bi:                                            ; preds = %bb.d, %bb.e, %bb.f
  %i.fs = and i32 %i.at, -15794176
  %or.cond1191 = icmp eq i32 %i.fs, 369557504
  %i.ft = and i32 %i.au, -15794176
  %or.cond1192 = icmp eq i32 %i.ft, 369557504
  %or.cond1285 = select i1 %or.cond1191, i1 true, i1 %or.cond1192
  br i1 %or.cond1285, label %.critedge.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call fastcc void @get_permutation(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.af, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, ptr noundef nonnull %i.a)
  %.not11331206 = icmp eq i32 %i.r, 0
  br i1 %.not11331206, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bj
  %i.fu = add nsw i32 %i.p, 3
  %i.fv = sdiv i32 %i.fu, 4                       ; 4 uses
  %i.fw = and i32 %i.p, 3
  %i.fx = trunc nuw i32 %i.ap to i8               ; 4 uses
  %i.fy = sext i32 %i.v to i64
  %i.fz = sext i32 %i.z to i64
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph, %bb.bx
  %.in = phi i32 [ %i.r, %.lr.ph ], [ %i.ga, %bb.bx ]
  %.09401208 = phi ptr [ %i.t, %.lr.ph ], [ %i.kd, %bb.bx ] ; 4 uses
  %.09481207 = phi ptr [ %i.x, %.lr.ph ], [ %i.ke, %bb.bx ] ; 4 uses
  %i.ga = add nsw i32 %.in, -1                    ; 2 uses
  switch i32 %i.fw, label %.unreachabledefault1287 [
    i32 0, label %bb.bl
    i32 3, label %bb.bo
    i32 2, label %bb.br
    i32 1, label %bb.bu
  ]

bb.bl:                                            ; preds = %bb.bk, %bb.bw
  %.01031 = phi i32 [ %i.fv, %bb.bk ], [ %i.kb, %bb.bw ]
  %.1949 = phi ptr [ %.09481207, %bb.bk ], [ %i.ka, %bb.bw ] ; 6 uses
  %.1941 = phi ptr [ %.09401208, %bb.bk ], [ %i.jz, %bb.bw ] ; 6 uses
  %i.gb = load i32, ptr %.1941, align 4
  %i.gc = and i32 %i.gb, %i.as
  %.not1134 = icmp eq i32 %i.gc, %i.av
  br i1 %.not1134, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gd = load i32, ptr %i.b, align 4
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds i8, ptr %.1941, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1
  store i8 %i.gg, ptr %.1949, align 1
  %i.gh = load i32, ptr %i.c, align 4
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds i8, ptr %.1941, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1
  %i.gl = getelementptr inbounds nuw i8, ptr %.1949, i64 1
  store i8 %i.gk, ptr %i.gl, align 1
  %i.gm = load i32, ptr %i.d, align 4
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds i8, ptr %.1941, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = getelementptr inbounds nuw i8, ptr %.1949, i64 2
  store i8 %i.gp, ptr %i.gq, align 1
  %i.gr = load i32, ptr %i.e, align 4
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds i8, ptr %.1941, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = getelementptr inbounds nuw i8, ptr %.1949, i64 3
  store i8 %i.gu, ptr %i.gv, align 1
  %i.gw = load i32, ptr %i.a, align 4
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds i8, ptr %.1949, i64 %i.gx
  store i8 %i.fx, ptr %i.gy, align 1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.gz = getelementptr inbounds nuw i8, ptr %.1941, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %.1949, i64 4
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bk
  %.11032 = phi i32 [ %.01031, %bb.bn ], [ %i.fv, %bb.bk ]
  %.2950 = phi ptr [ %i.ha, %bb.bn ], [ %.09481207, %bb.bk ] ; 6 uses
  %.2942 = phi ptr [ %i.gz, %bb.bn ], [ %.09401208, %bb.bk ] ; 6 uses
  %i.hb = load i32, ptr %.2942, align 4
  %i.hc = and i32 %i.hb, %i.as
  %.not1135 = icmp eq i32 %i.hc, %i.av
  br i1 %.not1135, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hd = load i32, ptr %i.b, align 4
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds i8, ptr %.2942, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1
  store i8 %i.hg, ptr %.2950, align 1
  %i.hh = load i32, ptr %i.c, align 4
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds i8, ptr %.2942, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %.2950, i64 1
  store i8 %i.hk, ptr %i.hl, align 1
  %i.hm = load i32, ptr %i.d, align 4
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds i8, ptr %.2942, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1
  %i.hq = getelementptr inbounds nuw i8, ptr %.2950, i64 2
  store i8 %i.hp, ptr %i.hq, align 1
  %i.hr = load i32, ptr %i.e, align 4
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds i8, ptr %.2942, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.2950, i64 3
  store i8 %i.hu, ptr %i.hv, align 1
  %i.hw = load i32, ptr %i.a, align 4
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds i8, ptr %.2950, i64 %i.hx
  store i8 %i.fx, ptr %i.hy, align 1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.hz = getelementptr inbounds nuw i8, ptr %.2942, i64 4
  %i.ia = getelementptr inbounds nuw i8, ptr %.2950, i64 4
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bk
  %.21033 = phi i32 [ %.11032, %bb.bq ], [ %i.fv, %bb.bk ]
  %.3951 = phi ptr [ %i.ia, %bb.bq ], [ %.09481207, %bb.bk ] ; 6 uses
  %.3943 = phi ptr [ %i.hz, %bb.bq ], [ %.09401208, %bb.bk ] ; 6 uses
  %i.ib = load i32, ptr %.3943, align 4
  %i.ic = and i32 %i.ib, %i.as
  %.not1136 = icmp eq i32 %i.ic, %i.av
  br i1 %.not1136, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.id = load i32, ptr %i.b, align 4
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds i8, ptr %.3943, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1
  store i8 %i.ig, ptr %.3951, align 1
  %i.ih = load i32, ptr %i.c, align 4
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds i8, ptr %.3943, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1
  %i.il = getelementptr inbounds nuw i8, ptr %.3951, i64 1
  store i8 %i.ik, ptr %i.il, align 1
  %i.im = load i32, ptr %i.d, align 4
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds i8, ptr %.3943, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1
  %i.iq = getelementptr inbounds nuw i8, ptr %.3951, i64 2
  store i8 %i.ip, ptr %i.iq, align 1
  %i.ir = load i32, ptr %i.e, align 4
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds i8, ptr %.3943, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1
  %i.iv = getelementptr inbounds nuw i8, ptr %.3951, i64 3
  store i8 %i.iu, ptr %i.iv, align 1
  %i.iw = load i32, ptr %i.a, align 4
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds i8, ptr %.3951, i64 %i.ix
  store i8 %i.fx, ptr %i.iy, align 1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.iz = getelementptr inbounds nuw i8, ptr %.3943, i64 4
  %i.ja = getelementptr inbounds nuw i8, ptr %.3951, i64 4
  br label %bb.bu

.unreachabledefault1287:                          ; preds = %bb.bk
  unreachable

bb.bu:                                            ; preds = %bb.bk, %bb.bt
  %.31034 = phi i32 [ %.21033, %bb.bt ], [ %i.fv, %bb.bk ] ; 2 uses
  %.4952 = phi ptr [ %i.ja, %bb.bt ], [ %.09481207, %bb.bk ] ; 6 uses
  %.4944 = phi ptr [ %i.iz, %bb.bt ], [ %.09401208, %bb.bk ] ; 6 uses
  %i.jb = load i32, ptr %.4944, align 4
  %i.jc = and i32 %i.jb, %i.as
  %.not1137 = icmp eq i32 %i.jc, %i.av
  br i1 %.not1137, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jd = load i32, ptr %i.b, align 4
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds i8, ptr %.4944, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1
  store i8 %i.jg, ptr %.4952, align 1
  %i.jh = load i32, ptr %i.c, align 4
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds i8, ptr %.4944, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1
  %i.jl = getelementptr inbounds nuw i8, ptr %.4952, i64 1
  store i8 %i.jk, ptr %i.jl, align 1
  %i.jm = load i32, ptr %i.d, align 4
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds i8, ptr %.4944, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1
  %i.jq = getelementptr inbounds nuw i8, ptr %.4952, i64 2
  store i8 %i.jp, ptr %i.jq, align 1
  %i.jr = load i32, ptr %i.e, align 4
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds i8, ptr %.4944, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1
  %i.jv = getelementptr inbounds nuw i8, ptr %.4952, i64 3
  store i8 %i.ju, ptr %i.jv, align 1
  %i.jw = load i32, ptr %i.a, align 4
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds i8, ptr %.4952, i64 %i.jx
  store i8 %i.fx, ptr %i.jy, align 1
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.jz = getelementptr inbounds nuw i8, ptr %.4944, i64 4 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.4952, i64 4 ; 2 uses
  %i.kb = add nsw i32 %.31034, -1
  %i.kc = icmp sgt i32 %.31034, 1
  br i1 %i.kc, label %bb.bl, label %bb.bx, !llvm.loop !37

bb.bx:                                            ; preds = %bb.bw
  %i.kd = getelementptr inbounds i8, ptr %i.jz, i64 %i.fy
  %i.ke = getelementptr inbounds i8, ptr %i.ka, i64 %i.fz
  %.not1133 = icmp eq i32 %i.ga, 0
  br i1 %.not1133, label %._crit_edge, label %bb.bk, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.bx, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.loopexit

.critedge.thread:                                 ; preds = %bb.bi
  %i.kf = icmp eq i32 %i.at, 386930691
  %i.kg = icmp eq i32 %i.au, 386930691
  br label %bb.by

.critedge:                                        ; preds = %bb.c
  %i.kh = icmp eq i32 %i.at, 386930691            ; 2 uses
  %i.ki = icmp eq i32 %i.au, 386930691            ; 2 uses
  %or.cond7 = select i1 %i.kh, i1 %i.ki, i1 false
  br i1 %or.cond7, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.critedge.thread, %.critedge
  %i.kj = phi i1 [ %i.kg, %.critedge.thread ], [ %i.ki, %.critedge ]
  %i.kk = phi i1 [ %i.kf, %.critedge.thread ], [ %i.kh, %.critedge ]
  %i.kl = icmp eq i32 %i.at, 390076419            ; 2 uses
  %i.km = icmp eq i32 %i.au, 390076419            ; 2 uses
  %or.cond9 = select i1 %i.kl, i1 %i.km, i1 false
  br i1 %or.cond9, label %bb.bz, label %bb.co

bb.bz:                                            ; preds = %bb.by, %.critedge
  %.not11201230 = icmp eq i32 %i.r, 0
  br i1 %.not11201230, label %.loopexit, label %.lr.ph1234

.lr.ph1234:                                       ; preds = %bb.bz
  %i.kn = lshr i32 %i.av, 16
  %i.ko = lshr i32 %i.av, 8
  %i.kp = add nsw i32 %i.p, 3
  %i.kq = sdiv i32 %i.kp, 4                       ; 4 uses
  %i.kr = and i32 %i.p, 3
  %i.ks = trunc i32 %i.av to i8                   ; 4 uses
  %i.kt = trunc i32 %i.ko to i8                   ; 4 uses
  %i.ku = trunc i32 %i.kn to i8                   ; 4 uses
  %i.kv = sext i32 %i.v to i64
  %i.kw = sext i32 %i.z to i64
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph1234, %bb.cn
  %.in1255 = phi i32 [ %i.r, %.lr.ph1234 ], [ %i.kx, %bb.cn ]
  %.59451232 = phi ptr [ %i.t, %.lr.ph1234 ], [ %i.mk, %bb.cn ] ; 4 uses
  %.59531231 = phi ptr [ %i.x, %.lr.ph1234 ], [ %i.ml, %bb.cn ] ; 4 uses
  %i.kx = add nsw i32 %.in1255, -1                ; 2 uses
  switch i32 %i.kr, label %.unreachabledefault1288 [
    i32 0, label %bb.cb
    i32 3, label %bb.ce
    i32 2, label %bb.ch
    i32 1, label %bb.ck
  ]

bb.cb:                                            ; preds = %bb.ca, %bb.cm
  %.01035 = phi i32 [ %i.kq, %bb.ca ], [ %i.mi, %bb.cm ]
  %.6954 = phi ptr [ %.59531231, %bb.ca ], [ %i.mh, %bb.cm ] ; 4 uses
  %.6946 = phi ptr [ %.59451232, %bb.ca ], [ %i.mg, %bb.cm ] ; 4 uses
  %i.ky = load i8, ptr %.6946, align 1            ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.6946, i64 1
  %i.la = load i8, ptr %i.kz, align 1             ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.6946, i64 2
  %i.lc = load i8, ptr %i.lb, align 1             ; 2 uses
  %.not1121 = icmp eq i8 %i.ky, %i.ks
  %.not1122 = icmp eq i8 %i.la, %i.kt
  %or.cond1163 = select i1 %.not1121, i1 %.not1122, i1 false
  %.not1123 = icmp eq i8 %i.lc, %i.ku
  %or.cond1164 = select i1 %or.cond1163, i1 %.not1123, i1 false
  br i1 %or.cond1164, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i8 %i.ky, ptr %.6954, align 1
  %i.ld = getelementptr inbounds nuw i8, ptr %.6954, i64 1
  store i8 %i.la, ptr %i.ld, align 1
  %i.le = getelementptr inbounds nuw i8, ptr %.6954, i64 2
  store i8 %i.lc, ptr %i.le, align 1
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.lf = getelementptr inbounds nuw i8, ptr %.6946, i64 3
  %i.lg = getelementptr inbounds nuw i8, ptr %.6954, i64 3
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ca
  %.11036 = phi i32 [ %.01035, %bb.cd ], [ %i.kq, %bb.ca ]
  %.7955 = phi ptr [ %i.lg, %bb.cd ], [ %.59531231, %bb.ca ] ; 4 uses
  %.7947 = phi ptr [ %i.lf, %bb.cd ], [ %.59451232, %bb.ca ] ; 4 uses
  %i.lh = load i8, ptr %.7947, align 1            ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.7947, i64 1
  %i.lj = load i8, ptr %i.li, align 1             ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.7947, i64 2
  %i.ll = load i8, ptr %i.lk, align 1             ; 2 uses
  %.not1124 = icmp eq i8 %i.lh, %i.ks
  %.not1125 = icmp eq i8 %i.lj, %i.kt
  %or.cond1165 = select i1 %.not1124, i1 %.not1125, i1 false
  %.not1126 = icmp eq i8 %i.ll, %i.ku
  %or.cond1166 = select i1 %or.cond1165, i1 %.not1126, i1 false
  br i1 %or.cond1166, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store i8 %i.lh, ptr %.7955, align 1
  %i.lm = getelementptr inbounds nuw i8, ptr %.7955, i64 1
  store i8 %i.lj, ptr %i.lm, align 1
  %i.ln = getelementptr inbounds nuw i8, ptr %.7955, i64 2
  store i8 %i.ll, ptr %i.ln, align 1
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf
  %i.lo = getelementptr inbounds nuw i8, ptr %.7947, i64 3
  %i.lp = getelementptr inbounds nuw i8, ptr %.7955, i64 3
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.ca
  %.21037 = phi i32 [ %.11036, %bb.cg ], [ %i.kq, %bb.ca ]
  %.8956 = phi ptr [ %i.lp, %bb.cg ], [ %.59531231, %bb.ca ] ; 4 uses
  %.8 = phi ptr [ %i.lo, %bb.cg ], [ %.59451232, %bb.ca ] ; 4 uses
  %i.lq = load i8, ptr %.8, align 1               ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.8, i64 1
  %i.ls = load i8, ptr %i.lr, align 1             ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.8, i64 2
  %i.lu = load i8, ptr %i.lt, align 1             ; 2 uses
  %.not1127 = icmp eq i8 %i.lq, %i.ks
  %.not1128 = icmp eq i8 %i.ls, %i.kt
  %or.cond1167 = select i1 %.not1127, i1 %.not1128, i1 false
  %.not1129 = icmp eq i8 %i.lu, %i.ku
  %or.cond1168 = select i1 %or.cond1167, i1 %.not1129, i1 false
  br i1 %or.cond1168, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  store i8 %i.lq, ptr %.8956, align 1
  %i.lv = getelementptr inbounds nuw i8, ptr %.8956, i64 1
  store i8 %i.ls, ptr %i.lv, align 1
  %i.lw = getelementptr inbounds nuw i8, ptr %.8956, i64 2
  store i8 %i.lu, ptr %i.lw, align 1
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.ci
  %i.lx = getelementptr inbounds nuw i8, ptr %.8, i64 3
  %i.ly = getelementptr inbounds nuw i8, ptr %.8956, i64 3
  br label %bb.ck

.unreachabledefault1288:                          ; preds = %bb.ca
  unreachable

bb.ck:                                            ; preds = %bb.ca, %bb.cj
  %.31038 = phi i32 [ %.21037, %bb.cj ], [ %i.kq, %bb.ca ] ; 2 uses
  %.9957 = phi ptr [ %i.ly, %bb.cj ], [ %.59531231, %bb.ca ] ; 4 uses
  %.9 = phi ptr [ %i.lx, %bb.cj ], [ %.59451232, %bb.ca ] ; 4 uses
  %i.lz = load i8, ptr %.9, align 1               ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.9, i64 1
  %i.mb = load i8, ptr %i.ma, align 1             ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.9, i64 2
  %i.md = load i8, ptr %i.mc, align 1             ; 2 uses
  %.not1130 = icmp eq i8 %i.lz, %i.ks
  %.not1131 = icmp eq i8 %i.mb, %i.kt
  %or.cond1169 = select i1 %.not1130, i1 %.not1131, i1 false
  %.not1132 = icmp eq i8 %i.md, %i.ku
  %or.cond1170 = select i1 %or.cond1169, i1 %.not1132, i1 false
  br i1 %or.cond1170, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store i8 %i.lz, ptr %.9957, align 1
  %i.me = getelementptr inbounds nuw i8, ptr %.9957, i64 1
  store i8 %i.mb, ptr %i.me, align 1
  %i.mf = getelementptr inbounds nuw i8, ptr %.9957, i64 2
  store i8 %i.md, ptr %i.mf, align 1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  %i.mg = getelementptr inbounds nuw i8, ptr %.9, i64 3 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.9957, i64 3 ; 2 uses
  %i.mi = add nsw i32 %.31038, -1
  %i.mj = icmp sgt i32 %.31038, 1
  br i1 %i.mj, label %bb.cb, label %bb.cn, !llvm.loop !39

bb.cn:                                            ; preds = %bb.cm
  %i.mk = getelementptr inbounds i8, ptr %i.mg, i64 %i.kv
  %i.ml = getelementptr inbounds i8, ptr %i.mh, i64 %i.kw
  %.not1120 = icmp eq i32 %i.kx, 0
  br i1 %.not1120, label %.loopexit, label %bb.ca, !llvm.loop !40

bb.co:                                            ; preds = %bb.by
  %or.cond12 = select i1 %i.kk, i1 %i.km, i1 false
  %or.cond14 = select i1 %i.kl, i1 %i.kj, i1 false
  %or.cond1171 = select i1 %or.cond12, i1 true, i1 %or.cond14
  br i1 %or.cond1171, label %bb.cp, label %bb.de

bb.cp:                                            ; preds = %bb.co
  %.not11071225 = icmp eq i32 %i.r, 0
  br i1 %.not11071225, label %.loopexit, label %.lr.ph1229

.lr.ph1229:                                       ; preds = %bb.cp
  %i.mm = lshr i32 %i.av, 16
  %i.mn = lshr i32 %i.av, 8
  %i.mo = add nsw i32 %i.p, 3
  %i.mp = sdiv i32 %i.mo, 4                       ; 4 uses
  %i.mq = and i32 %i.p, 3
  %i.mr = trunc i32 %i.av to i8                   ; 4 uses
  %i.ms = trunc i32 %i.mn to i8                   ; 4 uses
  %i.mt = trunc i32 %i.mm to i8                   ; 4 uses
  %i.mu = sext i32 %i.v to i64
  %i.mv = sext i32 %i.z to i64
  br label %bb.cq

bb.cq:                                            ; preds = %.lr.ph1229, %bb.dd
  %.in1254 = phi i32 [ %i.r, %.lr.ph1229 ], [ %i.mw, %bb.dd ]
  %.101227 = phi ptr [ %i.t, %.lr.ph1229 ], [ %i.oj, %bb.dd ] ; 4 uses
  %.109581226 = phi ptr [ %i.x, %.lr.ph1229 ], [ %i.ok, %bb.dd ] ; 4 uses
  %i.mw = add nsw i32 %.in1254, -1                ; 2 uses
  switch i32 %i.mq, label %.unreachabledefault1289 [
    i32 0, label %bb.cr
    i32 3, label %bb.cu
    i32 2, label %bb.cx
    i32 1, label %bb.da
  ]

bb.cr:                                            ; preds = %bb.cq, %bb.dc
  %.01039 = phi i32 [ %i.mp, %bb.cq ], [ %i.oh, %bb.dc ]
  %.11959 = phi ptr [ %.109581226, %bb.cq ], [ %i.og, %bb.dc ] ; 4 uses
  %.11 = phi ptr [ %.101227, %bb.cq ], [ %i.of, %bb.dc ] ; 4 uses
  %i.mx = load i8, ptr %.11, align 1              ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.11, i64 1
  %i.mz = load i8, ptr %i.my, align 1             ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.11, i64 2
  %i.nb = load i8, ptr %i.na, align 1             ; 2 uses
  %.not1108 = icmp eq i8 %i.mx, %i.mr
  %.not1109 = icmp eq i8 %i.mz, %i.ms
  %or.cond1172 = select i1 %.not1108, i1 %.not1109, i1 false
  %.not1110 = icmp eq i8 %i.nb, %i.mt
  %or.cond1173 = select i1 %or.cond1172, i1 %.not1110, i1 false
  br i1 %or.cond1173, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  store i8 %i.nb, ptr %.11959, align 1
  %i.nc = getelementptr inbounds nuw i8, ptr %.11959, i64 1
  store i8 %i.mz, ptr %i.nc, align 1
  %i.nd = getelementptr inbounds nuw i8, ptr %.11959, i64 2
  store i8 %i.mx, ptr %i.nd, align 1
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %i.ne = getelementptr inbounds nuw i8, ptr %.11, i64 3
  %i.nf = getelementptr inbounds nuw i8, ptr %.11959, i64 3
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cq
  %.11040 = phi i32 [ %.01039, %bb.ct ], [ %i.mp, %bb.cq ]
  %.12960 = phi ptr [ %i.nf, %bb.ct ], [ %.109581226, %bb.cq ] ; 4 uses
  %.12 = phi ptr [ %i.ne, %bb.ct ], [ %.101227, %bb.cq ] ; 4 uses
  %i.ng = load i8, ptr %.12, align 1              ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.12, i64 1
  %i.ni = load i8, ptr %i.nh, align 1             ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.12, i64 2
  %i.nk = load i8, ptr %i.nj, align 1             ; 2 uses
  %.not1111 = icmp eq i8 %i.ng, %i.mr
  %.not1112 = icmp eq i8 %i.ni, %i.ms
  %or.cond1174 = select i1 %.not1111, i1 %.not1112, i1 false
  %.not1113 = icmp eq i8 %i.nk, %i.mt
  %or.cond1175 = select i1 %or.cond1174, i1 %.not1113, i1 false
  br i1 %or.cond1175, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  store i8 %i.nk, ptr %.12960, align 1
  %i.nl = getelementptr inbounds nuw i8, ptr %.12960, i64 1
  store i8 %i.ni, ptr %i.nl, align 1
  %i.nm = getelementptr inbounds nuw i8, ptr %.12960, i64 2
  store i8 %i.ng, ptr %i.nm, align 1
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cu, %bb.cv
  %i.nn = getelementptr inbounds nuw i8, ptr %.12, i64 3
  %i.no = getelementptr inbounds nuw i8, ptr %.12960, i64 3
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cq
  %.21041 = phi i32 [ %.11040, %bb.cw ], [ %i.mp, %bb.cq ]
  %.13961 = phi ptr [ %i.no, %bb.cw ], [ %.109581226, %bb.cq ] ; 4 uses
  %.13 = phi ptr [ %i.nn, %bb.cw ], [ %.101227, %bb.cq ] ; 4 uses
  %i.np = load i8, ptr %.13, align 1              ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.13, i64 1
  %i.nr = load i8, ptr %i.nq, align 1             ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.13, i64 2
  %i.nt = load i8, ptr %i.ns, align 1             ; 2 uses
  %.not1114 = icmp eq i8 %i.np, %i.mr
  %.not1115 = icmp eq i8 %i.nr, %i.ms
  %or.cond1176 = select i1 %.not1114, i1 %.not1115, i1 false
  %.not1116 = icmp eq i8 %i.nt, %i.mt
  %or.cond1177 = select i1 %or.cond1176, i1 %.not1116, i1 false
  br i1 %or.cond1177, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store i8 %i.nt, ptr %.13961, align 1
  %i.nu = getelementptr inbounds nuw i8, ptr %.13961, i64 1
  store i8 %i.nr, ptr %i.nu, align 1
  %i.nv = getelementptr inbounds nuw i8, ptr %.13961, i64 2
  store i8 %i.np, ptr %i.nv, align 1
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cx, %bb.cy
  %i.nw = getelementptr inbounds nuw i8, ptr %.13, i64 3
  %i.nx = getelementptr inbounds nuw i8, ptr %.13961, i64 3
  br label %bb.da

.unreachabledefault1289:                          ; preds = %bb.cq
  unreachable

bb.da:                                            ; preds = %bb.cq, %bb.cz
  %.31042 = phi i32 [ %.21041, %bb.cz ], [ %i.mp, %bb.cq ] ; 2 uses
  %.14962 = phi ptr [ %i.nx, %bb.cz ], [ %.109581226, %bb.cq ] ; 4 uses
  %.14 = phi ptr [ %i.nw, %bb.cz ], [ %.101227, %bb.cq ] ; 4 uses
  %i.ny = load i8, ptr %.14, align 1              ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.14, i64 1
  %i.oa = load i8, ptr %i.nz, align 1             ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.14, i64 2
  %i.oc = load i8, ptr %i.ob, align 1             ; 2 uses
  %.not1117 = icmp eq i8 %i.ny, %i.mr
  %.not1118 = icmp eq i8 %i.oa, %i.ms
  %or.cond1178 = select i1 %.not1117, i1 %.not1118, i1 false
  %.not1119 = icmp eq i8 %i.oc, %i.mt
  %or.cond1179 = select i1 %or.cond1178, i1 %.not1119, i1 false
  br i1 %or.cond1179, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  store i8 %i.oc, ptr %.14962, align 1
  %i.od = getelementptr inbounds nuw i8, ptr %.14962, i64 1
  store i8 %i.oa, ptr %i.od, align 1
  %i.oe = getelementptr inbounds nuw i8, ptr %.14962, i64 2
  store i8 %i.ny, ptr %i.oe, align 1
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.db
  %i.of = getelementptr inbounds nuw i8, ptr %.14, i64 3 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.14962, i64 3 ; 2 uses
  %i.oh = add nsw i32 %.31042, -1
  %i.oi = icmp sgt i32 %.31042, 1
  br i1 %i.oi, label %bb.cr, label %bb.dd, !llvm.loop !41

bb.dd:                                            ; preds = %bb.dc
  %i.oj = getelementptr inbounds i8, ptr %i.of, i64 %i.mu
  %i.ok = getelementptr inbounds i8, ptr %i.og, i64 %i.mv
  %.not1107 = icmp eq i32 %i.mw, 0
  br i1 %.not1107, label %.loopexit, label %bb.cq, !llvm.loop !42

bb.de:                                            ; preds = %bb.co
  %i.ol = icmp eq i8 %i.aj, 3
  %or.cond17 = select i1 %i.aw, i1 %i.ol, i1 false
  br i1 %or.cond17, label %bb.df, label %bb.dv

bb.df:                                            ; preds = %bb.de
  %i.om = and i32 %i.at, -15794176
  %or.cond1193 = icmp eq i32 %i.om, 369557504
  br i1 %or.cond1193, label %.thread, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  call fastcc void @get_permutation(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.af, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef null)
  %.not11021215 = icmp eq i32 %i.r, 0
  br i1 %.not11021215, label %._crit_edge1220, label %.lr.ph1219

.lr.ph1219:                                       ; preds = %bb.dg
  %i.on = add nsw i32 %i.p, 3
  %i.oo = sdiv i32 %i.on, 4                       ; 4 uses
  %i.op = and i32 %i.p, 3
  %i.oq = sext i32 %i.v to i64
  %i.or = sext i32 %i.z to i64
  br label %bb.dh

bb.dh:                                            ; preds = %.lr.ph1219, %bb.du
  %.in1252 = phi i32 [ %i.r, %.lr.ph1219 ], [ %i.os, %bb.du ]
  %.151217 = phi ptr [ %i.t, %.lr.ph1219 ], [ %i.rp, %bb.du ] ; 4 uses
  %.159631216 = phi ptr [ %i.x, %.lr.ph1219 ], [ %i.rq, %bb.du ] ; 4 uses
  %i.os = add nsw i32 %.in1252, -1                ; 2 uses
  switch i32 %i.op, label %.unreachabledefault1290 [
    i32 0, label %bb.di
    i32 3, label %bb.dl
    i32 2, label %bb.do
    i32 1, label %bb.dr
  ]

bb.di:                                            ; preds = %bb.dh, %bb.dt
  %.01043 = phi i32 [ %i.oo, %bb.dh ], [ %i.rn, %bb.dt ]
  %.16964 = phi ptr [ %.159631216, %bb.dh ], [ %i.rm, %bb.dt ] ; 4 uses
  %.16 = phi ptr [ %.151217, %bb.dh ], [ %i.rl, %bb.dt ] ; 5 uses
  %i.ot = load i32, ptr %.16, align 4
  %i.ou = and i32 %i.ot, %i.as
  %.not1103 = icmp eq i32 %i.ou, %i.av
  br i1 %.not1103, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ov = load i32, ptr %i.f, align 4
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds i8, ptr %.16, i64 %i.ow
  %i.oy = load i8, ptr %i.ox, align 1
  store i8 %i.oy, ptr %.16964, align 1
  %i.oz = load i32, ptr %i.g, align 4
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds i8, ptr %.16, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1
  %i.pd = getelementptr inbounds nuw i8, ptr %.16964, i64 1
  store i8 %i.pc, ptr %i.pd, align 1
  %i.pe = load i32, ptr %i.h, align 4
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr inbounds i8, ptr %.16, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1
  %i.pi = getelementptr inbounds nuw i8, ptr %.16964, i64 2
  store i8 %i.ph, ptr %i.pi, align 1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.pj = getelementptr inbounds nuw i8, ptr %.16, i64 4
  %i.pk = getelementptr inbounds nuw i8, ptr %.16964, i64 3
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dh
  %.11044 = phi i32 [ %.01043, %bb.dk ], [ %i.oo, %bb.dh ]
  %.17965 = phi ptr [ %i.pk, %bb.dk ], [ %.159631216, %bb.dh ] ; 4 uses
  %.17 = phi ptr [ %i.pj, %bb.dk ], [ %.151217, %bb.dh ] ; 5 uses
  %i.pl = load i32, ptr %.17, align 4
  %i.pm = and i32 %i.pl, %i.as
  %.not1104 = icmp eq i32 %i.pm, %i.av
  br i1 %.not1104, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.pn = load i32, ptr %i.f, align 4
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr inbounds i8, ptr %.17, i64 %i.po
  %i.pq = load i8, ptr %i.pp, align 1
  store i8 %i.pq, ptr %.17965, align 1
  %i.pr = load i32, ptr %i.g, align 4
  %i.ps = sext i32 %i.pr to i64
  %i.pt = getelementptr inbounds i8, ptr %.17, i64 %i.ps
  %i.pu = load i8, ptr %i.pt, align 1
  %i.pv = getelementptr inbounds nuw i8, ptr %.17965, i64 1
  store i8 %i.pu, ptr %i.pv, align 1
  %i.pw = load i32, ptr %i.h, align 4
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds i8, ptr %.17, i64 %i.px
  %i.pz = load i8, ptr %i.py, align 1
  %i.qa = getelementptr inbounds nuw i8, ptr %.17965, i64 2
  store i8 %i.pz, ptr %i.qa, align 1
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.qb = getelementptr inbounds nuw i8, ptr %.17, i64 4
  %i.qc = getelementptr inbounds nuw i8, ptr %.17965, i64 3
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dh
  %.21045 = phi i32 [ %.11044, %bb.dn ], [ %i.oo, %bb.dh ]
  %.18966 = phi ptr [ %i.qc, %bb.dn ], [ %.159631216, %bb.dh ] ; 4 uses
  %.18 = phi ptr [ %i.qb, %bb.dn ], [ %.151217, %bb.dh ] ; 5 uses
  %i.qd = load i32, ptr %.18, align 4
  %i.qe = and i32 %i.qd, %i.as
  %.not1105 = icmp eq i32 %i.qe, %i.av
  br i1 %.not1105, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.qf = load i32, ptr %i.f, align 4
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr inbounds i8, ptr %.18, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1
  store i8 %i.qi, ptr %.18966, align 1
  %i.qj = load i32, ptr %i.g, align 4
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds i8, ptr %.18, i64 %i.qk
  %i.qm = load i8, ptr %i.ql, align 1
  %i.qn = getelementptr inbounds nuw i8, ptr %.18966, i64 1
  store i8 %i.qm, ptr %i.qn, align 1
  %i.qo = load i32, ptr %i.h, align 4
  %i.qp = sext i32 %i.qo to i64
  %i.qq = getelementptr inbounds i8, ptr %.18, i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 1
  %i.qs = getelementptr inbounds nuw i8, ptr %.18966, i64 2
  store i8 %i.qr, ptr %i.qs, align 1
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.qt = getelementptr inbounds nuw i8, ptr %.18, i64 4
  %i.qu = getelementptr inbounds nuw i8, ptr %.18966, i64 3
  br label %bb.dr

.unreachabledefault1290:                          ; preds = %bb.dh
  unreachable

bb.dr:                                            ; preds = %bb.dh, %bb.dq
  %.31046 = phi i32 [ %.21045, %bb.dq ], [ %i.oo, %bb.dh ] ; 2 uses
  %.19967 = phi ptr [ %i.qu, %bb.dq ], [ %.159631216, %bb.dh ] ; 4 uses
  %.19 = phi ptr [ %i.qt, %bb.dq ], [ %.151217, %bb.dh ] ; 5 uses
  %i.qv = load i32, ptr %.19, align 4
  %i.qw = and i32 %i.qv, %i.as
  %.not1106 = icmp eq i32 %i.qw, %i.av
  br i1 %.not1106, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.qx = load i32, ptr %i.f, align 4
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds i8, ptr %.19, i64 %i.qy
  %i.ra = load i8, ptr %i.qz, align 1
  store i8 %i.ra, ptr %.19967, align 1
  %i.rb = load i32, ptr %i.g, align 4
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds i8, ptr %.19, i64 %i.rc
  %i.re = load i8, ptr %i.rd, align 1
  %i.rf = getelementptr inbounds nuw i8, ptr %.19967, i64 1
  store i8 %i.re, ptr %i.rf, align 1
  %i.rg = load i32, ptr %i.h, align 4
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr inbounds i8, ptr %.19, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1
  %i.rk = getelementptr inbounds nuw i8, ptr %.19967, i64 2
  store i8 %i.rj, ptr %i.rk, align 1
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.rl = getelementptr inbounds nuw i8, ptr %.19, i64 4 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.19967, i64 3 ; 2 uses
  %i.rn = add nsw i32 %.31046, -1
  %i.ro = icmp sgt i32 %.31046, 1
  br i1 %i.ro, label %bb.di, label %bb.du, !llvm.loop !43

bb.du:                                            ; preds = %bb.dt
  %i.rp = getelementptr inbounds i8, ptr %i.rl, i64 %i.oq
  %i.rq = getelementptr inbounds i8, ptr %i.rm, i64 %i.or
  %.not1102 = icmp eq i32 %i.os, 0
  br i1 %.not1102, label %._crit_edge1220, label %bb.dh, !llvm.loop !44

._crit_edge1220:                                  ; preds = %bb.du, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br label %.loopexit

bb.dv:                                            ; preds = %bb.de
  %i.rr = icmp eq i8 %i.ah, 3
  %or.cond20 = select i1 %i.rr, i1 %i.ax, i1 false
  %i.rs = and i32 %i.au, -15794176
  %or.cond1194 = icmp ne i32 %i.rs, 369557504
  %or.cond1286.not = select i1 %or.cond20, i1 %or.cond1194, i1 false
  br i1 %or.cond1286.not, label %bb.dw, label %.thread

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #6
  call fastcc void @get_permutation(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.af, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef nonnull %i.j)
  %.not10891209 = icmp eq i32 %i.r, 0
  br i1 %.not10891209, label %._crit_edge1214, label %.lr.ph1213

.lr.ph1213:                                       ; preds = %bb.dw
  %i.rt = lshr i32 %i.av, 16
  %i.ru = lshr i32 %i.av, 8
  %i.rv = add nsw i32 %i.p, 3
  %i.rw = sdiv i32 %i.rv, 4                       ; 4 uses
  %i.rx = and i32 %i.p, 3
  %i.ry = trunc i32 %i.av to i8                   ; 4 uses
  %i.rz = trunc i32 %i.ru to i8                   ; 4 uses
  %i.sa = trunc i32 %i.rt to i8                   ; 4 uses
  %i.sb = trunc nuw i32 %i.ap to i8               ; 4 uses
  %i.sc = sext i32 %i.v to i64
  %i.sd = sext i32 %i.z to i64
  br label %bb.dx

bb.dx:                                            ; preds = %.lr.ph1213, %bb.eo
  %.in1251 = phi i32 [ %i.r, %.lr.ph1213 ], [ %i.se, %bb.eo ]
  %.201211 = phi ptr [ %i.t, %.lr.ph1213 ], [ %i.wt, %bb.eo ] ; 4 uses
  %.209681210 = phi ptr [ %i.x, %.lr.ph1213 ], [ %i.wu, %bb.eo ] ; 4 uses
  %i.se = add nsw i32 %.in1251, -1                ; 2 uses
  switch i32 %i.rx, label %.unreachabledefault1292 [
    i32 0, label %bb.dy
    i32 3, label %bb.ec
    i32 2, label %bb.eg
    i32 1, label %bb.ek
  ]

bb.dy:                                            ; preds = %bb.dx, %bb.en
  %.01047 = phi i32 [ %i.rw, %bb.dx ], [ %i.wr, %bb.en ]
  %.21969 = phi ptr [ %.209681210, %bb.dx ], [ %i.wq, %bb.en ] ; 6 uses
  %.21 = phi ptr [ %.201211, %bb.dx ], [ %i.wp, %bb.en ] ; 8 uses
  %i.sf = load i8, ptr %.21, align 1
  %.not1090 = icmp eq i8 %i.sf, %i.ry
  br i1 %.not1090, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.sg = getelementptr inbounds nuw i8, ptr %.21, i64 2
  %i.sh = load i8, ptr %i.sg, align 1
  %i.si = getelementptr inbounds nuw i8, ptr %.21, i64 1
  %i.sj = load i8, ptr %i.si, align 1
  %.not1091 = icmp eq i8 %i.sj, %i.rz
  %.not1092 = icmp eq i8 %i.sh, %i.sa
  %or.cond1186 = select i1 %.not1091, i1 %.not1092, i1 false
  br i1 %or.cond1186, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.sk = load i32, ptr %i.k, align 4
  %i.sl = sext i32 %i.sk to i64
  %i.sm = getelementptr inbounds i8, ptr %.21, i64 %i.sl
  %i.sn = load i8, ptr %i.sm, align 1
  store i8 %i.sn, ptr %.21969, align 1
  %i.so = load i32, ptr %i.l, align 4
  %i.sp = sext i32 %i.so to i64
  %i.sq = getelementptr inbounds i8, ptr %.21, i64 %i.sp
  %i.sr = load i8, ptr %i.sq, align 1
  %i.ss = getelementptr inbounds nuw i8, ptr %.21969, i64 1
  store i8 %i.sr, ptr %i.ss, align 1
  %i.st = load i32, ptr %i.m, align 4
  %i.su = sext i32 %i.st to i64
  %i.sv = getelementptr inbounds i8, ptr %.21, i64 %i.su
  %i.sw = load i8, ptr %i.sv, align 1
  %i.sx = getelementptr inbounds nuw i8, ptr %.21969, i64 2
  store i8 %i.sw, ptr %i.sx, align 1
  %i.sy = load i32, ptr %i.n, align 4
  %i.sz = sext i32 %i.sy to i64
  %i.ta = getelementptr inbounds i8, ptr %.21, i64 %i.sz
  %i.tb = load i8, ptr %i.ta, align 1
  %i.tc = getelementptr inbounds nuw i8, ptr %.21969, i64 3
  store i8 %i.tb, ptr %i.tc, align 1
  %i.td = load i32, ptr %i.j, align 4
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr inbounds i8, ptr %.21969, i64 %i.te
  store i8 %i.sb, ptr %i.tf, align 1
  br label %bb.eb

bb.eb:                                            ; preds = %bb.dz, %bb.ea
  %i.tg = getelementptr inbounds nuw i8, ptr %.21, i64 3
  %i.th = getelementptr inbounds nuw i8, ptr %.21969, i64 4
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.dx
  %.11048 = phi i32 [ %.01047, %bb.eb ], [ %i.rw, %bb.dx ]
  %.22970 = phi ptr [ %i.th, %bb.eb ], [ %.209681210, %bb.dx ] ; 6 uses
  %.22 = phi ptr [ %i.tg, %bb.eb ], [ %.201211, %bb.dx ] ; 8 uses
  %i.ti = load i8, ptr %.22, align 1
  %.not1093 = icmp eq i8 %i.ti, %i.ry
  br i1 %.not1093, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.tj = getelementptr inbounds nuw i8, ptr %.22, i64 2
  %i.tk = load i8, ptr %i.tj, align 1
  %i.tl = getelementptr inbounds nuw i8, ptr %.22, i64 1
  %i.tm = load i8, ptr %i.tl, align 1
  %.not1094 = icmp eq i8 %i.tm, %i.rz
  %.not1095 = icmp eq i8 %i.tk, %i.sa
  %or.cond1187 = select i1 %.not1094, i1 %.not1095, i1 false
  br i1 %or.cond1187, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.tn = load i32, ptr %i.k, align 4
  %i.to = sext i32 %i.tn to i64
  %i.tp = getelementptr inbounds i8, ptr %.22, i64 %i.to
  %i.tq = load i8, ptr %i.tp, align 1
  store i8 %i.tq, ptr %.22970, align 1
  %i.tr = load i32, ptr %i.l, align 4
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr inbounds i8, ptr %.22, i64 %i.ts
  %i.tu = load i8, ptr %i.tt, align 1
  %i.tv = getelementptr inbounds nuw i8, ptr %.22970, i64 1
  store i8 %i.tu, ptr %i.tv, align 1
  %i.tw = load i32, ptr %i.m, align 4
  %i.tx = sext i32 %i.tw to i64
  %i.ty = getelementptr inbounds i8, ptr %.22, i64 %i.tx
  %i.tz = load i8, ptr %i.ty, align 1
  %i.ua = getelementptr inbounds nuw i8, ptr %.22970, i64 2
  store i8 %i.tz, ptr %i.ua, align 1
  %i.ub = load i32, ptr %i.n, align 4
  %i.uc = sext i32 %i.ub to i64
  %i.ud = getelementptr inbounds i8, ptr %.22, i64 %i.uc
  %i.ue = load i8, ptr %i.ud, align 1
  %i.uf = getelementptr inbounds nuw i8, ptr %.22970, i64 3
  store i8 %i.ue, ptr %i.uf, align 1
  %i.ug = load i32, ptr %i.j, align 4
  %i.uh = sext i32 %i.ug to i64
  %i.ui = getelementptr inbounds i8, ptr %.22970, i64 %i.uh
  store i8 %i.sb, ptr %i.ui, align 1
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ed, %bb.ee
  %i.uj = getelementptr inbounds nuw i8, ptr %.22, i64 3
  %i.uk = getelementptr inbounds nuw i8, ptr %.22970, i64 4
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.dx
  %.21049 = phi i32 [ %.11048, %bb.ef ], [ %i.rw, %bb.dx ]
  %.23971 = phi ptr [ %i.uk, %bb.ef ], [ %.209681210, %bb.dx ] ; 6 uses
  %.23 = phi ptr [ %i.uj, %bb.ef ], [ %.201211, %bb.dx ] ; 8 uses
  %i.ul = load i8, ptr %.23, align 1
  %.not1096 = icmp eq i8 %i.ul, %i.ry
  br i1 %.not1096, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.um = getelementptr inbounds nuw i8, ptr %.23, i64 2
  %i.un = load i8, ptr %i.um, align 1
  %i.uo = getelementptr inbounds nuw i8, ptr %.23, i64 1
  %i.up = load i8, ptr %i.uo, align 1
  %.not1097 = icmp eq i8 %i.up, %i.rz
  %.not1098 = icmp eq i8 %i.un, %i.sa
  %or.cond1188 = select i1 %.not1097, i1 %.not1098, i1 false
  br i1 %or.cond1188, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.uq = load i32, ptr %i.k, align 4
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds i8, ptr %.23, i64 %i.ur
  %i.ut = load i8, ptr %i.us, align 1
  store i8 %i.ut, ptr %.23971, align 1
  %i.uu = load i32, ptr %i.l, align 4
  %i.uv = sext i32 %i.uu to i64
  %i.uw = getelementptr inbounds i8, ptr %.23, i64 %i.uv
  %i.ux = load i8, ptr %i.uw, align 1
  %i.uy = getelementptr inbounds nuw i8, ptr %.23971, i64 1
  store i8 %i.ux, ptr %i.uy, align 1
  %i.uz = load i32, ptr %i.m, align 4
  %i.va = sext i32 %i.uz to i64
  %i.vb = getelementptr inbounds i8, ptr %.23, i64 %i.va
  %i.vc = load i8, ptr %i.vb, align 1
  %i.vd = getelementptr inbounds nuw i8, ptr %.23971, i64 2
  store i8 %i.vc, ptr %i.vd, align 1
  %i.ve = load i32, ptr %i.n, align 4
  %i.vf = sext i32 %i.ve to i64
  %i.vg = getelementptr inbounds i8, ptr %.23, i64 %i.vf
  %i.vh = load i8, ptr %i.vg, align 1
  %i.vi = getelementptr inbounds nuw i8, ptr %.23971, i64 3
  store i8 %i.vh, ptr %i.vi, align 1
  %i.vj = load i32, ptr %i.j, align 4
  %i.vk = sext i32 %i.vj to i64
  %i.vl = getelementptr inbounds i8, ptr %.23971, i64 %i.vk
  store i8 %i.sb, ptr %i.vl, align 1
  br label %bb.ej

bb.ej:                                            ; preds = %bb.eh, %bb.ei
  %i.vm = getelementptr inbounds nuw i8, ptr %.23, i64 3
  %i.vn = getelementptr inbounds nuw i8, ptr %.23971, i64 4
  br label %bb.ek

.unreachabledefault1292:                          ; preds = %bb.dx
  unreachable

bb.ek:                                            ; preds = %bb.dx, %bb.ej
  %.31050 = phi i32 [ %.21049, %bb.ej ], [ %i.rw, %bb.dx ] ; 2 uses
  %.24972 = phi ptr [ %i.vn, %bb.ej ], [ %.209681210, %bb.dx ] ; 6 uses
  %.24 = phi ptr [ %i.vm, %bb.ej ], [ %.201211, %bb.dx ] ; 8 uses
  %i.vo = load i8, ptr %.24, align 1
  %.not1099 = icmp eq i8 %i.vo, %i.ry
  br i1 %.not1099, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.vp = getelementptr inbounds nuw i8, ptr %.24, i64 2
  %i.vq = load i8, ptr %i.vp, align 1
  %i.vr = getelementptr inbounds nuw i8, ptr %.24, i64 1
  %i.vs = load i8, ptr %i.vr, align 1
  %.not1100 = icmp eq i8 %i.vs, %i.rz
  %.not1101 = icmp eq i8 %i.vq, %i.sa
  %or.cond1189 = select i1 %.not1100, i1 %.not1101, i1 false
  br i1 %or.cond1189, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.vt = load i32, ptr %i.k, align 4
  %i.vu = sext i32 %i.vt to i64
  %i.vv = getelementptr inbounds i8, ptr %.24, i64 %i.vu
  %i.vw = load i8, ptr %i.vv, align 1
  store i8 %i.vw, ptr %.24972, align 1
  %i.vx = load i32, ptr %i.l, align 4
  %i.vy = sext i32 %i.vx to i64
  %i.vz = getelementptr inbounds i8, ptr %.24, i64 %i.vy
  %i.wa = load i8, ptr %i.vz, align 1
  %i.wb = getelementptr inbounds nuw i8, ptr %.24972, i64 1
  store i8 %i.wa, ptr %i.wb, align 1
  %i.wc = load i32, ptr %i.m, align 4
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds i8, ptr %.24, i64 %i.wd
  %i.wf = load i8, ptr %i.we, align 1
  %i.wg = getelementptr inbounds nuw i8, ptr %.24972, i64 2
  store i8 %i.wf, ptr %i.wg, align 1
  %i.wh = load i32, ptr %i.n, align 4
  %i.wi = sext i32 %i.wh to i64
  %i.wj = getelementptr inbounds i8, ptr %.24, i64 %i.wi
  %i.wk = load i8, ptr %i.wj, align 1
  %i.wl = getelementptr inbounds nuw i8, ptr %.24972, i64 3
  store i8 %i.wk, ptr %i.wl, align 1
  %i.wm = load i32, ptr %i.j, align 4
  %i.wn = sext i32 %i.wm to i64
  %i.wo = getelementptr inbounds i8, ptr %.24972, i64 %i.wn
  store i8 %i.sb, ptr %i.wo, align 1
  br label %bb.en

bb.en:                                            ; preds = %bb.el, %bb.em
  %i.wp = getelementptr inbounds nuw i8, ptr %.24, i64 3 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.24972, i64 4 ; 2 uses
  %i.wr = add nsw i32 %.31050, -1
  %i.ws = icmp sgt i32 %.31050, 1
  br i1 %i.ws, label %bb.dy, label %bb.eo, !llvm.loop !45

bb.eo:                                            ; preds = %bb.en
  %i.wt = getelementptr inbounds i8, ptr %i.wp, i64 %i.sc
  %i.wu = getelementptr inbounds i8, ptr %i.wq, i64 %i.sd
  %.not1089 = icmp eq i32 %i.se, 0
  br i1 %.not1089, label %._crit_edge1214, label %bb.dx, !llvm.loop !46

._crit_edge1214:                                  ; preds = %bb.eo, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  br label %.loopexit

.thread:                                          ; preds = %bb.df, %bb.dv
  %.not10841221 = icmp eq i32 %i.r, 0
  br i1 %.not10841221, label %.loopexit, label %.lr.ph1224

.lr.ph1224:                                       ; preds = %.thread
  %i.wv = add nsw i32 %i.p, 3
  %i.ww = sdiv i32 %i.wv, 4                       ; 4 uses
  %i.wx = and i32 %i.p, 3
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 4 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ad, i64 28 ; 4 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.ad, i64 25 ; 4 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 4 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.ad, i64 29 ; 4 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.ad, i64 26 ; 4 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 4 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.ad, i64 30 ; 4 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 12 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.af, i64 28 ; 16 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.af, i64 25 ; 12 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.af, i64 29 ; 16 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.af, i64 26 ; 12 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.af, i64 30 ; 16 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.af, i64 27 ; 12 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.af, i64 31 ; 12 uses
  %i.xp = zext i8 %i.aj to i64                    ; 4 uses
  %i.xq = zext i8 %i.ah to i64                    ; 4 uses
  %i.xr = sext i32 %i.v to i64
  %i.xs = sext i32 %i.z to i64
  br label %bb.ep

bb.ep:                                            ; preds = %.lr.ph1224, %bb.gm
  %.in1253 = phi i32 [ %i.r, %.lr.ph1224 ], [ %i.xt, %bb.gm ]
  %.251223 = phi ptr [ %i.t, %.lr.ph1224 ], [ %i.awq, %bb.gm ] ; 4 uses
  %.259731222 = phi ptr [ %i.x, %.lr.ph1224 ], [ %i.awr, %bb.gm ] ; 4 uses
  %i.xt = add nsw i32 %.in1253, -1                ; 2 uses
  switch i32 %i.wx, label %.unreachabledefault1293 [
    i32 0, label %bb.eq
    i32 3, label %bb.fc
    i32 2, label %bb.fo
    i32 1, label %bb.ga
  ]

bb.eq:                                            ; preds = %bb.ep, %bb.gl
  %.01052 = phi i32 [ %i.ww, %bb.ep ], [ %i.awo, %bb.gl ]
  %.26974 = phi ptr [ %.259731222, %bb.ep ], [ %i.awm, %bb.gl ] ; 7 uses
  %.26 = phi ptr [ %.251223, %bb.ep ], [ %i.awn, %bb.gl ] ; 6 uses
  switch i8 %i.ah, label %bb.ev [
    i8 1, label %bb.er
    i8 2, label %bb.es
    i8 3, label %bb.et
    i8 4, label %bb.eu
  ]

bb.er:                                            ; preds = %bb.eq
  %i.xu = load i8, ptr %.26, align 1
  %i.xv = zext i8 %i.xu to i32
  br label %bb.ev

bb.es:                                            ; preds = %bb.eq
  %i.xw = load i16, ptr %.26, align 2
  %i.xx = zext i16 %i.xw to i32
  br label %bb.ev

bb.et:                                            ; preds = %bb.eq
  %i.xy = getelementptr i8, ptr %.26, i64 1
  %i.xz = load i16, ptr %i.xy, align 1
  %i.ya = zext i16 %i.xz to i32
  %i.yb = shl nuw nsw i32 %i.ya, 8
  %i.yc = load i8, ptr %.26, align 1
  %i.yd = zext i8 %i.yc to i32
  %i.ye = or disjoint i32 %i.yb, %i.yd
  br label %bb.ev

bb.eu:                                            ; preds = %bb.eq
  %i.yf = load i32, ptr %.26, align 4
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eq, %bb.eu, %bb.et, %bb.es, %bb.er
  %.01056 = phi i32 [ %i.yf, %bb.eu ], [ %i.xv, %bb.er ], [ %i.xx, %bb.es ], [ %i.ye, %bb.et ], [ 0, %bb.eq ] ; 4 uses
  %i.yg = and i32 %.01056, %i.as
  %.not1085 = icmp eq i32 %i.yg, %i.av
  br i1 %.not1085, label %bb.fb, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.yh = load i8, ptr %i.wy, align 4
  %i.yi = zext i8 %i.yh to i64
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.yi
  %i.yk = load ptr, ptr %i.yj, align 8
  %i.yl = load i32, ptr %i.wz, align 4
  %i.ym = and i32 %i.yl, %.01056
  %i.yn = load i8, ptr %i.xa, align 4
  %i.yo = zext nneg i8 %i.yn to i32
  %i.yp = lshr i32 %i.ym, %i.yo
  %i.yq = zext i32 %i.yp to i64
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yk, i64 %i.yq
  %i.ys = load i8, ptr %i.yr, align 1             ; 2 uses
  %i.yt = zext i8 %i.ys to i32                    ; 3 uses
  %i.yu = load i8, ptr %i.xb, align 1
  %i.yv = zext i8 %i.yu to i64
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.yv
  %i.yx = load ptr, ptr %i.yw, align 8
  %i.yy = load i32, ptr %i.xc, align 4
  %i.yz = and i32 %i.yy, %.01056
  %i.za = load i8, ptr %i.xd, align 1
  %i.zb = zext nneg i8 %i.za to i32
  %i.zc = lshr i32 %i.yz, %i.zb
  %i.zd = zext i32 %i.zc to i64
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yx, i64 %i.zd
  %i.zf = load i8, ptr %i.ze, align 1             ; 2 uses
  %i.zg = zext i8 %i.zf to i32                    ; 3 uses
  %i.zh = load i8, ptr %i.xe, align 2
  %i.zi = zext i8 %i.zh to i64
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.zi
  %i.zk = load ptr, ptr %i.zj, align 8
  %i.zl = load i32, ptr %i.xf, align 4
  %i.zm = and i32 %i.zl, %.01056
  %i.zn = load i8, ptr %i.xg, align 2
  %i.zo = zext nneg i8 %i.zn to i32
  %i.zp = lshr i32 %i.zm, %i.zo
  %i.zq = zext i32 %i.zp to i64
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zk, i64 %i.zq
  %i.zs = load i8, ptr %i.zr, align 1             ; 2 uses
  %i.zt = zext i8 %i.zs to i32                    ; 3 uses
  switch i8 %i.aj, label %bb.fb [
    i8 1, label %bb.ex
    i8 2, label %bb.ey
    i8 3, label %bb.ez
    i8 4, label %bb.fa
  ]

bb.ex:                                            ; preds = %bb.ew
  %i.zu = load i8, ptr %i.xh, align 4
  %i.zv = zext i8 %i.zu to i32
  %i.zw = sub nsw i32 8, %i.zv
  %i.zx = lshr i32 %i.yt, %i.zw
  %i.zy = load i8, ptr %i.xi, align 4
  %i.zz = zext nneg i8 %i.zy to i32
  %i.aaa = shl i32 %i.zx, %i.zz
  %i.aab = load i8, ptr %i.xj, align 1
  %i.aac = zext i8 %i.aab to i32
  %i.aad = sub nsw i32 8, %i.aac
  %i.aae = lshr i32 %i.zg, %i.aad
  %i.aaf = load i8, ptr %i.xk, align 1
  %i.aag = zext nneg i8 %i.aaf to i32
  %i.aah = shl i32 %i.aae, %i.aag
  %i.aai = or i32 %i.aah, %i.aaa
  %i.aaj = load i8, ptr %i.xl, align 2
  %i.aak = zext i8 %i.aaj to i32
  %i.aal = sub nsw i32 8, %i.aak
  %i.aam = lshr i32 %i.zt, %i.aal
  %i.aan = load i8, ptr %i.xm, align 2
  %i.aao = zext nneg i8 %i.aan to i32
  %i.aap = shl i32 %i.aam, %i.aao
  %i.aaq = or i32 %i.aai, %i.aap
  %i.aar = load i8, ptr %i.xn, align 1
  %i.aas = zext i8 %i.aar to i32
  %i.aat = sub nsw i32 8, %i.aas
  %i.aau = lshr i32 %i.ap, %i.aat
  %i.aav = load i8, ptr %i.xo, align 1
  %i.aaw = zext nneg i8 %i.aav to i32
  %i.aax = shl i32 %i.aau, %i.aaw
  %i.aay = or i32 %i.aaq, %i.aax
  %i.aaz = trunc i32 %i.aay to i8
  store i8 %i.aaz, ptr %.26974, align 1
  br label %bb.fb

bb.ey:                                            ; preds = %bb.ew
  %i.aba = load i8, ptr %i.xh, align 4
  %i.abb = zext i8 %i.aba to i32
  %i.abc = sub nsw i32 8, %i.abb
  %i.abd = lshr i32 %i.yt, %i.abc
  %i.abe = load i8, ptr %i.xi, align 4
  %i.abf = zext nneg i8 %i.abe to i32
  %i.abg = shl i32 %i.abd, %i.abf
  %i.abh = load i8, ptr %i.xj, align 1
  %i.abi = zext i8 %i.abh to i32
  %i.abj = sub nsw i32 8, %i.abi
  %i.abk = lshr i32 %i.zg, %i.abj
  %i.abl = load i8, ptr %i.xk, align 1
  %i.abm = zext nneg i8 %i.abl to i32
  %i.abn = shl i32 %i.abk, %i.abm
  %i.abo = or i32 %i.abn, %i.abg
  %i.abp = load i8, ptr %i.xl, align 2
  %i.abq = zext i8 %i.abp to i32
  %i.abr = sub nsw i32 8, %i.abq
  %i.abs = lshr i32 %i.zt, %i.abr
  %i.abt = load i8, ptr %i.xm, align 2
  %i.abu = zext nneg i8 %i.abt to i32
  %i.abv = shl i32 %i.abs, %i.abu
  %i.abw = or i32 %i.abo, %i.abv
  %i.abx = load i8, ptr %i.xn, align 1
  %i.aby = zext i8 %i.abx to i32
  %i.abz = sub nsw i32 8, %i.aby
  %i.aca = lshr i32 %i.ap, %i.abz
  %i.acb = load i8, ptr %i.xo, align 1
  %i.acc = zext nneg i8 %i.acb to i32
  %i.acd = shl i32 %i.aca, %i.acc
  %i.ace = or i32 %i.abw, %i.acd
  %i.acf = trunc i32 %i.ace to i16
  store i16 %i.acf, ptr %.26974, align 2
  br label %bb.fb

bb.ez:                                            ; preds = %bb.ew
  %i.acg = load i8, ptr %i.xi, align 4
  %i.ach = lshr i8 %i.acg, 3
  %i.aci = zext nneg i8 %i.ach to i64
  %i.acj = getelementptr inbounds nuw i8, ptr %.26974, i64 %i.aci
  store i8 %i.ys, ptr %i.acj, align 1
  %i.ack = load i8, ptr %i.xk, align 1
  %i.acl = lshr i8 %i.ack, 3
  %i.acm = zext nneg i8 %i.acl to i64
  %i.acn = getelementptr inbounds nuw i8, ptr %.26974, i64 %i.acm
  store i8 %i.zf, ptr %i.acn, align 1
  %i.aco = load i8, ptr %i.xm, align 2
  %i.acp = lshr i8 %i.aco, 3
  %i.acq = zext nneg i8 %i.acp to i64
  %i.acr = getelementptr inbounds nuw i8, ptr %.26974, i64 %i.acq
  store i8 %i.zs, ptr %i.acr, align 1
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ew
  %i.acs = load i8, ptr %i.xh, align 4
  %i.act = zext i8 %i.acs to i32
  %i.acu = sub nsw i32 8, %i.act
  %i.acv = lshr i32 %i.yt, %i.acu
  %i.acw = load i8, ptr %i.xi, align 4
  %i.acx = zext nneg i8 %i.acw to i32
  %i.acy = shl i32 %i.acv, %i.acx
  %i.acz = load i8, ptr %i.xj, align 1
  %i.ada = zext i8 %i.acz to i32
  %i.adb = sub nsw i32 8, %i.ada
  %i.adc = lshr i32 %i.zg, %i.adb
  %i.add = load i8, ptr %i.xk, align 1
  %i.ade = zext nneg i8 %i.add to i32
  %i.adf = shl i32 %i.adc, %i.ade
  %i.adg = or i32 %i.adf, %i.acy
end_hunk_4
begin_hunk_5_@BlitNtoNKey:bb.a
  %i.akh = zext i16 %i.akg to i32
  br label %bb.ft

bb.fr:                                            ; preds = %bb.fo
  %i.aki = getelementptr i8, ptr %.28, i64 1
  %i.akj = load i16, ptr %i.aki, align 1
  %i.akk = zext i16 %i.akj to i32
  %i.akl = shl nuw nsw i32 %i.akk, 8
  %i.akm = load i8, ptr %.28, align 1
  %i.akn = zext i8 %i.akm to i32
  %i.ako = or disjoint i32 %i.akl, %i.akn
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fo
  %i.akp = load i32, ptr %.28, align 4
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fo, %bb.fs, %bb.fr, %bb.fq, %bb.fp
  %.01051 = phi i32 [ %i.akp, %bb.fs ], [ %i.akf, %bb.fp ], [ %i.akh, %bb.fq ], [ %i.ako, %bb.fr ], [ 0, %bb.fo ] ; 4 uses
  %i.akq = and i32 %.01051, %i.as
  %.not1087 = icmp eq i32 %i.akq, %i.av
  br i1 %.not1087, label %bb.fz, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.akr = load i8, ptr %i.wy, align 4
  %i.aks = zext i8 %i.akr to i64
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aks
  %i.aku = load ptr, ptr %i.akt, align 8
  %i.akv = load i32, ptr %i.wz, align 4
  %i.akw = and i32 %i.akv, %.01051
  %i.akx = load i8, ptr %i.xa, align 4
  %i.aky = zext nneg i8 %i.akx to i32
  %i.akz = lshr i32 %i.akw, %i.aky
  %i.ala = zext i32 %i.akz to i64
  %i.alb = getelementptr inbounds nuw i8, ptr %i.aku, i64 %i.ala
  %i.alc = load i8, ptr %i.alb, align 1           ; 2 uses
  %i.ald = zext i8 %i.alc to i32                  ; 3 uses
  %i.ale = load i8, ptr %i.xb, align 1
  %i.alf = zext i8 %i.ale to i64
  %i.alg = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.alf
  %i.alh = load ptr, ptr %i.alg, align 8
  %i.ali = load i32, ptr %i.xc, align 4
  %i.alj = and i32 %i.ali, %.01051
  %i.alk = load i8, ptr %i.xd, align 1
  %i.all = zext nneg i8 %i.alk to i32
  %i.alm = lshr i32 %i.alj, %i.all
  %i.aln = zext i32 %i.alm to i64
  %i.alo = getelementptr inbounds nuw i8, ptr %i.alh, i64 %i.aln
  %i.alp = load i8, ptr %i.alo, align 1           ; 2 uses
  %i.alq = zext i8 %i.alp to i32                  ; 3 uses
  %i.alr = load i8, ptr %i.xe, align 2
  %i.als = zext i8 %i.alr to i64
  %i.alt = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.als
  %i.alu = load ptr, ptr %i.alt, align 8
  %i.alv = load i32, ptr %i.xf, align 4
  %i.alw = and i32 %i.alv, %.01051
  %i.alx = load i8, ptr %i.xg, align 2
  %i.aly = zext nneg i8 %i.alx to i32
  %i.alz = lshr i32 %i.alw, %i.aly
  %i.ama = zext i32 %i.alz to i64
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alu, i64 %i.ama
  %i.amc = load i8, ptr %i.amb, align 1           ; 2 uses
  %i.amd = zext i8 %i.amc to i32                  ; 3 uses
  switch i8 %i.aj, label %bb.fz [
    i8 1, label %bb.fv
    i8 2, label %bb.fw
    i8 3, label %bb.fx
    i8 4, label %bb.fy
  ]

bb.fv:                                            ; preds = %bb.fu
  %i.ame = load i8, ptr %i.xh, align 4
  %i.amf = zext i8 %i.ame to i32
  %i.amg = sub nsw i32 8, %i.amf
  %i.amh = lshr i32 %i.ald, %i.amg
  %i.ami = load i8, ptr %i.xi, align 4
  %i.amj = zext nneg i8 %i.ami to i32
  %i.amk = shl i32 %i.amh, %i.amj
  %i.aml = load i8, ptr %i.xj, align 1
  %i.amm = zext i8 %i.aml to i32
  %i.amn = sub nsw i32 8, %i.amm
  %i.amo = lshr i32 %i.alq, %i.amn
  %i.amp = load i8, ptr %i.xk, align 1
  %i.amq = zext nneg i8 %i.amp to i32
  %i.amr = shl i32 %i.amo, %i.amq
  %i.ams = or i32 %i.amr, %i.amk
  %i.amt = load i8, ptr %i.xl, align 2
  %i.amu = zext i8 %i.amt to i32
  %i.amv = sub nsw i32 8, %i.amu
  %i.amw = lshr i32 %i.amd, %i.amv
  %i.amx = load i8, ptr %i.xm, align 2
  %i.amy = zext nneg i8 %i.amx to i32
  %i.amz = shl i32 %i.amw, %i.amy
  %i.ana = or i32 %i.ams, %i.amz
  %i.anb = load i8, ptr %i.xn, align 1
  %i.anc = zext i8 %i.anb to i32
  %i.and = sub nsw i32 8, %i.anc
  %i.ane = lshr i32 %i.ap, %i.and
  %i.anf = load i8, ptr %i.xo, align 1
  %i.ang = zext nneg i8 %i.anf to i32
  %i.anh = shl i32 %i.ane, %i.ang
  %i.ani = or i32 %i.ana, %i.anh
  %i.anj = trunc i32 %i.ani to i8
  store i8 %i.anj, ptr %.28976, align 1
  br label %bb.fz

bb.fw:                                            ; preds = %bb.fu
  %i.ank = load i8, ptr %i.xh, align 4
  %i.anl = zext i8 %i.ank to i32
  %i.anm = sub nsw i32 8, %i.anl
  %i.ann = lshr i32 %i.ald, %i.anm
  %i.ano = load i8, ptr %i.xi, align 4
  %i.anp = zext nneg i8 %i.ano to i32
  %i.anq = shl i32 %i.ann, %i.anp
  %i.anr = load i8, ptr %i.xj, align 1
  %i.ans = zext i8 %i.anr to i32
  %i.ant = sub nsw i32 8, %i.ans
  %i.anu = lshr i32 %i.alq, %i.ant
  %i.anv = load i8, ptr %i.xk, align 1
  %i.anw = zext nneg i8 %i.anv to i32
  %i.anx = shl i32 %i.anu, %i.anw
  %i.any = or i32 %i.anx, %i.anq
  %i.anz = load i8, ptr %i.xl, align 2
  %i.aoa = zext i8 %i.anz to i32
  %i.aob = sub nsw i32 8, %i.aoa
  %i.aoc = lshr i32 %i.amd, %i.aob
  %i.aod = load i8, ptr %i.xm, align 2
  %i.aoe = zext nneg i8 %i.aod to i32
  %i.aof = shl i32 %i.aoc, %i.aoe
  %i.aog = or i32 %i.any, %i.aof
  %i.aoh = load i8, ptr %i.xn, align 1
  %i.aoi = zext i8 %i.aoh to i32
  %i.aoj = sub nsw i32 8, %i.aoi
  %i.aok = lshr i32 %i.ap, %i.aoj
  %i.aol = load i8, ptr %i.xo, align 1
  %i.aom = zext nneg i8 %i.aol to i32
  %i.aon = shl i32 %i.aok, %i.aom
  %i.aoo = or i32 %i.aog, %i.aon
  %i.aop = trunc i32 %i.aoo to i16
  store i16 %i.aop, ptr %.28976, align 2
  br label %bb.fz

bb.fx:                                            ; preds = %bb.fu
  %i.aoq = load i8, ptr %i.xi, align 4
  %i.aor = lshr i8 %i.aoq, 3
  %i.aos = zext nneg i8 %i.aor to i64
  %i.aot = getelementptr inbounds nuw i8, ptr %.28976, i64 %i.aos
  store i8 %i.alc, ptr %i.aot, align 1
  %i.aou = load i8, ptr %i.xk, align 1
  %i.aov = lshr i8 %i.aou, 3
  %i.aow = zext nneg i8 %i.aov to i64
  %i.aox = getelementptr inbounds nuw i8, ptr %.28976, i64 %i.aow
  store i8 %i.alp, ptr %i.aox, align 1
  %i.aoy = load i8, ptr %i.xm, align 2
  %i.aoz = lshr i8 %i.aoy, 3
  %i.apa = zext nneg i8 %i.aoz to i64
  %i.apb = getelementptr inbounds nuw i8, ptr %.28976, i64 %i.apa
  store i8 %i.amc, ptr %i.apb, align 1
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fu
  %i.apc = load i8, ptr %i.xh, align 4
  %i.apd = zext i8 %i.apc to i32
  %i.ape = sub nsw i32 8, %i.apd
  %i.apf = lshr i32 %i.ald, %i.ape
  %i.apg = load i8, ptr %i.xi, align 4
  %i.aph = zext nneg i8 %i.apg to i32
  %i.api = shl i32 %i.apf, %i.aph
  %i.apj = load i8, ptr %i.xj, align 1
  %i.apk = zext i8 %i.apj to i32
  %i.apl = sub nsw i32 8, %i.apk
  %i.apm = lshr i32 %i.alq, %i.apl
  %i.apn = load i8, ptr %i.xk, align 1
  %i.apo = zext nneg i8 %i.apn to i32
  %i.app = shl i32 %i.apm, %i.apo
  %i.apq = or i32 %i.app, %i.api
  %i.apr = load i8, ptr %i.xl, align 2
  %i.aps = zext i8 %i.apr to i32
  %i.apt = sub nsw i32 8, %i.aps
  %i.apu = lshr i32 %i.amd, %i.apt
  %i.apv = load i8, ptr %i.xm, align 2
  %i.apw = zext nneg i8 %i.apv to i32
  %i.apx = shl i32 %i.apu, %i.apw
  %i.apy = or i32 %i.apq, %i.apx
  %i.apz = load i8, ptr %i.xn, align 1
  %i.aqa = zext i8 %i.apz to i32
  %i.aqb = sub nsw i32 8, %i.aqa
  %i.aqc = lshr i32 %i.ap, %i.aqb
  %i.aqd = load i8, ptr %i.xo, align 1
  %i.aqe = zext nneg i8 %i.aqd to i32
  %i.aqf = shl i32 %i.aqc, %i.aqe
  %i.aqg = or i32 %i.apy, %i.aqf
  store i32 %i.aqg, ptr %.28976, align 4
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fu, %bb.fv, %bb.fw, %bb.fx, %bb.fy, %bb.ft
  %i.aqh = getelementptr inbounds nuw i8, ptr %.28976, i64 %i.xp
  %i.aqi = getelementptr inbounds nuw i8, ptr %.28, i64 %i.xq
  br label %bb.ga

.unreachabledefault1293:                          ; preds = %bb.ep
  unreachable

bb.ga:                                            ; preds = %bb.ep, %bb.fz
  %.31055 = phi i32 [ %.21054, %bb.fz ], [ %i.ww, %bb.ep ] ; 2 uses
  %.29977 = phi ptr [ %i.aqh, %bb.fz ], [ %.259731222, %bb.ep ] ; 7 uses
  %.29 = phi ptr [ %i.aqi, %bb.fz ], [ %.251223, %bb.ep ] ; 6 uses
  switch i8 %i.ah, label %bb.gf [
    i8 1, label %bb.gb
    i8 2, label %bb.gc
    i8 3, label %bb.gd
    i8 4, label %bb.ge
  ]

bb.gb:                                            ; preds = %bb.ga
  %i.aqj = load i8, ptr %.29, align 1
  %i.aqk = zext i8 %i.aqj to i32
  br label %bb.gf

bb.gc:                                            ; preds = %bb.ga
  %i.aql = load i16, ptr %.29, align 2
  %i.aqm = zext i16 %i.aql to i32
  br label %bb.gf

bb.gd:                                            ; preds = %bb.ga
  %i.aqn = getelementptr i8, ptr %.29, i64 1
  %i.aqo = load i16, ptr %i.aqn, align 1
  %i.aqp = zext i16 %i.aqo to i32
  %i.aqq = shl nuw nsw i32 %i.aqp, 8
  %i.aqr = load i8, ptr %.29, align 1
  %i.aqs = zext i8 %i.aqr to i32
  %i.aqt = or disjoint i32 %i.aqq, %i.aqs
  br label %bb.gf

bb.ge:                                            ; preds = %bb.ga
  %i.aqu = load i32, ptr %.29, align 4
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ga, %bb.ge, %bb.gd, %bb.gc, %bb.gb
  %.01022 = phi i32 [ %i.aqu, %bb.ge ], [ %i.aqk, %bb.gb ], [ %i.aqm, %bb.gc ], [ %i.aqt, %bb.gd ], [ 0, %bb.ga ] ; 4 uses
  %i.aqv = and i32 %.01022, %i.as
  %.not1088 = icmp eq i32 %i.aqv, %i.av
  br i1 %.not1088, label %bb.gl, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aqw = load i8, ptr %i.wy, align 4
  %i.aqx = zext i8 %i.aqw to i64
  %i.aqy = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aqx
  %i.aqz = load ptr, ptr %i.aqy, align 8
  %i.ara = load i32, ptr %i.wz, align 4
  %i.arb = and i32 %i.ara, %.01022
  %i.arc = load i8, ptr %i.xa, align 4
  %i.ard = zext nneg i8 %i.arc to i32
  %i.are = lshr i32 %i.arb, %i.ard
  %i.arf = zext i32 %i.are to i64
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aqz, i64 %i.arf
  %i.arh = load i8, ptr %i.arg, align 1           ; 2 uses
  %i.ari = zext i8 %i.arh to i32                  ; 3 uses
  %i.arj = load i8, ptr %i.xb, align 1
  %i.ark = zext i8 %i.arj to i64
  %i.arl = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ark
  %i.arm = load ptr, ptr %i.arl, align 8
  %i.arn = load i32, ptr %i.xc, align 4
  %i.aro = and i32 %i.arn, %.01022
  %i.arp = load i8, ptr %i.xd, align 1
  %i.arq = zext nneg i8 %i.arp to i32
  %i.arr = lshr i32 %i.aro, %i.arq
  %i.ars = zext i32 %i.arr to i64
  %i.art = getelementptr inbounds nuw i8, ptr %i.arm, i64 %i.ars
  %i.aru = load i8, ptr %i.art, align 1           ; 2 uses
  %i.arv = zext i8 %i.aru to i32                  ; 3 uses
  %i.arw = load i8, ptr %i.xe, align 2
  %i.arx = zext i8 %i.arw to i64
  %i.ary = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.arx
  %i.arz = load ptr, ptr %i.ary, align 8
  %i.asa = load i32, ptr %i.xf, align 4
  %i.asb = and i32 %i.asa, %.01022
  %i.asc = load i8, ptr %i.xg, align 2
  %i.asd = zext nneg i8 %i.asc to i32
  %i.ase = lshr i32 %i.asb, %i.asd
  %i.asf = zext i32 %i.ase to i64
  %i.asg = getelementptr inbounds nuw i8, ptr %i.arz, i64 %i.asf
  %i.ash = load i8, ptr %i.asg, align 1           ; 2 uses
  %i.asi = zext i8 %i.ash to i32                  ; 3 uses
  switch i8 %i.aj, label %bb.gl [
    i8 1, label %bb.gh
    i8 2, label %bb.gi
    i8 3, label %bb.gj
    i8 4, label %bb.gk
  ]

bb.gh:                                            ; preds = %bb.gg
  %i.asj = load i8, ptr %i.xh, align 4
  %i.ask = zext i8 %i.asj to i32
  %i.asl = sub nsw i32 8, %i.ask
  %i.asm = lshr i32 %i.ari, %i.asl
  %i.asn = load i8, ptr %i.xi, align 4
  %i.aso = zext nneg i8 %i.asn to i32
  %i.asp = shl i32 %i.asm, %i.aso
  %i.asq = load i8, ptr %i.xj, align 1
  %i.asr = zext i8 %i.asq to i32
  %i.ass = sub nsw i32 8, %i.asr
  %i.ast = lshr i32 %i.arv, %i.ass
  %i.asu = load i8, ptr %i.xk, align 1
  %i.asv = zext nneg i8 %i.asu to i32
  %i.asw = shl i32 %i.ast, %i.asv
  %i.asx = or i32 %i.asw, %i.asp
  %i.asy = load i8, ptr %i.xl, align 2
  %i.asz = zext i8 %i.asy to i32
  %i.ata = sub nsw i32 8, %i.asz
  %i.atb = lshr i32 %i.asi, %i.ata
  %i.atc = load i8, ptr %i.xm, align 2
  %i.atd = zext nneg i8 %i.atc to i32
  %i.ate = shl i32 %i.atb, %i.atd
  %i.atf = or i32 %i.asx, %i.ate
  %i.atg = load i8, ptr %i.xn, align 1
  %i.ath = zext i8 %i.atg to i32
  %i.ati = sub nsw i32 8, %i.ath
  %i.atj = lshr i32 %i.ap, %i.ati
  %i.atk = load i8, ptr %i.xo, align 1
  %i.atl = zext nneg i8 %i.atk to i32
  %i.atm = shl i32 %i.atj, %i.atl
  %i.atn = or i32 %i.atf, %i.atm
  %i.ato = trunc i32 %i.atn to i8
  store i8 %i.ato, ptr %.29977, align 1
  br label %bb.gl

bb.gi:                                            ; preds = %bb.gg
  %i.atp = load i8, ptr %i.xh, align 4
  %i.atq = zext i8 %i.atp to i32
  %i.atr = sub nsw i32 8, %i.atq
  %i.ats = lshr i32 %i.ari, %i.atr
  %i.att = load i8, ptr %i.xi, align 4
  %i.atu = zext nneg i8 %i.att to i32
  %i.atv = shl i32 %i.ats, %i.atu
  %i.atw = load i8, ptr %i.xj, align 1
  %i.atx = zext i8 %i.atw to i32
  %i.aty = sub nsw i32 8, %i.atx
  %i.atz = lshr i32 %i.arv, %i.aty
  %i.aua = load i8, ptr %i.xk, align 1
  %i.aub = zext nneg i8 %i.aua to i32
  %i.auc = shl i32 %i.atz, %i.aub
  %i.aud = or i32 %i.auc, %i.atv
  %i.aue = load i8, ptr %i.xl, align 2
  %i.auf = zext i8 %i.aue to i32
  %i.aug = sub nsw i32 8, %i.auf
  %i.auh = lshr i32 %i.asi, %i.aug
  %i.aui = load i8, ptr %i.xm, align 2
  %i.auj = zext nneg i8 %i.aui to i32
  %i.auk = shl i32 %i.auh, %i.auj
  %i.aul = or i32 %i.aud, %i.auk
  %i.aum = load i8, ptr %i.xn, align 1
  %i.aun = zext i8 %i.aum to i32
  %i.auo = sub nsw i32 8, %i.aun
  %i.aup = lshr i32 %i.ap, %i.auo
  %i.auq = load i8, ptr %i.xo, align 1
  %i.aur = zext nneg i8 %i.auq to i32
  %i.aus = shl i32 %i.aup, %i.aur
  %i.aut = or i32 %i.aul, %i.aus
  %i.auu = trunc i32 %i.aut to i16
  store i16 %i.auu, ptr %.29977, align 2
  br label %bb.gl

bb.gj:                                            ; preds = %bb.gg
  %i.auv = load i8, ptr %i.xi, align 4
  %i.auw = lshr i8 %i.auv, 3
  %i.aux = zext nneg i8 %i.auw to i64
  %i.auy = getelementptr inbounds nuw i8, ptr %.29977, i64 %i.aux
  store i8 %i.arh, ptr %i.auy, align 1
  %i.auz = load i8, ptr %i.xk, align 1
  %i.ava = lshr i8 %i.auz, 3
  %i.avb = zext nneg i8 %i.ava to i64
  %i.avc = getelementptr inbounds nuw i8, ptr %.29977, i64 %i.avb
  store i8 %i.aru, ptr %i.avc, align 1
  %i.avd = load i8, ptr %i.xm, align 2
  %i.ave = lshr i8 %i.avd, 3
  %i.avf = zext nneg i8 %i.ave to i64
  %i.avg = getelementptr inbounds nuw i8, ptr %.29977, i64 %i.avf
  store i8 %i.ash, ptr %i.avg, align 1
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gg
  %i.avh = load i8, ptr %i.xh, align 4
  %i.avi = zext i8 %i.avh to i32
  %i.avj = sub nsw i32 8, %i.avi
  %i.avk = lshr i32 %i.ari, %i.avj
  %i.avl = load i8, ptr %i.xi, align 4
  %i.avm = zext nneg i8 %i.avl to i32
  %i.avn = shl i32 %i.avk, %i.avm
  %i.avo = load i8, ptr %i.xj, align 1
  %i.avp = zext i8 %i.avo to i32
  %i.avq = sub nsw i32 8, %i.avp
  %i.avr = lshr i32 %i.arv, %i.avq
  %i.avs = load i8, ptr %i.xk, align 1
  %i.avt = zext nneg i8 %i.avs to i32
  %i.avu = shl i32 %i.avr, %i.avt
  %i.avv = or i32 %i.avu, %i.avn
  %i.avw = load i8, ptr %i.xl, align 2
  %i.avx = zext i8 %i.avw to i32
  %i.avy = sub nsw i32 8, %i.avx
  %i.avz = lshr i32 %i.asi, %i.avy
  %i.awa = load i8, ptr %i.xm, align 2
  %i.awb = zext nneg i8 %i.awa to i32
end_hunk_5
begin_hunk_6_@Blit_RGB565_32:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sdiv i32 %i.d, 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = add nsw i32 %i.m, 3
  %i.o = sdiv i32 %i.n, 4                         ; 4 uses
  %i.p = and i32 %i.m, 3
  %i.q = sext i32 %i.i to i64
  %i.r = sext i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.in = phi i32 [ %i.b, %.lr.ph ], [ %i.s, %bb.g ]
  %.03857 = phi ptr [ %i.k, %.lr.ph ], [ %i.bv, %bb.g ] ; 4 uses
  %.04256 = phi ptr [ %i.g, %.lr.ph ], [ %i.bw, %bb.g ] ; 4 uses
  %i.s = add nsw i32 %.in, -1                     ; 2 uses
  switch i32 %i.p, label %default.unreachable60 [
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.f
  %.143 = phi ptr [ %.04256, %bb.b ], [ %i.br, %bb.f ] ; 2 uses
  %.139 = phi ptr [ %.03857, %bb.b ], [ %i.bs, %bb.f ] ; 3 uses
  %.0 = phi i32 [ %i.o, %bb.b ], [ %i.bt, %bb.f ]
  %i.t = load i8, ptr %.139, align 1
  %i.u = zext i8 %i.t to i64
  %.idx = shl nuw nsw i64 %i.u, 3
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.139, i64 1
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i64
  %.idx48 = shl nuw nsw i64 %i.z, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.idx48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = or i32 %i.ac, %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %.143, i64 4
  store i32 %i.ad, ptr %.143, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.139, i64 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.244 = phi ptr [ %i.ae, %bb.c ], [ %.04256, %bb.b ] ; 2 uses
  %.240 = phi ptr [ %i.af, %bb.c ], [ %.03857, %bb.b ] ; 3 uses
  %.1 = phi i32 [ %.0, %bb.c ], [ %i.o, %bb.b ]
  %i.ag = load i8, ptr %.240, align 1
  %i.ah = zext i8 %i.ag to i64
  %.idx49 = shl nuw nsw i64 %i.ah, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.idx49
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.240, i64 1
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i64
  %.idx50 = shl nuw nsw i64 %i.am, 3
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %.idx50
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = or i32 %i.ap, %i.aj
  %i.ar = getelementptr inbounds nuw i8, ptr %.244, i64 4
  store i32 %i.aq, ptr %.244, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.240, i64 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.345 = phi ptr [ %i.ar, %bb.d ], [ %.04256, %bb.b ] ; 2 uses
  %.341 = phi ptr [ %i.as, %bb.d ], [ %.03857, %bb.b ] ; 3 uses
  %.2 = phi i32 [ %.1, %bb.d ], [ %i.o, %bb.b ]
  %i.at = load i8, ptr %.341, align 1
  %i.au = zext i8 %i.at to i64
  %.idx51 = shl nuw nsw i64 %i.au, 3
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.idx51
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.341, i64 1
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i64
  %.idx52 = shl nuw nsw i64 %i.az, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %.idx52
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = or i32 %i.bc, %i.aw
  %i.be = getelementptr inbounds nuw i8, ptr %.345, i64 4
  store i32 %i.bd, ptr %.345, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.341, i64 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.446 = phi ptr [ %i.be, %bb.e ], [ %.04256, %bb.b ] ; 2 uses
  %.4 = phi ptr [ %i.bf, %bb.e ], [ %.03857, %bb.b ] ; 3 uses
  %.3 = phi i32 [ %.2, %bb.e ], [ %i.o, %bb.b ]   ; 2 uses
  %i.bg = load i8, ptr %.4, align 1
  %i.bh = zext i8 %i.bg to i64
  %.idx53 = shl nuw nsw i64 %i.bh, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %.idx53
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.4, i64 1
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i64
  %.idx54 = shl nuw nsw i64 %i.bm, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %.idx54
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = or i32 %i.bp, %i.bj
  %i.br = getelementptr inbounds nuw i8, ptr %.446, i64 4 ; 2 uses
  store i32 %i.bq, ptr %.446, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.4, i64 2 ; 2 uses
  %i.bt = add nsw i32 %.3, -1
  %i.bu = icmp sgt i32 %.3, 1
  br i1 %i.bu, label %bb.c, label %bb.g, !llvm.loop !49

default.unreachable60:                            ; preds = %bb.b
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds i8, ptr %i.bs, i64 %i.q
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.r
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Blit_3or4_to_3or4__same_rgb(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.v = load i32, ptr %i.u, align 4
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not187194 = icmp eq i32 %i.d, 0
  br i1 %.not187194, label %.loopexit, label %.lr.ph197

.lr.ph197:                                        ; preds = %.preheader
  %i.w = add nsw i32 %i.b, 3
  %i.x = sdiv i32 %i.w, 4                         ; 4 uses
  %i.y = and i32 %i.b, 3
  %i.z = zext i8 %i.t to i64                      ; 4 uses
  %i.aa = zext i8 %i.p to i64                     ; 4 uses
  %i.ab = sext i32 %i.h to i64
  %i.ac = sext i32 %i.l to i64
  br label %.lr.ph197.split

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 31
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = shl i32 %i.af, %i.ai                    ; 4 uses
  %.not188191 = icmp eq i32 %i.d, 0
  br i1 %.not188191, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ak = add nsw i32 %i.b, 3
  %i.al = sdiv i32 %i.ak, 4                       ; 4 uses
  %i.am = and i32 %i.b, 3
  %i.an = zext i8 %i.p to i64                     ; 4 uses
  %i.ao = sext i32 %i.h to i64
  %i.ap = sext i32 %i.l to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.g
  %.in = phi i32 [ %i.aq, %bb.g ], [ %i.d, %.lr.ph ]
  %.0165193 = phi ptr [ %i.ch, %bb.g ], [ %i.f, %.lr.ph ] ; 4 uses
  %.0167192 = phi ptr [ %i.ci, %bb.g ], [ %i.j, %.lr.ph ] ; 4 uses
  %i.aq = add nsw i32 %.in, -1                    ; 2 uses
  switch i32 %i.am, label %default.unreachable [
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph.split, %bb.f
  %.0177 = phi i32 [ %i.al, %.lr.ph.split ], [ %i.cf, %bb.f ]
  %.1168 = phi ptr [ %.0167192, %.lr.ph.split ], [ %i.cd, %bb.f ] ; 2 uses
  %.1166 = phi ptr [ %.0165193, %.lr.ph.split ], [ %i.ce, %bb.f ] ; 3 uses
  %i.ar = load i16, ptr %.1166, align 1
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %.1166, i64 2
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 16
  %i.ax = or disjoint i32 %i.aw, %i.as
  %i.ay = or i32 %i.ax, %i.aj
  store i32 %i.ay, ptr %.1168, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %.1168, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.1166, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split
  %.1178 = phi i32 [ %.0177, %bb.c ], [ %i.al, %.lr.ph.split ]
  %.2169 = phi ptr [ %i.az, %bb.c ], [ %.0167192, %.lr.ph.split ] ; 2 uses
  %.2 = phi ptr [ %i.ba, %bb.c ], [ %.0165193, %.lr.ph.split ] ; 3 uses
  %i.bb = load i16, ptr %.2, align 1
  %i.bc = zext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 16
  %i.bh = or disjoint i32 %i.bg, %i.bc
  %i.bi = or i32 %i.bh, %i.aj
  store i32 %i.bi, ptr %.2169, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.2169, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.2, i64 %i.an
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split
  %.2179 = phi i32 [ %.1178, %bb.d ], [ %i.al, %.lr.ph.split ]
  %.3170 = phi ptr [ %i.bj, %bb.d ], [ %.0167192, %.lr.ph.split ] ; 2 uses
  %.3 = phi ptr [ %i.bk, %bb.d ], [ %.0165193, %.lr.ph.split ] ; 3 uses
  %i.bl = load i16, ptr %.3, align 1
  %i.bm = zext i16 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 16
  %i.br = or disjoint i32 %i.bq, %i.bm
  %i.bs = or i32 %i.br, %i.aj
  store i32 %i.bs, ptr %.3170, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.3170, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.3, i64 %i.an
  br label %bb.f

default.unreachable:                              ; preds = %.lr.ph.split
  unreachable

bb.f:                                             ; preds = %.lr.ph.split, %bb.e
  %.3180 = phi i32 [ %.2179, %bb.e ], [ %i.al, %.lr.ph.split ] ; 2 uses
  %.4171 = phi ptr [ %i.bt, %bb.e ], [ %.0167192, %.lr.ph.split ] ; 2 uses
  %.4 = phi ptr [ %i.bu, %bb.e ], [ %.0165193, %.lr.ph.split ] ; 3 uses
  %i.bv = load i16, ptr %.4, align 1
  %i.bw = zext i16 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %.4, i64 2
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = zext i8 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 16
  %i.cb = or disjoint i32 %i.ca, %i.bw
  %i.cc = or i32 %i.cb, %i.aj
  store i32 %i.cc, ptr %.4171, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.4171, i64 4 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.4, i64 %i.an ; 2 uses
  %i.cf = add nsw i32 %.3180, -1
  %i.cg = icmp sgt i32 %.3180, 1
  br i1 %i.cg, label %bb.c, label %bb.g, !llvm.loop !51

bb.g:                                             ; preds = %bb.f
  %i.ch = getelementptr inbounds i8, ptr %i.ce, i64 %i.ao
  %i.ci = getelementptr inbounds i8, ptr %i.cd, i64 %i.ap
  %.not188 = icmp eq i32 %i.aq, 0
  br i1 %.not188, label %.loopexit, label %.lr.ph.split, !llvm.loop !52

.lr.ph197.split:                                  ; preds = %.lr.ph197, %bb.l
  %.in199 = phi i32 [ %i.cj, %bb.l ], [ %i.d, %.lr.ph197 ]
  %.5196 = phi ptr [ %i.dw, %bb.l ], [ %i.f, %.lr.ph197 ] ; 4 uses
  %.5172195 = phi ptr [ %i.dx, %bb.l ], [ %i.j, %.lr.ph197 ] ; 4 uses
  %i.cj = add nsw i32 %.in199, -1                 ; 2 uses
  switch i32 %i.y, label %.lr.ph197.split.unreachabledefault [
    i32 0, label %bb.h
    i32 3, label %bb.i
    i32 2, label %bb.j
    i32 1, label %bb.k
  ]

bb.h:                                             ; preds = %.lr.ph197.split, %bb.k
  %.0181 = phi i32 [ %i.x, %.lr.ph197.split ], [ %i.du, %bb.k ]
  %.6173 = phi ptr [ %.5172195, %.lr.ph197.split ], [ %i.ds, %bb.k ] ; 4 uses
  %.6 = phi ptr [ %.5196, %.lr.ph197.split ], [ %i.dt, %bb.k ] ; 4 uses
  %i.ck = load i8, ptr %.6, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.6, i64 1
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.6, i64 2
  %i.co = load i8, ptr %i.cn, align 1
  store i8 %i.ck, ptr %.6173, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %.6173, i64 1
  store i8 %i.cm, ptr %i.cp, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.6173, i64 2
  store i8 %i.co, ptr %i.cq, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.6173, i64 %i.z
  %i.cs = getelementptr inbounds nuw i8, ptr %.6, i64 %i.aa
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph197.split
  %.1182 = phi i32 [ %.0181, %bb.h ], [ %i.x, %.lr.ph197.split ]
  %.7174 = phi ptr [ %i.cr, %bb.h ], [ %.5172195, %.lr.ph197.split ] ; 4 uses
  %.7 = phi ptr [ %i.cs, %bb.h ], [ %.5196, %.lr.ph197.split ] ; 4 uses
  %i.ct = load i8, ptr %.7, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %.7, i64 1
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %.7, i64 2
  %i.cx = load i8, ptr %i.cw, align 1
  store i8 %i.ct, ptr %.7174, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.7174, i64 1
  store i8 %i.cv, ptr %i.cy, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.7174, i64 2
  store i8 %i.cx, ptr %i.cz, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %.7174, i64 %i.z
  %i.db = getelementptr inbounds nuw i8, ptr %.7, i64 %i.aa
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph197.split
  %.2183 = phi i32 [ %.1182, %bb.i ], [ %i.x, %.lr.ph197.split ]
  %.8175 = phi ptr [ %i.da, %bb.i ], [ %.5172195, %.lr.ph197.split ] ; 4 uses
  %.8 = phi ptr [ %i.db, %bb.i ], [ %.5196, %.lr.ph197.split ] ; 4 uses
  %i.dc = load i8, ptr %.8, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.8, i64 1
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %.8, i64 2
  %i.dg = load i8, ptr %i.df, align 1
  store i8 %i.dc, ptr %.8175, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.8175, i64 1
  store i8 %i.de, ptr %i.dh, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %.8175, i64 2
  store i8 %i.dg, ptr %i.di, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.8175, i64 %i.z
  %i.dk = getelementptr inbounds nuw i8, ptr %.8, i64 %i.aa
  br label %bb.k

.lr.ph197.split.unreachabledefault:               ; preds = %.lr.ph197.split
  unreachable

bb.k:                                             ; preds = %.lr.ph197.split, %bb.j
  %.3184 = phi i32 [ %.2183, %bb.j ], [ %i.x, %.lr.ph197.split ] ; 2 uses
  %.9176 = phi ptr [ %i.dj, %bb.j ], [ %.5172195, %.lr.ph197.split ] ; 4 uses
  %.9 = phi ptr [ %i.dk, %bb.j ], [ %.5196, %.lr.ph197.split ] ; 4 uses
  %i.dl = load i8, ptr %.9, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %.9, i64 1
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %.9, i64 2
  %i.dp = load i8, ptr %i.do, align 1
  store i8 %i.dl, ptr %.9176, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.9176, i64 1
  store i8 %i.dn, ptr %i.dq, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %.9176, i64 2
  store i8 %i.dp, ptr %i.dr, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %.9176, i64 %i.z ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.9, i64 %i.aa ; 2 uses
  %i.du = add nsw i32 %.3184, -1
  %i.dv = icmp sgt i32 %.3184, 1
  br i1 %i.dv, label %bb.h, label %bb.l, !llvm.loop !53

bb.l:                                             ; preds = %bb.k
  %i.dw = getelementptr inbounds i8, ptr %i.dt, i64 %i.ab
  %i.dx = getelementptr inbounds i8, ptr %i.ds, i64 %i.ac
  %.not187 = icmp eq i32 %i.cj, 0
  br i1 %.not187, label %.loopexit, label %.lr.ph197.split, !llvm.loop !54

.loopexit:                                        ; preds = %bb.g, %bb.l, %bb.b, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Blit_3or4_to_3or4__inversed_rgb(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = load i32, ptr %i.k, align 4              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8              ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.v = load i32, ptr %i.u, align 4
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not276292 = icmp eq i32 %i.d, 0
  br i1 %.not276292, label %.loopexit, label %.lr.ph295

.lr.ph295:                                        ; preds = %.preheader
  %i.w = add nsw i32 %i.b, 3
  %i.x = sdiv i32 %i.w, 4                         ; 4 uses
  %i.y = and i32 %i.b, 3
  %i.z = zext i8 %i.t to i64                      ; 4 uses
  %i.aa = zext i8 %i.p to i64                     ; 4 uses
  %i.ab = sext i32 %i.h to i64
  %i.ac = sext i32 %i.l to i64
  br label %.lr.ph295.split

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.ae = load i32, ptr %i.ad, align 4
  %.not277 = icmp eq i32 %i.ae, 0
  br i1 %.not277, label %bb.h, label %.preheader282

.preheader282:                                    ; preds = %bb.b
  %.not279285 = icmp eq i32 %i.d, 0
  br i1 %.not279285, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader282
  %i.af = add nsw i32 %i.b, 3
  %i.ag = sdiv i32 %i.af, 4                       ; 4 uses
  %i.ah = and i32 %i.b, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 31 ; 4 uses
  %i.aj = sext i32 %i.h to i64
  %i.ak = sext i32 %i.l to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.g
  %.in = phi i32 [ %i.al, %bb.g ], [ %i.d, %.lr.ph ]
  %.0243287 = phi ptr [ %i.du, %bb.g ], [ %i.f, %.lr.ph ] ; 4 uses
  %.0246286 = phi ptr [ %i.dv, %bb.g ], [ %i.j, %.lr.ph ] ; 4 uses
  %i.al = add nsw i32 %.in, -1                    ; 2 uses
  switch i32 %i.ah, label %default.unreachable [
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph.split, %bb.f
  %.0261 = phi i32 [ %i.ag, %.lr.ph.split ], [ %i.ds, %bb.f ]
  %.1247 = phi ptr [ %.0246286, %.lr.ph.split ], [ %i.dq, %bb.f ] ; 2 uses
  %.1244 = phi ptr [ %.0243287, %.lr.ph.split ], [ %i.dr, %bb.f ] ; 5 uses
  %i.am = load i8, ptr %.1244, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.1244, i64 1
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.1244, i64 2
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.1244, i64 3
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i32
  %i.au = load i8, ptr %i.ai, align 1
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = shl i32 %i.at, %i.av
  %i.ax = zext i8 %i.am to i32
  %i.ay = shl nuw nsw i32 %i.ax, 16
  %i.az = zext i8 %i.ao to i32
  %i.ba = shl nuw nsw i32 %i.az, 8
  %i.bb = or disjoint i32 %i.ba, %i.ay
  %i.bc = zext i8 %i.aq to i32
  %i.bd = or disjoint i32 %i.bb, %i.bc
  %i.be = or i32 %i.bd, %i.aw
  store i32 %i.be, ptr %.1247, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.1247, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.1244, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split
  %.1262 = phi i32 [ %.0261, %bb.c ], [ %i.ag, %.lr.ph.split ]
  %.2248 = phi ptr [ %i.bf, %bb.c ], [ %.0246286, %.lr.ph.split ] ; 2 uses
  %.2245 = phi ptr [ %i.bg, %bb.c ], [ %.0243287, %.lr.ph.split ] ; 5 uses
  %i.bh = load i8, ptr %.2245, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.2245, i64 1
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.2245, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.2245, i64 3
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i32
  %i.bp = load i8, ptr %i.ai, align 1
  %i.bq = zext nneg i8 %i.bp to i32
  %i.br = shl i32 %i.bo, %i.bq
  %i.bs = zext i8 %i.bh to i32
  %i.bt = shl nuw nsw i32 %i.bs, 16
  %i.bu = zext i8 %i.bj to i32
  %i.bv = shl nuw nsw i32 %i.bu, 8
  %i.bw = or disjoint i32 %i.bv, %i.bt
  %i.bx = zext i8 %i.bl to i32
  %i.by = or disjoint i32 %i.bw, %i.bx
  %i.bz = or i32 %i.by, %i.br
  store i32 %i.bz, ptr %.2248, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.2248, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %.2245, i64 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split
  %.2263 = phi i32 [ %.1262, %bb.d ], [ %i.ag, %.lr.ph.split ]
  %.3249 = phi ptr [ %i.ca, %bb.d ], [ %.0246286, %.lr.ph.split ] ; 2 uses
  %.3 = phi ptr [ %i.cb, %bb.d ], [ %.0243287, %.lr.ph.split ] ; 5 uses
  %i.cc = load i8, ptr %.3, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.3, i64 3
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i32
  %i.ck = load i8, ptr %i.ai, align 1
  %i.cl = zext nneg i8 %i.ck to i32
  %i.cm = shl i32 %i.cj, %i.cl
  %i.cn = zext i8 %i.cc to i32
  %i.co = shl nuw nsw i32 %i.cn, 16
  %i.cp = zext i8 %i.ce to i32
  %i.cq = shl nuw nsw i32 %i.cp, 8
  %i.cr = or disjoint i32 %i.cq, %i.co
  %i.cs = zext i8 %i.cg to i32
  %i.ct = or disjoint i32 %i.cr, %i.cs
  %i.cu = or i32 %i.ct, %i.cm
  store i32 %i.cu, ptr %.3249, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.3249, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %.3, i64 4
  br label %bb.f

default.unreachable:                              ; preds = %.lr.ph.split
  unreachable

bb.f:                                             ; preds = %.lr.ph.split, %bb.e
  %.3264 = phi i32 [ %.2263, %bb.e ], [ %i.ag, %.lr.ph.split ] ; 2 uses
  %.4250 = phi ptr [ %i.cv, %bb.e ], [ %.0246286, %.lr.ph.split ] ; 2 uses
  %.4 = phi ptr [ %i.cw, %bb.e ], [ %.0243287, %.lr.ph.split ] ; 5 uses
  %i.cx = load i8, ptr %.4, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.4, i64 1
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %.4, i64 2
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %.4, i64 3
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = zext i8 %i.dd to i32
  %i.df = load i8, ptr %i.ai, align 1
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = shl i32 %i.de, %i.dg
  %i.di = zext i8 %i.cx to i32
  %i.dj = shl nuw nsw i32 %i.di, 16
  %i.dk = zext i8 %i.cz to i32
  %i.dl = shl nuw nsw i32 %i.dk, 8
  %i.dm = or disjoint i32 %i.dl, %i.dj
  %i.dn = zext i8 %i.db to i32
  %i.do = or disjoint i32 %i.dm, %i.dn
  %i.dp = or i32 %i.do, %i.dh
  store i32 %i.dp, ptr %.4250, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %.4250, i64 4 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.4, i64 4 ; 2 uses
  %i.ds = add nsw i32 %.3264, -1
  %i.dt = icmp sgt i32 %.3264, 1
  br i1 %i.dt, label %bb.c, label %bb.g, !llvm.loop !55

bb.g:                                             ; preds = %bb.f
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %i.aj
  %i.dv = getelementptr inbounds i8, ptr %i.dq, i64 %i.ak
  %.not279 = icmp eq i32 %i.al, 0
  br i1 %.not279, label %.loopexit, label %.lr.ph.split, !llvm.loop !56

bb.h:                                             ; preds = %bb.b
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = zext i8 %i.dx to i32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.r, i64 31
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext nneg i8 %i.ea to i32
  %i.ec = shl i32 %i.dy, %i.eb                    ; 4 uses
  %.not278288 = icmp eq i32 %i.d, 0
  br i1 %.not278288, label %.loopexit, label %.lr.ph291

.lr.ph291:                                        ; preds = %bb.h
  %i.ed = add nsw i32 %i.b, 3
  %i.ee = sdiv i32 %i.ed, 4                       ; 4 uses
  %i.ef = and i32 %i.b, 3
  %i.eg = zext i8 %i.p to i64                     ; 4 uses
  %i.eh = sext i32 %i.h to i64
  %i.ei = sext i32 %i.l to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph291, %bb.n
  %.in297 = phi i32 [ %i.d, %.lr.ph291 ], [ %i.ej, %bb.n ]
  %.5290 = phi ptr [ %i.f, %.lr.ph291 ], [ %i.gu, %bb.n ] ; 4 uses
  %.5251289 = phi ptr [ %i.j, %.lr.ph291 ], [ %i.gv, %bb.n ] ; 4 uses
  %i.ej = add nsw i32 %.in297, -1                 ; 2 uses
  switch i32 %i.ef, label %.unreachabledefault [
    i32 0, label %bb.j
    i32 3, label %bb.k
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i, %bb.m
  %.0265 = phi i32 [ %i.ee, %bb.i ], [ %i.gs, %bb.m ]
  %.6252 = phi ptr [ %.5251289, %bb.i ], [ %i.gq, %bb.m ] ; 2 uses
  %.6 = phi ptr [ %.5290, %bb.i ], [ %i.gr, %bb.m ] ; 4 uses
  %i.ek = load i8, ptr %.6, align 1
  %i.el = getelementptr inbounds nuw i8, ptr %.6, i64 1
  %i.em = load i8, ptr %i.el, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %.6, i64 2
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = zext i8 %i.ek to i32
  %i.eq = shl nuw nsw i32 %i.ep, 16
  %i.er = zext i8 %i.em to i32
  %i.es = shl nuw nsw i32 %i.er, 8
  %i.et = zext i8 %i.eo to i32
  %i.eu = or disjoint i32 %i.eq, %i.es
  %i.ev = or disjoint i32 %i.eu, %i.et
  %i.ew = or i32 %i.ev, %i.ec
  store i32 %i.ew, ptr %.6252, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %.6252, i64 4
  %i.ey = getelementptr inbounds nuw i8, ptr %.6, i64 %i.eg
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1266 = phi i32 [ %.0265, %bb.j ], [ %i.ee, %bb.i ]
  %.7253 = phi ptr [ %i.ex, %bb.j ], [ %.5251289, %bb.i ] ; 2 uses
  %.7 = phi ptr [ %i.ey, %bb.j ], [ %.5290, %bb.i ] ; 4 uses
  %i.ez = load i8, ptr %.7, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.7, i64 1
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = getelementptr inbounds nuw i8, ptr %.7, i64 2
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = zext i8 %i.ez to i32
  %i.ff = shl nuw nsw i32 %i.fe, 16
  %i.fg = zext i8 %i.fb to i32
  %i.fh = shl nuw nsw i32 %i.fg, 8
  %i.fi = zext i8 %i.fd to i32
  %i.fj = or disjoint i32 %i.ff, %i.fh
  %i.fk = or disjoint i32 %i.fj, %i.fi
  %i.fl = or i32 %i.fk, %i.ec
  store i32 %i.fl, ptr %.7253, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %.7253, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %.7, i64 %i.eg
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.2267 = phi i32 [ %.1266, %bb.k ], [ %i.ee, %bb.i ]
  %.8254 = phi ptr [ %i.fm, %bb.k ], [ %.5251289, %bb.i ] ; 2 uses
  %.8 = phi ptr [ %i.fn, %bb.k ], [ %.5290, %bb.i ] ; 4 uses
  %i.fo = load i8, ptr %.8, align 1
  %i.fp = getelementptr inbounds nuw i8, ptr %.8, i64 1
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = getelementptr inbounds nuw i8, ptr %.8, i64 2
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = zext i8 %i.fo to i32
  %i.fu = shl nuw nsw i32 %i.ft, 16
  %i.fv = zext i8 %i.fq to i32
  %i.fw = shl nuw nsw i32 %i.fv, 8
  %i.fx = zext i8 %i.fs to i32
  %i.fy = or disjoint i32 %i.fu, %i.fw
  %i.fz = or disjoint i32 %i.fy, %i.fx
  %i.ga = or i32 %i.fz, %i.ec
  store i32 %i.ga, ptr %.8254, align 4
  %i.gb = getelementptr inbounds nuw i8, ptr %.8254, i64 4
  %i.gc = getelementptr inbounds nuw i8, ptr %.8, i64 %i.eg
  br label %bb.m

.unreachabledefault:                              ; preds = %bb.i
  unreachable

bb.m:                                             ; preds = %bb.i, %bb.l
  %.3268 = phi i32 [ %.2267, %bb.l ], [ %i.ee, %bb.i ] ; 2 uses
  %.9255 = phi ptr [ %i.gb, %bb.l ], [ %.5251289, %bb.i ] ; 2 uses
  %.9 = phi ptr [ %i.gc, %bb.l ], [ %.5290, %bb.i ] ; 4 uses
  %i.gd = load i8, ptr %.9, align 1
  %i.ge = getelementptr inbounds nuw i8, ptr %.9, i64 1
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = getelementptr inbounds nuw i8, ptr %.9, i64 2
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = zext i8 %i.gd to i32
  %i.gj = shl nuw nsw i32 %i.gi, 16
  %i.gk = zext i8 %i.gf to i32
  %i.gl = shl nuw nsw i32 %i.gk, 8
  %i.gm = zext i8 %i.gh to i32
  %i.gn = or disjoint i32 %i.gj, %i.gl
  %i.go = or disjoint i32 %i.gn, %i.gm
  %i.gp = or i32 %i.go, %i.ec
  store i32 %i.gp, ptr %.9255, align 4
  %i.gq = getelementptr inbounds nuw i8, ptr %.9255, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.9, i64 %i.eg ; 2 uses
  %i.gs = add nsw i32 %.3268, -1
  %i.gt = icmp sgt i32 %.3268, 1
  br i1 %i.gt, label %bb.j, label %bb.n, !llvm.loop !57

bb.n:                                             ; preds = %bb.m
  %i.gu = getelementptr inbounds i8, ptr %i.gr, i64 %i.eh
  %i.gv = getelementptr inbounds i8, ptr %i.gq, i64 %i.ei
  %.not278 = icmp eq i32 %i.ej, 0
  br i1 %.not278, label %.loopexit, label %bb.i, !llvm.loop !58

.lr.ph295.split:                                  ; preds = %.lr.ph295, %bb.s
  %.in298 = phi i32 [ %i.gw, %bb.s ], [ %i.d, %.lr.ph295 ]
  %.10294 = phi ptr [ %i.ij, %bb.s ], [ %i.f, %.lr.ph295 ] ; 4 uses
  %.10256293 = phi ptr [ %i.ik, %bb.s ], [ %i.j, %.lr.ph295 ] ; 4 uses
  %i.gw = add nsw i32 %.in298, -1                 ; 2 uses
  switch i32 %i.y, label %.lr.ph295.split.unreachabledefault [
    i32 0, label %bb.o
    i32 3, label %bb.p
    i32 2, label %bb.q
    i32 1, label %bb.r
  ]

bb.o:                                             ; preds = %.lr.ph295.split, %bb.r
  %.0269 = phi i32 [ %i.x, %.lr.ph295.split ], [ %i.ih, %bb.r ]
  %.11257 = phi ptr [ %.10256293, %.lr.ph295.split ], [ %i.if, %bb.r ] ; 4 uses
  %.11 = phi ptr [ %.10294, %.lr.ph295.split ], [ %i.ig, %bb.r ] ; 4 uses
  %i.gx = load i8, ptr %.11, align 1
  %i.gy = getelementptr inbounds nuw i8, ptr %.11, i64 1
  %i.gz = load i8, ptr %i.gy, align 1
  %i.ha = getelementptr inbounds nuw i8, ptr %.11, i64 2
  %i.hb = load i8, ptr %i.ha, align 1
  %i.hc = getelementptr inbounds nuw i8, ptr %.11257, i64 2
  store i8 %i.gx, ptr %i.hc, align 1
  %i.hd = getelementptr inbounds nuw i8, ptr %.11257, i64 1
  store i8 %i.gz, ptr %i.hd, align 1
  store i8 %i.hb, ptr %.11257, align 1
  %i.he = getelementptr inbounds nuw i8, ptr %.11257, i64 %i.z
  %i.hf = getelementptr inbounds nuw i8, ptr %.11, i64 %i.aa
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph295.split
  %.1270 = phi i32 [ %.0269, %bb.o ], [ %i.x, %.lr.ph295.split ]
  %.12258 = phi ptr [ %i.he, %bb.o ], [ %.10256293, %.lr.ph295.split ] ; 4 uses
  %.12 = phi ptr [ %i.hf, %bb.o ], [ %.10294, %.lr.ph295.split ] ; 4 uses
  %i.hg = load i8, ptr %.12, align 1
  %i.hh = getelementptr inbounds nuw i8, ptr %.12, i64 1
  %i.hi = load i8, ptr %i.hh, align 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.12, i64 2
  %i.hk = load i8, ptr %i.hj, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %.12258, i64 2
  store i8 %i.hg, ptr %i.hl, align 1
  %i.hm = getelementptr inbounds nuw i8, ptr %.12258, i64 1
  store i8 %i.hi, ptr %i.hm, align 1
  store i8 %i.hk, ptr %.12258, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %.12258, i64 %i.z
  %i.ho = getelementptr inbounds nuw i8, ptr %.12, i64 %i.aa
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph295.split
  %.2271 = phi i32 [ %.1270, %bb.p ], [ %i.x, %.lr.ph295.split ]
  %.13259 = phi ptr [ %i.hn, %bb.p ], [ %.10256293, %.lr.ph295.split ] ; 4 uses
  %.13 = phi ptr [ %i.ho, %bb.p ], [ %.10294, %.lr.ph295.split ] ; 4 uses
  %i.hp = load i8, ptr %.13, align 1
  %i.hq = getelementptr inbounds nuw i8, ptr %.13, i64 1
  %i.hr = load i8, ptr %i.hq, align 1
  %i.hs = getelementptr inbounds nuw i8, ptr %.13, i64 2
  %i.ht = load i8, ptr %i.hs, align 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.13259, i64 2
  store i8 %i.hp, ptr %i.hu, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.13259, i64 1
  store i8 %i.hr, ptr %i.hv, align 1
  store i8 %i.ht, ptr %.13259, align 1
  %i.hw = getelementptr inbounds nuw i8, ptr %.13259, i64 %i.z
  %i.hx = getelementptr inbounds nuw i8, ptr %.13, i64 %i.aa
  br label %bb.r

.lr.ph295.split.unreachabledefault:               ; preds = %.lr.ph295.split
  unreachable

bb.r:                                             ; preds = %.lr.ph295.split, %bb.q
  %.3272 = phi i32 [ %.2271, %bb.q ], [ %i.x, %.lr.ph295.split ] ; 2 uses
  %.14260 = phi ptr [ %i.hw, %bb.q ], [ %.10256293, %.lr.ph295.split ] ; 4 uses
  %.14 = phi ptr [ %i.hx, %bb.q ], [ %.10294, %.lr.ph295.split ] ; 4 uses
  %i.hy = load i8, ptr %.14, align 1
  %i.hz = getelementptr inbounds nuw i8, ptr %.14, i64 1
  %i.ia = load i8, ptr %i.hz, align 1
  %i.ib = getelementptr inbounds nuw i8, ptr %.14, i64 2
  %i.ic = load i8, ptr %i.ib, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %.14260, i64 2
  store i8 %i.hy, ptr %i.id, align 1
  %i.ie = getelementptr inbounds nuw i8, ptr %.14260, i64 1
  store i8 %i.ia, ptr %i.ie, align 1
  store i8 %i.ic, ptr %.14260, align 1
  %i.if = getelementptr inbounds nuw i8, ptr %.14260, i64 %i.z ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.14, i64 %i.aa ; 2 uses
  %i.ih = add nsw i32 %.3272, -1
  %i.ii = icmp sgt i32 %.3272, 1
  br i1 %i.ii, label %bb.o, label %bb.s, !llvm.loop !59

bb.s:                                             ; preds = %bb.r
  %i.ij = getelementptr inbounds i8, ptr %i.ig, i64 %i.ab
  %i.ik = getelementptr inbounds i8, ptr %i.if, i64 %i.ac
  %.not276 = icmp eq i32 %i.gw, 0
  br i1 %.not276, label %.loopexit, label %.lr.ph295.split, !llvm.loop !60

.loopexit:                                        ; preds = %bb.g, %bb.n, %bb.s, %.preheader282, %bb.h, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Blit_XRGB8888_RGB565(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not48 = icmp eq i32 %i.b, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sdiv i32 %i.d, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sdiv i32 %i.i, 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = add nsw i32 %i.n, 3
  %i.p = sdiv i32 %i.o, 4                         ; 4 uses
  %i.q = and i32 %i.n, 3
  %i.r = sext i32 %i.j to i64
  %i.s = sext i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.in = phi i32 [ %i.b, %.lr.ph ], [ %i.t, %bb.g ]
  %.03850 = phi ptr [ %i.l, %.lr.ph ], [ %i.bs, %bb.g ] ; 4 uses
  %.04249 = phi ptr [ %i.g, %.lr.ph ], [ %i.bt, %bb.g ] ; 4 uses
  %i.t = add nsw i32 %.in, -1                     ; 2 uses
  switch i32 %i.q, label %default.unreachable53 [
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.f
  %.143 = phi ptr [ %.04249, %bb.b ], [ %i.bp, %bb.f ] ; 2 uses
  %.139 = phi ptr [ %.03850, %bb.b ], [ %i.bo, %bb.f ] ; 2 uses
  %.0 = phi i32 [ %i.p, %bb.b ], [ %i.bq, %bb.f ]
  %i.u = load i32, ptr %.139, align 4             ; 3 uses
  %i.v = lshr i32 %i.u, 8
  %i.w = and i32 %i.v, 63488
  %i.x = lshr i32 %i.u, 5
  %i.y = and i32 %i.x, 2016
  %i.z = or disjoint i32 %i.w, %i.y
  %i.aa = lshr i32 %i.u, 3
  %i.ab = and i32 %i.aa, 31
  %i.ac = or disjoint i32 %i.z, %i.ab
  %i.ad = trunc nuw i32 %i.ac to i16
  store i16 %i.ad, ptr %.143, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %.139, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %.143, i64 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.244 = phi ptr [ %i.af, %bb.c ], [ %.04249, %bb.b ] ; 2 uses
  %.240 = phi ptr [ %i.ae, %bb.c ], [ %.03850, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %.0, %bb.c ], [ %i.p, %bb.b ]
  %i.ag = load i32, ptr %.240, align 4            ; 3 uses
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = and i32 %i.ah, 63488
  %i.aj = lshr i32 %i.ag, 5
  %i.ak = and i32 %i.aj, 2016
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = lshr i32 %i.ag, 3
  %i.an = and i32 %i.am, 31
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = trunc nuw i32 %i.ao to i16
  store i16 %i.ap, ptr %.244, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.240, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.244, i64 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.345 = phi ptr [ %i.ar, %bb.d ], [ %.04249, %bb.b ] ; 2 uses
  %.341 = phi ptr [ %i.aq, %bb.d ], [ %.03850, %bb.b ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.d ], [ %i.p, %bb.b ]
  %i.as = load i32, ptr %.341, align 4            ; 3 uses
  %i.at = lshr i32 %i.as, 8
  %i.au = and i32 %i.at, 63488
  %i.av = lshr i32 %i.as, 5
  %i.aw = and i32 %i.av, 2016
  %i.ax = or disjoint i32 %i.au, %i.aw
  %i.ay = lshr i32 %i.as, 3
  %i.az = and i32 %i.ay, 31
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = trunc nuw i32 %i.ba to i16
  store i16 %i.bb, ptr %.345, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.341, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.345, i64 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.446 = phi ptr [ %i.bd, %bb.e ], [ %.04249, %bb.b ] ; 2 uses
  %.4 = phi ptr [ %i.bc, %bb.e ], [ %.03850, %bb.b ] ; 2 uses
  %.3 = phi i32 [ %.2, %bb.e ], [ %i.p, %bb.b ]   ; 2 uses
  %i.be = load i32, ptr %.4, align 4              ; 3 uses
  %i.bf = lshr i32 %i.be, 8
  %i.bg = and i32 %i.bf, 63488
  %i.bh = lshr i32 %i.be, 5
  %i.bi = and i32 %i.bh, 2016
  %i.bj = or disjoint i32 %i.bg, %i.bi
  %i.bk = lshr i32 %i.be, 3
  %i.bl = and i32 %i.bk, 31
  %i.bm = or disjoint i32 %i.bj, %i.bl
  %i.bn = trunc nuw i32 %i.bm to i16
  store i16 %i.bn, ptr %.446, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %.4, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.446, i64 2 ; 2 uses
  %i.bq = add nsw i32 %.3, -1
  %i.br = icmp sgt i32 %.3, 1
  br i1 %i.br, label %bb.c, label %bb.g, !llvm.loop !61

default.unreachable53:                            ; preds = %bb.b
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.r
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.s
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Blit_XRGB8888_RGB555(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not48 = icmp eq i32 %i.b, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sdiv i32 %i.d, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sdiv i32 %i.i, 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = add nsw i32 %i.n, 3
  %i.p = sdiv i32 %i.o, 4                         ; 4 uses
  %i.q = and i32 %i.n, 3
  %i.r = sext i32 %i.j to i64
  %i.s = sext i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.in = phi i32 [ %i.b, %.lr.ph ], [ %i.t, %bb.g ]
  %.03850 = phi ptr [ %i.l, %.lr.ph ], [ %i.bs, %bb.g ] ; 4 uses
  %.04249 = phi ptr [ %i.g, %.lr.ph ], [ %i.bt, %bb.g ] ; 4 uses
  %i.t = add nsw i32 %.in, -1                     ; 2 uses
  switch i32 %i.q, label %default.unreachable53 [
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
  ]
end_hunk_6
