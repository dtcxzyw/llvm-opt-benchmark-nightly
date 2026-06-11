inline.NumInlined: 36
inline.NumDeleted: 14
begin_hunk_0_@Vertical_Sweep_Drop:bb.a
  %i.d = add i64 %2, -1
  %i.e = add i64 %i.d, %i.c
  %i.f = sub nsw i32 0, %i.b
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  %i.h = and i64 %i.e, %i.g                       ; 6 uses
  %i.i = and i64 %3, %i.g                         ; 6 uses
  %i.j = icmp sgt i64 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre83 = load i32, ptr %0, align 8, !tbaa !85
  %.pre84 = zext nneg i32 %.pre83 to i64
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load i16, ptr %i.k, align 8, !tbaa !103  ; 3 uses
  %i.m = and i16 %i.l, 7                          ; 2 uses
  %i.n = add nsw i64 %i.i, %i.c
  %i.o = icmp eq i64 %i.h, %i.n
  br i1 %i.o, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  switch i16 %i.m, label %.thread [
    i16 0, label %bb.o
    i16 4, label %bb.d
    i16 1, label %bb.e
    i16 5, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %3, %2
  %i.q = mul nsw i32 %i.b, 63
  %i.r = sdiv i32 %i.q, 64
  %i.s = sext i32 %i.r to i64
  %i.t = add nsw i64 %i.p, %i.s
  %i.u = ashr i64 %i.t, 1
  %i.v = and i64 %i.u, %i.g
  br label %bb.o

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !105
  %i.y = icmp eq ptr %i.x, %5
  br i1 %i.y, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !106
  %i.ab = icmp slt i64 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ac = and i16 %i.l, 16
  %.not = icmp eq i16 %i.ac, 0
  br i1 %.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = sub nsw i64 %3, %2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !89
  %i.ag = sext i32 %i.af to i64
  %.not76 = icmp slt i64 %i.ad, %i.ag
  br i1 %.not76, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !105
  %i.aj = icmp eq ptr %i.ai, %4
  br i1 %i.aj, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !107
  %i.am = sext i16 %1 to i64
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ao = and i16 %i.l, 32
  %.not77 = icmp eq i16 %i.ao, 0
  br i1 %.not77, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = sub nsw i64 %3, %2
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !89
  %i.as = sext i32 %i.ar to i64
  %.not78 = icmp slt i64 %i.ap, %i.as
  br i1 %.not78, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.i
  %i.at = icmp eq i16 %i.m, 1
  br i1 %i.at, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = add nsw i64 %3, %2
  %i.av = mul nsw i32 %i.b, 63
  %i.aw = sdiv i32 %i.av, 64
  %i.ax = sext i32 %i.aw to i64
  %i.ay = add nsw i64 %i.au, %i.ax
  %i.az = ashr i64 %i.ay, 1
  %i.ba = and i64 %i.az, %i.g
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.c, %bb.n, %bb.d
  %.069 = phi i64 [ %i.ba, %bb.n ], [ %i.v, %bb.d ], [ %i.i, %bb.c ], [ %i.i, %bb.m ] ; 3 uses
  %i.bb = icmp slt i64 %.069, 0
  %.pre = load i32, ptr %0, align 8, !tbaa !85
  %.pre86 = zext nneg i32 %.pre to i64            ; 5 uses
  br i1 %i.bb, label %._crit_edge85, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = lshr i64 %.069, %.pre86
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !97
  %i.bf = zext i16 %i.be to i64
  %.not79 = icmp samesign ult i64 %i.bc, %i.bf
  %spec.select = select i1 %.not79, i64 %.069, i64 %i.i
  br label %._crit_edge85

._crit_edge85:                                    ; preds = %bb.o, %bb.p
  %.1 = phi i64 [ %spec.select, %bb.p ], [ %i.h, %bb.o ] ; 4 uses
  %i.bg = icmp eq i64 %.1, %i.h
  %i.bh = select i1 %i.bg, i64 %i.i, i64 %i.h
  %i.bi = ashr i64 %i.bh, %.pre86                 ; 4 uses
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = and i32 %i.bj, 7
  %i.bl = icmp sgt i64 %i.bi, -1
  br i1 %i.bl, label %bb.q, label %bb.s

bb.q:                                             ; preds = %._crit_edge85
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !97
  %i.bo = zext i16 %i.bn to i64
  %i.bp = icmp samesign ult i64 %i.bi, %i.bo
  br i1 %i.bp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !102
  %i.bs = lshr i64 %i.bi, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !38
  %i.bv = zext i8 %i.bu to i32
  %i.bw = lshr exact i32 128, %i.bk
  %i.bx = and i32 %i.bw, %i.bv
  %.not80 = icmp eq i32 %i.bx, 0
  br i1 %.not80, label %bb.s, label %.thread

bb.s:                                             ; preds = %._crit_edge, %._crit_edge85, %bb.q, %bb.r
  %.pre-phi = phi i64 [ %.pre84, %._crit_edge ], [ %.pre86, %._crit_edge85 ], [ %.pre86, %bb.q ], [ %.pre86, %bb.r ]
  %.3 = phi i64 [ %i.h, %._crit_edge ], [ %.1, %._crit_edge85 ], [ %.1, %bb.q ], [ %.1, %bb.r ]
  %i.by = ashr i64 %.3, %.pre-phi                 ; 4 uses
  %i.bz = icmp sgt i64 %i.by, -1
  br i1 %i.bz, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !97
  %i.cc = zext i16 %i.cb to i64
  %i.cd = icmp samesign ult i64 %i.by, %i.cc
  br i1 %i.cd, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.ce = lshr i64 %i.by, 3
  %i.cf = trunc i64 %i.by to i8
  %i.cg = and i8 %i.cf, 7
  %i.ch = lshr exact i8 -128, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !102
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ce ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !38
  %i.cm = or i8 %i.cl, %i.ch
  store i8 %i.cm, ptr %i.ck, align 1, !tbaa !38
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.l, %bb.h, %bb.r, %bb.g, %bb.c, %bb.k, %bb.u, %bb.t, %bb.s
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @Vertical_Sweep_Step(ptr nofree noundef captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.e = sext i32 %i.b to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f
  store ptr %i.g, ptr %i.c, align 8, !tbaa !102
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Render_Single_Pass(ptr noundef nonnull initializes((40, 64), (104, 124), (128, 144)) %0, i8 noundef signext range(i8 0, 2) %1, i32 noundef range(i32 -2147483648, 2147483647) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 18 uses
  %i.c = alloca ptr, align 8                      ; 18 uses
  %i.d = alloca [32 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 123 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.not.i.i = icmp eq i8 %1, 0                    ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.cf, %bb.a
  %.030.ph = phi i32 [ %i.wx, %bb.cf ], [ 0, %bb.a ]
  %.028.ph = phi i32 [ %i.wu, %bb.cf ], [ %2, %bb.a ] ; 3 uses
  %.0.ph = phi i32 [ %i.wt, %bb.cf ], [ 0, %bb.a ]
  %i.ah = sext i32 %.028.ph to i64
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.bd
  %.030 = phi i32 [ %i.og, %bb.bd ], [ %.030.ph, %.outer ] ; 5 uses
  %.0 = phi i32 [ %i.od, %bb.bd ], [ %.0.ph, %.outer ] ; 4 uses
  %i.ai = sext i32 %.030 to i64
  %i.aj = load i32, ptr %i.e, align 4, !tbaa !88
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = mul nsw i64 %i.ak, %i.ai
  store i64 %i.al, ptr %i.f, align 8, !tbaa !108
  %i.am = mul nsw i64 %i.ak, %i.ah
  store i64 %i.am, ptr %i.g, align 8, !tbaa !109
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !40  ; 5 uses
  store ptr %i.an, ptr %i.i, align 8, !tbaa !110
  store i32 0, ptr %i.j, align 8, !tbaa !111
  store ptr null, ptr %i.k, align 8, !tbaa !112
  store i8 0, ptr %i.l, align 1, !tbaa !113
  store i8 0, ptr %i.m, align 2, !tbaa !114
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -64 ; 2 uses
  store ptr %i.ap, ptr %i.o, align 8, !tbaa !115
  store i32 0, ptr %i.p, align 4, !tbaa !116
  store ptr %i.an, ptr %i.q, align 8, !tbaa !117
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !118
  store i16 0, ptr %i.r, align 8, !tbaa !119
  %i.ar = load i16, ptr %i.s, align 8, !tbaa !120
  %i.as = icmp sgt i16 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i, label %Convert_Glyph.exit.thread231

.lr.ph.i:                                         ; preds = %bb.b
  %.pre.i = load i32, ptr %i.y, align 8, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.aq, %.lr.ph.i
  %i.at = phi i32 [ %.pre.i, %.lr.ph.i ], [ %i.ja, %bb.aq ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.aq ] ; 2 uses
  %.057138.i = phi i64 [ -1, %.lr.ph.i ], [ %i.ay, %bb.aq ] ; 2 uses
  store i32 0, ptr %i.t, align 8, !tbaa !121
  store ptr null, ptr %i.u, align 8, !tbaa !122
  %i.au = add nsw i64 %.057138.i, 1               ; 2 uses
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !123
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !27
  %i.ay = sext i16 %i.ax to i64                   ; 3 uses
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !124 ; 2 uses
  %i.ba = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.ay ; 5 uses
  %i.bb = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.au ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !80
  %i.bd = load i32, ptr %i.x, align 4, !tbaa !90
  %i.be = sext i32 %i.bd to i64                   ; 4 uses
  %i.bf = mul nsw i64 %i.bc, %i.be
  %i.bg = sext i32 %i.at to i64                   ; 4 uses
  %i.bh = sub nsw i64 %i.bf, %i.bg                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !81
  %i.bk = mul nsw i64 %i.bj, %i.be
  %i.bl = sub nsw i64 %i.bk, %i.bg                ; 2 uses
  %i.bm = load i64, ptr %i.ba, align 8, !tbaa !80
  %i.bn = mul nsw i64 %i.bm, %i.be
  %i.bo = sub nsw i64 %i.bn, %i.bg                ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !81
  %i.br = mul nsw i64 %i.bq, %i.be
  %i.bs = sub nsw i64 %i.br, %i.bg                ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.084.0.i.i = phi i64 [ %i.bl, %bb.d ], [ %i.bh, %bb.c ] ; 2 uses
  %.sroa.13.0.i.i = phi i64 [ %i.bh, %bb.d ], [ %i.bl, %bb.c ] ; 2 uses
  %.sroa.0107.0.i.i = phi i64 [ %i.bs, %bb.d ], [ %i.bo, %bb.c ] ; 2 uses
  %.sroa.7.0.i.i = phi i64 [ %i.bo, %bb.d ], [ %i.bs, %bb.c ] ; 2 uses
  %i.bt = load ptr, ptr %i.z, align 8, !tbaa !125 ; 3 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %i.au ; 3 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !38  ; 3 uses
  %i.bw = and i8 %i.bv, 4
  %.not197.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not197.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bx = lshr i8 %i.bv, 5
  store i8 %i.bx, ptr %i.aa, align 8, !tbaa !91
  %.pre.i.i = load i8, ptr %i.bu, align 1, !tbaa !38
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.by = phi i8 [ %.pre.i.i, %bb.f ], [ %i.bv, %bb.e ]
  %i.bz = and i8 %i.by, 3
  switch i8 %i.bz, label %bb.l [
    i8 2, label %.thread223.i.i
    i8 0, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ca = getelementptr inbounds i8, ptr %i.bt, i64 %i.ay
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !38
  %i.cc = and i8 %i.cb, 3
  %i.cd = icmp eq i8 %i.cc, 1
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds i8, ptr %i.ba, i64 -16
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cf = add nsw i64 %.sroa.0107.0.i.i, %.sroa.084.0.i.i
  %i.cg = sdiv i64 %i.cf, 2
  %i.ch = add nsw i64 %.sroa.7.0.i.i, %.sroa.13.0.i.i
  %i.ci = sdiv i64 %i.ch, 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0187.i.i = phi ptr [ %i.ce, %bb.i ], [ %i.ba, %bb.j ]
  %.sroa.084.1.i.i = phi i64 [ %.sroa.0107.0.i.i, %bb.i ], [ %i.cg, %bb.j ]
  %.sroa.13.1.i.i = phi i64 [ %.sroa.7.0.i.i, %bb.i ], [ %i.ci, %bb.j ]
  %i.cj = getelementptr inbounds i8, ptr %i.bb, i64 -16
  %i.ck = getelementptr inbounds i8, ptr %i.bt, i64 %.057138.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %.0189.i.i = phi ptr [ %i.ck, %bb.k ], [ %i.bu, %bb.g ]
  %.1188.i.i = phi ptr [ %.0187.i.i, %bb.k ], [ %i.ba, %bb.g ] ; 6 uses
  %.0182.i.i = phi ptr [ %i.cj, %bb.k ], [ %i.bb, %bb.g ] ; 2 uses
  %.sroa.084.2.i.i = phi i64 [ %.sroa.084.1.i.i, %bb.k ], [ %.sroa.084.0.i.i, %bb.g ] ; 4 uses
  %.sroa.13.2.i.i = phi i64 [ %.sroa.13.1.i.i, %bb.k ], [ %.sroa.13.0.i.i, %bb.g ] ; 4 uses
  store i64 %.sroa.084.2.i.i, ptr %i.ab, align 8, !tbaa !126
  store i64 %.sroa.13.2.i.i, ptr %i.ac, align 8, !tbaa !127
  %i.cl = icmp ult ptr %.0182.i.i, %.1188.i.i
  br i1 %i.cl, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.backedge.i.i
  %.1183262.i.i = phi ptr [ %.1183.be.i.i, %.backedge.i.i ], [ %.0182.i.i, %bb.l ] ; 8 uses
  %.1190261.i.i = phi ptr [ %.1190.be.i.i, %.backedge.i.i ], [ %.0189.i.i, %bb.l ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.1183262.i.i, i64 16 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.1190261.i.i, i64 1 ; 4 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !38
  %i.cp = and i8 %i.co, 3
  switch i8 %i.cp, label %bb.u [
    i8 1, label %bb.m
    i8 0, label %bb.n
  ]

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.cq = load i64, ptr %i.cm, align 8, !tbaa !80
  %i.cr = load i32, ptr %i.x, align 4, !tbaa !90
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = mul nsw i64 %i.cq, %i.cs
  %i.cu = load i32, ptr %i.y, align 8, !tbaa !89
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  %i.cw = sub nsw i64 %i.ct, %i.cv                ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.1183262.i.i, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !81
  %i.cz = mul nsw i64 %i.cy, %i.cs
  %i.da = sub nsw i64 %i.cz, %i.cv                ; 2 uses
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.cw, i64 %i.da
  %spec.select208.i.i = select i1 %.not.i.i, i64 %i.da, i64 %i.cw
  %i.db = tail call fastcc signext i8 @Line_To(ptr noundef nonnull %0, i64 noundef %spec.select.i.i, i64 noundef %spec.select208.i.i)
  %.not203.i.i = icmp eq i8 %i.db, 0
end_hunk_0
begin_hunk_1_@Render_Single_Pass:bb.a
  %i.no = ashr exact i64 %sext166, 32
  store i64 %i.no, ptr %i.nl, align 8, !tbaa !133
  %indvars.iv.next49.i52.i.i.3 = add nsw i64 %indvars.iv48.i50.i.i, -4
  %.not36.i53.i.i.3 = icmp eq i64 %indvars.iv.next49.i52.i.i.2, 0
  br i1 %.not36.i53.i.i.3, label %.loopexit.i42.i.i, label %.preheader.i49.i.i, !llvm.loop !136

.loopexit.i42.i.i:                                ; preds = %bb.ba, %.preheader.i49.i.i.prol.loopexit, %.preheader.i49.i.i, %bb.az
  %.130.ph.i43.i.i = phi i32 [ %.029.i.i, %bb.az ], [ %i.nn, %.preheader.i49.i.i ], [ %.lcssa125.unr, %.preheader.i49.i.i.prol.loopexit ], [ %.029.i.i, %bb.ba ]
  %i.np = getelementptr inbounds i8, ptr %i.mg, i64 -8 ; 3 uses
  store ptr %i.np, ptr %i.o, align 8, !tbaa !115
  %.not.i44.i.i = icmp ugt ptr %i.np, %i.jb
  br i1 %.not.i44.i.i, label %bb.bb, label %Convert_Glyph.exit.thread.thread.sink.split

bb.bb:                                            ; preds = %.loopexit.i42.i.i
  %i.nq = add nsw i32 %i.mh, 1                    ; 2 uses
  store i32 %i.nq, ptr %i.p, align 4, !tbaa !116
  %i.nr = sext i32 %.130.ph.i43.i.i to i64
  %i.ns = xor i32 %i.mh, -1
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.nt
  store i64 %i.nr, ptr %i.nu, align 8, !tbaa !133
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.critedge.i47.i.i
  %i.nv = phi ptr [ %i.np, %bb.bb ], [ %i.mg, %.critedge.i47.i.i ] ; 2 uses
  %i.nw = phi i32 [ %i.nq, %bb.bb ], [ %i.mh, %.critedge.i47.i.i ]
  %i.nx = add i16 %.032.i.i, -1                   ; 2 uses
  %.not39.i.i = icmp eq i16 %i.nx, 0
  br i1 %.not39.i.i, label %Convert_Glyph.exit, label %bb.ar, !llvm.loop !138

Convert_Glyph.exit:                               ; preds = %bb.bc
  %.not52 = icmp ult ptr %i.jb, %i.nv
  br i1 %.not52, label %bb.be, label %Convert_Glyph.exit.thread

Convert_Glyph.exit.thread231:                     ; preds = %bb.b, %._crit_edge.i
  %i.ny = phi ptr [ %i.jc, %._crit_edge.i ], [ %i.ap, %bb.b ]
  %i.nz = phi ptr [ %i.jb, %._crit_edge.i ], [ %i.an, %bb.b ]
  store ptr null, ptr %i.k, align 8, !tbaa !112
  %.not52232 = icmp ult ptr %i.nz, %i.ny
  br i1 %.not52232, label %.thread, label %Convert_Glyph.exit.thread

Convert_Glyph.exit.thread:                        ; preds = %._crit_edge.i.i, %bb.aa, %.split257.us.i.i, %bb.s, %bb.q, %bb.m, %bb.z, %bb.t, %bb.p, %Convert_Glyph.exit.thread231, %Convert_Glyph.exit
  %.pr = load i32, ptr %i.j, align 8, !tbaa !111  ; 2 uses
  %.not37 = icmp eq i32 %.pr, 98
  br i1 %.not37, label %Convert_Glyph.exit.thread.thread, label %Convert_Glyph.exit.thread.thread50

Convert_Glyph.exit.thread.thread.sink.split:      ; preds = %bb.an, %.loopexit.i42.i.i, %.loopexit.i.i.i
  store i32 98, ptr %i.j, align 8, !tbaa !111
  br label %Convert_Glyph.exit.thread.thread

Convert_Glyph.exit.thread.thread:                 ; preds = %Convert_Glyph.exit.thread.thread.sink.split, %Convert_Glyph.exit.thread
  %i.oa = icmp eq i32 %.030, %.028.ph
  br i1 %i.oa, label %Convert_Glyph.exit.thread.thread50, label %bb.bd

bb.bd:                                            ; preds = %Convert_Glyph.exit.thread.thread
  %i.ob = add nsw i32 %.028.ph, %.030
  %i.oc = ashr i32 %i.ob, 1
  %i.od = add nsw i32 %.0, 1
  %i.oe = sext i32 %.0 to i64
  %i.of = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.oe
  store i32 %.030, ptr %i.of, align 4, !tbaa !3
  %i.og = add nsw i32 %i.oc, 1
  br label %bb.b

bb.be:                                            ; preds = %Convert_Glyph.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.a, align 8, !tbaa !139
  store ptr null, ptr %i.b, align 8, !tbaa !139
  store ptr null, ptr %i.c, align 8, !tbaa !139
  %i.oh = load i64, ptr %i.f, align 8, !tbaa !108
  %i.oi = load i32, ptr %0, align 8, !tbaa !85
  %i.oj = zext i32 %i.oi to i64                   ; 2 uses
  %i.ok = ashr i64 %i.oh, %i.oj
  %i.ol = trunc i64 %i.ok to i16
  %i.om = load i64, ptr %i.g, align 8, !tbaa !109
  %i.on = ashr i64 %i.om, %i.oj
  %i.oo = trunc i64 %i.on to i16
  br label %.lr.ph311.i

.lr.ph311.i:                                      ; preds = %bb.be, %InsNew.exit.i
  %.0133310.i = phi ptr [ %i.oq, %InsNew.exit.i ], [ %.pre191.i, %bb.be ] ; 5 uses
  %.0143309.i = phi i16 [ %.1144.i, %InsNew.exit.i ], [ %i.ol, %bb.be ]
  %.0145308.i = phi i16 [ %spec.select.i, %InsNew.exit.i ], [ %i.oo, %bb.be ]
  %i.op = getelementptr inbounds nuw i8, ptr %.0133310.i, i64 8 ; 2 uses
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !131 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.0133310.i, i64 40
  %i.os = load i64, ptr %i.or, align 8, !tbaa !107 ; 2 uses
  %i.ot = trunc i64 %i.os to i16
  %i.ou = getelementptr inbounds nuw i8, ptr %.0133310.i, i64 32
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !106
  %i.ow = add nsw i64 %i.ov, %i.os
  %i.ox = trunc i64 %i.ow to i16
  %i.oy = add i16 %i.ox, -1
  %spec.select.i = tail call i16 @llvm.smin.i16(i16 %.0145308.i, i16 %i.ot) ; 7 uses
  %.1144.i = tail call i16 @llvm.smax.i16(i16 %.0143309.i, i16 %i.oy) ; 4 uses
  store i64 0, ptr %.0133310.i, align 8, !tbaa !140
  %.0..0..0..0..0..01112.i.i = load ptr, ptr %i.a, align 8, !tbaa !139 ; 4 uses
  %.not13.i.i = icmp eq ptr %.0..0..0..0..0..01112.i.i, null
  br i1 %.not13.i.i, label %InsNew.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph311.i
  %i.oz = load i64, ptr %.0..0..0..0..0..01112.i.i, align 8, !tbaa !140
  %i.pa = icmp sgt i64 %i.oz, 0
  br i1 %i.pa, label %InsNew.exit.i, label %.lr.ph.i38

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i38
  %i.pb = load i64, ptr %.011.i.i, align 8, !tbaa !140
  %i.pc = icmp sgt i64 %i.pb, 0
  br i1 %i.pc, label %InsNew.exit.i.loopexit, label %.lr.ph.i38, !llvm.loop !141

.lr.ph.i38:                                       ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i40
  %.01115.i303.i = phi ptr [ %.011.i.i, %.lr.ph.i.i40 ], [ %.0..0..0..0..0..01112.i.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.01115.i303.i, i64 8
  %.011.i.i = load ptr, ptr %i.pd, align 8, !tbaa !139 ; 4 uses
  %.not.i.i39 = icmp eq ptr %.011.i.i, null
  br i1 %.not.i.i39, label %.InsNew.exit.loopexit_crit_edge.i, label %.lr.ph.i.i40, !llvm.loop !141

.InsNew.exit.loopexit_crit_edge.i:                ; preds = %.lr.ph.i38
  %i.pe = getelementptr inbounds nuw i8, ptr %.01115.i303.i, i64 8
  br label %InsNew.exit.i, !llvm.loop !141

InsNew.exit.i.loopexit:                           ; preds = %.lr.ph.i.i40
  %i.pf = getelementptr inbounds nuw i8, ptr %.01115.i303.i, i64 8
  br label %InsNew.exit.i

InsNew.exit.i:                                    ; preds = %InsNew.exit.i.loopexit, %.InsNew.exit.loopexit_crit_edge.i, %.lr.ph.i.preheader.i, %.lr.ph311.i
  %.0.lcssa.i.i = phi ptr [ %i.a, %.lr.ph311.i ], [ %i.pe, %.InsNew.exit.loopexit_crit_edge.i ], [ %i.a, %.lr.ph.i.preheader.i ], [ %i.pf, %InsNew.exit.i.loopexit ]
  %.011.lcssa.i.i = phi ptr [ null, %.lr.ph311.i ], [ null, %.InsNew.exit.loopexit_crit_edge.i ], [ %.0..0..0..0..0..01112.i.i, %.lr.ph.i.preheader.i ], [ %.011.i.i, %InsNew.exit.i.loopexit ]
  store ptr %.011.lcssa.i.i, ptr %i.op, align 8, !tbaa !131
  store ptr %.0133310.i, ptr %.0.lcssa.i.i, align 8, !tbaa !139
  %.not.i = icmp eq ptr %i.oq, null
  br i1 %.not.i, label %._crit_edge.i41, label %.lr.ph311.i, !llvm.loop !142

._crit_edge.i41:                                  ; preds = %InsNew.exit.i
  %i.pg = load i32, ptr %i.p, align 4, !tbaa !116
  %i.ph = icmp eq i32 %i.pg, 0
  br i1 %i.ph, label %bb.ce, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge.i41
  %i.pi = load ptr, ptr %i.ad, align 8, !tbaa !92
  tail call void %i.pi(ptr noundef nonnull %0, i16 noundef signext %spec.select.i, i16 noundef signext %.1144.i) #8, !inline_history !143
  %.0..0..0..0..1134314.i = load ptr, ptr %i.a, align 8, !tbaa !139 ; 2 uses
  %.not158315.i = icmp eq ptr %.0..0..0..0..1134314.i, null
  br i1 %.not158315.i, label %._crit_edge319.i, label %.lr.ph318.i

.lr.ph318.i:                                      ; preds = %bb.bf
  %i.pj = sext i16 %spec.select.i to i64
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.lr.ph318.i
  %.1134316.i = phi ptr [ %.0..0..0..0..1134314.i, %.lr.ph318.i ], [ %.1134.i, %bb.bg ] ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.1134316.i, i64 40
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !107
  %i.pm = sub nsw i64 %i.pl, %i.pj
  %i.pn = trunc i64 %i.pm to i32
  %i.po = getelementptr inbounds nuw i8, ptr %.1134316.i, i64 48
  store i32 %i.pn, ptr %i.po, align 8, !tbaa !144
  %i.pp = getelementptr inbounds nuw i8, ptr %.1134316.i, i64 8
  %.1134.i = load ptr, ptr %i.pp, align 8, !tbaa !139 ; 2 uses
  %.not158.i = icmp eq ptr %.1134.i, null
  br i1 %.not158.i, label %._crit_edge319.i, label %bb.bg, !llvm.loop !145

._crit_edge319.i:                                 ; preds = %bb.bg, %bb.bf
  %i.pq = load i32, ptr %i.p, align 4, !tbaa !116 ; 4 uses
  %i.pr = icmp sgt i32 %i.pq, 0
  br i1 %i.pr, label %bb.bh, label %.preheader.i

bb.bh:                                            ; preds = %._crit_edge319.i
  %i.ps = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.pt = sub nsw i32 0, %i.pq
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.ps, i64 %i.pu
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !133
  %i.px = sext i16 %spec.select.i to i64
  %i.py = icmp eq i64 %i.pw, %i.px
  br i1 %i.py, label %bb.bi, label %.lr.ph377.i.preheader

bb.bi:                                            ; preds = %bb.bh
  %i.pz = add nsw i32 %i.pq, -1                   ; 3 uses
  store i32 %i.pz, ptr %i.p, align 4, !tbaa !116
  %.not456.i = icmp eq i32 %i.pz, 0
  br i1 %.not456.i, label %.preheader.i, label %.lr.ph377.i.preheader

.lr.ph377.i.preheader:                            ; preds = %bb.bi, %bb.bh
  %.ph = phi i32 [ %i.pq, %bb.bh ], [ %i.pz, %bb.bi ]
  br label %.lr.ph377.i

.loopexit296.i:                                   ; preds = %DelOld.exit284.i, %._crit_edge365.i
  %i.qa = load i32, ptr %i.p, align 4, !tbaa !116 ; 2 uses
  %i.qb = icmp sgt i32 %i.qa, 0
  br i1 %i.qb, label %.lr.ph377.i, label %.preheader.i, !llvm.loop !146

.preheader.i:                                     ; preds = %.loopexit296.i, %bb.bi, %._crit_edge319.i
  %.0131.lcssa.i = phi i16 [ %spec.select.i, %bb.bi ], [ %spec.select.i, %._crit_edge319.i ], [ %.1.lcssa.i, %.loopexit296.i ] ; 2 uses
  %.not159379.i = icmp sgt i16 %.0131.lcssa.i, %.1144.i
  br i1 %.not159379.i, label %Draw_Sweep.exit.thread, label %.lr.ph381.i

.lr.ph377.i:                                      ; preds = %.lr.ph377.i.preheader, %.loopexit296.i
  %.0..0..02737.i427.i = phi ptr [ %.0..0..02737.i428.i, %.loopexit296.i ], [ null, %.lr.ph377.i.preheader ]
  %i.qc = phi i32 [ %i.qa, %.loopexit296.i ], [ %.ph, %.lr.ph377.i.preheader ] ; 2 uses
  %.0131375.i = phi i16 [ %.1.lcssa.i, %.loopexit296.i ], [ %spec.select.i, %.lr.ph377.i.preheader ] ; 4 uses
  %.0132374.i = phi i16 [ %i.sv, %.loopexit296.i ], [ 0, %.lr.ph377.i.preheader ]
  %.0..0..0..0..0.290.i = load ptr, ptr %i.a, align 8, !tbaa !139 ; 2 uses
  %.not160336.i = icmp eq ptr %.0..0..0..0..0.290.i, null
  br i1 %.not160336.i, label %._crit_edge340.i, label %.lr.ph339.i

.lr.ph339.i:                                      ; preds = %.lr.ph377.i
  %i.qd = sext i16 %.0132374.i to i32             ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bn, %.lr.ph339.i
  %.2135337.i = phi ptr [ %.0..0..0..0..0.290.i, %.lr.ph339.i ], [ %i.qf, %bb.bn ] ; 7 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.2135337.i, i64 8 ; 2 uses
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !131 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.2135337.i, i64 48 ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 8, !tbaa !144 ; 2 uses
  %i.qi = sub nsw i32 %i.qh, %i.qd
  store i32 %i.qi, ptr %i.qg, align 8, !tbaa !144
  %i.qj = icmp eq i32 %i.qh, %i.qd
  br i1 %i.qj, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %.0..0..0..0..0..012.i.i = load ptr, ptr %i.a, align 8, !tbaa !139 ; 4 uses
  %.not13.i174.i = icmp eq ptr %.0..0..0..0..0..012.i.i, null
  br i1 %.not13.i174.i, label %DelOld.exit.i, label %.lr.ph.i175.preheader.i

.lr.ph.i175.preheader.i:                          ; preds = %bb.bk
  %i.qk = icmp eq ptr %.0..0..0..0..0..012.i.i, %.2135337.i
  br i1 %i.qk, label %.lr.ph.i175._crit_edge.i, label %.lr.ph321.i

.lr.ph.i175.i:                                    ; preds = %.lr.ph321.i
  %i.ql = icmp eq ptr %.0.i.i, %.2135337.i
  br i1 %i.ql, label %.lr.ph.i175._crit_edge.i.loopexit, label %.lr.ph321.i, !llvm.loop !147

.lr.ph.i175._crit_edge.i.loopexit:                ; preds = %.lr.ph.i175.i
  %i.qm = getelementptr inbounds nuw i8, ptr %.015.i320.i, i64 8
  br label %.lr.ph.i175._crit_edge.i

.lr.ph.i175._crit_edge.i:                         ; preds = %.lr.ph.i175._crit_edge.i.loopexit, %.lr.ph.i175.preheader.i
  %.015.i.lcssa.i = phi ptr [ %.0..0..0..0..0..012.i.i, %.lr.ph.i175.preheader.i ], [ %.0.i.i, %.lr.ph.i175._crit_edge.i.loopexit ]
  %.0914.i.lcssa.i = phi ptr [ %i.a, %.lr.ph.i175.preheader.i ], [ %i.qm, %.lr.ph.i175._crit_edge.i.loopexit ]
  %i.qn = getelementptr inbounds nuw i8, ptr %.015.i.lcssa.i, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !131
  store ptr %i.qo, ptr %.0914.i.lcssa.i, align 8, !tbaa !139
  br label %DelOld.exit.i

.lr.ph321.i:                                      ; preds = %.lr.ph.i175.preheader.i, %.lr.ph.i175.i
  %.015.i320.i = phi ptr [ %.0.i.i, %.lr.ph.i175.i ], [ %.0..0..0..0..0..012.i.i, %.lr.ph.i175.preheader.i ] ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.015.i320.i, i64 8
  %.0.i.i = load ptr, ptr %i.qp, align 8, !tbaa !139 ; 4 uses
  %.not.i176.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i176.i, label %DelOld.exit.i, label %.lr.ph.i175.i, !llvm.loop !147

DelOld.exit.i:                                    ; preds = %.lr.ph321.i, %.lr.ph.i175._crit_edge.i, %bb.bk
  %i.qq = getelementptr inbounds nuw i8, ptr %.2135337.i, i64 24
  %i.qr = load i16, ptr %i.qq, align 8, !tbaa !103
  %i.qs = and i16 %i.qr, 8
  %.not168.i = icmp eq i16 %i.qs, 0
  %i.qt = load i64, ptr %.2135337.i, align 8, !tbaa !140 ; 4 uses
  br i1 %.not168.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %DelOld.exit.i
  %.0..0..0..0..0..01112.i177.i = load ptr, ptr %i.b, align 8, !tbaa !139 ; 4 uses
  %.not13.i178.i = icmp eq ptr %.0..0..0..0..0..01112.i177.i, null
  br i1 %.not13.i178.i, label %.sink.split.i, label %.lr.ph.i179.preheader.i

.lr.ph.i179.preheader.i:                          ; preds = %bb.bl
  %i.qu = load i64, ptr %.0..0..0..0..0..01112.i177.i, align 8, !tbaa !140
  %i.qv = icmp slt i64 %i.qt, %i.qu
  br i1 %i.qv, label %.sink.split.i, label %.lr.ph325.i

.lr.ph.i179.i:                                    ; preds = %.lr.ph325.i
  %i.qw = load i64, ptr %.011.i182.i, align 8, !tbaa !140
  %i.qx = icmp slt i64 %i.qt, %i.qw
  br i1 %i.qx, label %.sink.split.i.loopexit234, label %.lr.ph325.i, !llvm.loop !141

.lr.ph325.i:                                      ; preds = %.lr.ph.i179.preheader.i, %.lr.ph.i179.i
  %.01115.i180324.i = phi ptr [ %.011.i182.i, %.lr.ph.i179.i ], [ %.0..0..0..0..0..01112.i177.i, %.lr.ph.i179.preheader.i ] ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.01115.i180324.i, i64 8
  %.011.i182.i = load ptr, ptr %i.qy, align 8, !tbaa !139 ; 4 uses
  %.not.i183.i = icmp eq ptr %.011.i182.i, null
  br i1 %.not.i183.i, label %.InsNew.exit186.loopexit_crit_edge.i, label %.lr.ph.i179.i, !llvm.loop !141

.InsNew.exit186.loopexit_crit_edge.i:             ; preds = %.lr.ph325.i
  %i.qz = getelementptr inbounds nuw i8, ptr %.01115.i180324.i, i64 8
  br label %.sink.split.i, !llvm.loop !141

bb.bm:                                            ; preds = %DelOld.exit.i
  %.0..0..0..0..0..01112.i187.i = load ptr, ptr %i.c, align 8, !tbaa !139 ; 4 uses
  %.not13.i188.i = icmp eq ptr %.0..0..0..0..0..01112.i187.i, null
  br i1 %.not13.i188.i, label %.sink.split.i, label %.lr.ph.i189.preheader.i

.lr.ph.i189.preheader.i:                          ; preds = %bb.bm
  %i.ra = load i64, ptr %.0..0..0..0..0..01112.i187.i, align 8, !tbaa !140
  %i.rb = icmp slt i64 %i.qt, %i.ra
  br i1 %i.rb, label %.sink.split.i, label %.lr.ph331.i

.lr.ph.i189.i:                                    ; preds = %.lr.ph331.i
  %i.rc = load i64, ptr %.011.i192.i, align 8, !tbaa !140
  %i.rd = icmp slt i64 %i.qt, %i.rc
  br i1 %i.rd, label %.sink.split.i.loopexit, label %.lr.ph331.i, !llvm.loop !141

.lr.ph331.i:                                      ; preds = %.lr.ph.i189.preheader.i, %.lr.ph.i189.i
  %.01115.i190330.i = phi ptr [ %.011.i192.i, %.lr.ph.i189.i ], [ %.0..0..0..0..0..01112.i187.i, %.lr.ph.i189.preheader.i ] ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.01115.i190330.i, i64 8
  %.011.i192.i = load ptr, ptr %i.re, align 8, !tbaa !139 ; 4 uses
  %.not.i193.i = icmp eq ptr %.011.i192.i, null
  br i1 %.not.i193.i, label %.InsNew.exit196.loopexit_crit_edge.i, label %.lr.ph.i189.i, !llvm.loop !141

.InsNew.exit196.loopexit_crit_edge.i:             ; preds = %.lr.ph331.i
  %i.rf = getelementptr inbounds nuw i8, ptr %.01115.i190330.i, i64 8
  br label %.sink.split.i, !llvm.loop !141

.sink.split.i.loopexit:                           ; preds = %.lr.ph.i189.i
  %i.rg = getelementptr inbounds nuw i8, ptr %.01115.i190330.i, i64 8
  br label %.sink.split.i

.sink.split.i.loopexit234:                        ; preds = %.lr.ph.i179.i
  %i.rh = getelementptr inbounds nuw i8, ptr %.01115.i180324.i, i64 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.i.loopexit234, %.sink.split.i.loopexit, %.InsNew.exit196.loopexit_crit_edge.i, %.lr.ph.i189.preheader.i, %bb.bm, %.InsNew.exit186.loopexit_crit_edge.i, %.lr.ph.i179.preheader.i, %bb.bl
  %.011.lcssa.i185.sink.i = phi ptr [ %.011.i192.i, %.sink.split.i.loopexit ], [ null, %bb.bl ], [ null, %.InsNew.exit186.loopexit_crit_edge.i ], [ %.0..0..0..0..0..01112.i177.i, %.lr.ph.i179.preheader.i ], [ null, %bb.bm ], [ null, %.InsNew.exit196.loopexit_crit_edge.i ], [ %.0..0..0..0..0..01112.i187.i, %.lr.ph.i189.preheader.i ], [ %.011.i182.i, %.sink.split.i.loopexit234 ]
  %.0.lcssa.i184.sink.i = phi ptr [ %i.rg, %.sink.split.i.loopexit ], [ %i.b, %bb.bl ], [ %i.qz, %.InsNew.exit186.loopexit_crit_edge.i ], [ %i.b, %.lr.ph.i179.preheader.i ], [ %i.c, %bb.bm ], [ %i.rf, %.InsNew.exit196.loopexit_crit_edge.i ], [ %i.c, %.lr.ph.i189.preheader.i ], [ %i.rh, %.sink.split.i.loopexit234 ]
  store ptr %.011.lcssa.i185.sink.i, ptr %i.qe, align 8, !tbaa !131
  store ptr %.2135337.i, ptr %.0.lcssa.i184.sink.i, align 8, !tbaa !139
  br label %bb.bn

bb.bn:                                            ; preds = %.sink.split.i, %bb.bj
  %.not160.i = icmp eq ptr %i.qf, null
  br i1 %.not160.i, label %._crit_edge340.loopexit.i, label %bb.bj, !llvm.loop !148

._crit_edge340.loopexit.i:                        ; preds = %bb.bn
  %.0..0..0..0..0..02737.i.pre.i = load ptr, ptr %i.b, align 8, !tbaa !139
  br label %._crit_edge340.i

._crit_edge340.i:                                 ; preds = %._crit_edge340.loopexit.i, %.lr.ph377.i
  %.0..0..02737.i.i = phi ptr [ %.0..0..0..0..0..02737.i.pre.i, %._crit_edge340.loopexit.i ], [ %.0..0..02737.i427.i, %.lr.ph377.i ] ; 4 uses
  %.not38.i.i = icmp eq ptr %.0..0..02737.i.i, null
  br i1 %.not38.i.i, label %Sort.exit.i, label %.lr.ph.i197.i

.lr.ph.i197.i:                                    ; preds = %._crit_edge340.i, %.lr.ph.i197.i
  %.02739.i.i = phi ptr [ %.027.i.i, %.lr.ph.i197.i ], [ %.0..0..02737.i.i, %._crit_edge340.i ] ; 5 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.02739.i.i, i64 16 ; 2 uses
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !118 ; 2 uses
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !133
  store i64 %i.rk, ptr %.02739.i.i, align 8, !tbaa !140
  %i.rl = getelementptr inbounds nuw i8, ptr %.02739.i.i, i64 24
  %i.rm = load i16, ptr %i.rl, align 8, !tbaa !103
  %i.rn = and i16 %i.rm, 8
  %.not36.i.i = icmp eq i16 %i.rn, 0
  %i.ro = select i1 %.not36.i.i, i64 -1, i64 1
  %i.rp = getelementptr inbounds [8 x i8], ptr %i.rj, i64 %i.ro
  store ptr %i.rp, ptr %i.ri, align 8, !tbaa !118
  %i.rq = getelementptr inbounds nuw i8, ptr %.02739.i.i, i64 32 ; 2 uses
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !106
  %i.rs = add nsw i64 %i.rr, -1
  store i64 %i.rs, ptr %i.rq, align 8, !tbaa !106
  %i.rt = getelementptr inbounds nuw i8, ptr %.02739.i.i, i64 8
  %.027.i.i = load ptr, ptr %i.rt, align 8, !tbaa !139 ; 2 uses
  %.not.i198.i = icmp eq ptr %.027.i.i, null
  br i1 %.not.i198.i, label %.preheader.i.i43, label %.lr.ph.i197.i, !llvm.loop !149

.preheader.i.i43:                                 ; preds = %.lr.ph.i197.i
  %.0.in40.i.i = getelementptr inbounds nuw i8, ptr %.0..0..02737.i.i, i64 8 ; 2 uses
  %.041.i.i = load ptr, ptr %.0.in40.i.i, align 8, !tbaa !131 ; 2 uses
  %.not3342.i.i = icmp eq ptr %.041.i.i, null
  br i1 %.not3342.i.i, label %Sort.exit.i, label %.lr.ph47.i.i

.lr.ph47.i.i:                                     ; preds = %.preheader.i.i43, %bb.bp
  %.046.i.i = phi ptr [ %.0.i199.i, %bb.bp ], [ %.041.i.i, %.preheader.i.i43 ] ; 4 uses
  %.0.in45.i.i = phi ptr [ %.0.in.i.i, %bb.bp ], [ %.0.in40.i.i, %.preheader.i.i43 ] ; 2 uses
  %.144.i.i = phi ptr [ %.2.i.i, %bb.bp ], [ %.0..0..02737.i.i, %.preheader.i.i43 ] ; 2 uses
  %.02843.i.i = phi ptr [ %.129.i.i, %bb.bp ], [ %i.b, %.preheader.i.i43 ]
  %i.ru = load i64, ptr %.144.i.i, align 8, !tbaa !140
  %i.rv = load i64, ptr %.046.i.i, align 8, !tbaa !140
  %.not34.i.i = icmp sgt i64 %i.ru, %i.rv
  br i1 %.not34.i.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph47.i.i
  store ptr %.046.i.i, ptr %.02843.i.i, align 8, !tbaa !139
  %i.rw = getelementptr inbounds nuw i8, ptr %.046.i.i, i64 8 ; 2 uses
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !131
  store ptr %i.rx, ptr %.0.in45.i.i, align 8, !tbaa !131
  store ptr %.144.i.i, ptr %i.rw, align 8, !tbaa !131
  %.0..0..0..0..0.288.i = load ptr, ptr %i.b, align 8, !tbaa !139
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph47.i.i
  %.129.i.i = phi ptr [ %i.b, %bb.bo ], [ %.0.in45.i.i, %.lr.ph47.i.i ]
  %.2.i.i = phi ptr [ %.0..0..0..0..0.288.i, %bb.bo ], [ %.046.i.i, %.lr.ph47.i.i ] ; 2 uses
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 8 ; 2 uses
  %.0.i199.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !131 ; 2 uses
  %.not33.i.i = icmp eq ptr %.0.i199.i, null
  br i1 %.not33.i.i, label %Sort.exit.i, label %.lr.ph47.i.i, !llvm.loop !150

Sort.exit.i:                                      ; preds = %bb.bp, %.preheader.i.i43, %._crit_edge340.i
  %.0..0..0..0..0..02737.i200.i = load ptr, ptr %i.c, align 8, !tbaa !139 ; 6 uses
  %.not38.i201.i = icmp eq ptr %.0..0..0..0..0..02737.i200.i, null
  br i1 %.not38.i201.i, label %Sort.exit222.i, label %.lr.ph.i202.i

.lr.ph.i202.i:                                    ; preds = %Sort.exit.i, %.lr.ph.i202.i
  %.02739.i203.i = phi ptr [ %.027.i205.i, %.lr.ph.i202.i ], [ %.0..0..0..0..0..02737.i200.i, %Sort.exit.i ] ; 5 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.02739.i203.i, i64 16 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !118 ; 2 uses
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !133
  store i64 %i.sa, ptr %.02739.i203.i, align 8, !tbaa !140
  %i.sb = getelementptr inbounds nuw i8, ptr %.02739.i203.i, i64 24
  %i.sc = load i16, ptr %i.sb, align 8, !tbaa !103
  %i.sd = and i16 %i.sc, 8
  %.not36.i204.i = icmp eq i16 %i.sd, 0
  %i.se = select i1 %.not36.i204.i, i64 -1, i64 1
  %i.sf = getelementptr inbounds [8 x i8], ptr %i.rz, i64 %i.se
  store ptr %i.sf, ptr %i.ry, align 8, !tbaa !118
  %i.sg = getelementptr inbounds nuw i8, ptr %.02739.i203.i, i64 32 ; 2 uses
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !106
  %i.si = add nsw i64 %i.sh, -1
  store i64 %i.si, ptr %i.sg, align 8, !tbaa !106
  %i.sj = getelementptr inbounds nuw i8, ptr %.02739.i203.i, i64 8
  %.027.i205.i = load ptr, ptr %i.sj, align 8, !tbaa !139 ; 2 uses
  %.not.i206.i = icmp eq ptr %.027.i205.i, null
  br i1 %.not.i206.i, label %.preheader.i207.i, label %.lr.ph.i202.i, !llvm.loop !149

.preheader.i207.i:                                ; preds = %.lr.ph.i202.i
  %.0.in40.i208.i = getelementptr inbounds nuw i8, ptr %.0..0..0..0..0..02737.i200.i, i64 8 ; 2 uses
  %.041.i209.i = load ptr, ptr %.0.in40.i208.i, align 8, !tbaa !131 ; 2 uses
  %.not3342.i210.i = icmp eq ptr %.041.i209.i, null
  br i1 %.not3342.i210.i, label %Sort.exit222.i, label %.lr.ph47.i211.i

.lr.ph47.i211.i:                                  ; preds = %.preheader.i207.i, %bb.br
  %.0..0147342400.i = phi ptr [ %.0..0147342399.i, %bb.br ], [ %.0..0..0..0..0..02737.i200.i, %.preheader.i207.i ]
  %.046.i212.i = phi ptr [ %.0.i220.i, %bb.br ], [ %.041.i209.i, %.preheader.i207.i ] ; 4 uses
  %.0.in45.i213.i = phi ptr [ %.0.in.i219.i, %bb.br ], [ %.0.in40.i208.i, %.preheader.i207.i ] ; 2 uses
  %.144.i214.i = phi ptr [ %.2.i218.i, %bb.br ], [ %.0..0..0..0..0..02737.i200.i, %.preheader.i207.i ] ; 2 uses
  %.02843.i215.i = phi ptr [ %.129.i217.i, %bb.br ], [ %i.c, %.preheader.i207.i ]
  %i.sk = load i64, ptr %.144.i214.i, align 8, !tbaa !140
  %i.sl = load i64, ptr %.046.i212.i, align 8, !tbaa !140
  %.not34.i216.i = icmp sgt i64 %i.sk, %i.sl
  br i1 %.not34.i216.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.lr.ph47.i211.i
  store ptr %.046.i212.i, ptr %.02843.i215.i, align 8, !tbaa !139
  %i.sm = getelementptr inbounds nuw i8, ptr %.046.i212.i, i64 8 ; 2 uses
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !131
  store ptr %i.sn, ptr %.0.in45.i213.i, align 8, !tbaa !131
  store ptr %.144.i214.i, ptr %i.sm, align 8, !tbaa !131
  %.0..0..0..0..0.285.i = load ptr, ptr %i.c, align 8, !tbaa !139 ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.lr.ph47.i211.i
  %.0..0147342399.i = phi ptr [ %.0..0..0..0..0.285.i, %bb.bq ], [ %.0..0147342400.i, %.lr.ph47.i211.i ] ; 2 uses
  %.129.i217.i = phi ptr [ %i.c, %bb.bq ], [ %.0.in45.i213.i, %.lr.ph47.i211.i ]
  %.2.i218.i = phi ptr [ %.0..0..0..0..0.285.i, %bb.bq ], [ %.046.i212.i, %.lr.ph47.i211.i ] ; 2 uses
  %.0.in.i219.i = getelementptr inbounds nuw i8, ptr %.2.i218.i, i64 8 ; 2 uses
  %.0.i220.i = load ptr, ptr %.0.in.i219.i, align 8, !tbaa !131 ; 2 uses
  %.not33.i221.i = icmp eq ptr %.0.i220.i, null
  br i1 %.not33.i221.i, label %Sort.exit222.i, label %.lr.ph47.i211.i, !llvm.loop !150

Sort.exit222.i:                                   ; preds = %bb.br, %.preheader.i207.i, %Sort.exit.i
  %.0..0147342404.i = phi ptr [ %.0..0..0..0..0..02737.i200.i, %.preheader.i207.i ], [ null, %Sort.exit.i ], [ %.0..0147342399.i, %bb.br ] ; 5 uses
  %i.so = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.sp = add nsw i32 %i.qc, -1
  store i32 %i.sp, ptr %i.p, align 4, !tbaa !116
  %i.sq = sub nsw i32 0, %i.qc
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr inbounds [8 x i8], ptr %i.so, i64 %i.sr
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !133
  %i.su = trunc i64 %i.st to i16                  ; 5 uses
  %i.sv = sub i16 %i.su, %.0131375.i
  %i.sw = icmp slt i16 %.0131375.i, %i.su
  br i1 %i.sw, label %.preheader295.i, label %._crit_edge355.i

.preheader295.i:                                  ; preds = %Sort.exit222.i, %Sort.exit268.i
  %.0..0.417.i.a = phi ptr [ %.0..0.418.i, %Sort.exit268.i ], [ %.0..0147342404.i, %Sort.exit222.i ] ; 3 uses
  %.0..0..02737.i246411.i = phi ptr [ %.0..0..02737.i246412.i, %Sort.exit268.i ], [ %.0..0147342404.i, %Sort.exit222.i ] ; 3 uses
  %.0..1148350.i = phi ptr [ %.0..1148350407.i, %Sort.exit268.i ], [ %.0..0147342404.i, %Sort.exit222.i ] ; 4 uses
  %.0..0147342.i = phi ptr [ %.0..0147342401.i, %Sort.exit268.i ], [ %.0..0147342404.i, %Sort.exit222.i ] ; 4 uses
  %.1354.i = phi i16 [ %i.uc, %Sort.exit268.i ], [ %.0131375.i, %Sort.exit222.i ] ; 3 uses
  %.0..0..0..0..0141341.i = load ptr, ptr %i.b, align 8, !tbaa !139 ; 7 uses
  %i.sx = icmp ne ptr %.0..0..0..0..0141341.i, null
  %i.sy = icmp ne ptr %.0..0147342.i, null
  %i.sz = select i1 %i.sx, i1 %i.sy, i1 false
  br i1 %i.sz, label %.lr.ph346.i, label %.loopexit294.i

.lr.ph346.i:                                      ; preds = %.preheader295.i, %bb.bw
  %.0147345.i = phi ptr [ %.0147.i, %bb.bw ], [ %.0..0147342.i, %.preheader295.i ] ; 4 uses
  %.0141344.i = phi ptr [ %.0141.i, %bb.bw ], [ %.0..0..0..0..0141341.i, %.preheader295.i ] ; 6 uses
  %.0138343.i = phi i16 [ %.2140.i, %bb.bw ], [ 0, %.preheader295.i ] ; 3 uses
  %i.ta = load i64, ptr %.0141344.i, align 8, !tbaa !140 ; 2 uses
  %i.tb = load i64, ptr %.0147345.i, align 8, !tbaa !140 ; 2 uses
  %spec.select169.i = tail call i64 @llvm.smin.i64(i64 %i.ta, i64 %i.tb) ; 5 uses
  %spec.select170.i = tail call i64 @llvm.smax.i64(i64 %i.ta, i64 %i.tb) ; 5 uses
  %i.tc = load i32, ptr %i.e, align 4, !tbaa !88  ; 2 uses
  %i.td = sub nsw i32 0, %i.tc
  %i.te = sext i32 %i.td to i64                   ; 2 uses
  %i.tf = and i64 %spec.select169.i, %i.te        ; 3 uses
  %i.tg = sext i32 %i.tc to i64                   ; 3 uses
  %i.th = add i64 %spec.select170.i, -1
  %i.ti = add i64 %i.th, %i.tg
  %i.tj = and i64 %i.ti, %i.te                    ; 3 uses
  %i.tk = sub nsw i64 %spec.select170.i, %spec.select169.i
  %.not164.i = icmp sgt i64 %i.tk, %i.tg
  %.not165.i = icmp eq i64 %i.tf, %spec.select169.i
  %.not166.i = icmp eq i64 %i.tj, %spec.select170.i
  %i.tl = or i1 %.not165.i, %.not166.i
  %or.cond171.i = select i1 %.not164.i, i1 true, i1 %i.tl
  br i1 %or.cond171.i, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph346.i
  %i.tm = icmp sgt i64 %i.tf, %i.tj
  %i.tn = add nsw i64 %i.tf, %i.tg
  %i.to = icmp eq i64 %i.tj, %i.tn
  %or.cond173.i = select i1 %i.tm, i1 true, i1 %i.to
  br i1 %or.cond173.i, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.tp = getelementptr inbounds nuw i8, ptr %.0141344.i, i64 24
  %i.tq = load i16, ptr %i.tp, align 8, !tbaa !103
  %i.tr = and i16 %i.tq, 7
  %.not167.i = icmp eq i16 %i.tr, 2
  br i1 %.not167.i, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store i64 %spec.select169.i, ptr %.0141344.i, align 8, !tbaa !140
  store i64 %spec.select170.i, ptr %.0147345.i, align 8, !tbaa !140
  %i.ts = getelementptr inbounds nuw i8, ptr %.0141344.i, i64 48
  store i32 1, ptr %i.ts, align 8, !tbaa !144
  %i.tt = add i16 %.0138343.i, 1
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bs, %.lr.ph346.i
  %i.tu = load ptr, ptr %i.ae, align 8, !tbaa !93
  tail call void %i.tu(ptr noundef nonnull %0, i16 noundef signext %.1354.i, i64 noundef %spec.select169.i, i64 noundef %spec.select170.i, ptr noundef nonnull %.0141344.i, ptr noundef nonnull %.0147345.i) #8, !inline_history !143
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %.2140.i = phi i16 [ %.0138343.i, %bb.bv ], [ %i.tt, %bb.bu ], [ %.0138343.i, %bb.bt ] ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.0141344.i, i64 8
  %i.tw = getelementptr inbounds nuw i8, ptr %.0147345.i, i64 8
  %.0141.i = load ptr, ptr %i.tv, align 8, !tbaa !139 ; 2 uses
  %.0147.i = load ptr, ptr %i.tw, align 8, !tbaa !139 ; 2 uses
  %i.tx = icmp ne ptr %.0141.i, null
  %i.ty = icmp ne ptr %.0147.i, null
  %i.tz = select i1 %i.tx, i1 %i.ty, i1 false
  br i1 %i.tz, label %.lr.ph346.i, label %._crit_edge347.i, !llvm.loop !151

._crit_edge347.i:                                 ; preds = %bb.bw
  %i.ua = icmp sgt i16 %.2140.i, 0
  br i1 %i.ua, label %.preheader293.i, label %.loopexit294.i

.preheader293.i:                                  ; preds = %._crit_edge347.i
  %.not = icmp eq ptr %.0..1148350.i, null
  br i1 %.not, label %.loopexit294.i, label %.lr.ph353.i

.loopexit294.i:                                   ; preds = %bb.cd, %.preheader293.i, %._crit_edge347.i, %.preheader295.i
  %.0..0147342402.i = phi ptr [ %.0..0147342.i, %.preheader295.i ], [ null, %.preheader293.i ], [ %.0..0147342.i, %._crit_edge347.i ], [ %.0..1148350.i, %bb.cd ]
  %i.ub = load ptr, ptr %i.ag, align 8, !tbaa !95
  tail call void %i.ub(ptr noundef nonnull %0) #8, !inline_history !143
  %i.uc = add nsw i16 %.1354.i, 1                 ; 3 uses
  %i.ud = icmp slt i16 %i.uc, %i.su
  br i1 %i.ud, label %bb.bx, label %Sort.exit268.i

bb.bx:                                            ; preds = %.loopexit294.i
  %.not38.i224.i = icmp eq ptr %.0..0..0..0..0141341.i, null
  br i1 %.not38.i224.i, label %Sort.exit245.i, label %.lr.ph.i225.i

.lr.ph.i225.i:                                    ; preds = %bb.bx, %.lr.ph.i225.i
  %.02739.i226.i = phi ptr [ %.027.i228.i, %.lr.ph.i225.i ], [ %.0..0..0..0..0141341.i, %bb.bx ] ; 5 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.02739.i226.i, i64 16 ; 2 uses
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !118 ; 2 uses
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !133
  store i64 %i.ug, ptr %.02739.i226.i, align 8, !tbaa !140
  %i.uh = getelementptr inbounds nuw i8, ptr %.02739.i226.i, i64 24
  %i.ui = load i16, ptr %i.uh, align 8, !tbaa !103
  %i.uj = and i16 %i.ui, 8
  %.not36.i227.i = icmp eq i16 %i.uj, 0
  %i.uk = select i1 %.not36.i227.i, i64 -1, i64 1
  %i.ul = getelementptr inbounds [8 x i8], ptr %i.uf, i64 %i.uk
  store ptr %i.ul, ptr %i.ue, align 8, !tbaa !118
  %i.um = getelementptr inbounds nuw i8, ptr %.02739.i226.i, i64 32 ; 2 uses
  %i.un = load i64, ptr %i.um, align 8, !tbaa !106
  %i.uo = add nsw i64 %i.un, -1
  store i64 %i.uo, ptr %i.um, align 8, !tbaa !106
  %i.up = getelementptr inbounds nuw i8, ptr %.02739.i226.i, i64 8
  %.027.i228.i = load ptr, ptr %i.up, align 8, !tbaa !139 ; 2 uses
  %.not.i229.i = icmp eq ptr %.027.i228.i, null
  br i1 %.not.i229.i, label %.preheader.i230.i, label %.lr.ph.i225.i, !llvm.loop !149

.preheader.i230.i:                                ; preds = %.lr.ph.i225.i
  %.0.in40.i231.i = getelementptr inbounds nuw i8, ptr %.0..0..0..0..0141341.i, i64 8 ; 2 uses
  %.041.i232.i = load ptr, ptr %.0.in40.i231.i, align 8, !tbaa !131 ; 2 uses
  %.not3342.i233.i = icmp eq ptr %.041.i232.i, null
  br i1 %.not3342.i233.i, label %Sort.exit245.i, label %.lr.ph47.i234.i

.lr.ph47.i234.i:                                  ; preds = %.preheader.i230.i, %bb.bz
  %.046.i235.i = phi ptr [ %.0.i243.i, %bb.bz ], [ %.041.i232.i, %.preheader.i230.i ] ; 4 uses
  %.0.in45.i236.i = phi ptr [ %.0.in.i242.i, %bb.bz ], [ %.0.in40.i231.i, %.preheader.i230.i ] ; 2 uses
  %.144.i237.i = phi ptr [ %.2.i241.i, %bb.bz ], [ %.0..0..0..0..0141341.i, %.preheader.i230.i ] ; 2 uses
  %.02843.i238.i = phi ptr [ %.129.i240.i, %bb.bz ], [ %i.b, %.preheader.i230.i ]
  %i.uq = load i64, ptr %.144.i237.i, align 8, !tbaa !140
  %i.ur = load i64, ptr %.046.i235.i, align 8, !tbaa !140
  %.not34.i239.i = icmp sgt i64 %i.uq, %i.ur
  br i1 %.not34.i239.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.lr.ph47.i234.i
  store ptr %.046.i235.i, ptr %.02843.i238.i, align 8, !tbaa !139
  %i.us = getelementptr inbounds nuw i8, ptr %.046.i235.i, i64 8 ; 2 uses
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !131
  store ptr %i.ut, ptr %.0.in45.i236.i, align 8, !tbaa !131
  store ptr %.144.i237.i, ptr %i.us, align 8, !tbaa !131
  %.0..0..0..0..0.289.i = load ptr, ptr %i.b, align 8, !tbaa !139
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.lr.ph47.i234.i
  %.129.i240.i = phi ptr [ %i.b, %bb.by ], [ %.0.in45.i236.i, %.lr.ph47.i234.i ]
  %.2.i241.i = phi ptr [ %.0..0..0..0..0.289.i, %bb.by ], [ %.046.i235.i, %.lr.ph47.i234.i ] ; 2 uses
  %.0.in.i242.i = getelementptr inbounds nuw i8, ptr %.2.i241.i, i64 8 ; 2 uses
  %.0.i243.i = load ptr, ptr %.0.in.i242.i, align 8, !tbaa !131 ; 2 uses
  %.not33.i244.i = icmp eq ptr %.0.i243.i, null
  br i1 %.not33.i244.i, label %Sort.exit245.loopexit.i, label %.lr.ph47.i234.i, !llvm.loop !150

Sort.exit245.loopexit.i:                          ; preds = %bb.bz
  %.0..0..0..0..0..02737.i246.pre.i = load ptr, ptr %i.c, align 8, !tbaa !139 ; 2 uses
  br label %Sort.exit245.i

Sort.exit245.i:                                   ; preds = %Sort.exit245.loopexit.i, %.preheader.i230.i, %bb.bx
  %.0..0.419.i = phi ptr [ %.0..0..0..0..0..02737.i246.pre.i, %Sort.exit245.loopexit.i ], [ %.0..0.417.i.a, %bb.bx ], [ %.0..0.417.i.a, %.preheader.i230.i ] ; 3 uses
  %.0..0..02737.i246.i = phi ptr [ %.0..0..0..0..0..02737.i246.pre.i, %Sort.exit245.loopexit.i ], [ %.0..0..02737.i246411.i, %bb.bx ], [ %.0..0..02737.i246411.i, %.preheader.i230.i ] ; 9 uses
  %.not38.i247.i = icmp eq ptr %.0..0..02737.i246.i, null
  br i1 %.not38.i247.i, label %Sort.exit268.i, label %.lr.ph.i248.i

.lr.ph.i248.i:                                    ; preds = %Sort.exit245.i, %.lr.ph.i248.i
  %.02739.i249.i = phi ptr [ %.027.i251.i, %.lr.ph.i248.i ], [ %.0..0..02737.i246.i, %Sort.exit245.i ] ; 5 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.02739.i249.i, i64 16 ; 2 uses
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !118 ; 2 uses
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !133
  store i64 %i.uw, ptr %.02739.i249.i, align 8, !tbaa !140
  %i.ux = getelementptr inbounds nuw i8, ptr %.02739.i249.i, i64 24
  %i.uy = load i16, ptr %i.ux, align 8, !tbaa !103
  %i.uz = and i16 %i.uy, 8
  %.not36.i250.i = icmp eq i16 %i.uz, 0
  %i.va = select i1 %.not36.i250.i, i64 -1, i64 1
  %i.vb = getelementptr inbounds [8 x i8], ptr %i.uv, i64 %i.va
  store ptr %i.vb, ptr %i.uu, align 8, !tbaa !118
  %i.vc = getelementptr inbounds nuw i8, ptr %.02739.i249.i, i64 32 ; 2 uses
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !106
  %i.ve = add nsw i64 %i.vd, -1
  store i64 %i.ve, ptr %i.vc, align 8, !tbaa !106
  %i.vf = getelementptr inbounds nuw i8, ptr %.02739.i249.i, i64 8
  %.027.i251.i = load ptr, ptr %i.vf, align 8, !tbaa !139 ; 2 uses
  %.not.i252.i = icmp eq ptr %.027.i251.i, null
  br i1 %.not.i252.i, label %.preheader.i253.i, label %.lr.ph.i248.i, !llvm.loop !149

.preheader.i253.i:                                ; preds = %.lr.ph.i248.i
  %.0.in40.i254.i = getelementptr inbounds nuw i8, ptr %.0..0..02737.i246.i, i64 8 ; 2 uses
  %.041.i255.i = load ptr, ptr %.0.in40.i254.i, align 8, !tbaa !131 ; 2 uses
  %.not3342.i256.i = icmp eq ptr %.041.i255.i, null
  br i1 %.not3342.i256.i, label %Sort.exit268.i, label %.lr.ph47.i257.i

.lr.ph47.i257.i:                                  ; preds = %.preheader.i253.i, %bb.cb
  %.0..0.415.i = phi ptr [ %.0..0.414.i, %bb.cb ], [ %.0..0.419.i, %.preheader.i253.i ]
  %.0..0..02737.i246410.i = phi ptr [ %.0..0..02737.i246409.i, %bb.cb ], [ %.0..0..02737.i246.i, %.preheader.i253.i ]
  %.0..0147342406.i = phi ptr [ %.0..0147342405.i, %bb.cb ], [ %.0..0..02737.i246.i, %.preheader.i253.i ]
  %.046.i258.i = phi ptr [ %.0.i266.i, %bb.cb ], [ %.041.i255.i, %.preheader.i253.i ] ; 4 uses
  %.0.in45.i259.i = phi ptr [ %.0.in.i265.i, %bb.cb ], [ %.0.in40.i254.i, %.preheader.i253.i ] ; 2 uses
  %.144.i260.i = phi ptr [ %.2.i264.i, %bb.cb ], [ %.0..0..02737.i246.i, %.preheader.i253.i ] ; 2 uses
  %.02843.i261.i = phi ptr [ %.129.i263.i, %bb.cb ], [ %i.c, %.preheader.i253.i ]
  %i.vg = load i64, ptr %.144.i260.i, align 8, !tbaa !140
  %i.vh = load i64, ptr %.046.i258.i, align 8, !tbaa !140
  %.not34.i262.i = icmp sgt i64 %i.vg, %i.vh
  br i1 %.not34.i262.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %.lr.ph47.i257.i
  store ptr %.046.i258.i, ptr %.02843.i261.i, align 8, !tbaa !139
  %i.vi = getelementptr inbounds nuw i8, ptr %.046.i258.i, i64 8 ; 2 uses
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !131
  store ptr %i.vj, ptr %.0.in45.i259.i, align 8, !tbaa !131
  store ptr %.144.i260.i, ptr %i.vi, align 8, !tbaa !131
  %.0..0..0..0..0.286.i = load ptr, ptr %i.c, align 8, !tbaa !139 ; 4 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.lr.ph47.i257.i
  %.0..0.414.i = phi ptr [ %.0..0..0..0..0.286.i, %bb.ca ], [ %.0..0.415.i, %.lr.ph47.i257.i ] ; 2 uses
  %.0..0..02737.i246409.i = phi ptr [ %.0..0..0..0..0.286.i, %bb.ca ], [ %.0..0..02737.i246410.i, %.lr.ph47.i257.i ] ; 2 uses
  %.0..0147342405.i = phi ptr [ %.0..0..0..0..0.286.i, %bb.ca ], [ %.0..0147342406.i, %.lr.ph47.i257.i ] ; 3 uses
  %.129.i263.i = phi ptr [ %i.c, %bb.ca ], [ %.0.in45.i259.i, %.lr.ph47.i257.i ]
  %.2.i264.i = phi ptr [ %.0..0..0..0..0.286.i, %bb.ca ], [ %.046.i258.i, %.lr.ph47.i257.i ] ; 2 uses
  %.0.in.i265.i = getelementptr inbounds nuw i8, ptr %.2.i264.i, i64 8 ; 2 uses
  %.0.i266.i = load ptr, ptr %.0.in.i265.i, align 8, !tbaa !131 ; 2 uses
  %.not33.i267.i = icmp eq ptr %.0.i266.i, null
  br i1 %.not33.i267.i, label %Sort.exit268.i, label %.lr.ph47.i257.i, !llvm.loop !150

Sort.exit268.i:                                   ; preds = %bb.cb, %.preheader.i253.i, %Sort.exit245.i, %.loopexit294.i
  %.0..0.418.i = phi ptr [ %.0..0.417.i.a, %.loopexit294.i ], [ %.0..0.419.i, %.preheader.i253.i ], [ %.0..0.419.i, %Sort.exit245.i ], [ %.0..0.414.i, %bb.cb ] ; 2 uses
  %.0..0..02737.i246412.i = phi ptr [ %.0..0..02737.i246411.i, %.loopexit294.i ], [ %.0..0..02737.i246.i, %.preheader.i253.i ], [ null, %Sort.exit245.i ], [ %.0..0..02737.i246409.i, %bb.cb ]
  %.0..1148350407.i = phi ptr [ %.0..1148350.i, %.loopexit294.i ], [ %.0..0..02737.i246.i, %.preheader.i253.i ], [ null, %Sort.exit245.i ], [ %.0..0147342405.i, %bb.cb ]
  %.0..0147342401.i = phi ptr [ %.0..0147342402.i, %.loopexit294.i ], [ %.0..0..02737.i246.i, %.preheader.i253.i ], [ null, %Sort.exit245.i ], [ %.0..0147342405.i, %bb.cb ]
  %exitcond.not.i = icmp eq i16 %i.uc, %i.su
  br i1 %exitcond.not.i, label %._crit_edge355.i, label %.preheader295.i, !llvm.loop !152

._crit_edge355.i:                                 ; preds = %Sort.exit268.i, %Sort.exit222.i
  %.0..0..i = phi ptr [ %.0..0147342404.i, %Sort.exit222.i ], [ %.0..0.418.i, %Sort.exit268.i ] ; 2 uses
  %.1.lcssa.i = phi i16 [ %.0131375.i, %Sort.exit222.i ], [ %i.su, %Sort.exit268.i ] ; 2 uses
  %.0..0..0..0..0.287.i = load ptr, ptr %i.b, align 8, !tbaa !139 ; 3 uses
  %.not161361.i = icmp eq ptr %.0..0..0..0..0.287.i, null
  br i1 %.not161361.i, label %._crit_edge365.i, label %.lr.ph364.i

.lr.ph364.i:                                      ; preds = %._crit_edge355.i, %DelOld.exit276.i
  %.0..0..012.i269.i = phi ptr [ %.0..0..012.i269415.i, %DelOld.exit276.i ], [ %.0..0..0..0..0.287.i, %._crit_edge355.i ] ; 6 uses
  %.3362.i = phi ptr [ %i.vl, %DelOld.exit276.i ], [ %.0..0..0..0..0.287.i, %._crit_edge355.i ] ; 4 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.3362.i, i64 8
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !131 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.3362.i, i64 32
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !106
  %i.vo = icmp ne i64 %i.vn, 0
  %.not13.i270.i = icmp eq ptr %.0..0..012.i269.i, null
  %or.cond291.i = select i1 %i.vo, i1 true, i1 %.not13.i270.i
  br i1 %or.cond291.i, label %DelOld.exit276.i, label %.lr.ph.i271.preheader.i

.lr.ph.i271.preheader.i:                          ; preds = %.lr.ph364.i
  %i.vp = icmp eq ptr %.0..0..012.i269.i, %.3362.i
  br i1 %i.vp, label %.lr.ph.i271._crit_edge.i, label %.lr.ph358.i

.lr.ph.i271.i:                                    ; preds = %.lr.ph358.i
  %i.vq = icmp eq ptr %.0.i274.i, %.3362.i
  br i1 %i.vq, label %.lr.ph.i271._crit_edge.i.loopexit, label %.lr.ph358.i, !llvm.loop !147

.lr.ph.i271._crit_edge.i.loopexit:                ; preds = %.lr.ph.i271.i
  %i.vr = getelementptr inbounds nuw i8, ptr %.015.i272357.i, i64 8
  br label %.lr.ph.i271._crit_edge.i

.lr.ph.i271._crit_edge.i:                         ; preds = %.lr.ph.i271._crit_edge.i.loopexit, %.lr.ph.i271.preheader.i
  %.015.i272.lcssa.i = phi ptr [ %.0..0..012.i269.i, %.lr.ph.i271.preheader.i ], [ %.0.i274.i, %.lr.ph.i271._crit_edge.i.loopexit ]
  %.0914.i273.lcssa.i = phi ptr [ %i.b, %.lr.ph.i271.preheader.i ], [ %i.vr, %.lr.ph.i271._crit_edge.i.loopexit ]
  %i.vs = getelementptr inbounds nuw i8, ptr %.015.i272.lcssa.i, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !131
  store ptr %i.vt, ptr %.0914.i273.lcssa.i, align 8, !tbaa !139
  %.0..0..0..0..0..012.i269.pre.i = load ptr, ptr %i.b, align 8
  br label %DelOld.exit276.i

.lr.ph358.i:                                      ; preds = %.lr.ph.i271.preheader.i, %.lr.ph.i271.i
  %.015.i272357.i = phi ptr [ %.0.i274.i, %.lr.ph.i271.i ], [ %.0..0..012.i269.i, %.lr.ph.i271.preheader.i ] ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.015.i272357.i, i64 8
  %.0.i274.i = load ptr, ptr %i.vu, align 8, !tbaa !139 ; 4 uses
  %.not.i275.i = icmp eq ptr %.0.i274.i, null
  br i1 %.not.i275.i, label %DelOld.exit276.i, label %.lr.ph.i271.i, !llvm.loop !147

DelOld.exit276.i:                                 ; preds = %.lr.ph358.i, %.lr.ph.i271._crit_edge.i, %.lr.ph364.i
  %.0..0..012.i269415.i = phi ptr [ %.0..0..012.i269.i, %.lr.ph364.i ], [ %.0..0..0..0..0..012.i269.pre.i, %.lr.ph.i271._crit_edge.i ], [ %.0..0..012.i269.i, %.lr.ph358.i ] ; 2 uses
  %.not161.i = icmp eq ptr %i.vl, null
  br i1 %.not161.i, label %._crit_edge365.i, label %.lr.ph364.i, !llvm.loop !153

._crit_edge365.i:                                 ; preds = %DelOld.exit276.i, %._crit_edge355.i
  %.0..0..02737.i428.i = phi ptr [ null, %._crit_edge355.i ], [ %.0..0..012.i269415.i, %DelOld.exit276.i ]
  %.not162370.i = icmp eq ptr %.0..0..i, null
  br i1 %.not162370.i, label %.loopexit296.i, label %.lr.ph373.preheader.i

.lr.ph373.preheader.i:                            ; preds = %._crit_edge365.i
  %.0..0..0..0..0..012.i277.pre423.i = load ptr, ptr %i.c, align 8
  br label %.lr.ph373.i

.lr.ph373.i:                                      ; preds = %DelOld.exit284.i, %.lr.ph373.preheader.i
  %.0..0..012.i277.i = phi ptr [ %.0..0..012.i277424.i, %DelOld.exit284.i ], [ %.0..0..0..0..0..012.i277.pre423.i, %.lr.ph373.preheader.i ] ; 6 uses
  %.4371.i = phi ptr [ %i.vw, %DelOld.exit284.i ], [ %.0..0..i, %.lr.ph373.preheader.i ] ; 4 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.4371.i, i64 8
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !131 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.4371.i, i64 32
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !106
  %i.vz = icmp ne i64 %i.vy, 0
  %.not13.i278.i = icmp eq ptr %.0..0..012.i277.i, null
  %or.cond292.i = select i1 %i.vz, i1 true, i1 %.not13.i278.i
  br i1 %or.cond292.i, label %DelOld.exit284.i, label %.lr.ph.i279.preheader.i

.lr.ph.i279.preheader.i:                          ; preds = %.lr.ph373.i
  %i.wa = icmp eq ptr %.0..0..012.i277.i, %.4371.i
  br i1 %i.wa, label %.lr.ph.i279._crit_edge.i, label %.lr.ph367.i

.lr.ph.i279.i:                                    ; preds = %.lr.ph367.i
  %i.wb = icmp eq ptr %.0.i282.i, %.4371.i
  br i1 %i.wb, label %.lr.ph.i279._crit_edge.i.loopexit, label %.lr.ph367.i, !llvm.loop !147

.lr.ph.i279._crit_edge.i.loopexit:                ; preds = %.lr.ph.i279.i
  %i.wc = getelementptr inbounds nuw i8, ptr %.015.i280366.i, i64 8
  br label %.lr.ph.i279._crit_edge.i

.lr.ph.i279._crit_edge.i:                         ; preds = %.lr.ph.i279._crit_edge.i.loopexit, %.lr.ph.i279.preheader.i
  %.015.i280.lcssa.i = phi ptr [ %.0..0..012.i277.i, %.lr.ph.i279.preheader.i ], [ %.0.i282.i, %.lr.ph.i279._crit_edge.i.loopexit ]
  %.0914.i281.lcssa.i = phi ptr [ %i.c, %.lr.ph.i279.preheader.i ], [ %i.wc, %.lr.ph.i279._crit_edge.i.loopexit ]
  %i.wd = getelementptr inbounds nuw i8, ptr %.015.i280.lcssa.i, i64 8
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !131
  store ptr %i.we, ptr %.0914.i281.lcssa.i, align 8, !tbaa !139
  %.0..0..0..0..0..012.i277.pre.i = load ptr, ptr %i.c, align 8
  br label %DelOld.exit284.i

.lr.ph367.i:                                      ; preds = %.lr.ph.i279.preheader.i, %.lr.ph.i279.i
  %.015.i280366.i = phi ptr [ %.0.i282.i, %.lr.ph.i279.i ], [ %.0..0..012.i277.i, %.lr.ph.i279.preheader.i ] ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.015.i280366.i, i64 8
  %.0.i282.i = load ptr, ptr %i.wf, align 8, !tbaa !139 ; 4 uses
  %.not.i283.i = icmp eq ptr %.0.i282.i, null
  br i1 %.not.i283.i, label %DelOld.exit284.i, label %.lr.ph.i279.i, !llvm.loop !147

DelOld.exit284.i:                                 ; preds = %.lr.ph367.i, %.lr.ph.i279._crit_edge.i, %.lr.ph373.i
  %.0..0..012.i277424.i = phi ptr [ %.0..0..012.i277.i, %.lr.ph373.i ], [ %.0..0..0..0..0..012.i277.pre.i, %.lr.ph.i279._crit_edge.i ], [ %.0..0..012.i277.i, %.lr.ph367.i ]
  %.not162.i = icmp eq ptr %i.vw, null
  br i1 %.not162.i, label %.loopexit296.i, label %.lr.ph373.i, !llvm.loop !154

.lr.ph381.i:                                      ; preds = %.preheader.i, %.lr.ph381.i
  %.2380.i = phi i16 [ %i.wh, %.lr.ph381.i ], [ %.0131.lcssa.i, %.preheader.i ]
  %i.wg = load ptr, ptr %i.ag, align 8, !tbaa !95
  tail call void %i.wg(ptr noundef nonnull %0) #8, !inline_history !143
  %i.wh = add i16 %.2380.i, 1                     ; 2 uses
  %.not159.i = icmp sgt i16 %i.wh, %.1144.i
  br i1 %.not159.i, label %Draw_Sweep.exit.thread, label %.lr.ph381.i, !llvm.loop !155

.lr.ph353.i:                                      ; preds = %.preheader293.i, %bb.cd
  %.1148352.i = phi ptr [ %.1148.i, %bb.cd ], [ %.0..1148350.i, %.preheader293.i ] ; 3 uses
  %.1142351.i = phi ptr [ %.1142.i, %bb.cd ], [ %.0..0..0..0..0141341.i, %.preheader293.i ] ; 4 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.1142351.i, i64 48 ; 2 uses
  %i.wj = load i32, ptr %i.wi, align 8, !tbaa !144
  %.not163.i = icmp eq i32 %i.wj, 0
  br i1 %.not163.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph353.i
  store i32 0, ptr %i.wi, align 8, !tbaa !144
  %i.wk = load ptr, ptr %i.af, align 8, !tbaa !94
  %i.wl = load i64, ptr %.1142351.i, align 8, !tbaa !140
  %i.wm = load i64, ptr %.1148352.i, align 8, !tbaa !140
  tail call void %i.wk(ptr noundef nonnull %0, i16 noundef signext %.1354.i, i64 noundef %i.wl, i64 noundef %i.wm, ptr noundef nonnull %.1142351.i, ptr noundef nonnull %.1148352.i) #8, !inline_history !143
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.lr.ph353.i
  %i.wn = getelementptr inbounds nuw i8, ptr %.1142351.i, i64 8
  %i.wo = getelementptr inbounds nuw i8, ptr %.1148352.i, i64 8
  %.1142.i = load ptr, ptr %i.wn, align 8, !tbaa !139 ; 2 uses
  %.1148.i = load ptr, ptr %i.wo, align 8, !tbaa !139 ; 2 uses
  %i.wp = icmp ne ptr %.1142.i, null
  %i.wq = icmp ne ptr %.1148.i, null
  %i.wr = select i1 %i.wp, i1 %i.wq, i1 false
  br i1 %i.wr, label %.lr.ph353.i, label %.loopexit294.i, !llvm.loop !156

Draw_Sweep.exit.thread:                           ; preds = %.lr.ph381.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread

bb.ce:                                            ; preds = %._crit_edge.i41
  store i32 20, ptr %i.j, align 8, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %Convert_Glyph.exit.thread.thread50

.thread:                                          ; preds = %Convert_Glyph.exit.thread231, %Draw_Sweep.exit.thread
  %i.ws = icmp slt i32 %.0, 1
  br i1 %i.ws, label %Convert_Glyph.exit.thread.thread50, label %bb.cf

bb.cf:                                            ; preds = %.thread
  %i.wt = add nsw i32 %.0, -1                     ; 2 uses
  %i.wu = add nsw i32 %.030, -1
  %i.wv = zext nneg i32 %i.wt to i64
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.wv
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !3
  br label %.outer

Convert_Glyph.exit.thread.thread50:               ; preds = %Convert_Glyph.exit.thread.thread, %Convert_Glyph.exit.thread, %.thread, %.thread223.i.i, %bb.ak, %bb.ce
  %.027 = phi i32 [ 99, %bb.ak ], [ 20, %.thread223.i.i ], [ 20, %bb.ce ], [ %.pr, %Convert_Glyph.exit.thread ], [ 98, %Convert_Glyph.exit.thread.thread ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  ret i32 %.027
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Horizontal_Sweep_Init(ptr nofree readnone captures(none) %0, i16 signext %1, i16 signext %2) #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Horizontal_Sweep_Span(ptr nofree noundef readonly captures(none) %0, i16 noundef signext %1, i64 noundef %2, i64 noundef %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !88   ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = add i64 %2, -1
  %i.e = add i64 %i.d, %i.c
  %i.f = sub nsw i32 0, %i.b
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  %i.h = and i64 %i.e, %i.g
  %i.i = icmp eq i64 %2, %i.h
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 8, !tbaa !85
  %i.k = zext nneg i32 %i.j to i64
  %i.l = ashr i64 %2, %i.k                        ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.o = load i32, ptr %i.n, align 8, !tbaa !101
  %i.p = zext i32 %i.o to i64
  %i.q = icmp samesign ult i64 %i.l, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !99
  %i.t = ashr i16 %1, 3
  %i.u = sext i16 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.x = load i32, ptr %i.w, align 8, !tbaa !100
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %i.l, %i.y
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.v, i64 %i.aa ; 2 uses
  %i.ac = and i16 %1, 7
  %i.ad = lshr exact i16 128, %i.ac
  %i.ae = load i8, ptr %i.ab, align 1, !tbaa !38
  %i.af = trunc nuw i16 %i.ad to i8
  %i.ag = or i8 %i.ae, %i.af
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !38
  %.pre = load i32, ptr %i.a, align 4, !tbaa !88
  %.pre37 = sub nsw i32 0, %.pre
  %.pre38 = sext i32 %.pre37 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.pre-phi39 = phi i64 [ %i.g, %bb.b ], [ %i.g, %bb.c ], [ %.pre38, %bb.d ], [ %i.g, %bb.a ]
  %i.ah = and i64 %3, %.pre-phi39
  %i.ai = icmp eq i64 %3, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aj = load i32, ptr %0, align 8, !tbaa !85
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = ashr i64 %3, %i.ak                      ; 3 uses
  %i.am = icmp sgt i64 %i.al, -1
  br i1 %i.am, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !101
  %i.ap = zext i32 %i.ao to i64
  %i.aq = icmp samesign ult i64 %i.al, %i.ap
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !99
  %i.at = ashr i16 %1, 3
  %i.au = sext i16 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !100
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul nsw i64 %i.al, %i.ay
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.av, i64 %i.ba ; 2 uses
  %i.bc = and i16 %1, 7
  %i.bd = lshr exact i16 128, %i.bc
  %i.be = load i8, ptr %i.bb, align 1, !tbaa !38
  %i.bf = trunc nuw i16 %i.bd to i8
  %i.bg = or i8 %i.be, %i.bf
  store i8 %i.bg, ptr %i.bb, align 1, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Horizontal_Sweep_Drop(ptr nofree noundef readonly captures(none) %0, i16 noundef signext %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address) %4, ptr nofree noundef readonly captures(address) %5) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !88   ; 4 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = add i64 %2, -1
  %i.e = add i64 %i.d, %i.c
  %i.f = sub nsw i32 0, %i.b
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  %i.h = and i64 %i.e, %i.g                       ; 6 uses
  %i.i = and i64 %3, %i.g                         ; 6 uses
  %i.j = icmp sgt i64 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre87 = load i32, ptr %0, align 8, !tbaa !85
  %.pre88 = zext nneg i32 %.pre87 to i64
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load i16, ptr %i.k, align 8, !tbaa !103  ; 3 uses
  %i.m = and i16 %i.l, 7                          ; 2 uses
  %i.n = add nsw i64 %i.i, %i.c
  %i.o = icmp eq i64 %i.h, %i.n
  br i1 %i.o, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  switch i16 %i.m, label %.thread [
    i16 0, label %bb.o
end_hunk_1
