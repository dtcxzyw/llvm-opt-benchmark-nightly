inline.NumInlined: 3070
inline.NumDeleted: 1405
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi:bb.a
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i: ; preds = %bb.j, %bb.i
  %i.bg = add nsw i32 %i.ai, 64                   ; 2 uses
  %.not3347.i.i.i = icmp sgt i32 %i.bg, %i.aj
  br i1 %.not3347.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i
  %.not34.i.i.i = icmp eq i32 %i.ad, %i.aj
  br i1 %.not34.i.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i, label %bb.k

.lr.ph.i.i.i:                                     ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i, %.lr.ph.i.i.i
  %i.bh = phi i32 [ %i.bl, %.lr.ph.i.i.i ], [ %i.bg, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i ] ; 2 uses
  %.048.i.i.i = phi i32 [ %i.bh, %.lr.ph.i.i.i ], [ %i.ai, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i ]
  %i.bi = sdiv i32 %.048.i.i.i, 64
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bj
  store i64 -1, ptr %i.bk, align 8, !tbaa !139
  %i.bl = add nsw i32 %i.bh, 64                   ; 2 uses
  %.not33.i.i.i = icmp sgt i32 %i.bl, %i.aj
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !578

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.bm = and i32 %i.ad, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i37.i.i.i = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i37.i.i.i, -1
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split: ; preds = %bb.h, %bb.k
  %.sink19 = phi i64 [ %i.bo, %bb.k ], [ %i.au, %bb.h ]
  %.sink = ashr i32 %i.ad, 6
  %i.bp = sext i32 %.sink to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bp ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !139
  %i.bs = or i64 %i.br, %.sink19
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !139
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i:    ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split, %._crit_edge.i.i.i, %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 37
  store i8 0, ptr %i.bt, align 1, !tbaa !306
  br label %_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit

_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i, %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS7_PKT_PKmPKiEUliE_EEvSE_iibSA_EUlimE_ZNS3_ISH_EEvSE_iibSA_EUliE_EEviiSA_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.234) align 8 %2, ptr noundef byval(%class.anon.235) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !553, !range !76, !noundef !77
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !556
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !139
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ag, %bb.d ] ; 3 uses
  %i.ac = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = or disjoint i32 %i.d, %i.ad
  call void @_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i32 noundef %i.ae)
  %i.af = add nsw i64 %.011.i, -1
  %i.ag = and i64 %i.af, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ag, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !579

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sdiv i32 %0, 64                         ; 2 uses
  %i.ai = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i.i35, -1
  %i.al = sub nsw i32 64, %i.ai
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl i64 %i.ak, %i.am
  %i.ao = load i8, ptr %2, align 8, !tbaa !553, !range !76, !noundef !77
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !556
  %i.ar = sext i32 %i.ah to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !139
  %i.au = xor i8 %i.ao, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = xor i64 %i.at, %i.aw
  %i.ay = and i64 %i.ax, %i.an                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.ay, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = shl nsw i32 %i.ah, 6
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.ay, %.preheader.i37 ], [ %i.bf, %bb.g ] ; 3 uses
  %i.bb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  call void @_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %i.az, i32 noundef %i.bd)
  %i.be = add i64 %.011.i38, -1
  %i.bf = and i64 %i.be, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bf, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !579

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3351 = icmp sgt i32 %i.bg, %i.d
  br i1 %.not3351, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 48
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %bb.v

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit
  %i.bn = phi i32 [ %i.bg, %.lr.ph ], [ %i.fb, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit ] ; 2 uses
  %.052 = phi i32 [ %i.c, %.lr.ph ], [ %i.bn, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit ] ; 2 uses
  %i.bo = sdiv i32 %.052, 64                      ; 3 uses
  %i.bp = load i8, ptr %3, align 8, !tbaa !557, !range !76, !noundef !77
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !559
  %i.br = sext i32 %i.bo to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !139
  %i.bu = xor i8 %i.bp, 1
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = xor i64 %i.bt, %i.bw                    ; 2 uses
  switch i64 %i.bx, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.by = shl nsw i32 %i.bo, 6
  %i.bz = load ptr, ptr %i.bi, align 8, !tbaa !573, !nonnull !77, !align !312
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !277 ; 2 uses
  %.not.i48 = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %i.bj, align 8, !tbaa !574, !nonnull !77, !align !312
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !357 ; 2 uses
  %.not9.i = icmp eq ptr %i.cc, null
  %i.cd = load ptr, ptr %i.bk, align 8, !nonnull !77, !align !312
  %i.ce = load ptr, ptr %i.bl, align 8, !nonnull !77, !align !312
  %i.cf = load ptr, ptr %i.bm, align 8, !nonnull !77, !align !312 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 37
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ch = shl nsw i32 %i.bo, 6                    ; 2 uses
  %i.ci = add i32 %i.ch, 64
  %i.cj = sext i32 %i.ci to i64
  %.0.off = add i32 %.052, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.ck = sext i32 %i.ch to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.ck, %.lr.ph21.i ], [ %i.cm, %bb.j ] ; 2 uses
  %i.cl = trunc i64 %.020.i to i32
  call void @_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i32 noundef %i.cl)
  %i.cm = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cj
  br i1 %i.cn, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, !llvm.loop !580

bb.k:                                             ; preds = %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, %.lr.ph.i
  %.01519.i = phi i64 [ %i.bx, %.lr.ph.i ], [ %i.fa, %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit ] ; 3 uses
  %i.co = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = or disjoint i32 %i.by, %i.cp            ; 3 uses
  br i1 %.not.i48, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cu = phi i32 [ %i.ct, %bb.l ], [ %i.cq, %bb.k ]
  br i1 %.not9.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = zext i32 %i.cq to i64                   ; 2 uses
  %i.cw = lshr i64 %i.cv, 6
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !139
  %i.cz = and i64 %i.cv, 63
  %i.da = shl nuw i64 1, %i.cz
  %i.db = and i64 %i.cy, %i.da
  %.not.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i, label %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dc = load ptr, ptr %i.cd, align 8, !tbaa !277
  %i.dd = sext i32 %i.cu to i64                   ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3  ; 3 uses
  %i.dg = load ptr, ptr %i.ce, align 8, !tbaa !277
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.dd
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3  ; 6 uses
  %i.dj = add nsw i32 %i.di, %i.df                ; 5 uses
  %i.dk = icmp eq i32 %i.df, 0
  br i1 %i.dk, label %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dl = load ptr, ptr %i.cf, align 8, !tbaa !271 ; 3 uses
  %.not.i.i.i.i = icmp sgt i32 %i.df, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.dm = add i32 %i.di, 63                       ; 2 uses
  %i.dn = srem i32 %i.dm, 64
  %i.do = sub nsw i32 %i.dm, %i.dn                ; 6 uses
  %i.dp = and i32 %i.dj, -64                      ; 4 uses
  %i.dq = icmp slt i32 %i.dp, %i.do
  br i1 %i.dq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dr = and i32 %i.dj, 63
  %i.ds = zext nneg i32 %i.dr to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.ds
  %i.dt = xor i64 %notmask.i.i.i.i.i, -1
  %i.du = sub nsw i32 %i.do, %i.di                ; 2 uses
  %i.dv = zext nneg i32 %i.du to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.dv
  %i.dw = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.dx = sub nsw i32 64, %i.du
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = shl i64 %i.dw, %i.dy
  %i.ea = and i64 %i.dz, %i.dt
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i

bb.s:                                             ; preds = %bb.q
  %.not32.i.i.i.i = icmp eq i32 %i.di, %i.do
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eb = sdiv i32 %i.di, 64
  %i.ec = sub nsw i32 %i.do, %i.di                ; 2 uses
  %i.ed = zext nneg i32 %i.ec to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.ed
  %i.ee = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.ef = sub nsw i32 64, %i.ec
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = shl i64 %i.ee, %i.eg
  %i.ei = sext i32 %i.eb to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ei ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !139
  %i.el = or i64 %i.ek, %i.eh
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !139
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i: ; preds = %bb.t, %bb.s
  %i.em = add nsw i32 %i.do, 64                   ; 2 uses
  %.not3347.i.i.i.i = icmp sgt i32 %i.em, %i.dp
  br i1 %.not3347.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.dj, %i.dp
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i, label %bb.u

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i, %.lr.ph.i.i.i.i
  %i.en = phi i32 [ %i.er, %.lr.ph.i.i.i.i ], [ %i.em, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i = phi i32 [ %i.en, %.lr.ph.i.i.i.i ], [ %i.do, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i ]
  %i.eo = sdiv i32 %.048.i.i.i.i, 64
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ep
  store i64 -1, ptr %i.eq, align 8, !tbaa !139
  %i.er = add nsw i32 %i.en, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.er, %i.dp
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !578

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  %i.es = and i32 %i.dj, 63
  %i.et = zext nneg i32 %i.es to i64
  %notmask.i37.i.i.i.i = shl nsw i64 -1, %i.et
  %i.eu = xor i64 %notmask.i37.i.i.i.i, -1
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i: ; preds = %bb.u, %bb.r
  %.sink19.i = phi i64 [ %i.eu, %bb.u ], [ %i.ea, %bb.r ]
  %.sink.i = ashr i32 %i.dj, 6
  %i.ev = sext i32 %.sink.i to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ev ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !139
  %i.ey = or i64 %i.ex, %.sink19.i
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !139
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i:  ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i, %._crit_edge.i.i.i.i, %bb.p
  store i8 0, ptr %i.cg, align 1, !tbaa !306
  br label %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit

_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit: ; preds = %bb.n, %bb.o, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i
  %i.ez = add i64 %.01519.i, -1
  %i.fa = and i64 %i.ez, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.fa, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !581

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit: ; preds = %bb.j, %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, %bb.h, %bb.i
  %i.fb = add nsw i32 %i.bn, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.fb, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !582

bb.v:                                             ; preds = %._crit_edge
  %i.fc = ashr i32 %1, 6
  %i.fd = and i32 %1, 63
  %i.fe = zext nneg i32 %i.fd to i64
  %notmask.i42 = shl nsw i64 -1, %i.fe
  %i.ff = xor i64 %notmask.i42, -1
  %i.fg = load i8, ptr %2, align 8, !tbaa !553, !range !76, !noundef !77
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !556
  %i.fj = sext i32 %i.fc to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !139
  %i.fm = xor i8 %i.fg, 1
  %i.fn = zext nneg i8 %i.fm to i64
  %i.fo = sub nsw i64 0, %i.fn
  %i.fp = xor i64 %i.fl, %i.fo
  %i.fq = and i64 %i.fp, %i.ff                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fq, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.v
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fq, %.preheader.i44 ], [ %i.fw, %bb.w ] ; 3 uses
  %i.fs = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ft = trunc nuw nsw i64 %i.fs to i32
  %i.fu = or disjoint i32 %i.d, %i.ft
  call void @_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %i.fr, i32 noundef %i.fu)
  %i.fv = add nsw i64 %.011.i45, -1
  %i.fw = and i64 %i.fv, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fw, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %bb.w, !llvm.loop !579

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit: ; preds = %bb.w, %bb.d, %bb.v, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9functions13toWrapCaptureINS0_11ArrayVectorEEEN5boost13intrusive_ptrINS0_6BufferEEEiPKNS0_8CallableERKS1_RKSt10shared_ptrIT_EEUliE_EEvSG_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.236) align 8 %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.237, align 8            ; 6 uses
end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKS8_INS0_10BaseVectorEERKSt6vectorISE_SaISE_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEEST_ST_ENKUliE_clEi:bb.a
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !340
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit

bb.j:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !335
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.af
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.j
  %.0.i.i = phi i32 [ %i.cb, %bb.j ], [ %i.bx, %bb.i ], [ %i.bs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.cc = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.cd = lshr i64 %i.cc, 6
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !139
  %i.cg = and i64 %i.cc, 63
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = and i64 %i.ch, %i.cf
  %.not = icmp eq i64 %i.ci, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit
  %i.cj = load ptr, ptr %i.aa, align 8, !tbaa !640, !nonnull !77, !align !312
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !277
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.j ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !3
  %i.co = load ptr, ptr %i.ab, align 8, !tbaa !641, !nonnull !77, !align !312
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !277
  %i.cq = load ptr, ptr %i.r, align 8, !tbaa !637, !nonnull !77, !align !450 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cs
  store i32 %i.bs, ptr %i.ct, align 4, !tbaa !3
  %i.cu = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.cq, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.e, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !341

.loopexit:                                        ; preds = %bb.l, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSB_INS0_10BaseVectorEERKSt6vectorISH_SaISH_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESW_SW_EUliE_EEvPKmiibSC_EUlimE_ZNS3_ISX_EEvSZ_iibSC_EUliE_EEviiSC_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.239) align 8 %2, ptr noundef byval(%class.anon.240) align 8 %3) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !343, !range !76, !noundef !77
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !349
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !139
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ag, %bb.d ] ; 3 uses
  %i.ac = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = or disjoint i32 %i.d, %i.ad
  call void @_ZZN8facebook5velox9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKS8_INS0_10BaseVectorEERKSt6vectorISE_SaISE_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEEST_ST_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i32 noundef %i.ae)
  %i.af = add nsw i64 %.011.i, -1
  %i.ag = and i64 %i.af, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ag, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !642

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sdiv i32 %0, 64                         ; 2 uses
  %i.ai = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i.i35, -1
  %i.al = sub nsw i32 64, %i.ai
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl i64 %i.ak, %i.am
  %i.ao = load i8, ptr %2, align 8, !tbaa !343, !range !76, !noundef !77
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !349
  %i.ar = sext i32 %i.ah to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !139
  %i.au = xor i8 %i.ao, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = xor i64 %i.at, %i.aw
  %i.ay = and i64 %i.ax, %i.an                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.ay, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = shl nsw i32 %i.ah, 6
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.ay, %.preheader.i37 ], [ %i.bf, %bb.g ] ; 3 uses
  %i.bb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  call void @_ZZN8facebook5velox9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKS8_INS0_10BaseVectorEERKSt6vectorISE_SaISE_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEEST_ST_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(64) %i.az, i32 noundef %i.bd)
  %i.be = add i64 %.011.i38, -1
  %i.bf = and i64 %i.be, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bf, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !642

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3370 = icmp sgt i32 %i.bg, %i.d
  br i1 %.not3370, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit40
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 72
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit, label %bb.ak

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUliE_clEi.exit
  %i.bq = phi i32 [ %i.bg, %.lr.ph ], [ %i.ij, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUliE_clEi.exit ] ; 2 uses
  %.071 = phi i32 [ %i.c, %.lr.ph ], [ %i.bq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUliE_clEi.exit ] ; 2 uses
  %i.br = sdiv i32 %.071, 64                      ; 3 uses
  %i.bs = load i8, ptr %3, align 8, !tbaa !350, !range !76, !noundef !77
  %i.bt = load ptr, ptr %i.bh, align 8, !tbaa !352
  %i.bu = sext i32 %i.br to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !139
  %i.bx = xor i8 %i.bs, 1
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = sub nsw i64 0, %i.by
  %i.ca = xor i64 %i.bw, %i.bz                    ; 2 uses
  switch i64 %i.ca, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cb = shl nsw i32 %i.br, 6
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cc = shl nsw i32 %i.br, 6                    ; 2 uses
  %i.cd = add i32 %i.cc, 64
  %i.ce = sext i32 %i.cd to i64
  %.0.off = add i32 %.071, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.cf = sext i32 %i.cc to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.cf, %.lr.ph21.i ], [ %i.ch, %bb.j ] ; 2 uses
  %i.cg = trunc i64 %.020.i to i32
  call void @_ZZN8facebook5velox9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKS8_INS0_10BaseVectorEERKSt6vectorISE_SaISE_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEEST_ST_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, i32 noundef %i.cg)
  %i.ch = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.ce
  br i1 %i.ci, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUliE_clEi.exit, !llvm.loop !643

bb.k:                                             ; preds = %_ZZN8facebook5velox9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKS8_INS0_10BaseVectorEERKSt6vectorISE_SaISE_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEEST_ST_ENKUliE_clEi.exit, %.lr.ph.i
  %.01519.i = phi i64 [ %i.ca, %.lr.ph.i ], [ %i.ii, %_ZZN8facebook5velox9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKS8_INS0_10BaseVectorEERKSt6vectorISE_SaISE_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEEST_ST_ENKUliE_clEi.exit ] ; 3 uses
  %i.cj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = or disjoint i32 %i.cb, %i.ck            ; 2 uses
  %i.cm = load ptr, ptr %i.bi, align 8, !tbaa !634, !nonnull !77, !align !312
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !183 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call noundef zeroext i1 %i.cq(ptr noundef nonnull align 8 dereferenceable(94) %i.cn, i32 noundef %i.cl), !inline_history !328
  br i1 %i.cr, label %_ZZN8facebook5velox9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKS8_INS0_10BaseVectorEERKSt6vectorISE_SaISE_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEEST_ST_ENKUliE_clEi.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cs = load ptr, ptr %i.bj, align 8, !tbaa !635, !nonnull !77, !align !312
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !277
  %i.cu = sext i32 %i.cl to i64                   ; 4 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3  ; 2 uses
  %i.cx = load ptr, ptr %i.bk, align 8, !tbaa !636, !nonnull !77, !align !312
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !277
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.cu
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = load ptr, ptr %i.bl, align 8, !tbaa !637, !nonnull !77, !align !450
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = load ptr, ptr %i.bm, align 8, !tbaa !638, !nonnull !77, !align !312
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !277
  %i.df = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.cu
  store i32 %i.dc, ptr %i.df, align 4, !tbaa !3
  %i.dg = icmp sgt i32 %i.cw, 0
  br i1 %i.dg, label %.lr.ph.i48, label %_ZZN8facebook5velox9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKS8_INS0_10BaseVectorEERKSt6vectorISE_SaISE_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEEST_ST_ENKUliE_clEi.exit

.lr.ph.i48:                                       ; preds = %bb.l
  %i.dh = sext i32 %i.da to i64
  %wide.trip.count.i = zext nneg i32 %i.cw to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.aj, %.lr.ph.i48
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i48 ], [ %indvars.iv.next.i, %bb.aj ] ; 2 uses
  %i.di = load ptr, ptr %i.bn, align 8, !tbaa !639, !nonnull !77, !align !312 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 5 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !232 ; 2 uses
  %.not2.i51 = icmp eq ptr %i.dk, null
  br i1 %.not2.i51, label %bb.n, label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit67

bb.n:                                             ; preds = %bb.m
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !173 ; 4 uses
  %.not.i52 = icmp eq ptr %i.dl, null
  br i1 %.not.i52, label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i57, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !233, !range !76, !noalias !644, !noundef !77
  %i.do = trunc nuw i8 %i.dn to i1
  %.phi.trans.insert.i.i53 = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %.pre.i.i54 = load ptr, ptr %.phi.trans.insert.i.i53, align 8, !tbaa !257, !noalias !644
  %.phi.trans.insert2.i.i55 = getelementptr inbounds nuw i8, ptr %i.dl, i64 40 ; 2 uses
  %.pre3.i.i56 = load ptr, ptr %.phi.trans.insert2.i.i55, align 8, !tbaa !257, !noalias !644 ; 2 uses
  %i.dp = icmp eq ptr %.pre.i.i54, %.pre3.i.i56   ; 2 uses
  br i1 %i.do, label %.critedge.i.i58, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.dp, label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i57, label %bb.q, !prof !72

bb.q:                                             ; preds = %bb.p
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core7ExecCtx16getDecodedVectorEvE18veloxCheckFailArgs) #26, !noalias !644
  unreachable

.critedge.i.i58:                                  ; preds = %bb.o
  br i1 %i.dp, label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i57, label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i59

_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i57: ; preds = %.critedge.i.i58, %bb.p, %bb.n
  %i.dq = call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #23, !noalias !77 ; 7 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dq, i8 0, i64 72, i1 false), !noalias !77
  store i8 1, ptr %i.dr, align 8, !tbaa !258, !noalias !77
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ds, i8 0, i64 13, i1 false), !noalias !77
  store i8 1, ptr %i.dt, align 1, !tbaa !260, !noalias !77
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.du, i8 0, i64 48, i1 false), !noalias !77
  store ptr %i.dq, ptr %i.dj, align 8, !tbaa !232
  br label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit67

_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i59: ; preds = %.critedge.i.i58
  %i.dv = getelementptr inbounds i8, ptr %.pre3.i.i56, i64 -8 ; 3 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !232, !noalias !644
  store ptr null, ptr %i.dv, align 8, !tbaa !232, !noalias !644
  store ptr %i.dv, ptr %.phi.trans.insert2.i.i55, align 8, !tbaa !270, !noalias !644
  %i.dx = inttoptr i64 %i.dw to ptr               ; 2 uses
  %.pre.i60 = load ptr, ptr %i.dj, align 8, !tbaa !232 ; 6 uses
  store ptr %i.dx, ptr %i.dj, align 8, !tbaa !232
  %.not.i.i.i.i.i61 = icmp eq ptr %.pre.i60, null
  br i1 %.not.i.i.i.i.i61, label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit67, label %bb.r

bb.r:                                             ; preds = %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i59
  %i.dy = getelementptr inbounds nuw i8, ptr %.pre.i60, i64 96
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !271 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i62 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i62, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i63, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre.i60, i64 112
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !272
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i63

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i63:    ; preds = %bb.s, %bb.r
  %i.ef = getelementptr inbounds nuw i8, ptr %.pre.i60, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !273 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i64 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i64, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i65, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i63
  %i.eh = getelementptr inbounds nuw i8, ptr %.pre.i60, i64 88
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !274
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.el) #25
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i65

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i65: ; preds = %bb.t, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i63
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i60, i64 noundef 120) #25
  %.pre3.i66 = load ptr, ptr %i.dj, align 8, !tbaa !232
  br label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit67

_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit67: ; preds = %bb.m, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i57, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i59, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i65
  %i.em = phi ptr [ %i.dx, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i59 ], [ %.pre3.i66, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i65 ], [ %i.dk, %bb.m ], [ %i.dq, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i57 ] ; 5 uses
  %i.en = add nsw i64 %indvars.iv.i, %i.dh        ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !332 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit67
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 58
  %i.er = load i8, ptr %i.eq, align 2, !tbaa !333, !range !76, !noundef !77
  %i.es = trunc nuw i8 %i.er to i1
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 57
  %i.eu = load i8, ptr %i.et, align 1, !range !76
  %i.ev = trunc nuw i8 %i.eu to i1
  %or.cond.i.i = select i1 %i.es, i1 true, i1 %i.ev
  br i1 %or.cond.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ew = lshr i64 %i.en, 6
  %i.ex = and i64 %i.ew, 67108863
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !139
  %i.fa = and i64 %i.en, 63
  %i.fb = shl nuw i64 1, %i.fa
  %i.fc = and i64 %i.ez, %i.fb
  %.not.i.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i.i, label %bb.aj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.w:                                             ; preds = %bb.u
  %i.fd = getelementptr inbounds nuw i8, ptr %i.em, i64 59
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !334, !range !76, !noundef !77
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fg = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !335
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.en
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !3
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %i.fl = lshr i64 %i.fk, 6
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !139
  %i.fo = and i64 %i.fk, 63
  %i.fp = shl nuw i64 1, %i.fo
  %i.fq = and i64 %i.fp, %i.fn
  %.not.i7.i.i = icmp eq i64 %i.fq, 0
  br i1 %.not.i7.i.i, label %bb.aj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.w
  %i.fr = load i64, ptr %i.ep, align 8, !tbaa !139
end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi:bb.a
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i: ; preds = %bb.j, %bb.i
  %i.bg = add nsw i32 %i.ai, 64                   ; 2 uses
  %.not3347.i.i.i = icmp sgt i32 %i.bg, %i.aj
  br i1 %.not3347.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i
  %.not34.i.i.i = icmp eq i32 %i.ad, %i.aj
  br i1 %.not34.i.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i, label %bb.k

.lr.ph.i.i.i:                                     ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i, %.lr.ph.i.i.i
  %i.bh = phi i32 [ %i.bl, %.lr.ph.i.i.i ], [ %i.bg, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i ] ; 2 uses
  %.048.i.i.i = phi i32 [ %i.bh, %.lr.ph.i.i.i ], [ %i.ai, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i ]
  %i.bi = sdiv i32 %.048.i.i.i, 64
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bj
  store i64 -1, ptr %i.bk, align 8, !tbaa !139
  %i.bl = add nsw i32 %i.bh, 64                   ; 2 uses
  %.not33.i.i.i = icmp sgt i32 %i.bl, %i.aj
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !578

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.bm = and i32 %i.ad, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i37.i.i.i = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i37.i.i.i, -1
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split: ; preds = %bb.h, %bb.k
  %.sink19 = phi i64 [ %i.bo, %bb.k ], [ %i.au, %bb.h ]
  %.sink = ashr i32 %i.ad, 6
  %i.bp = sext i32 %.sink to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bp ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !139
  %i.bs = or i64 %i.br, %.sink19
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !139
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i:    ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split, %._crit_edge.i.i.i, %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 37
  store i8 0, ptr %i.bt, align 1, !tbaa !306
  br label %_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit

_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i, %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS7_PKT_PKmPKiEUliE_EEvSE_iibSA_EUlimE_ZNS3_ISH_EEvSE_iibSA_EUliE_EEviiSA_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.387) align 8 %2, ptr noundef byval(%class.anon.388) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !953, !range !76, !noundef !77
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !956
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !139
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ag, %bb.d ] ; 3 uses
  %i.ac = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = or disjoint i32 %i.d, %i.ad
  call void @_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i32 noundef %i.ae)
  %i.af = add nsw i64 %.011.i, -1
  %i.ag = and i64 %i.af, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ag, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !965

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sdiv i32 %0, 64                         ; 2 uses
  %i.ai = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i.i35, -1
  %i.al = sub nsw i32 64, %i.ai
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl i64 %i.ak, %i.am
  %i.ao = load i8, ptr %2, align 8, !tbaa !953, !range !76, !noundef !77
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !956
  %i.ar = sext i32 %i.ah to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !139
  %i.au = xor i8 %i.ao, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = xor i64 %i.at, %i.aw
  %i.ay = and i64 %i.ax, %i.an                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.ay, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = shl nsw i32 %i.ah, 6
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.ay, %.preheader.i37 ], [ %i.bf, %bb.g ] ; 3 uses
  %i.bb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  call void @_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %i.az, i32 noundef %i.bd)
  %i.be = add i64 %.011.i38, -1
  %i.bf = and i64 %i.be, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bf, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !965

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3351 = icmp sgt i32 %i.bg, %i.d
  br i1 %.not3351, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 48
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %bb.v

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit
  %i.bn = phi i32 [ %i.bg, %.lr.ph ], [ %i.fb, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit ] ; 2 uses
  %.052 = phi i32 [ %i.c, %.lr.ph ], [ %i.bn, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit ] ; 2 uses
  %i.bo = sdiv i32 %.052, 64                      ; 3 uses
  %i.bp = load i8, ptr %3, align 8, !tbaa !957, !range !76, !noundef !77
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !959
  %i.br = sext i32 %i.bo to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !139
  %i.bu = xor i8 %i.bp, 1
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = xor i64 %i.bt, %i.bw                    ; 2 uses
  switch i64 %i.bx, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.by = shl nsw i32 %i.bo, 6
  %i.bz = load ptr, ptr %i.bi, align 8, !tbaa !960, !nonnull !77, !align !312
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !277 ; 2 uses
  %.not.i48 = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %i.bj, align 8, !tbaa !961, !nonnull !77, !align !312
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !357 ; 2 uses
  %.not9.i = icmp eq ptr %i.cc, null
  %i.cd = load ptr, ptr %i.bk, align 8, !nonnull !77, !align !312
  %i.ce = load ptr, ptr %i.bl, align 8, !nonnull !77, !align !312
  %i.cf = load ptr, ptr %i.bm, align 8, !nonnull !77, !align !312 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 37
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ch = shl nsw i32 %i.bo, 6                    ; 2 uses
  %i.ci = add i32 %i.ch, 64
  %i.cj = sext i32 %i.ci to i64
  %.0.off = add i32 %.052, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.ck = sext i32 %i.ch to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.ck, %.lr.ph21.i ], [ %i.cm, %bb.j ] ; 2 uses
  %i.cl = trunc i64 %.020.i to i32
  call void @_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i32 noundef %i.cl)
  %i.cm = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cj
  br i1 %i.cn, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, !llvm.loop !966

bb.k:                                             ; preds = %_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, %.lr.ph.i
  %.01519.i = phi i64 [ %i.bx, %.lr.ph.i ], [ %i.fa, %_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit ] ; 3 uses
  %i.co = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = or disjoint i32 %i.by, %i.cp            ; 3 uses
  br i1 %.not.i48, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cu = phi i32 [ %i.ct, %bb.l ], [ %i.cq, %bb.k ]
  br i1 %.not9.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = zext i32 %i.cq to i64                   ; 2 uses
  %i.cw = lshr i64 %i.cv, 6
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !139
  %i.cz = and i64 %i.cv, 63
  %i.da = shl nuw i64 1, %i.cz
  %i.db = and i64 %i.cy, %i.da
  %.not.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i, label %_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dc = load ptr, ptr %i.cd, align 8, !tbaa !277
  %i.dd = sext i32 %i.cu to i64                   ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3  ; 3 uses
  %i.dg = load ptr, ptr %i.ce, align 8, !tbaa !277
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.dd
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3  ; 6 uses
  %i.dj = add nsw i32 %i.di, %i.df                ; 5 uses
  %i.dk = icmp eq i32 %i.df, 0
  br i1 %i.dk, label %_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dl = load ptr, ptr %i.cf, align 8, !tbaa !271 ; 3 uses
  %.not.i.i.i.i = icmp sgt i32 %i.df, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.dm = add i32 %i.di, 63                       ; 2 uses
  %i.dn = srem i32 %i.dm, 64
  %i.do = sub nsw i32 %i.dm, %i.dn                ; 6 uses
  %i.dp = and i32 %i.dj, -64                      ; 4 uses
  %i.dq = icmp slt i32 %i.dp, %i.do
  br i1 %i.dq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dr = and i32 %i.dj, 63
  %i.ds = zext nneg i32 %i.dr to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.ds
  %i.dt = xor i64 %notmask.i.i.i.i.i, -1
  %i.du = sub nsw i32 %i.do, %i.di                ; 2 uses
  %i.dv = zext nneg i32 %i.du to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.dv
  %i.dw = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.dx = sub nsw i32 64, %i.du
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = shl i64 %i.dw, %i.dy
  %i.ea = and i64 %i.dz, %i.dt
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i

bb.s:                                             ; preds = %bb.q
  %.not32.i.i.i.i = icmp eq i32 %i.di, %i.do
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eb = sdiv i32 %i.di, 64
  %i.ec = sub nsw i32 %i.do, %i.di                ; 2 uses
  %i.ed = zext nneg i32 %i.ec to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.ed
  %i.ee = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.ef = sub nsw i32 64, %i.ec
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = shl i64 %i.ee, %i.eg
  %i.ei = sext i32 %i.eb to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ei ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !139
  %i.el = or i64 %i.ek, %i.eh
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !139
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i: ; preds = %bb.t, %bb.s
  %i.em = add nsw i32 %i.do, 64                   ; 2 uses
  %.not3347.i.i.i.i = icmp sgt i32 %i.em, %i.dp
  br i1 %.not3347.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.dj, %i.dp
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i, label %bb.u

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i, %.lr.ph.i.i.i.i
  %i.en = phi i32 [ %i.er, %.lr.ph.i.i.i.i ], [ %i.em, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i = phi i32 [ %i.en, %.lr.ph.i.i.i.i ], [ %i.do, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i ]
  %i.eo = sdiv i32 %.048.i.i.i.i, 64
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ep
  store i64 -1, ptr %i.eq, align 8, !tbaa !139
  %i.er = add nsw i32 %i.en, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.er, %i.dp
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !578

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  %i.es = and i32 %i.dj, 63
  %i.et = zext nneg i32 %i.es to i64
  %notmask.i37.i.i.i.i = shl nsw i64 -1, %i.et
  %i.eu = xor i64 %notmask.i37.i.i.i.i, -1
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i: ; preds = %bb.u, %bb.r
  %.sink19.i = phi i64 [ %i.eu, %bb.u ], [ %i.ea, %bb.r ]
  %.sink.i = ashr i32 %i.dj, 6
  %i.ev = sext i32 %.sink.i to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ev ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !139
  %i.ey = or i64 %i.ex, %.sink19.i
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !139
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i:  ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i, %._crit_edge.i.i.i.i, %bb.p
  store i8 0, ptr %i.cg, align 1, !tbaa !306
  br label %_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit

_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit: ; preds = %bb.n, %bb.o, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i
  %i.ez = add i64 %.01519.i, -1
  %i.fa = and i64 %i.ez, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.fa, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !967

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit: ; preds = %bb.j, %_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, %bb.h, %bb.i
  %i.fb = add nsw i32 %i.bn, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.fb, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !968

bb.v:                                             ; preds = %._crit_edge
  %i.fc = ashr i32 %1, 6
  %i.fd = and i32 %1, 63
  %i.fe = zext nneg i32 %i.fd to i64
  %notmask.i42 = shl nsw i64 -1, %i.fe
  %i.ff = xor i64 %notmask.i42, -1
  %i.fg = load i8, ptr %2, align 8, !tbaa !953, !range !76, !noundef !77
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !956
  %i.fj = sext i32 %i.fc to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !139
  %i.fm = xor i8 %i.fg, 1
  %i.fn = zext nneg i8 %i.fm to i64
  %i.fo = sub nsw i64 0, %i.fn
  %i.fp = xor i64 %i.fl, %i.fo
  %i.fq = and i64 %i.fp, %i.ff                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fq, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.v
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fq, %.preheader.i44 ], [ %i.fw, %bb.w ] ; 3 uses
  %i.fs = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ft = trunc nuw nsw i64 %i.fs to i32
  %i.fu = or disjoint i32 %i.d, %i.ft
  call void @_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %i.fr, i32 noundef %i.fu)
  %i.fv = add nsw i64 %.011.i45, -1
  %i.fw = and i64 %i.fv, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fw, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %bb.w, !llvm.loop !965

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit: ; preds = %bb.w, %bb.d, %bb.v, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9functions13toWrapCaptureINS0_9MapVectorEEEN5boost13intrusive_ptrINS0_6BufferEEEiPKNS0_8CallableERKS1_RKSt10shared_ptrIT_EEUliE_EEvSG_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.389) align 8 %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.390, align 8            ; 6 uses
end_hunk_2
begin_hunk_3_@_ZZN8facebook5velox9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKS8_INS0_10BaseVectorEERKSt6vectorISE_SaISE_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEEST_ST_ENKUliE_clEi:bb.a
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !340
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit

bb.j:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !335
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.af
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.i, %bb.j
  %.0.i.i = phi i32 [ %i.cb, %bb.j ], [ %i.bx, %bb.i ], [ %i.bs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.cc = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.cd = lshr i64 %i.cc, 6
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !139
  %i.cg = and i64 %i.cc, 63
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = and i64 %i.ch, %i.cf
  %.not = icmp eq i64 %i.ci, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit
  %i.cj = load ptr, ptr %i.aa, align 8, !tbaa !1025, !nonnull !77, !align !312
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !277
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.j ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !3
  %i.co = load ptr, ptr %i.ab, align 8, !tbaa !1026, !nonnull !77, !align !312
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !277
  %i.cq = load ptr, ptr %i.r, align 8, !tbaa !1022, !nonnull !77, !align !450 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cs
  store i32 %i.bs, ptr %i.ct, align 4, !tbaa !3
  %i.cu = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.cq, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.e, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !939

.loopexit:                                        ; preds = %bb.l, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSB_INS0_10BaseVectorEERKSt6vectorISH_SaISH_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESW_SW_EUliE_EEvPKmiibSC_EUlimE_ZNS3_ISX_EEvSZ_iibSC_EUliE_EEviiSC_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.392) align 8 %2, ptr noundef byval(%class.anon.393) align 8 %3) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !941, !range !76, !noundef !77
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !945
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !139
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ag, %bb.d ] ; 3 uses
  %i.ac = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = or disjoint i32 %i.d, %i.ad
  call void @_ZZN8facebook5velox9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKS8_INS0_10BaseVectorEERKSt6vectorISE_SaISE_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEEST_ST_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i32 noundef %i.ae)
  %i.af = add nsw i64 %.011.i, -1
  %i.ag = and i64 %i.af, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ag, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1027

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sdiv i32 %0, 64                         ; 2 uses
  %i.ai = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i.i35, -1
  %i.al = sub nsw i32 64, %i.ai
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl i64 %i.ak, %i.am
  %i.ao = load i8, ptr %2, align 8, !tbaa !941, !range !76, !noundef !77
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !945
  %i.ar = sext i32 %i.ah to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !139
  %i.au = xor i8 %i.ao, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = xor i64 %i.at, %i.aw
  %i.ay = and i64 %i.ax, %i.an                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.ay, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = shl nsw i32 %i.ah, 6
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.ay, %.preheader.i37 ], [ %i.bf, %bb.g ] ; 3 uses
  %i.bb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  call void @_ZZN8facebook5velox9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKS8_INS0_10BaseVectorEERKSt6vectorISE_SaISE_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEEST_ST_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(64) %i.az, i32 noundef %i.bd)
  %i.be = add i64 %.011.i38, -1
  %i.bf = and i64 %i.be, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bf, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1027

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3370 = icmp sgt i32 %i.bg, %i.d
  br i1 %.not3370, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit40
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 72
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUlimE_clEim.exit, label %bb.ak

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUliE_clEi.exit
  %i.bq = phi i32 [ %i.bg, %.lr.ph ], [ %i.ij, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUliE_clEi.exit ] ; 2 uses
  %.071 = phi i32 [ %i.c, %.lr.ph ], [ %i.bq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUliE_clEi.exit ] ; 2 uses
  %i.br = sdiv i32 %.071, 64                      ; 3 uses
  %i.bs = load i8, ptr %3, align 8, !tbaa !946, !range !76, !noundef !77
  %i.bt = load ptr, ptr %i.bh, align 8, !tbaa !948
  %i.bu = sext i32 %i.br to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !139
  %i.bx = xor i8 %i.bs, 1
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = sub nsw i64 0, %i.by
  %i.ca = xor i64 %i.bw, %i.bz                    ; 2 uses
  switch i64 %i.ca, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cb = shl nsw i32 %i.br, 6
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cc = shl nsw i32 %i.br, 6                    ; 2 uses
  %i.cd = add i32 %i.cc, 64
  %i.ce = sext i32 %i.cd to i64
  %.0.off = add i32 %.071, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.cf = sext i32 %i.cc to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.cf, %.lr.ph21.i ], [ %i.ch, %bb.j ] ; 2 uses
  %i.cg = trunc i64 %.020.i to i32
  call void @_ZZN8facebook5velox9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKS8_INS0_10BaseVectorEERKSt6vectorISE_SaISE_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEEST_ST_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, i32 noundef %i.cg)
  %i.ch = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.ce
  br i1 %i.ci, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSA_INS0_10BaseVectorEERKSt6vectorISG_SaISG_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESV_SV_EUliE_EEvPKmiibSB_ENKUliE_clEi.exit, !llvm.loop !1028

bb.k:                                             ; preds = %_ZZN8facebook5velox9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKS8_INS0_10BaseVectorEERKSt6vectorISE_SaISE_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEEST_ST_ENKUliE_clEi.exit, %.lr.ph.i
  %.01519.i = phi i64 [ %i.ca, %.lr.ph.i ], [ %i.ii, %_ZZN8facebook5velox9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKS8_INS0_10BaseVectorEERKSt6vectorISE_SaISE_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEEST_ST_ENKUliE_clEi.exit ] ; 3 uses
  %i.cj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = or disjoint i32 %i.cb, %i.ck            ; 2 uses
  %i.cm = load ptr, ptr %i.bi, align 8, !tbaa !1019, !nonnull !77, !align !312
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !775 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call noundef zeroext i1 %i.cq(ptr noundef nonnull align 8 dereferenceable(94) %i.cn, i32 noundef %i.cl), !inline_history !932
  br i1 %i.cr, label %_ZZN8facebook5velox9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKS8_INS0_10BaseVectorEERKSt6vectorISE_SaISE_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEEST_ST_ENKUliE_clEi.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cs = load ptr, ptr %i.bj, align 8, !tbaa !1020, !nonnull !77, !align !312
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !277
  %i.cu = sext i32 %i.cl to i64                   ; 4 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3  ; 2 uses
  %i.cx = load ptr, ptr %i.bk, align 8, !tbaa !1021, !nonnull !77, !align !312
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !277
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.cu
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = load ptr, ptr %i.bl, align 8, !tbaa !1022, !nonnull !77, !align !450
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = load ptr, ptr %i.bm, align 8, !tbaa !1023, !nonnull !77, !align !312
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !277
  %i.df = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.cu
  store i32 %i.dc, ptr %i.df, align 4, !tbaa !3
  %i.dg = icmp sgt i32 %i.cw, 0
  br i1 %i.dg, label %.lr.ph.i48, label %_ZZN8facebook5velox9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKS8_INS0_10BaseVectorEERKSt6vectorISE_SaISE_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEEST_ST_ENKUliE_clEi.exit

.lr.ph.i48:                                       ; preds = %bb.l
  %i.dh = sext i32 %i.da to i64
  %wide.trip.count.i = zext nneg i32 %i.cw to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.aj, %.lr.ph.i48
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i48 ], [ %indvars.iv.next.i, %bb.aj ] ; 2 uses
  %i.di = load ptr, ptr %i.bn, align 8, !tbaa !1024, !nonnull !77, !align !312 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 5 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !232 ; 2 uses
  %.not2.i51 = icmp eq ptr %i.dk, null
  br i1 %.not2.i51, label %bb.n, label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit67

bb.n:                                             ; preds = %bb.m
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !173 ; 4 uses
  %.not.i52 = icmp eq ptr %i.dl, null
  br i1 %.not.i52, label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i57, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !233, !range !76, !noalias !1029, !noundef !77
  %i.do = trunc nuw i8 %i.dn to i1
  %.phi.trans.insert.i.i53 = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %.pre.i.i54 = load ptr, ptr %.phi.trans.insert.i.i53, align 8, !tbaa !257, !noalias !1029
  %.phi.trans.insert2.i.i55 = getelementptr inbounds nuw i8, ptr %i.dl, i64 40 ; 2 uses
  %.pre3.i.i56 = load ptr, ptr %.phi.trans.insert2.i.i55, align 8, !tbaa !257, !noalias !1029 ; 2 uses
  %i.dp = icmp eq ptr %.pre.i.i54, %.pre3.i.i56   ; 2 uses
  br i1 %i.do, label %.critedge.i.i58, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.dp, label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i57, label %bb.q, !prof !72

bb.q:                                             ; preds = %bb.p
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core7ExecCtx16getDecodedVectorEvE18veloxCheckFailArgs) #26, !noalias !1029
  unreachable

.critedge.i.i58:                                  ; preds = %bb.o
  br i1 %i.dp, label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i57, label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i59

_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i57: ; preds = %.critedge.i.i58, %bb.p, %bb.n
  %i.dq = call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #23, !noalias !77 ; 7 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dq, i8 0, i64 72, i1 false), !noalias !77
  store i8 1, ptr %i.dr, align 8, !tbaa !258, !noalias !77
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ds, i8 0, i64 13, i1 false), !noalias !77
  store i8 1, ptr %i.dt, align 1, !tbaa !260, !noalias !77
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.du, i8 0, i64 48, i1 false), !noalias !77
  store ptr %i.dq, ptr %i.dj, align 8, !tbaa !232
  br label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit67

_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i59: ; preds = %.critedge.i.i58
  %i.dv = getelementptr inbounds i8, ptr %.pre3.i.i56, i64 -8 ; 3 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !232, !noalias !1029
  store ptr null, ptr %i.dv, align 8, !tbaa !232, !noalias !1029
  store ptr %i.dv, ptr %.phi.trans.insert2.i.i55, align 8, !tbaa !270, !noalias !1029
  %i.dx = inttoptr i64 %i.dw to ptr               ; 2 uses
  %.pre.i60 = load ptr, ptr %i.dj, align 8, !tbaa !232 ; 6 uses
  store ptr %i.dx, ptr %i.dj, align 8, !tbaa !232
  %.not.i.i.i.i.i61 = icmp eq ptr %.pre.i60, null
  br i1 %.not.i.i.i.i.i61, label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit67, label %bb.r

bb.r:                                             ; preds = %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i59
  %i.dy = getelementptr inbounds nuw i8, ptr %.pre.i60, i64 96
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !271 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i62 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i62, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i63, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre.i60, i64 112
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !272
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i63

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i63:    ; preds = %bb.s, %bb.r
  %i.ef = getelementptr inbounds nuw i8, ptr %.pre.i60, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !273 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i64 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i64, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i65, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i63
  %i.eh = getelementptr inbounds nuw i8, ptr %.pre.i60, i64 88
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !274
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.el) #25
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i65

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i65: ; preds = %bb.t, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i63
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i60, i64 noundef 120) #25
  %.pre3.i66 = load ptr, ptr %i.dj, align 8, !tbaa !232
  br label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit67

_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit67: ; preds = %bb.m, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i57, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i59, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i65
  %i.em = phi ptr [ %i.dx, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i59 ], [ %.pre3.i66, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i65 ], [ %i.dk, %bb.m ], [ %i.dq, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i57 ] ; 5 uses
  %i.en = add nsw i64 %indvars.iv.i, %i.dh        ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !332 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit67
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 58
  %i.er = load i8, ptr %i.eq, align 2, !tbaa !333, !range !76, !noundef !77
  %i.es = trunc nuw i8 %i.er to i1
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 57
  %i.eu = load i8, ptr %i.et, align 1, !range !76
  %i.ev = trunc nuw i8 %i.eu to i1
  %or.cond.i.i = select i1 %i.es, i1 true, i1 %i.ev
  br i1 %or.cond.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ew = lshr i64 %i.en, 6
  %i.ex = and i64 %i.ew, 67108863
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !139
  %i.fa = and i64 %i.en, 63
  %i.fb = shl nuw i64 1, %i.fa
  %i.fc = and i64 %i.ez, %i.fb
  %.not.i.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i.i, label %bb.aj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.w:                                             ; preds = %bb.u
  %i.fd = getelementptr inbounds nuw i8, ptr %i.em, i64 59
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !334, !range !76, !noundef !77
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fg = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !335
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.en
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !3
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %i.fl = lshr i64 %i.fk, 6
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !139
  %i.fo = and i64 %i.fk, 63
  %i.fp = shl nuw i64 1, %i.fo
  %i.fq = and i64 %i.fp, %i.fn
  %.not.i7.i.i = icmp eq i64 %i.fq, 0
  br i1 %.not.i7.i.i, label %bb.aj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.w
  %i.fr = load i64, ptr %i.ep, align 8, !tbaa !139
end_hunk_3
