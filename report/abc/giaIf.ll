Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaIf?download=true
inline.NumInlined: 1199
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 85
begin_hunk_0_@Gia_ManConfigPrint:bb.a
  %putchar68 = tail call i32 @putchar(i32 %.sink104) ; 0 uses
  %i.am = trunc i64 %1 to i32
  %i.an = lshr i32 %i.am, 20
  %i.ao = and i32 %i.an, 7                        ; 2 uses
  switch i32 %i.ao, label %bb.h [
    i32 6, label %bb.g
    i32 7, label %.split.2
  ]

bb.g:                                             ; preds = %.split.1
  br label %.split.2

bb.h:                                             ; preds = %.split.1
  %i.ap = add nuw nsw i32 %i.ao, 97
  br label %.split.2

.split.2:                                         ; preds = %.split.1, %bb.h, %bb.g
  %.sink105 = phi i32 [ %i.ap, %bb.h ], [ 48, %bb.g ], [ 63, %.split.1 ]
  %putchar67.1 = tail call i32 @putchar(i32 %.sink105) ; 0 uses
  %i.aq = trunc i64 %1 to i32
  %i.ar = lshr i32 %i.aq, 24
  %i.as = and i32 %i.ar, 7                        ; 2 uses
  switch i32 %i.as, label %bb.j [
    i32 6, label %bb.i
    i32 7, label %.split.3
  ]

bb.i:                                             ; preds = %.split.2
  br label %.split.3

bb.j:                                             ; preds = %.split.2
  %i.at = add nuw nsw i32 %i.as, 97
  br label %.split.3

.split.3:                                         ; preds = %.split.2, %bb.j, %bb.i
  %.sink106 = phi i32 [ %i.at, %bb.j ], [ 48, %bb.i ], [ 63, %.split.2 ]
  %putchar67.2 = tail call i32 @putchar(i32 %.sink106) ; 0 uses
  %i.au = trunc i64 %1 to i32
  %i.av = lshr i32 %i.au, 28
  %i.aw = and i32 %i.av, 7                        ; 2 uses
  switch i32 %i.aw, label %bb.l [
    i32 6, label %bb.k
    i32 7, label %.split76.us
  ]

bb.k:                                             ; preds = %.split.3
  br label %.split76.us

bb.l:                                             ; preds = %.split.3
  %i.ax = add nuw nsw i32 %i.aw, 97
  br label %.split76.us

.split76.us:                                      ; preds = %.split.us.preheader, %.split.3, %bb.k, %bb.l
  %.sink107 = phi i32 [ %spec.select133, %.split.us.preheader ], [ 48, %bb.k ], [ %i.ax, %bb.l ], [ 63, %.split.3 ]
  %putchar68.3 = tail call i32 @putchar(i32 %.sink107) ; 0 uses
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51) ; 0 uses
  %i.az = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i64 noundef %i.o) ; 0 uses
  %i.ba = lshr i64 %1, 48
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 7                        ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 6
  %or.cond3 = and i1 %i.q, %i.bd
  %i.be = add nuw nsw i32 %i.bc, 97
  %.sink108 = select i1 %or.cond3, i32 48, i32 %i.be
  %putchar65 = tail call i32 @putchar(i32 %.sink108) ; 0 uses
  %i.bf = lshr i64 %1, 52
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 7                        ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 6
  %or.cond3.1 = and i1 %i.q, %i.bi
  %i.bj = add nuw nsw i32 %i.bh, 97
  %.sink109 = select i1 %or.cond3.1, i32 48, i32 %i.bj
  %putchar66.1 = tail call i32 @putchar(i32 %.sink109) ; 0 uses
  %i.bk = lshr i64 %1, 56
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = and i32 %i.bl, 7                        ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 6
  %or.cond3.2 = and i1 %i.q, %i.bn
  %i.bo = add nuw nsw i32 %i.bm, 97
  %.sink110 = select i1 %or.cond3.2, i32 48, i32 %i.bo
  %putchar66.2 = tail call i32 @putchar(i32 %.sink110) ; 0 uses
  %i.bp = lshr i64 %1, 60                         ; 2 uses
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = icmp eq i64 %i.bp, 6
  %or.cond3.3 = and i1 %i.q, %i.br
  %i.bs = add nuw nsw i32 %i.bq, 97
  %.sink111 = select i1 %or.cond3.3, i32 48, i32 %i.bs
  %putchar66.3 = tail call i32 @putchar(i32 %.sink111) ; 0 uses
  %puts63 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.bt = trunc nuw i64 %i.m to i32
  call void @If_PermUnpack(i32 noundef %i.bt, ptr noundef nonnull %i.a) #29
  %i.bu = and i64 %1, 65535
  %i.bv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, i64 noundef %i.bu) ; 0 uses
  %i.bw = load i32, ptr %i.a, align 16, !tbaa !19 ; 3 uses
  %i.bx = icmp eq i32 %i.bw, 9
  %i.by = icmp slt i32 %i.bw, 9
  %i.bz = add nsw i32 %i.bw, 97
  %spec.select124 = select i1 %i.by, i32 %i.bz, i32 63
  %.sink112 = select i1 %i.bx, i32 48, i32 %spec.select124
  %putchar62 = call i32 @putchar(i32 %.sink112)   ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !19 ; 3 uses
  %i.cc = icmp eq i32 %i.cb, 9
  %i.cd = icmp slt i32 %i.cb, 9
  %i.ce = add nsw i32 %i.cb, 97
  %spec.select125 = select i1 %i.cd, i32 %i.ce, i32 63
  %.sink113 = select i1 %i.cc, i32 48, i32 %spec.select125
  %putchar62.1 = call i32 @putchar(i32 %.sink113) ; 0 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !19 ; 3 uses
  %i.ch = icmp eq i32 %i.cg, 9
  %i.ci = icmp slt i32 %i.cg, 9
  %i.cj = add nsw i32 %i.cg, 97
  %spec.select126 = select i1 %i.ci, i32 %i.cj, i32 63
  %.sink114 = select i1 %i.ch, i32 48, i32 %spec.select126
  %putchar62.2 = call i32 @putchar(i32 %.sink114) ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !19 ; 3 uses
  %i.cm = icmp eq i32 %i.cl, 9
  %i.cn = icmp slt i32 %i.cl, 9
  %i.co = add nsw i32 %i.cl, 97
  %spec.select127 = select i1 %i.cn, i32 %i.co, i32 63
  %.sink115 = select i1 %i.cm, i32 48, i32 %spec.select127
  %putchar62.3 = call i32 @putchar(i32 %.sink115) ; 0 uses
  %i.cp = lshr i64 %1, 16
  %i.cq = and i64 %i.cp, 65535
  %i.cr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51) ; 0 uses
  %i.cs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i64 noundef %i.cq) ; 0 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cu = load i32, ptr %i.ct, align 16, !tbaa !19 ; 3 uses
  %i.cv = icmp eq i32 %i.cu, 9
  %i.cw = icmp slt i32 %i.cu, 9
  %i.cx = add nsw i32 %i.cu, 97
  %spec.select128 = select i1 %i.cw, i32 %i.cx, i32 63
  %.sink116 = select i1 %i.cv, i32 48, i32 %spec.select128
  %putchar59 = call i32 @putchar(i32 %.sink116)   ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !19 ; 3 uses
  %i.da = icmp eq i32 %i.cz, 9
  %i.db = icmp slt i32 %i.cz, 9
  %i.dc = add nsw i32 %i.cz, 97
  %spec.select129 = select i1 %i.db, i32 %i.dc, i32 63
  %.sink117 = select i1 %i.da, i32 48, i32 %spec.select129
  %putchar59.1 = call i32 @putchar(i32 %.sink117) ; 0 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !19 ; 3 uses
  %i.df = icmp eq i32 %i.de, 9
  %i.dg = icmp slt i32 %i.de, 9
  %i.dh = add nsw i32 %i.de, 97
  %spec.select130 = select i1 %i.dg, i32 %i.dh, i32 63
  %.sink118 = select i1 %i.df, i32 48, i32 %spec.select130
  %putchar59.2 = call i32 @putchar(i32 %.sink118) ; 0 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !19 ; 3 uses
  %i.dk = icmp eq i32 %i.dj, 9
  %i.dl = icmp slt i32 %i.dj, 9
  %i.dm = add nsw i32 %i.dj, 97
  %spec.select131 = select i1 %i.dl, i32 %i.dm, i32 63
  %.sink119 = select i1 %i.dk, i32 48, i32 %spec.select131
  %putchar59.3 = call i32 @putchar(i32 %.sink119) ; 0 uses
  %i.dn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51) ; 0 uses
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57) ; 0 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dq = load i32, ptr %i.dp, align 16, !tbaa !19 ; 3 uses
  %i.dr = icmp eq i32 %i.dq, 9
  %i.ds = icmp slt i32 %i.dq, 9
  %i.dt = add nsw i32 %i.dq, 97
  %spec.select132 = select i1 %i.ds, i32 %i.dt, i32 63
  %.sink120 = select i1 %i.dr, i32 48, i32 %spec.select132
  %putchar55 = call i32 @putchar(i32 %.sink120)   ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.n

bb.n:                                             ; preds = %.split76.us, %bb.m, %._crit_edge
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Gia_ManConfigPrint2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !63      ; 2 uses
  %i.b = load i32, ptr @Gia_ManConfigPrint2.Count, align 4, !tbaa !19 ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr @Gia_ManConfigPrint2.Count, align 4, !tbaa !19
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, i32 noundef %i.b) ; 0 uses
  %i.e = zext i8 %i.a to i32                      ; 2 uses
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.e, i32 noundef %1) ; 0 uses
  switch i8 %i.a, label %bb.bg [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.ae
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5
  %2 = load i16, ptr %i.g, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %i.h = zext i16 %3 to i64
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.61, i64 noundef %i.h) ; 0 uses
  %i.j = icmp sgt i32 %1, 0
  br i1 %i.j, label %.lr.ph, label %.lr.ph111.preheader

.preheader:                                       ; preds = %.lr.ph
  %i.k = icmp samesign ult i32 %1, 4
  br i1 %i.k, label %.lr.ph111.preheader, label %._crit_edge

.lr.ph111.preheader:                              ; preds = %bb.b, %.preheader
  %.1110.ph = phi i32 [ 0, %bb.b ], [ %1, %.preheader ]
  br label %.lr.ph111

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0109 = phi i32 [ %i.m, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %i.l = add nuw nsw i32 %.0109, 97
  %putchar104 = tail call i32 @putchar(i32 %i.l)  ; 0 uses
  %i.m = add nuw nsw i32 %.0109, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.m, %1
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !298

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %.lr.ph111
  %.1110 = phi i32 [ %i.n, %.lr.ph111 ], [ %.1110.ph, %.lr.ph111.preheader ]
  %putchar103 = tail call i32 @putchar(i32 48)    ; 0 uses
  %i.n = add nuw i32 %.1110, 1                    ; 2 uses
  %exitcond116.not = icmp eq i32 %i.n, 4
  br i1 %exitcond116.not, label %._crit_edge, label %.lr.ph111, !llvm.loop !299

._crit_edge:                                      ; preds = %.lr.ph111, %.preheader
  %puts102 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %bb.bh

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i16, ptr %i.o, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %i.p = zext i16 %5 to i64
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i64 noundef %i.p) ; 0 uses
  %i.r = add nsw i32 %1, 2                        ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !63    ; 2 uses
  switch i8 %i.t, label %bb.e [
    i8 0, label %bb.f
    i8 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = icmp sgt i32 %i.r, %i.u
  %i.w = add nuw nsw i32 %i.u, 95
  %spec.select = select i1 %i.v, i32 %i.w, i32 63
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.d
  %.sink = phi i32 [ 49, %bb.d ], [ 48, %bb.c ], [ %spec.select, %bb.e ]
  %putchar100 = tail call i32 @putchar(i32 %.sink) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !63    ; 2 uses
  switch i8 %i.y, label %bb.h [
    i8 0, label %bb.g
    i8 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %i.aa = icmp sgt i32 %i.r, %i.z
  %i.ab = add nuw nsw i32 %i.z, 95
  %spec.select152 = select i1 %i.aa, i32 %i.ab, i32 63
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.g
  %.sink135 = phi i32 [ %spec.select152, %bb.h ], [ 49, %bb.f ], [ 48, %bb.g ]
  %putchar99.1 = tail call i32 @putchar(i32 %.sink135) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !63  ; 2 uses
  switch i8 %i.ad, label %bb.k [
    i8 0, label %bb.j
    i8 1, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %i.af = icmp sgt i32 %i.r, %i.ae
  %i.ag = add nuw nsw i32 %i.ae, 95
  %spec.select153 = select i1 %i.af, i32 %i.ag, i32 63
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.j
  %.sink136 = phi i32 [ %spec.select153, %bb.k ], [ 49, %bb.i ], [ 48, %bb.j ]
  %putchar99.2 = tail call i32 @putchar(i32 %.sink136) ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !63  ; 2 uses
  switch i8 %i.ai, label %bb.n [
    i8 0, label %bb.m
    i8 1, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aj = zext i8 %i.ai to i32                    ; 2 uses
  %i.ak = icmp sgt i32 %i.r, %i.aj
  %i.al = add nuw nsw i32 %i.aj, 95
  %spec.select154 = select i1 %i.ak, i32 %i.al, i32 63
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.m
  %.sink137 = phi i32 [ %spec.select154, %bb.n ], [ 49, %bb.l ], [ 48, %bb.m ]
  %putchar99.3 = tail call i32 @putchar(i32 %.sink137) ; 0 uses
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63) ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 10
  %6 = load i16, ptr %i.an, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %i.ao = zext i16 %7 to i64
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i64 noundef %i.ao) ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !63  ; 3 uses
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  switch i8 %i.ar, label %bb.q [
    i8 0, label %bb.t
    i8 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.at = icmp sgt i32 %i.r, %i.as
  br i1 %i.at, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.au = add nuw nsw i32 %i.as, 95
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.av = icmp eq i8 %i.ar, 9
  %. = select i1 %i.av, i32 104, i32 63
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o, %bb.p, %bb.r
  %.sink138 = phi i32 [ 49, %bb.p ], [ %., %bb.s ], [ 48, %bb.o ], [ %i.au, %bb.r ]
  %putchar96 = tail call i32 @putchar(i32 %.sink138) ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !63  ; 3 uses
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  switch i8 %i.ax, label %bb.v [
    i8 0, label %bb.u
    i8 1, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.az = icmp sgt i32 %i.r, %i.ay
  br i1 %i.az, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = icmp eq i8 %i.ax, 9
  %.150 = select i1 %i.ba, i32 104, i32 63
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bb = add nuw nsw i32 %i.ay, 95
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.t, %bb.x, %bb.u
  %.sink139 = phi i32 [ %i.bb, %bb.x ], [ 49, %bb.t ], [ %.150, %bb.w ], [ 48, %bb.u ]
  %putchar95.1 = tail call i32 @putchar(i32 %.sink139) ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !63  ; 3 uses
  %i.be = zext i8 %i.bd to i32                    ; 2 uses
  switch i8 %i.bd, label %bb.aa [
    i8 0, label %bb.z
    i8 1, label %bb.ad
  ]

bb.z:                                             ; preds = %bb.y
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.bf = icmp sgt i32 %i.r, %i.be
  br i1 %i.bf, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bg = icmp eq i8 %i.bd, 9
  %.151 = select i1 %i.bg, i32 104, i32 63
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.bh = add nuw nsw i32 %i.be, 95
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.y, %bb.ac, %bb.z
  %.sink140 = phi i32 [ %i.bh, %bb.ac ], [ 49, %bb.y ], [ %.151, %bb.ab ], [ 48, %bb.z ]
  %putchar95.2 = tail call i32 @putchar(i32 %.sink140) ; 0 uses
  %puts92 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  br label %bb.bh

bb.ae:                                            ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 10
  %8 = load i16, ptr %i.bi, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %i.bj = zext i16 %9 to i64
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, i64 noundef %i.bj) ; 0 uses
  %i.bl = add nsw i32 %1, 2                       ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !63  ; 2 uses
  switch i8 %i.bn, label %bb.ag [
    i8 0, label %bb.ah
    i8 1, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = icmp sgt i32 %i.bl, %i.bo
  %i.bq = add nuw nsw i32 %i.bo, 95
  %spec.select155 = select i1 %i.bp, i32 %i.bq, i32 63
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae, %bb.af
  %.sink141 = phi i32 [ 49, %bb.af ], [ 48, %bb.ae ], [ %spec.select155, %bb.ag ]
  %putchar90 = tail call i32 @putchar(i32 %.sink141) ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !63  ; 2 uses
  switch i8 %i.bs, label %bb.aj [
    i8 0, label %bb.ai
    i8 1, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.ah
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %i.bu = icmp sgt i32 %i.bl, %i.bt
  %i.bv = add nuw nsw i32 %i.bt, 95
  %spec.select156 = select i1 %i.bu, i32 %i.bv, i32 63
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.ai
  %.sink142 = phi i32 [ %spec.select156, %bb.aj ], [ 49, %bb.ah ], [ 48, %bb.ai ]
  %putchar89.1 = tail call i32 @putchar(i32 %.sink142) ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !63  ; 2 uses
  switch i8 %i.bx, label %bb.am [
    i8 0, label %bb.al
    i8 1, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = icmp sgt i32 %i.bl, %i.by
  %i.ca = add nuw nsw i32 %i.by, 95
  %spec.select157 = select i1 %i.bz, i32 %i.ca, i32 63
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak, %bb.al
  %.sink143 = phi i32 [ %spec.select157, %bb.am ], [ 49, %bb.ak ], [ 48, %bb.al ]
  %putchar89.2 = tail call i32 @putchar(i32 %.sink143) ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !63  ; 2 uses
  switch i8 %i.cc, label %bb.ap [
    i8 0, label %bb.ao
    i8 1, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = icmp sgt i32 %i.bl, %i.cd
  %i.cf = add nuw nsw i32 %i.cd, 95
  %spec.select158 = select i1 %i.ce, i32 %i.cf, i32 63
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an, %bb.ao
  %.sink144 = phi i32 [ %spec.select158, %bb.ap ], [ 49, %bb.an ], [ 48, %bb.ao ]
  %putchar89.3 = tail call i32 @putchar(i32 %.sink144) ; 0 uses
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63) ; 0 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 12
  %10 = load i16, ptr %i.ch, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %i.ci = zext i16 %11 to i64
  %i.cj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i64 noundef %i.ci) ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !63  ; 2 uses
  switch i8 %i.cl, label %bb.as [
    i8 0, label %bb.at
    i8 1, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.cm = zext i8 %i.cl to i32                    ; 2 uses
  %i.cn = icmp sgt i32 %i.bl, %i.cm
  %i.co = add nuw nsw i32 %i.cm, 95
  %spec.select159 = select i1 %i.cn, i32 %i.co, i32 63
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq, %bb.ar
  %.sink145 = phi i32 [ 49, %bb.ar ], [ 48, %bb.aq ], [ %spec.select159, %bb.as ]
  %putchar86 = tail call i32 @putchar(i32 %.sink145) ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !63  ; 2 uses
  switch i8 %i.cq, label %bb.av [
    i8 0, label %bb.au
    i8 1, label %bb.aw
  ]

bb.au:                                            ; preds = %bb.at
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.cr = zext i8 %i.cq to i32                    ; 2 uses
  %i.cs = icmp sgt i32 %i.bl, %i.cr
  %i.ct = add nuw nsw i32 %i.cr, 95
  %spec.select160 = select i1 %i.cs, i32 %i.ct, i32 63
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.at, %bb.au
  %.sink146 = phi i32 [ %spec.select160, %bb.av ], [ 49, %bb.at ], [ 48, %bb.au ]
  %putchar85.1 = tail call i32 @putchar(i32 %.sink146) ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !63  ; 2 uses
  switch i8 %i.cv, label %bb.ay [
    i8 0, label %bb.ax
    i8 1, label %bb.az
  ]

bb.ax:                                            ; preds = %bb.aw
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.cw = zext i8 %i.cv to i32                    ; 2 uses
  %i.cx = icmp sgt i32 %i.bl, %i.cw
  %i.cy = add nuw nsw i32 %i.cw, 95
  %spec.select161 = select i1 %i.cx, i32 %i.cy, i32 63
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.aw, %bb.ax
  %.sink147 = phi i32 [ %spec.select161, %bb.ay ], [ 49, %bb.aw ], [ 48, %bb.ax ]
  %putchar85.2 = tail call i32 @putchar(i32 %.sink147) ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !63  ; 2 uses
  switch i8 %i.da, label %bb.bb [
    i8 0, label %bb.ba
    i8 1, label %bb.bc
  ]

bb.ba:                                            ; preds = %bb.az
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.db = zext i8 %i.da to i32                    ; 2 uses
  %i.dc = icmp sgt i32 %i.bl, %i.db
  %i.dd = add nuw nsw i32 %i.db, 95
  %spec.select162 = select i1 %i.dc, i32 %i.dd, i32 63
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.az, %bb.ba
  %.sink148 = phi i32 [ %spec.select162, %bb.bb ], [ 49, %bb.az ], [ 48, %bb.ba ]
  %putchar85.3 = tail call i32 @putchar(i32 %.sink148) ; 0 uses
  %i.de = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63) ; 0 uses
  %i.df = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57) ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !63  ; 2 uses
  switch i8 %i.dh, label %bb.be [
    i8 0, label %bb.bf
    i8 1, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.di = zext i8 %i.dh to i32                    ; 2 uses
  %i.dj = icmp sgt i32 %i.bl, %i.di
  %i.dk = add nuw nsw i32 %i.di, 95
  %spec.select163 = select i1 %i.dj, i32 %i.dk, i32 63
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bc, %bb.bd
  %.sink149 = phi i32 [ 49, %bb.bd ], [ 48, %bb.bc ], [ %spec.select163, %bb.be ]
  %putchar82 = tail call i32 @putchar(i32 %.sink149) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.bh

bb.bg:                                            ; preds = %bb.a
  %i.dl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef %i.e) ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.ad, %bb.bg, %bb.bf, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_ManFromIfGetConfig2(ptr nofree noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [9 x i32], align 16               ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 4          ; 61 uses
  %.val121 = load i32, ptr %i.b, align 4, !tbaa !67
  %i.c = icmp slt i32 %3, 5
  %i.d = tail call i64 @If_CutPerformDeriveJ(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %3, ptr noundef null, i32 noundef 1, i32 noundef %4) #29 ; 50 uses
  br i1 %i.c, label %bb.b, label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.d, 4611686018427387904
  %.not119 = icmp eq i64 %i.e, 0                  ; 2 uses
  %i.f = load i64, ptr %2, align 8, !tbaa !110    ; 18 uses
  %i.g = load i32, ptr %i.b, align 4, !tbaa !67   ; 7 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !66
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %Vec_StrPush.exit

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i32 %i.g, 16
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.l, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.l, i64 noundef 16) #30
  br label %Vec_StrGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  br label %Vec_StrGrow.exit.i

Vec_StrGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.o = phi ptr [ %i.m, %bb.e ], [ %i.n, %bb.f ]
  store ptr %i.o, ptr %i.k, align 8, !tbaa !62
  br label %Vec_StrGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.p = icmp samesign ult i32 %i.g, 1073741823
  %i.q = shl nuw nsw i32 %i.g, 1
  %spec.select.i = select i1 %i.p, i32 %i.q, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.g, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_StrPush.exit

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.s, null
  %i.t = zext nneg i32 %spec.select.i to i64      ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = tail call ptr @realloc(ptr noundef nonnull %i.s, i64 noundef %i.t) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = phi ptr [ %i.u, %bb.i ], [ %i.v, %bb.j ]
  store ptr %i.w, ptr %i.r, align 8, !tbaa !62
  br label %Vec_StrGrow.exit11.sink.split.i

Vec_StrGrow.exit11.sink.split.i:                  ; preds = %bb.k, %Vec_StrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_StrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %0, align 8, !tbaa !66
  %.pre406 = load i32, ptr %i.b, align 4, !tbaa !67
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_StrGrow.exit11.sink.split.i
  %i.x = phi i32 [ %i.g, %bb.b ], [ %i.g, %bb.g ], [ %.pre406, %Vec_StrGrow.exit11.sink.split.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !62
  %i.aa = add nsw i32 %i.x, 1
  store i32 %i.aa, ptr %i.b, align 4, !tbaa !67
  %i.ab = sext i32 %i.x to i64
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.ab
  store i8 0, ptr %i.ac, align 1, !tbaa !63
  %i.ad = icmp sgt i32 %3, 0                      ; 2 uses
  br i1 %i.ad, label %.lr.ph323.preheader, label %.lr.ph326.preheader

end_hunk_0
begin_hunk_1_@Abc_TtDeriveBiDecOne:bb.a
  %i.fx = icmp eq i64 %index.next140, %n.vec133
  br i1 %i.fx, label %._crit_edge.us.i.us.us.us.us.i, label %vector.body134, !llvm.loop !499

scalar.ph130:                                     ; preds = %scalar.ph130.preheader, %scalar.ph130
  %indvars.iv.i.us.us.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.us.us.i.1, %scalar.ph130 ], [ 0, %scalar.ph130.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph130 ], [ 0, %scalar.ph130.preheader ]
  %gep.i.us.us.us.us.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i ; 2 uses
  %i.fy = load i64, ptr %gep.i.us.us.us.us.i, align 8, !tbaa !110
  %gep81.i.us.us.us.us.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i ; 2 uses
  %i.fz = load i64, ptr %gep81.i.us.us.us.us.i, align 8, !tbaa !110
  store i64 %i.fz, ptr %gep.i.us.us.us.us.i, align 8, !tbaa !110
  store i64 %i.fy, ptr %gep81.i.us.us.us.us.i, align 8, !tbaa !110
  %indvars.iv.next.i.us.us.us.us.i = or disjoint i64 %indvars.iv.i.us.us.us.us.i, 1 ; 2 uses
  %gep.i.us.us.us.us.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %indvars.iv.next.i.us.us.us.us.i ; 2 uses
  %i.ga = load i64, ptr %gep.i.us.us.us.us.i.1, align 8, !tbaa !110
  %gep81.i.us.us.us.us.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.next.i.us.us.us.us.i ; 2 uses
  %i.gb = load i64, ptr %gep81.i.us.us.us.us.i.1, align 8, !tbaa !110
  store i64 %i.gb, ptr %gep.i.us.us.us.us.i.1, align 8, !tbaa !110
  store i64 %i.ga, ptr %gep81.i.us.us.us.us.i.1, align 8, !tbaa !110
  %indvars.iv.next.i.us.us.us.us.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa, label %scalar.ph130, !llvm.loop !500

._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa: ; preds = %scalar.ph130
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.us.us.us.us.i, label %scalar.ph130.epil.preheader

scalar.ph130.epil.preheader:                      ; preds = %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa, %scalar.ph130.preheader
  %indvars.iv.i.us.us.us.us.i.epil.init = phi i64 [ 0, %scalar.ph130.preheader ], [ %indvars.iv.next.i.us.us.us.us.i.1, %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod150)
  %gep.i.us.us.us.us.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i.epil.init ; 2 uses
  %i.gc = load i64, ptr %gep.i.us.us.us.us.i.epil, align 8, !tbaa !110
  %gep81.i.us.us.us.us.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i.epil.init ; 2 uses
  %i.gd = load i64, ptr %gep81.i.us.us.us.us.i.epil, align 8, !tbaa !110
  store i64 %i.gd, ptr %gep.i.us.us.us.us.i.epil, align 8, !tbaa !110
  store i64 %i.gc, ptr %gep81.i.us.us.us.us.i.epil, align 8, !tbaa !110
  br label %._crit_edge.us.i.us.us.us.us.i

._crit_edge.us.i.us.us.us.us.i:                   ; preds = %vector.body134, %scalar.ph130.epil.preheader, %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i, i64 %i.ex ; 2 uses
  %i.gf = icmp ult ptr %i.ge, %i.ej
  br i1 %i.gf, label %.preheader.us.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, !llvm.loop !501

.lr.ph.i.us.us.us.us.i:                           ; preds = %bb.g, %.lr.ph.i.us.us.us.us.i
  %.05462.i.us.us.us.us.i = phi ptr [ %i.gj, %.lr.ph.i.us.us.us.us.i ], [ %i.c, %bb.g ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i, i64 4 ; 2 uses
  %i.gh = load <2 x i32>, ptr %i.gg, align 4, !tbaa !19
  %i.gi = shufflevector <2 x i32> %i.gh, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.gi, ptr %i.gg, align 4, !tbaa !19
  %i.gj = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i, i64 16 ; 2 uses
  %i.gk = icmp ult ptr %i.gj, %i.ej
  br i1 %i.gk, label %.lr.ph.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, !llvm.loop !502

.lr.ph64.i.us.us.us.us.i:                         ; preds = %.lr.ph.us.us.i
  %i.gl = trunc nsw i64 %indvars.iv.next104.i to i32
  %i.gm = shl nuw nsw i32 1, %i.gl
  %i.gn = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %indvars.iv.next104.i ; 3 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !110 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !110 ; 2 uses
  %i.gr = zext nneg i32 %i.gm to i64              ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !110 ; 2 uses
  br i1 %min.iters.check105, label %scalar.ph104.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %.lr.ph64.i.us.us.us.us.i
  %broadcast.splatinsert108 = insertelement <2 x i64> poison, i64 %i.go, i64 0
  %broadcast.splat109 = shufflevector <2 x i64> %broadcast.splatinsert108, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert110 = insertelement <2 x i64> poison, i64 %i.gq, i64 0
  %broadcast.splat111 = shufflevector <2 x i64> %broadcast.splatinsert110, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert112 = insertelement <2 x i64> poison, i64 %i.gr, i64 0
  %broadcast.splat113 = shufflevector <2 x i64> %broadcast.splatinsert112, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert114 = insertelement <2 x i64> poison, i64 %i.gt, i64 0
  %broadcast.splat115 = shufflevector <2 x i64> %broadcast.splatinsert114, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph106
  %index117 = phi i64 [ 0, %vector.ph106 ], [ %index.next120, %vector.body116 ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index117 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %wide.load118 = load <2 x i64>, ptr %i.gu, align 16, !tbaa !110 ; 3 uses
  %wide.load119 = load <2 x i64>, ptr %i.gv, align 16, !tbaa !110 ; 3 uses
  %i.gw = and <2 x i64> %wide.load118, %broadcast.splat109
  %i.gx = and <2 x i64> %wide.load119, %broadcast.splat109
  %i.gy = and <2 x i64> %wide.load118, %broadcast.splat111
  %i.gz = and <2 x i64> %wide.load119, %broadcast.splat111
  %i.ha = shl <2 x i64> %i.gy, %broadcast.splat113
  %i.hb = shl <2 x i64> %i.gz, %broadcast.splat113
  %i.hc = or <2 x i64> %i.ha, %i.gw
  %i.hd = or <2 x i64> %i.hb, %i.gx
  %i.he = and <2 x i64> %wide.load118, %broadcast.splat115
  %i.hf = and <2 x i64> %wide.load119, %broadcast.splat115
  %i.hg = lshr <2 x i64> %i.he, %broadcast.splat113
  %i.hh = lshr <2 x i64> %i.hf, %broadcast.splat113
  %i.hi = or <2 x i64> %i.hc, %i.hg
  %i.hj = or <2 x i64> %i.hd, %i.hh
  store <2 x i64> %i.hi, ptr %i.gu, align 16, !tbaa !110
  store <2 x i64> %i.hj, ptr %i.gv, align 16, !tbaa !110
  %index.next120 = add nuw i64 %index117, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next120, %n.vec107
  br i1 %i.hk, label %middle.block121, label %vector.body116, !llvm.loop !503

middle.block121:                                  ; preds = %vector.body116
  br i1 %cmp.n122, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, label %scalar.ph104.preheader

scalar.ph104.preheader:                           ; preds = %.lr.ph64.i.us.us.us.us.i, %middle.block121
  %indvars.iv70.i.us.us.us.us.i.ph = phi i64 [ 0, %.lr.ph64.i.us.us.us.us.i ], [ %n.vec107, %middle.block121 ]
  br label %scalar.ph104

scalar.ph104:                                     ; preds = %scalar.ph104.preheader, %scalar.ph104
  %indvars.iv70.i.us.us.us.us.i = phi i64 [ %indvars.iv.next71.i.us.us.us.us.i, %scalar.ph104 ], [ %indvars.iv70.i.us.us.us.us.i.ph, %scalar.ph104.preheader ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv70.i.us.us.us.us.i ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !110 ; 3 uses
  %i.hn = and i64 %i.hm, %i.go
  %i.ho = and i64 %i.hm, %i.gq
  %i.hp = shl i64 %i.ho, %i.gr
  %i.hq = or i64 %i.hp, %i.hn
  %i.hr = and i64 %i.hm, %i.gt
  %i.hs = lshr i64 %i.hr, %i.gr
  %i.ht = or i64 %i.hq, %i.hs
  store i64 %i.ht, ptr %i.hl, align 8, !tbaa !110
  %indvars.iv.next71.i.us.us.us.us.i = add nuw nsw i64 %indvars.iv70.i.us.us.us.us.i, 1 ; 2 uses
  %exitcond74.not.i.us.us.us.us.i = icmp eq i64 %indvars.iv.next71.i.us.us.us.us.i, %wide.trip.count73.i.i
  br i1 %exitcond74.not.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, label %scalar.ph104, !llvm.loop !504

Abc_TtSwapAdjacent.exit.us.us.us.us.i:            ; preds = %._crit_edge.us.i.us.us.us.us.i, %.lr.ph.i.us.us.us.us.i, %scalar.ph104, %middle.block121, %.preheader.lr.ph.i.us.us.us.us.i
  %.not15.not.us.us.us.us.i = icmp sgt i64 %indvars.iv.next104.i, %i.en
  br i1 %.not15.not.us.us.us.us.i, label %.lr.ph.us.us.i, label %._crit_edge.split.us.us.split.us.us.i, !llvm.loop !505

._crit_edge.split.us.us.split.us.us.i:            ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.i, %.preheader.us.us.i
  %i.hu = add nsw i32 %.056.us.us.i, 1
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.split.us.us.split.us.us.i, %.lr.ph61.split.us.split.us.i
  %.1.us.us.i = phi i32 [ %i.hu, %._crit_edge.split.us.us.split.us.us.i ], [ %.056.us.us.i, %.lr.ph61.split.us.split.us.i ]
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 2 uses
  %exitcond108.not.i = icmp eq i64 %indvars.iv.next102.i, %wide.trip.count107.i
  br i1 %exitcond108.not.i, label %Abc_TtShrink.exit, label %.lr.ph61.split.us.split.us.i, !llvm.loop !506

Abc_TtShrink.exit:                                ; preds = %bb.h, %Abc_TtCopy.exit, %.lr.ph61.i
  %i.hv = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 range(i32 0, 65536) %2) ; 5 uses
  %i.hw = load i64, ptr %i.c, align 16, !tbaa !110 ; 7 uses
  %i.hx = icmp eq i32 %2, 0
  %i.hy = trunc i64 %i.hw to i1
  %i.hz = select i1 %i.hy, i64 3, i64 0
  %i.ia = icmp samesign ult i32 %i.hv, 2
  %i.ib = and i64 %i.hw, 3
  %i.ic = select i1 %i.hx, i64 %i.hz, i64 %i.ib
  %i.id = mul nuw nsw i64 %i.ic, 5
  %.126.i = select i1 %i.ia, i64 %i.id, i64 %i.hw
  %i.ie = icmp samesign ult i32 %i.hv, 3
  %i.if = and i64 %.126.i, 15
  %i.ig = mul nuw nsw i64 %i.if, 17
  %.227.i = select i1 %i.ie, i64 %i.ig, i64 %i.hw
  %i.ih = icmp samesign ult i32 %i.hv, 4
  %i.ii = and i64 %.227.i, 255
  %i.ij = mul nuw nsw i64 %i.ii, 257
  %.328.i = select i1 %i.ih, i64 %i.ij, i64 %i.hw
  %i.ik = icmp samesign ult i32 %i.hv, 5
  %i.il = and i64 %.328.i, 65535
  %i.im = mul nuw nsw i64 %i.il, 65537
  %.429.i = select i1 %i.ik, i64 %i.im, i64 %i.hw
  %i.in = icmp samesign ult i32 %i.hv, 6
  %i.io = and i64 %.429.i, 4294967295
  %i.ip = mul nuw i64 %i.io, 4294967297
  %.5.i = select i1 %i.in, i64 %i.ip, i64 %i.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  ret i64 %.5.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v14i16(<14 x i16>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v6i16(<6 x i16>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind allocsize(0,1) }
attributes #29 = { nounwind }
attributes #30 = { nounwind allocsize(1) }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { cold noreturn nounwind }

!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !52}
!1 = distinct !{!1, !52}
!2 = distinct !{!2, !52}
!3 = distinct !{!3, !52}
!4 = distinct !{!4, !52}
!5 = distinct !{!5, !52}
!6 = distinct !{!6, !52}
!7 = distinct !{!7, !52}
!8 = distinct !{!8, !52}
!9 = distinct !{!9, !52}
!10 = distinct !{!10, !52}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!14 = !{!"Simple C/C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!16, !16, i64 0}
!20 = !{!"float", !15, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"any pointer", !15, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!"p1 _ZTS12If_LibLut_t_", !22, i64 0}
!25 = !{!"p1 _ZTS13If_LibCell_t_", !22, i64 0}
!26 = !{!"p1 float", !22, i64 0}
!27 = !{!"If_Par_t_", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !20, i64 24, !20, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !16, i64 56, !16, i64 60, !16, i64 64, !16, i64 68, !16, i64 72, !16, i64 76, !16, i64 80, !16, i64 84, !16, i64 88, !16, i64 92, !16, i64 96, !16, i64 100, !16, i64 104, !16, i64 108, !16, i64 112, !16, i64 116, !16, i64 120, !16, i64 124, !16, i64 128, !16, i64 132, !16, i64 136, !16, i64 140, !16, i64 144, !16, i64 148, !16, i64 152, !16, i64 156, !16, i64 160, !16, i64 164, !16, i64 168, !16, i64 172, !16, i64 176, !16, i64 180, !16, i64 184, !16, i64 188, !16, i64 192, !16, i64 196, !16, i64 200, !16, i64 204, !23, i64 208, !16, i64 216, !20, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !16, i64 240, !16, i64 244, !16, i64 248, !16, i64 252, !16, i64 256, !16, i64 260, !16, i64 264, !16, i64 268, !16, i64 272, !16, i64 276, !20, i64 280, !20, i64 284, !20, i64 288, !24, i64 296, !25, i64 304, !26, i64 312, !26, i64 320, !22, i64 328, !22, i64 336, !22, i64 344, !22, i64 352, !22, i64 360, !22, i64 368}
!28 = !{!27, !16, i64 64}
!29 = !{!27, !16, i64 84}
!30 = !{!27, !23, i64 208}
!31 = !{!"p1 _ZTS10Gia_Obj_t_", !22, i64 0}
!32 = !{!"p1 int", !22, i64 0}
!33 = !{!"p1 _ZTS10Vec_Int_t_", !22, i64 0}
!34 = !{!"Vec_Int_t_", !16, i64 0, !16, i64 4, !32, i64 8}
!35 = !{!"p1 _ZTS10Gia_Rpr_t_", !22, i64 0}
!36 = !{!"p1 _ZTS10Vec_Wec_t_", !22, i64 0}
!37 = !{!"p1 _ZTS10Vec_Str_t_", !22, i64 0}
!38 = !{!"p1 _ZTS10Abc_Cex_t_", !22, i64 0}
!39 = !{!"p1 _ZTS10Vec_Ptr_t_", !22, i64 0}
!40 = !{!"p1 _ZTS10Gia_Plc_t_", !22, i64 0}
!41 = !{!"p1 _ZTS10Gia_Man_t_", !22, i64 0}
!42 = !{!"p1 _ZTS10Vec_Flt_t_", !22, i64 0}
!43 = !{!"p1 _ZTS10Vec_Vec_t_", !22, i64 0}
!44 = !{!"long", !15, i64 0}
!45 = !{!"p1 _ZTS10Vec_Wrd_t_", !22, i64 0}
!46 = !{!"p1 _ZTS10Vec_Bit_t_", !22, i64 0}
!47 = !{!"p1 _ZTS10Gia_Dat_t_", !22, i64 0}
!48 = !{!"Gia_Man_t_", !23, i64 0, !23, i64 8, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !31, i64 32, !32, i64 40, !16, i64 48, !16, i64 52, !16, i64 56, !33, i64 64, !33, i64 72, !34, i64 80, !34, i64 96, !16, i64 112, !16, i64 116, !16, i64 120, !34, i64 128, !32, i64 144, !32, i64 152, !33, i64 160, !16, i64 168, !16, i64 172, !16, i64 176, !16, i64 180, !32, i64 184, !35, i64 192, !32, i64 200, !32, i64 208, !32, i64 216, !16, i64 224, !16, i64 228, !32, i64 232, !16, i64 240, !33, i64 248, !33, i64 256, !33, i64 264, !36, i64 272, !36, i64 280, !33, i64 288, !22, i64 296, !33, i64 304, !33, i64 312, !37, i64 320, !23, i64 328, !33, i64 336, !33, i64 344, !33, i64 352, !33, i64 360, !33, i64 368, !38, i64 376, !38, i64 384, !39, i64 392, !34, i64 400, !34, i64 416, !33, i64 432, !33, i64 440, !33, i64 448, !33, i64 456, !33, i64 464, !33, i64 472, !33, i64 480, !33, i64 488, !33, i64 496, !33, i64 504, !33, i64 512, !23, i64 520, !40, i64 528, !41, i64 536, !42, i64 544, !42, i64 552, !33, i64 560, !33, i64 568, !33, i64 576, !33, i64 584, !33, i64 592, !16, i64 600, !20, i64 604, !20, i64 608, !33, i64 616, !32, i64 624, !16, i64 632, !39, i64 640, !39, i64 648, !39, i64 656, !33, i64 664, !33, i64 672, !33, i64 680, !33, i64 688, !33, i64 696, !33, i64 704, !33, i64 712, !33, i64 720, !33, i64 728, !43, i64 736, !42, i64 744, !22, i64 752, !22, i64 760, !22, i64 768, !44, i64 776, !44, i64 784, !22, i64 792, !32, i64 800, !16, i64 808, !16, i64 812, !16, i64 816, !16, i64 820, !16, i64 824, !16, i64 828, !16, i64 832, !16, i64 836, !16, i64 840, !16, i64 844, !16, i64 848, !16, i64 852, !45, i64 856, !45, i64 864, !45, i64 872, !45, i64 880, !33, i64 888, !33, i64 896, !33, i64 904, !46, i64 912, !16, i64 920, !16, i64 924, !16, i64 928, !33, i64 936, !16, i64 944, !16, i64 948, !33, i64 952, !33, i64 960, !39, i64 968, !45, i64 976, !33, i64 984, !33, i64 992, !16, i64 1000, !16, i64 1004, !45, i64 1008, !34, i64 1016, !34, i64 1032, !34, i64 1048, !47, i64 1064, !37, i64 1072, !37, i64 1080, !16, i64 1088, !16, i64 1092, !16, i64 1096, !16, i64 1100, !37, i64 1104, !33, i64 1112, !33, i64 1120, !33, i64 1128, !39, i64 1136}
!49 = !{!48, !16, i64 24}
!50 = !{!48, !33, i64 264}
!51 = !{!34, !32, i64 8}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!48, !33, i64 72}
!56 = !{!34, !16, i64 4}
!57 = !{!48, !31, i64 32}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!48, !22, i64 752}
!60 = !{!31, !31, i64 0}
!61 = !{!"Vec_Str_t_", !16, i64 0, !16, i64 4, !23, i64 8}
!62 = !{!61, !23, i64 8}
!63 = !{!15, !15, i64 0}
!64 = !{!34, !16, i64 0}
!65 = !{!48, !33, i64 64}
!66 = !{!61, !16, i64 0}
!67 = !{!61, !16, i64 4}
!68 = !{!48, !16, i64 176}
!69 = !{!48, !32, i64 624}
!70 = !{!48, !23, i64 0}
!71 = !{!48, !16, i64 16}
!72 = !{!"p1 _ZTS8_IO_FILE", !22, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!48, !33, i64 304}
!75 = !{!48, !33, i64 160}
!76 = !{!48, !32, i64 208}
!77 = !{!"p1 _ZTS9If_Obj_t_", !22, i64 0}
!78 = !{!"p1 _ZTS9If_Set_t_", !22, i64 0}
!79 = !{!"If_Cut_t_", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !44, i64 16, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 37, !16, i64 37, !16, i64 37, !16, i64 37, !16, i64 38, !16, i64 39, !16, i64 40, !15, i64 44}
!80 = !{!"If_Obj_t_", !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !77, i64 24, !77, i64 32, !77, i64 40, !20, i64 48, !20, i64 52, !20, i64 56, !15, i64 64, !78, i64 72, !79, i64 80}
!81 = !{!80, !77, i64 24}
!82 = !{!80, !77, i64 32}
!83 = !{!80, !77, i64 40}
!84 = !{!"p1 _ZTS9If_Par_t_", !22, i64 0}
!85 = !{!"p1 long", !22, i64 0}
!86 = !{!"p1 _ZTS12Mem_Fixed_t_", !22, i64 0}
!87 = !{!"p1 _ZTS12If_DsdMan_t_", !22, i64 0}
!88 = !{!"p1 _ZTS14Hash_IntMan_t_", !22, i64 0}
!89 = !{!"p1 _ZTS10Vec_Mem_t_", !22, i64 0}
!90 = !{!"p1 _ZTS9If_Cut_t_", !22, i64 0}
!91 = !{!"p1 _ZTS10Tim_Man_t_", !22, i64 0}
!92 = !{!"If_Man_t_", !23, i64 0, !84, i64 8, !77, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !15, i64 64, !16, i64 84, !20, i64 88, !20, i64 92, !20, i64 96, !20, i64 100, !16, i64 104, !20, i64 108, !16, i64 112, !16, i64 116, !15, i64 120, !85, i64 152, !16, i64 160, !16, i64 164, !16, i64 168, !33, i64 176, !15, i64 184, !16, i64 568, !16, i64 572, !16, i64 576, !33, i64 584, !33, i64 592, !45, i64 600, !45, i64 608, !45, i64 616, !39, i64 624, !33, i64 632, !16, i64 640, !16, i64 644, !16, i64 648, !15, i64 652, !16, i64 716, !16, i64 720, !16, i64 724, !16, i64 728, !86, i64 736, !86, i64 744, !78, i64 752, !78, i64 760, !78, i64 768, !16, i64 776, !16, i64 780, !15, i64 784, !15, i64 912, !16, i64 1040, !16, i64 1044, !16, i64 1048, !16, i64 1052, !87, i64 1056, !15, i64 1064, !15, i64 1192, !15, i64 1320, !15, i64 1448, !15, i64 1576, !15, i64 1704, !15, i64 1832, !88, i64 1960, !33, i64 1968, !37, i64 1976, !89, i64 1984, !15, i64 1992, !16, i64 2024, !16, i64 2028, !16, i64 2032, !15, i64 2040, !15, i64 2088, !15, i64 2096, !33, i64 2104, !15, i64 2112, !39, i64 2176, !22, i64 2184, !33, i64 2192, !15, i64 2200, !37, i64 2264, !33, i64 2272, !33, i64 2280, !33, i64 2288, !77, i64 2296, !90, i64 2304, !16, i64 2312, !15, i64 2316, !15, i64 2444, !20, i64 2572, !16, i64 2576, !91, i64 2584, !33, i64 2592, !15, i64 2600, !15, i64 2608, !15, i64 2616, !86, i64 2632}
!93 = !{!92, !39, i64 40}
!94 = !{!"any p2 pointer", !22, i64 0}
!95 = !{!"Vec_Ptr_t_", !16, i64 0, !16, i64 4, !94, i64 8}
!96 = !{!95, !16, i64 4}
!97 = !{!92, !39, i64 32}
!98 = !{!95, !94, i64 8}
!99 = !{!22, !22, i64 0}
!100 = !{!92, !23, i64 0}
!101 = !{!80, !16, i64 4}
!102 = !{!"Gia_Obj_t_", !16, i64 0, !16, i64 3, !16, i64 3, !16, i64 3, !16, i64 4, !16, i64 7, !16, i64 7, !16, i64 7, !16, i64 8}
!103 = !{!102, !16, i64 8}
!104 = !{!48, !32, i64 232}
!105 = !{!80, !16, i64 12}
!106 = !{!92, !84, i64 8}
!107 = !{!27, !16, i64 88}
!108 = !{!27, !16, i64 100}
!109 = !{!27, !16, i64 104}
!110 = !{!44, !44, i64 0}
!111 = !{!85, !85, i64 0}
!112 = !{!92, !85, i64 152}
!113 = !{!89, !89, i64 0}
!114 = !{!79, !16, i64 24}
!115 = !{!"p2 long", !94, i64 0}
!116 = !{!"Vec_Mem_t_", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !115, i64 24, !33, i64 32, !33, i64 40}
!117 = !{!116, !115, i64 24}
!118 = !{!116, !16, i64 8}
!119 = !{!116, !16, i64 0}
!120 = !{!116, !16, i64 12}
!121 = !{!27, !16, i64 48}
!122 = !{!27, !16, i64 92}
!123 = !{!79, !16, i64 28}
!124 = !{!92, !87, i64 1056}
!125 = !{!33, !33, i64 0}
!126 = !{!37, !37, i64 0}
!127 = !{!27, !16, i64 204}
!128 = !{!27, !16, i64 176}
!129 = !{!27, !16, i64 128}
!130 = !{!27, !16, i64 164}
!131 = !{!27, !16, i64 108}
!132 = !{!27, !16, i64 148}
!133 = !{!27, !16, i64 0}
!134 = !{!27, !16, i64 232}
!135 = !{!27, !22, i64 352}
!136 = !{!79, !20, i64 12}
end_hunk_1
