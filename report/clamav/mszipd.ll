inline.NumInlined: 22
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@mszipd_decompress:bb.a
  %.sink = phi i32 [ 3, %bb.h ], [ 11, %.preheader ], [ %i.cs, %bb.t ], [ 4, %bb.d ], [ 11, %._crit_edge167 ], [ 3, %bb.j ], [ 4, %bb.u ] ; 2 uses
  store i32 %.sink, ptr %i.c, align 8, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %.loopexit.sink.split, %._crit_edge167, %bb.f, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %._crit_edge167 ], [ 1, %bb.a ], [ %.sink, %.loopexit.sink.split ], [ %i.d, %bb.b ], [ 0, %bb.f ], [ %i.by, %bb.w ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -14, 4) i32 @inflate(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i16], align 16             ; 5 uses
  %i.b = alloca [19 x i8], align 16               ; 11 uses
  %i.c = alloca [320 x i8], align 16              ; 13 uses
  %i.d = alloca [4 x i8], align 2                 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 20 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 20 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 64 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 32 uses
  %i.q = getelementptr i8, ptr %0, i64 112        ; 4 uses
  %i.r = getelementptr i8, ptr %0, i64 400        ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2736 ; 14 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2992 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 256
  %scevgep883 = getelementptr i8, ptr %0, i64 368
  %scevgep885 = getelementptr i8, ptr %0, i64 392
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  br label %bb.b

bb.b:                                             ; preds = %.loopexit498, %bb.a
  %.0363 = phi i32 [ %i.j, %bb.a ], [ %.12375, %.loopexit498 ] ; 2 uses
  %.0350 = phi i32 [ %i.l, %bb.a ], [ %.12362, %.loopexit498 ] ; 3 uses
  %.0321 = phi ptr [ %i.h, %bb.a ], [ %.22343, %.loopexit498 ] ; 2 uses
  %.0313 = phi ptr [ %i.f, %bb.a ], [ %.22, %.loopexit498 ] ; 2 uses
  %i.aa = icmp slt i32 %.0350, 1
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.j
  %.1314663 = phi ptr [ %i.at, %bb.j ], [ %.0313, %bb.b ] ; 2 uses
  %.1322662 = phi ptr [ %.2323, %bb.j ], [ %.0321, %bb.b ] ; 2 uses
  %.1351661 = phi i32 [ %i.ay, %bb.j ], [ %.0350, %bb.b ] ; 3 uses
  %.1364660 = phi i32 [ %i.ax, %bb.j ], [ %.0363, %bb.b ]
  %.not418 = icmp ult ptr %.1314663, %.1322662
  br i1 %.not418, label %bb.j, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %0, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !33
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.ag = load i32, ptr %i.o, align 4, !tbaa !20
  %i.ah = call i32 %i.ad(ptr noundef %i.ae, ptr noundef %i.af, i32 noundef %i.ag) #7, !inline_history !34 ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 3, ptr %i.aj, align 8, !tbaa !22
  br label %.thread477

bb.e:                                             ; preds = %bb.c
  %i.ak = icmp eq i32 %i.ah, 0
  br i1 %i.ak, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.al = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i = icmp eq i8 %i.al, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 3, ptr %i.am, align 8, !tbaa !22
  br label %.thread477

bb.h:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 0, ptr %i.ao, align 1, !tbaa !35
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !11
  store i8 0, ptr %i.ap, align 1, !tbaa !35
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.0.i = phi i32 [ 2, %bb.h ], [ %i.ah, %bb.e ]
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !11  ; 3 uses
  store ptr %i.aq, ptr %i.e, align 8, !tbaa !26
  %i.ar = zext nneg i32 %.0.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar ; 2 uses
  store ptr %i.as, ptr %i.g, align 8, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %.2323 = phi ptr [ %i.as, %bb.i ], [ %.1322662, %.lr.ph ] ; 2 uses
  %.2315 = phi ptr [ %i.aq, %bb.i ], [ %.1314663, %.lr.ph ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.2315, i64 1 ; 2 uses
  %i.au = load i8, ptr %.2315, align 1, !tbaa !35
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, %.1351661
  %i.ax = or i32 %i.aw, %.1364660                 ; 2 uses
  %i.ay = add nsw i32 %.1351661, 8                ; 2 uses
  %i.az = icmp slt i32 %.1351661, -7
  br i1 %i.az, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %bb.b
  %.1364.lcssa = phi i32 [ %.0363, %bb.b ], [ %i.ax, %bb.j ] ; 2 uses
  %.1351.lcssa = phi i32 [ %.0350, %bb.b ], [ %i.ay, %bb.j ] ; 2 uses
  %.1322.lcssa = phi ptr [ %.0321, %bb.b ], [ %.2323, %bb.j ] ; 2 uses
  %.1314.lcssa = phi ptr [ %.0313, %bb.b ], [ %i.at, %bb.j ] ; 2 uses
  %i.ba = and i32 %.1364.lcssa, 1
  %i.bb = lshr i32 %.1364.lcssa, 1                ; 2 uses
  %i.bc = add nsw i32 %.1351.lcssa, -1            ; 2 uses
  %i.bd = icmp samesign ult i32 %.1351.lcssa, 3
  br i1 %i.bd, label %.lr.ph672, label %._crit_edge673

.lr.ph672:                                        ; preds = %._crit_edge, %bb.r
  %.3316670 = phi ptr [ %i.bw, %bb.r ], [ %.1314.lcssa, %._crit_edge ] ; 2 uses
  %.3324669 = phi ptr [ %.4325, %bb.r ], [ %.1322.lcssa, %._crit_edge ] ; 2 uses
  %.2352668 = phi i32 [ %i.cb, %bb.r ], [ %i.bc, %._crit_edge ] ; 3 uses
  %.2365667 = phi i32 [ %i.ca, %bb.r ], [ %i.bb, %._crit_edge ]
  %.not416 = icmp ult ptr %.3316670, %.3324669
  br i1 %.not416, label %bb.r, label %bb.k

bb.k:                                             ; preds = %.lr.ph672
  %i.be = load ptr, ptr %0, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !33
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.bj = load i32, ptr %i.o, align 4, !tbaa !20
  %i.bk = call i32 %i.bg(ptr noundef %i.bh, ptr noundef %i.bi, i32 noundef %i.bj) #7, !inline_history !34 ; 3 uses
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 3, ptr %i.bm, align 8, !tbaa !22
  br label %.thread477

bb.m:                                             ; preds = %bb.k
  %i.bn = icmp eq i32 %i.bk, 0
  br i1 %i.bn, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bo = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i423 = icmp eq i8 %i.bo, 0
  br i1 %.not.i423, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 3, ptr %i.bp, align 8, !tbaa !22
  br label %.thread477

bb.p:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 0, ptr %i.br, align 1, !tbaa !35
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !11
  store i8 0, ptr %i.bs, align 1, !tbaa !35
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.0.i421 = phi i32 [ 2, %bb.p ], [ %i.bk, %bb.m ]
  %i.bt = load ptr, ptr %i.n, align 8, !tbaa !11  ; 3 uses
  store ptr %i.bt, ptr %i.e, align 8, !tbaa !26
  %i.bu = zext nneg i32 %.0.i421 to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bu ; 2 uses
  store ptr %i.bv, ptr %i.g, align 8, !tbaa !25
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph672
  %.4325 = phi ptr [ %i.bv, %bb.q ], [ %.3324669, %.lr.ph672 ] ; 2 uses
  %.4317 = phi ptr [ %i.bt, %bb.q ], [ %.3316670, %.lr.ph672 ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.4317, i64 1 ; 2 uses
  %i.bx = load i8, ptr %.4317, align 1, !tbaa !35
  %i.by = zext i8 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, %.2352668
  %i.ca = or i32 %i.bz, %.2365667                 ; 2 uses
  %i.cb = add nuw nsw i32 %.2352668, 8            ; 2 uses
  %i.cc = icmp slt i32 %.2352668, -6
  br i1 %i.cc, label %.lr.ph672, label %._crit_edge673

._crit_edge673:                                   ; preds = %bb.r, %._crit_edge
  %.2365.lcssa = phi i32 [ %i.bb, %._crit_edge ], [ %i.ca, %bb.r ] ; 2 uses
  %.2352.lcssa = phi i32 [ %i.bc, %._crit_edge ], [ %i.cb, %bb.r ] ; 2 uses
  %.3324.lcssa = phi ptr [ %.1322.lcssa, %._crit_edge ], [ %.4325, %bb.r ] ; 6 uses
  %.3316.lcssa = phi ptr [ %.1314.lcssa, %._crit_edge ], [ %i.bw, %bb.r ] ; 6 uses
  %i.cd = and i32 %.2365.lcssa, 3
  %i.ce = lshr i32 %.2365.lcssa, 2                ; 5 uses
  %i.cf = add nsw i32 %.2352.lcssa, -2            ; 6 uses
  switch i32 %i.cd, label %default.unreachable [
    i32 0, label %bb.s
    i32 3, label %.thread477
    i32 1, label %.preheader500
    i32 2, label %bb.ai
  ]

bb.s:                                             ; preds = %._crit_edge673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.cg = and i32 %i.cf, 7
  %i.ch = lshr i32 %i.ce, %i.cg                   ; 5 uses
  %i.ci = and i32 %i.cf, -8                       ; 5 uses
  %.not745 = icmp eq i32 %i.ci, 0
  br i1 %.not745, label %.lr.ph757.preheader, label %.lr.ph750.preheader

.lr.ph750.preheader:                              ; preds = %bb.s
  %i.cj = trunc i32 %i.ch to i8
  store i8 %i.cj, ptr %i.d, align 2, !tbaa !35
  %i.ck = lshr i32 %i.ch, 8                       ; 2 uses
  %i.cl = icmp eq i32 %i.ci, 8
  br i1 %i.cl, label %.lr.ph757.preheader, label %.lr.ph750.1

.lr.ph757.preheader:                              ; preds = %bb.s, %.lr.ph750.preheader, %.lr.ph750.1, %.lr.ph750.2
  %.3366.lcssa.ph = phi i32 [ %i.cq, %.lr.ph750.2 ], [ %i.cn, %.lr.ph750.1 ], [ %i.ck, %.lr.ph750.preheader ], [ %i.ch, %bb.s ]
  %.0295.lcssa.ph = phi i64 [ 3, %.lr.ph750.2 ], [ 2, %.lr.ph750.1 ], [ 1, %.lr.ph750.preheader ], [ 0, %bb.s ]
  br label %.lr.ph757

.lr.ph750.1:                                      ; preds = %.lr.ph750.preheader
  %i.cm = trunc i32 %i.ck to i8
  store i8 %i.cm, ptr %i.y, align 1, !tbaa !35
  %i.cn = lshr i32 %i.ch, 16                      ; 2 uses
  %i.co = icmp eq i32 %i.ci, 16
  br i1 %i.co, label %.lr.ph757.preheader, label %.lr.ph750.2

.lr.ph750.2:                                      ; preds = %.lr.ph750.1
  %i.cp = trunc i32 %i.cn to i8
  store i8 %i.cp, ptr %i.x, align 2, !tbaa !35
  %i.cq = lshr i32 %i.ch, 24                      ; 2 uses
  %i.cr = icmp eq i32 %i.ci, 24
  br i1 %i.cr, label %.lr.ph757.preheader, label %.lr.ph750.3

.lr.ph750.3:                                      ; preds = %.lr.ph750.2
  %i.cs = trunc nuw nsw i32 %i.cq to i8
  store i8 %i.cs, ptr %i.z, align 1, !tbaa !35
  %i.ct = icmp eq i32 %i.ci, 32
  br i1 %i.ct, label %._crit_edge758, label %.thread

.lr.ph757:                                        ; preds = %.lr.ph757.preheader, %bb.y
  %indvars.iv = phi i64 [ %.0295.lcssa.ph, %.lr.ph757.preheader ], [ %indvars.iv.next, %bb.y ] ; 2 uses
  %.5318755 = phi ptr [ %.3316.lcssa, %.lr.ph757.preheader ], [ %i.dk, %bb.y ] ; 2 uses
  %.5326754 = phi ptr [ %.3324.lcssa, %.lr.ph757.preheader ], [ %.6327, %bb.y ] ; 2 uses
  %.not411 = icmp ult ptr %.5318755, %.5326754
  br i1 %.not411, label %bb.y, label %bb.t

bb.t:                                             ; preds = %.lr.ph757
  %i.cu = load ptr, ptr %0, align 8, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !33
  %i.cx = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.cy = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.cz = load i32, ptr %i.o, align 4, !tbaa !20
  %i.da = call i32 %i.cw(ptr noundef %i.cx, ptr noundef %i.cy, i32 noundef %i.cz) #7, !inline_history !34 ; 3 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %.thread.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = icmp eq i32 %i.da, 0
  br i1 %i.dc, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dd = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i427 = icmp eq i8 %i.dd, 0
  br i1 %.not.i427, label %bb.w, label %.thread.sink.split

bb.w:                                             ; preds = %bb.v
  %i.de = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  store i8 0, ptr %i.df, align 1, !tbaa !35
  %i.dg = load ptr, ptr %i.n, align 8, !tbaa !11
  store i8 0, ptr %i.dg, align 1, !tbaa !35
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.0.i425 = phi i32 [ 2, %bb.w ], [ %i.da, %bb.u ]
  %i.dh = load ptr, ptr %i.n, align 8, !tbaa !11  ; 3 uses
  store ptr %i.dh, ptr %i.e, align 8, !tbaa !26
  %i.di = zext nneg i32 %.0.i425 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.di ; 2 uses
  store ptr %i.dj, ptr %i.g, align 8, !tbaa !25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph757
  %.6327 = phi ptr [ %i.dj, %bb.x ], [ %.5326754, %.lr.ph757 ] ; 2 uses
  %.6319 = phi ptr [ %i.dh, %bb.x ], [ %.5318755, %.lr.ph757 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.6319, i64 1 ; 2 uses
  %i.dl = load i8, ptr %.6319, align 1, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !35
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %._crit_edge758, label %.lr.ph757

._crit_edge758:                                   ; preds = %bb.y, %.lr.ph750.3
  %.3366.lcssa981 = phi i32 [ 0, %.lr.ph750.3 ], [ %.3366.lcssa.ph, %bb.y ]
  %.5326.lcssa = phi ptr [ %.3324.lcssa, %.lr.ph750.3 ], [ %.6327, %bb.y ] ; 2 uses
  %.5318.lcssa = phi ptr [ %.3316.lcssa, %.lr.ph750.3 ], [ %i.dk, %bb.y ] ; 2 uses
  %i.dn = load i16, ptr %i.d, align 2             ; 3 uses
  %i.do = load i16, ptr %i.x, align 2
  %i.dp = xor i16 %i.do, %i.dn
  %.not406 = icmp eq i16 %i.dp, -1
  br i1 %.not406, label %.preheader494, label %.thread

.preheader494:                                    ; preds = %._crit_edge758
  %.not407761 = icmp eq i16 %i.dn, 0
  br i1 %.not407761, label %._crit_edge766, label %.lr.ph765.preheader

.lr.ph765.preheader:                              ; preds = %.preheader494
  %i.dq = zext i16 %i.dn to i32
  br label %.lr.ph765

.lr.ph765:                                        ; preds = %.lr.ph765.preheader, %bb.ah
  %.0303764 = phi i32 [ %i.ew, %bb.ah ], [ %i.dq, %.lr.ph765.preheader ] ; 2 uses
  %.7320763 = phi ptr [ %i.ev, %bb.ah ], [ %.5318.lcssa, %.lr.ph765.preheader ] ; 2 uses
  %.7328762 = phi ptr [ %.8329, %bb.ah ], [ %.5326.lcssa, %.lr.ph765.preheader ] ; 2 uses
  %.not408 = icmp ult ptr %.7320763, %.7328762
  br i1 %.not408, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %.lr.ph765
  %i.dr = load ptr, ptr %0, align 8, !tbaa !17
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !33
  %i.du = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.dv = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.dw = load i32, ptr %i.o, align 4, !tbaa !20
  %i.dx = call i32 %i.dt(ptr noundef %i.du, ptr noundef %i.dv, i32 noundef %i.dw) #7, !inline_history !34 ; 3 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %.thread.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dz = icmp eq i32 %i.dx, 0
  br i1 %i.dz, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ea = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i431 = icmp eq i8 %i.ea, 0
  br i1 %.not.i431, label %bb.ac, label %.thread.sink.split

bb.ac:                                            ; preds = %bb.ab
  %i.eb = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  store i8 0, ptr %i.ec, align 1, !tbaa !35
  %i.ed = load ptr, ptr %i.n, align 8, !tbaa !11
  store i8 0, ptr %i.ed, align 1, !tbaa !35
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.0.i429 = phi i32 [ 2, %bb.ac ], [ %i.dx, %bb.aa ]
  %i.ee = load ptr, ptr %i.n, align 8, !tbaa !11  ; 3 uses
  store ptr %i.ee, ptr %i.e, align 8, !tbaa !26
  %i.ef = zext nneg i32 %.0.i429 to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef ; 2 uses
  store ptr %i.eg, ptr %i.g, align 8, !tbaa !25
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph765
  %.8329 = phi ptr [ %i.eg, %bb.ad ], [ %.7328762, %.lr.ph765 ] ; 3 uses
  %.8 = phi ptr [ %i.ee, %bb.ad ], [ %.7320763, %.lr.ph765 ] ; 3 uses
  %i.eh = ptrtoint ptr %.8329 to i64
  %i.ei = ptrtoint ptr %.8 to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = trunc i64 %i.ej to i32
  %spec.select = call i32 @llvm.umin.i32(i32 %.0303764, i32 %i.ek)
  %i.el = load i32, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %i.em = sub i32 32768, %i.el
  %.1299 = call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.em) ; 3 uses
  %i.en = load ptr, ptr %0, align 8, !tbaa !17
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 72
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !38
  %i.eq = zext i32 %i.el to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.eq
  %i.es = zext i32 %.1299 to i64                  ; 2 uses
  call void %i.ep(ptr noundef %.8, ptr noundef nonnull %i.er, i64 noundef %i.es) #7
  %i.et = load i32, ptr %i.u, align 8, !tbaa !36
  %i.eu = add i32 %i.et, %.1299                   ; 2 uses
  store i32 %i.eu, ptr %i.u, align 8, !tbaa !36
  %i.ev = getelementptr inbounds nuw i8, ptr %.8, i64 %i.es ; 2 uses
  %i.ew = sub i32 %.0303764, %.1299               ; 2 uses
  %i.ex = icmp eq i32 %i.eu, 32768
  br i1 %i.ex, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ey = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.ez = call i32 %i.ey(ptr noundef nonnull %0, i32 noundef 32768) #7
  %.not410 = icmp eq i32 %i.ez, 0
  br i1 %.not410, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.u, align 8, !tbaa !36
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.not407 = icmp eq i32 %i.ew, 0
  br i1 %.not407, label %._crit_edge766, label %.lr.ph765

.thread.sink.split:                               ; preds = %bb.v, %bb.t, %bb.ab, %bb.z
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 3, ptr %i.fa, align 8, !tbaa !22
  br label %.thread

.thread:                                          ; preds = %._crit_edge758, %.lr.ph750.3, %bb.af, %.thread.sink.split
  %.1307.ph = phi i32 [ 3, %.thread.sink.split ], [ -3, %bb.af ], [ -4, %.lr.ph750.3 ], [ -2, %._crit_edge758 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %.thread477

._crit_edge766:                                   ; preds = %bb.ah, %.preheader494
  %.7328.lcssa = phi ptr [ %.5326.lcssa, %.preheader494 ], [ %.8329, %bb.ah ]
  %.7320.lcssa = phi ptr [ %.5318.lcssa, %.preheader494 ], [ %i.ev, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %.loopexit498

.preheader500:                                    ; preds = %._crit_edge673
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.q, i8 8, i64 144, i1 false), !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %scevgep, i8 9, i64 112, i1 false), !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %scevgep883, i8 7, i64 24, i1 false), !tbaa !35
  store i64 578721382704613384, ptr %scevgep885, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.r, i8 5, i64 32, i1 false), !tbaa !35
  br label %.loopexit501

default.unreachable:                              ; preds = %._crit_edge673
  unreachable

bb.ai:                                            ; preds = %._crit_edge673
  store ptr %.3316.lcssa, ptr %i.e, align 8, !tbaa !26
  store ptr %.3324.lcssa, ptr %i.g, align 8, !tbaa !25
  store i32 %i.ce, ptr %i.i, align 4, !tbaa !27
  store i32 %i.cf, ptr %i.k, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.fb = icmp slt i32 %.2352.lcssa, 7
  br i1 %i.fb, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ai, %bb.ao
  %.0177415.i = phi i32 [ %i.fx, %bb.ao ], [ %i.cf, %bb.ai ] ; 3 uses
  %.0184414.i = phi i32 [ %i.fw, %bb.ao ], [ %i.ce, %bb.ai ]
  %.0196413.i = phi ptr [ %.1197.i, %bb.ao ], [ %.3324.lcssa, %bb.ai ] ; 2 uses
  %.0208412.i = phi ptr [ %i.fs, %bb.ao ], [ %.3316.lcssa, %bb.ai ] ; 2 uses
  %.not248.i = icmp ult ptr %.0208412.i, %.0196413.i
  br i1 %.not248.i, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i
  %i.fc = load ptr, ptr %0, align 8, !tbaa !17
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !33
  %i.ff = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.fg = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.fh = load i32, ptr %i.o, align 4, !tbaa !20
  %i.fi = call i32 %i.fe(ptr noundef %i.ff, ptr noundef %i.fg, i32 noundef %i.fh) #7, !inline_history !39 ; 3 uses
  %i.fj = icmp slt i32 %i.fi, 0
  br i1 %i.fj, label %zip_read_lens.exit.thread.sink.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fk = icmp eq i32 %i.fi, 0
  br i1 %i.fk, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fl = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i.i = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i, label %bb.am, label %zip_read_lens.exit.thread.sink.split

bb.am:                                            ; preds = %bb.al
  %i.fm = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  store i8 0, ptr %i.fn, align 1, !tbaa !35
  %i.fo = load ptr, ptr %i.n, align 8, !tbaa !11
  store i8 0, ptr %i.fo, align 1, !tbaa !35
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %.0.i.i = phi i32 [ 2, %bb.am ], [ %i.fi, %bb.ak ]
  %i.fp = load ptr, ptr %i.n, align 8, !tbaa !11  ; 3 uses
  store ptr %i.fp, ptr %i.e, align 8, !tbaa !26
  %i.fq = zext nneg i32 %.0.i.i to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fq ; 2 uses
  store ptr %i.fr, ptr %i.g, align 8, !tbaa !25
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph.i
  %.1209.i = phi ptr [ %i.fp, %bb.an ], [ %.0208412.i, %.lr.ph.i ] ; 2 uses
  %.1197.i = phi ptr [ %i.fr, %bb.an ], [ %.0196413.i, %.lr.ph.i ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.1209.i, i64 1 ; 2 uses
  %i.ft = load i8, ptr %.1209.i, align 1, !tbaa !35
  %i.fu = zext i8 %i.ft to i32
  %i.fv = shl nuw nsw i32 %i.fu, %.0177415.i
  %i.fw = or i32 %i.fv, %.0184414.i               ; 2 uses
  %i.fx = add nsw i32 %.0177415.i, 8              ; 2 uses
  %1 = icmp slt i32 %.0177415.i, -3
  br i1 %1, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ao, %bb.ai
  %.0208.lcssa.i = phi ptr [ %.3316.lcssa, %bb.ai ], [ %i.fs, %bb.ao ] ; 2 uses
  %.0196.lcssa.i = phi ptr [ %.3324.lcssa, %bb.ai ], [ %.1197.i, %bb.ao ] ; 2 uses
  %.0184.lcssa.i = phi i32 [ %i.ce, %bb.ai ], [ %i.fw, %bb.ao ] ; 2 uses
  %.0177.lcssa.i = phi i32 [ %i.cf, %bb.ai ], [ %i.fx, %bb.ao ] ; 2 uses
  %i.fy = and i32 %.0184.lcssa.i, 31              ; 4 uses
  %i.fz = lshr i32 %.0184.lcssa.i, 5              ; 2 uses
  %i.ga = add nsw i32 %.0177.lcssa.i, -5          ; 2 uses
  %i.gb = add nuw nsw i32 %i.fy, 257              ; 2 uses
  %i.gc = icmp samesign ult i32 %.0177.lcssa.i, 10
  br i1 %i.gc, label %.lr.ph424.i, label %._crit_edge425.i

.lr.ph424.i:                                      ; preds = %._crit_edge.i, %bb.au
  %.1178422.i = phi i32 [ %i.gy, %bb.au ], [ %i.ga, %._crit_edge.i ] ; 3 uses
  %.1185421.i = phi i32 [ %i.gx, %bb.au ], [ %i.fz, %._crit_edge.i ]
  %.2198420.i = phi ptr [ %.3199.i, %bb.au ], [ %.0196.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.2210419.i = phi ptr [ %i.gt, %bb.au ], [ %.0208.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.not246.i = icmp ult ptr %.2210419.i, %.2198420.i
  br i1 %.not246.i, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph424.i
  %i.gd = load ptr, ptr %0, align 8, !tbaa !17
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !33
  %i.gg = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.gh = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.gi = load i32, ptr %i.o, align 4, !tbaa !20
  %i.gj = call i32 %i.gf(ptr noundef %i.gg, ptr noundef %i.gh, i32 noundef %i.gi) #7, !inline_history !39 ; 3 uses
  %i.gk = icmp slt i32 %i.gj, 0
  br i1 %i.gk, label %zip_read_lens.exit.thread.sink.split, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gl = icmp eq i32 %i.gj, 0
  br i1 %i.gl, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.gm = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i252.i = icmp eq i8 %i.gm, 0
  br i1 %.not.i252.i, label %bb.as, label %zip_read_lens.exit.thread.sink.split

bb.as:                                            ; preds = %bb.ar
  %i.gn = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  store i8 0, ptr %i.go, align 1, !tbaa !35
  %i.gp = load ptr, ptr %i.n, align 8, !tbaa !11
  store i8 0, ptr %i.gp, align 1, !tbaa !35
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.0.i250.i = phi i32 [ 2, %bb.as ], [ %i.gj, %bb.aq ]
  %i.gq = load ptr, ptr %i.n, align 8, !tbaa !11  ; 3 uses
  store ptr %i.gq, ptr %i.e, align 8, !tbaa !26
  %i.gr = zext nneg i32 %.0.i250.i to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gr ; 2 uses
  store ptr %i.gs, ptr %i.g, align 8, !tbaa !25
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph424.i
  %.3211.i = phi ptr [ %i.gq, %bb.at ], [ %.2210419.i, %.lr.ph424.i ] ; 2 uses
  %.3199.i = phi ptr [ %i.gs, %bb.at ], [ %.2198420.i, %.lr.ph424.i ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.3211.i, i64 1 ; 2 uses
  %i.gu = load i8, ptr %.3211.i, align 1, !tbaa !35
  %i.gv = zext i8 %i.gu to i32
  %i.gw = shl nuw nsw i32 %i.gv, %.1178422.i
  %i.gx = or i32 %i.gw, %.1185421.i               ; 2 uses
  %i.gy = add nuw nsw i32 %.1178422.i, 8          ; 2 uses
  %i.gz = icmp slt i32 %.1178422.i, -3
  br i1 %i.gz, label %.lr.ph424.i, label %._crit_edge425.i

._crit_edge425.i:                                 ; preds = %bb.au, %._crit_edge.i
  %.2210.lcssa.i = phi ptr [ %.0208.lcssa.i, %._crit_edge.i ], [ %i.gt, %bb.au ] ; 2 uses
  %.2198.lcssa.i = phi ptr [ %.0196.lcssa.i, %._crit_edge.i ], [ %.3199.i, %bb.au ] ; 2 uses
  %.1185.lcssa.i = phi i32 [ %i.fz, %._crit_edge.i ], [ %i.gx, %bb.au ] ; 2 uses
  %.1178.lcssa.i = phi i32 [ %i.ga, %._crit_edge.i ], [ %i.gy, %bb.au ] ; 2 uses
  %i.ha = and i32 %.1185.lcssa.i, 31              ; 4 uses
  %i.hb = lshr i32 %.1185.lcssa.i, 5              ; 2 uses
  %i.hc = add nsw i32 %.1178.lcssa.i, -5          ; 2 uses
  %i.hd = add nuw nsw i32 %i.ha, 1                ; 2 uses
  %i.he = icmp slt i32 %.1178.lcssa.i, 9
  br i1 %i.he, label %.lr.ph435.i, label %._crit_edge436.i

.lr.ph435.i:                                      ; preds = %._crit_edge425.i, %bb.ba
  %.2179433.i = phi i32 [ %i.ia, %bb.ba ], [ %i.hc, %._crit_edge425.i ] ; 3 uses
  %.2186432.i = phi i32 [ %i.hz, %bb.ba ], [ %i.hb, %._crit_edge425.i ]
  %.4200431.i = phi ptr [ %.5201.i, %bb.ba ], [ %.2198.lcssa.i, %._crit_edge425.i ] ; 2 uses
  %.4212430.i = phi ptr [ %i.hv, %bb.ba ], [ %.2210.lcssa.i, %._crit_edge425.i ] ; 2 uses
  %.not244.i = icmp ult ptr %.4212430.i, %.4200431.i
  br i1 %.not244.i, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %.lr.ph435.i
  %i.hf = load ptr, ptr %0, align 8, !tbaa !17
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !33
  %i.hi = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.hj = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.hk = load i32, ptr %i.o, align 4, !tbaa !20
  %i.hl = call i32 %i.hh(ptr noundef %i.hi, ptr noundef %i.hj, i32 noundef %i.hk) #7, !inline_history !39 ; 3 uses
  %i.hm = icmp slt i32 %i.hl, 0
  br i1 %i.hm, label %zip_read_lens.exit.thread.sink.split, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hn = icmp eq i32 %i.hl, 0
  br i1 %i.hn, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.ho = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i256.i = icmp eq i8 %i.ho, 0
  br i1 %.not.i256.i, label %bb.ay, label %zip_read_lens.exit.thread.sink.split

bb.ay:                                            ; preds = %bb.ax
  %i.hp = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  store i8 0, ptr %i.hq, align 1, !tbaa !35
  %i.hr = load ptr, ptr %i.n, align 8, !tbaa !11
  store i8 0, ptr %i.hr, align 1, !tbaa !35
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.aw
  %.0.i254.i = phi i32 [ 2, %bb.ay ], [ %i.hl, %bb.aw ]
  %i.hs = load ptr, ptr %i.n, align 8, !tbaa !11  ; 3 uses
  store ptr %i.hs, ptr %i.e, align 8, !tbaa !26
  %i.ht = zext nneg i32 %.0.i254.i to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.ht ; 2 uses
  store ptr %i.hu, ptr %i.g, align 8, !tbaa !25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph435.i
  %.5213.i = phi ptr [ %i.hs, %bb.az ], [ %.4212430.i, %.lr.ph435.i ] ; 2 uses
  %.5201.i = phi ptr [ %i.hu, %bb.az ], [ %.4200431.i, %.lr.ph435.i ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.5213.i, i64 1 ; 2 uses
  %i.hw = load i8, ptr %.5213.i, align 1, !tbaa !35
  %i.hx = zext i8 %i.hw to i32
  %i.hy = shl nuw nsw i32 %i.hx, %.2179433.i
  %i.hz = or i32 %i.hy, %.2186432.i               ; 2 uses
  %i.ia = add nuw nsw i32 %.2179433.i, 8          ; 2 uses
  %i.ib = icmp slt i32 %.2179433.i, -4
  br i1 %i.ib, label %.lr.ph435.i, label %._crit_edge436.i

._crit_edge436.i:                                 ; preds = %bb.ba, %._crit_edge425.i
  %.4212.lcssa.i = phi ptr [ %.2210.lcssa.i, %._crit_edge425.i ], [ %i.hv, %bb.ba ]
  %.4200.lcssa.i = phi ptr [ %.2198.lcssa.i, %._crit_edge425.i ], [ %.5201.i, %bb.ba ]
  %.2186.lcssa.i = phi i32 [ %i.hb, %._crit_edge425.i ], [ %i.hz, %bb.ba ] ; 4 uses
  %.2179.lcssa.i = phi i32 [ %i.hc, %._crit_edge425.i ], [ %i.ia, %bb.ba ]
  %i.ic = and i32 %.2186.lcssa.i, 15              ; 2 uses
  %i.id = lshr i32 %.2186.lcssa.i, 4
  %i.ie = add nsw i32 %.2179.lcssa.i, -4
  %i.if = add nuw nsw i32 %i.ic, 4
  %wide.trip.count.i = zext nneg i32 %i.if to i64 ; 3 uses
  br label %.preheader301.i

.preheader301.i:                                  ; preds = %._crit_edge446.i, %._crit_edge436.i
  %indvars.iv.i = phi i64 [ 0, %._crit_edge436.i ], [ %indvars.iv.next.i, %._crit_edge446.i ] ; 2 uses
  %.3180454.i = phi i32 [ %i.ie, %._crit_edge436.i ], [ %i.jv, %._crit_edge446.i ] ; 3 uses
  %.3187453.i = phi i32 [ %i.id, %._crit_edge436.i ], [ %i.ju, %._crit_edge446.i ] ; 2 uses
  %.6202452.i = phi ptr [ %.4200.lcssa.i, %._crit_edge436.i ], [ %.7203.lcssa.i, %._crit_edge446.i ] ; 2 uses
  %.6214451.i = phi ptr [ %.4212.lcssa.i, %._crit_edge436.i ], [ %.7215.lcssa.i, %._crit_edge446.i ] ; 2 uses
  %i.ig = icmp slt i32 %.3180454.i, 3
  br i1 %i.ig, label %.lr.ph445.i, label %._crit_edge446.i

.preheader300.i:                                  ; preds = %._crit_edge446.i
  %.not576.i = icmp eq i32 %i.ic, 15
  br i1 %.not576.i, label %._crit_edge458.i, label %.lr.ph457.i.preheader

.lr.ph457.i.preheader:                            ; preds = %.preheader300.i
  %i.ih = and i32 %.2186.lcssa.i, 15
  %i.ii = and i32 %.2186.lcssa.i, 3               ; 2 uses
  %i.ij = zext nneg i32 %i.ii to i64
  %lcmp.mod.not = icmp eq i32 %i.ii, 3
  br i1 %lcmp.mod.not, label %.lr.ph457.i.prol.loopexit, label %.lr.ph457.i.prol

.lr.ph457.i.prol:                                 ; preds = %.lr.ph457.i.preheader, %.lr.ph457.i.prol
  %indvars.iv549.i.prol = phi i64 [ %indvars.iv.next550.i.prol, %.lr.ph457.i.prol ], [ %wide.trip.count.i, %.lr.ph457.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph457.i.prol ], [ 0, %.lr.ph457.i.preheader ]
  %indvars.iv.next550.i.prol = add nuw nsw i64 %indvars.iv549.i.prol, 1 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr @bitlen_order, i64 %indvars.iv549.i.prol
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !35
  %i.im = zext i8 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.im
  store i8 0, ptr %i.in, align 1, !tbaa !35
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %i.io = xor i64 %prol.iter.next, %i.ij
  %prol.iter.cmp.not = icmp eq i64 %i.io, 3
  br i1 %prol.iter.cmp.not, label %.lr.ph457.i.prol.loopexit, label %.lr.ph457.i.prol, !llvm.loop !40

.lr.ph457.i.prol.loopexit:                        ; preds = %.lr.ph457.i.prol, %.lr.ph457.i.preheader
  %indvars.iv549.i.unr = phi i64 [ %wide.trip.count.i, %.lr.ph457.i.preheader ], [ %indvars.iv.next550.i.prol, %.lr.ph457.i.prol ]
  %i.ip = add nsw i32 %i.ih, -12
  %i.iq = icmp ult i32 %i.ip, 3
  br i1 %i.iq, label %._crit_edge458.i, label %.lr.ph457.i

.lr.ph445.i:                                      ; preds = %.preheader301.i, %bb.bg
  %.4181444.i = phi i32 [ %i.jm, %bb.bg ], [ %.3180454.i, %.preheader301.i ] ; 3 uses
  %.4188443.i = phi i32 [ %i.jl, %bb.bg ], [ %.3187453.i, %.preheader301.i ]
  %.7203442.i = phi ptr [ %.8204.i, %bb.bg ], [ %.6202452.i, %.preheader301.i ] ; 2 uses
  %.7215441.i = phi ptr [ %i.jh, %bb.bg ], [ %.6214451.i, %.preheader301.i ] ; 2 uses
  %.not242.i = icmp ult ptr %.7215441.i, %.7203442.i
  br i1 %.not242.i, label %bb.bg, label %bb.bb
end_hunk_0
