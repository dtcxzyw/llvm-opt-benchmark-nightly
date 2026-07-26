inline.NumInlined: 8303
inline.NumDeleted: 3333
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 32
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
  store i64 -1, ptr %i.bk, align 8, !tbaa !210
  %i.bl = add nsw i32 %i.bh, 64                   ; 2 uses
  %.not33.i.i.i = icmp sgt i32 %i.bl, %i.aj
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !566

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
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !210
  %i.bs = or i64 %i.br, %.sink19
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !210
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i:    ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split, %._crit_edge.i.i.i, %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 37
  store i8 0, ptr %i.bt, align 1, !tbaa !456
  br label %_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit

_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i, %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS7_PKT_PKmPKiEUliE_EEvSE_iibSA_EUlimE_ZNS3_ISH_EEvSE_iibSA_EUliE_EEviiSA_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.307) align 8 %2, ptr noundef byval(%class.anon.308) align 8 %3) local_unnamed_addr #8 comdat {
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
  %i.q = load i8, ptr %2, align 8, !tbaa !590, !range !163, !noundef !164
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !595
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !210
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
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !604

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
  %i.ao = load i8, ptr %2, align 8, !tbaa !590, !range !163, !noundef !164
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !595
  %i.ar = sext i32 %i.ah to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !210
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
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !604

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
  %i.bp = load i8, ptr %3, align 8, !tbaa !596, !range !163, !noundef !164
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !598
  %i.br = sext i32 %i.bo to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !210
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
  %i.bz = load ptr, ptr %i.bi, align 8, !tbaa !599, !nonnull !164, !align !242
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !461 ; 2 uses
  %.not.i48 = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %i.bj, align 8, !tbaa !600, !nonnull !164, !align !242
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !249 ; 2 uses
  %.not9.i = icmp eq ptr %i.cc, null
  %i.cd = load ptr, ptr %i.bk, align 8, !nonnull !164, !align !242
  %i.ce = load ptr, ptr %i.bl, align 8, !nonnull !164, !align !242
  %i.cf = load ptr, ptr %i.bm, align 8, !nonnull !164, !align !242 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 37
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ch = shl nsw i32 %i.bo, 6                    ; 2 uses
  %i.ci = add nuw i32 %i.ch, 64
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
  br i1 %i.cn, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, !llvm.loop !605

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
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !210
  %i.cz = and i64 %i.cv, 63
  %i.da = shl nuw i64 1, %i.cz
  %i.db = and i64 %i.cy, %i.da
  %.not.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i, label %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dc = load ptr, ptr %i.cd, align 8, !tbaa !461
  %i.dd = sext i32 %i.cu to i64                   ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3  ; 3 uses
  %i.dg = load ptr, ptr %i.ce, align 8, !tbaa !461
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.dd
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3  ; 6 uses
  %i.dj = add nsw i32 %i.di, %i.df                ; 5 uses
  %i.dk = icmp eq i32 %i.df, 0
  br i1 %i.dk, label %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dl = load ptr, ptr %i.cf, align 8, !tbaa !436 ; 3 uses
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
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !210
  %i.el = or i64 %i.ek, %i.eh
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !210
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
  store i64 -1, ptr %i.eq, align 8, !tbaa !210
  %i.er = add nsw i32 %i.en, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.er, %i.dp
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !566

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
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !210
  %i.ey = or i64 %i.ex, %.sink19.i
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !210
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i:  ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i, %._crit_edge.i.i.i.i, %bb.p
  store i8 0, ptr %i.cg, align 1, !tbaa !456
  br label %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit

_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit: ; preds = %bb.n, %bb.o, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i
  %i.ez = add i64 %.01519.i, -1
  %i.fa = and i64 %i.ez, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.fa, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !606

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit: ; preds = %bb.j, %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, %bb.h, %bb.i
  %i.fb = add nsw i32 %i.bn, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.fb, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !607

bb.v:                                             ; preds = %._crit_edge
  %i.fc = ashr i32 %1, 6
  %i.fd = and i32 %1, 63
  %i.fe = zext nneg i32 %i.fd to i64
  %notmask.i42 = shl nsw i64 -1, %i.fe
  %i.ff = xor i64 %notmask.i42, -1
  %i.fg = load i8, ptr %2, align 8, !tbaa !590, !range !163, !noundef !164
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !595
  %i.fj = sext i32 %i.fc to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !210
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
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %bb.w, !llvm.loop !604

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit: ; preds = %bb.w, %bb.d, %bb.v, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE10rehashImplEmmmmm:bb.a
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIbbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIbbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #25 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !45
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #25 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !45
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIbbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !698, !range !163, !noundef !164
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIbbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !716, !nonnull !164
  %i.e = load i8, ptr %i.d, align 1, !tbaa !54, !range !163, !noundef !164
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !718, !nonnull !164, !align !242
  %i.i = load i64, ptr %i.h, align 8, !tbaa !210
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIbbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !719, !nonnull !164, !align !242
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !695
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !720, !nonnull !164, !align !242
  %i.o = load i64, ptr %i.n, align 8, !tbaa !210
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !721  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !722, !nonnull !164, !align !242
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !270
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !723, !nonnull !164, !align !242
  %i.w = load i64, ptr %i.v, align 8, !tbaa !210
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !719, !nonnull !164, !align !242
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !695
  store ptr %i.z, ptr %i.q, align 8, !tbaa !502
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !724, !nonnull !164, !align !242
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !210 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !524
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !524
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIbbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #30
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIbbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIbbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #27

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() local_unnamed_addr #26

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.359", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.359", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph25

bb.b:                                             ; preds = %.lr.ph25
  %i.g = icmp eq i64 %i.i, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph25, !llvm.loop !725

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.018.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph25:                                         ; preds = %.lr.ph, %bb.b
  %.0151724 = phi i64 [ %i.i, %bb.b ], [ %2, %.lr.ph ]
  %.01823 = phi ptr [ %i.m, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.h = phi i64 [ %i.o, %bb.b ], [ %i.c, %.lr.ph ]
  %i.i = add nsw i64 %.0151724, -1                ; 3 uses
  %i.j = lshr i64 %i.h, 3
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %.01823, i64 -4
  tail call void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_SB_SB_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.k, ptr noundef nonnull %i.l, ptr %3)
  %i.m = tail call noundef ptr @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEET_SB_SB_SB_T0_(ptr noundef nonnull %i.e, ptr noundef %.01823, ptr noundef %0, ptr %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_T0_T1_(ptr noundef %i.m, ptr noundef %.01823, i64 noundef %i.i, ptr %3)
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.a                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 64
  br i1 %i.p, label %bb.b, label %.loopexit, !llvm.loop !725

.loopexit:                                        ; preds = %.lr.ph25, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !726
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_SB_RT0_.exit
  %.046 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_SB_RT0_.exit ]
  %i.f = getelementptr inbounds i8, ptr %.046, i64 -4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 4 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.h, ptr %i.f, align 4, !tbaa !3
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 2                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %3 = lshr i64 %i.l, 1
  %i.m = icmp sgt i64 %i.k, 2
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !581  ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !667  ; 6 uses
  %.not.i.i8 = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 58 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 57
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 59 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit31.thread
  %.029.i.i = phi i64 [ %i.dn, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit31.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.w = shl i64 %.029.i.i, 1                     ; 3 uses
  %i.x = add i64 %i.w, 2                          ; 6 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr [4 x i8], ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 4       ; 4 uses
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !3   ; 4 uses
  br i1 %.not.i.i8, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ac = load i8, ptr %i.q, align 2, !tbaa !668, !range !163, !noundef !164 ; 2 uses
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load i8, ptr %i.r, align 1, !range !163
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond.i.i9 = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond.i.i9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = zext i32 %i.ab to i64                   ; 2 uses
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !210
  %i.ak = and i64 %i.ag, 63
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.aj, %i.al
  %.not.i.i.i26 = icmp eq i64 %i.am, 0
  %i.an = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !210
  %i.as = and i64 %i.ao, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, %i.ar                    ; 2 uses
  br i1 %.not.i.i.i26, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i21, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.av = load i8, ptr %i.s, align 1, !tbaa !669, !range !163, !noundef !164 ; 2 uses
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i24, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !670 ; 2 uses
  %i.ay = sext i32 %i.ab to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = lshr i64 %i.bb, 6
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !210
  %i.bf = and i64 %i.bb, 63
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = and i64 %i.bg, %i.be
  %.not.i7.i.i10 = icmp eq i64 %i.bh, 0
  %i.bi = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = lshr i64 %i.bm, 6
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !210
  %i.bq = and i64 %i.bm, 63
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = and i64 %i.br, %i.bp                    ; 2 uses
  br i1 %.not.i7.i.i10, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i21, label %bb.h

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i24: ; preds = %bb.e
  %i.bt = load i64, ptr %i.p, align 8, !tbaa !210
  %i.bu = and i64 %i.bt, 1
  %.not.i6.i.i25 = icmp eq i64 %i.bu, 0
  br i1 %.not.i6.i.i25, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit31.thread, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i19

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i21: ; preds = %bb.f, %bb.d
  %.0.i10.in.i22 = phi i64 [ %i.au, %bb.d ], [ %i.bs, %bb.f ]
  %.0.i10.in.i22.fr = freeze i64 %.0.i10.in.i22
  %.0.i10.i23.not = icmp eq i64 %.0.i10.in.i22.fr, 0
  br i1 %.0.i10.i23.not, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit31.thread, label %bb.p

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28: ; preds = %.lr.ph.i.i
  %i.bv = load i32, ptr %i.aa, align 4, !tbaa !3
  %.pre.i30 = load i8, ptr %i.q, align 2, !tbaa !668, !range !163
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %.not.i.i19.i27 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i19.i27, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit31.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  %.not.i7.i16.i11 = icmp eq i64 %i.bs, 0
  br i1 %.not.i7.i16.i11, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit31.thread, label %.thread29.i12

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i19: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i24
  %i.bw = load i32, ptr %i.aa, align 4, !tbaa !3
  br label %.thread29.i12

.thread29.i12:                                    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i19, %bb.h
  %i.bx = phi i32 [ %i.bw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i19 ], [ %i.bi, %bb.h ]
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !671
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28
  %i.bz = phi i8 [ %.pre.i30, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28 ], [ %i.ac, %bb.g ]
  %i.ca = phi i32 [ %i.bv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28 ], [ %i.an, %bb.g ] ; 2 uses
  %i.cb = load ptr, ptr %i.u, align 8, !tbaa !671 ; 2 uses
  %i.cc = trunc nuw i8 %i.bz to i1
  br i1 %i.cc, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i13, label %._crit_edge47

._crit_edge47:                                    ; preds = %bb.i
  %.pre = load i8, ptr %i.s, align 1, !tbaa !669, !range !163
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge47, %.thread29.i12
  %i.cd = phi i8 [ %i.av, %.thread29.i12 ], [ %.pre, %._crit_edge47 ]
  %i.ce = phi ptr [ %i.by, %.thread29.i12 ], [ %i.cb, %._crit_edge47 ] ; 2 uses
  %i.cf = phi i32 [ %i.bx, %.thread29.i12 ], [ %i.ca, %._crit_edge47 ] ; 2 uses
  %i.cg = trunc nuw i8 %i.cd to i1
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = load i32, ptr %i.v, align 8, !tbaa !672
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i13

bb.l:                                             ; preds = %bb.j
  %i.ci = load ptr, ptr %i.t, align 8, !tbaa !670
  %i.cj = sext i32 %i.ab to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i13

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i13: ; preds = %bb.l, %bb.k, %bb.i
  %i.cm = phi i1 [ false, %bb.l ], [ false, %bb.k ], [ true, %bb.i ]
  %i.cn = phi ptr [ %i.ce, %bb.l ], [ %i.ce, %bb.k ], [ %i.cb, %bb.i ] ; 2 uses
  %i.co = phi i32 [ %i.cf, %bb.l ], [ %i.cf, %bb.k ], [ %i.ca, %bb.i ] ; 2 uses
  %.0.i.i.i14 = phi i32 [ %i.cl, %bb.l ], [ %i.ch, %bb.k ], [ %i.ab, %bb.i ]
  %i.cp = sext i32 %.0.i.i.i14 to i64             ; 2 uses
  %i.cq = lshr i64 %i.cp, 6
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !210
  %i.ct = and i64 %i.cp, 63
  %i.cu = shl nuw i64 1, %i.ct
  %i.cv = and i64 %i.cu, %i.cs
  %.not.i15 = icmp eq i64 %i.cv, 0
  br i1 %i.cm, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit31, label %bb.m

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i13
  %i.cw = load i8, ptr %i.s, align 1, !tbaa !669, !range !163, !noundef !164
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cy = load i32, ptr %i.v, align 8, !tbaa !672
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit31

bb.o:                                             ; preds = %bb.m
  %i.cz = load ptr, ptr %i.t, align 8, !tbaa !670
  %i.da = sext i32 %i.co to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit31

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit31: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i13, %bb.n, %bb.o
  %.0.i.i21.i17 = phi i32 [ %i.dc, %bb.o ], [ %i.cy, %bb.n ], [ %i.co, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i13 ]
  %i.dd = sext i32 %.0.i.i21.i17 to i64           ; 2 uses
  %i.de = lshr i64 %i.dd, 6
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !210
  %i.dh = and i64 %i.dd, 63
  %i.di = shl nuw i64 1, %i.dh
  %i.dj = and i64 %i.di, %i.dg
  %i.dk = icmp ne i64 %i.dj, 0
  %i.dl = and i1 %.not.i15, %i.dk
  %cond.fr = freeze i1 %i.dl
  br i1 %cond.fr, label %bb.p, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit31.thread

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i21, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit31
  %i.dm = or disjoint i64 %i.w, 1
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit31.thread

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit31.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i24, %bb.h, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i21, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit31, %bb.p
  %i.dn = phi i64 [ %i.dm, %bb.p ], [ %i.x, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit31 ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i21 ], [ %i.x, %bb.h ], [ %i.x, %bb.g ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i24 ] ; 4 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !3
  %i.dr = icmp slt i64 %i.dn, %3
  br i1 %i.dr, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !727

._crit_edge.i.i:                                  ; preds = %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit31.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.dn, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit31.thread ] ; 5 uses
  %i.ds = and i64 %i.j, 4
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.du = add nsw i64 %i.k, -2
  %i.dv = ashr exact i64 %i.du, 1
  %i.dw = icmp eq i64 %.0.lcssa.i.i, %i.dv
  br i1 %i.dw, label %.thread.i, label %bb.r

.thread.i:                                        ; preds = %bb.q
  %i.dx = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.dy = or disjoint i64 %i.dx, 1                ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.r, %.thread.i
  %.128.i12.i = phi i64 [ %i.dy, %.thread.i ], [ %.0.lcssa.i.i, %bb.r ]
  %i.ec = load ptr, ptr %i.e, align 8, !tbaa !581 ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !667 ; 6 uses
  %.not.i.i = icmp eq ptr %i.ee, null
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 58
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 57
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 59 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 3 uses
  %i.ej = sext i32 %i.g to i64                    ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %i.el = zext i32 %i.g to i64                    ; 2 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.em
  %i.eo = and i64 %i.el, 63
  %i.ep = shl nuw i64 1, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 64 ; 2 uses
  %.pre.i = load i8, ptr %i.ef, align 2, !tbaa !668, !range !163 ; 2 uses
  %i.er = trunc nuw i8 %.pre.i to i1
  %i.es = trunc nuw i8 %.pre.i to i1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae, %.lr.ph.i.i.preheader.i
  %.01316.i.i.i = phi i64 [ %.017.i.i78.i, %bb.ae ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i ] ; 7 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i78.i = lshr i64 %.017.in.i.i.i, 1      ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3  ; 5 uses
  br i1 %.not.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.ev = load i8, ptr %i.eg, align 1, !range !163
  %i.ew = trunc nuw i8 %i.ev to i1
  %or.cond.i.i = select i1 %i.er, i1 true, i1 %i.ew
  br i1 %or.cond.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ex = zext i32 %i.eu to i64                   ; 2 uses
  %i.ey = lshr i64 %i.ex, 6
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !210
  %i.fb = and i64 %i.ex, 63
  %i.fc = shl nuw i64 1, %i.fb
  %i.fd = and i64 %i.fa, %i.fc
  %.not.i.i.i = icmp eq i64 %i.fd, 0
  %i.fe = load i64, ptr %i.en, align 8, !tbaa !210
  %i.ff = and i64 %i.fe, %i.ep                    ; 2 uses
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.fg = load i8, ptr %i.eh, align 1, !tbaa !669, !range !163, !noundef !164 ; 2 uses
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fi = load ptr, ptr %i.ei, align 8, !tbaa !670 ; 2 uses
  %i.fj = sext i32 %i.eu to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = lshr i64 %i.fm, 6
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !210
  %i.fq = and i64 %i.fm, 63
  %i.fr = shl nuw i64 1, %i.fq
  %i.fs = and i64 %i.fr, %i.fp
  %.not.i7.i.i = icmp eq i64 %i.fs, 0
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.ej
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3
  %i.fv = zext i32 %i.fu to i64                   ; 2 uses
  %i.fw = lshr i64 %i.fv, 6
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.fw
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !210
  %i.fz = and i64 %i.fv, 63
  %i.ga = shl nuw i64 1, %i.fz
  %i.gb = and i64 %i.ga, %i.fy                    ; 2 uses
  br i1 %.not.i7.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.u
  %i.gc = load i64, ptr %i.ee, align 8, !tbaa !210
  %i.gd = and i64 %i.gc, 1
  %.not.i6.i.i = icmp eq i64 %i.gd, 0
  br i1 %.not.i6.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_SB_RT0_.exit, label %.thread29.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i: ; preds = %bb.v, %bb.t
  %.0.i10.in.i = phi i64 [ %i.ff, %bb.t ], [ %i.gb, %bb.v ]
  %.0.i10.i.not = icmp eq i64 %.0.i10.in.i, 0
  br i1 %.0.i10.i.not, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_SB_RT0_.exit, label %bb.ae

bb.w:                                             ; preds = %bb.t
  %.not.i.i19.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i.i19.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_SB_RT0_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i

bb.x:                                             ; preds = %bb.v
  %.not.i7.i16.i = icmp eq i64 %i.gb, 0
  br i1 %.not.i7.i16.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_SB_RT0_.exit, label %.thread29.i

.thread29.i:                                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.x
  %i.ge = load ptr, ptr %i.ek, align 8, !tbaa !671
  br label %bb.y

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i: ; preds = %.lr.ph.i.i.i, %bb.w
  %i.gf = load ptr, ptr %i.ek, align 8, !tbaa !671 ; 2 uses
  br i1 %i.es, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i, label %._crit_edge48

._crit_edge48:                                    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i
  %.pre49 = load i8, ptr %i.eh, align 1, !tbaa !669, !range !163
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge48, %.thread29.i
  %i.gg = phi i8 [ %i.fg, %.thread29.i ], [ %.pre49, %._crit_edge48 ]
  %i.gh = phi ptr [ %i.ge, %.thread29.i ], [ %i.gf, %._crit_edge48 ] ; 2 uses
  %i.gi = trunc nuw i8 %i.gg to i1
  br i1 %i.gi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gj = load i32, ptr %i.eq, align 8, !tbaa !672
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.gk = load ptr, ptr %i.ei, align 8, !tbaa !670
  %i.gl = sext i32 %i.eu to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i: ; preds = %bb.aa, %bb.z, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i
  %i.go = phi i1 [ false, %bb.aa ], [ false, %bb.z ], [ true, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i ]
  %i.gp = phi ptr [ %i.gh, %bb.aa ], [ %i.gh, %bb.z ], [ %i.gf, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i ] ; 2 uses
  %.0.i.i.i = phi i32 [ %i.gn, %bb.aa ], [ %i.gj, %bb.z ], [ %i.eu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i ]
  %i.gq = sext i32 %.0.i.i.i to i64               ; 2 uses
  %i.gr = lshr i64 %i.gq, 6
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !210
  %i.gu = and i64 %i.gq, 63
  %i.gv = shl nuw i64 1, %i.gu
  %i.gw = and i64 %i.gv, %i.gt
  %.not.i7 = icmp eq i64 %i.gw, 0
  br i1 %i.go, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i
  %i.gx = load i8, ptr %i.eh, align 1, !tbaa !669, !range !163, !noundef !164
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gz = load i32, ptr %i.eq, align 8, !tbaa !672
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ha = load ptr, ptr %i.ei, align 8, !tbaa !670
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.ej
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !3
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i, %bb.ac, %bb.ad
  %.0.i.i21.i = phi i32 [ %i.hc, %bb.ad ], [ %i.gz, %bb.ac ], [ %i.g, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i ]
  %i.hd = sext i32 %.0.i.i21.i to i64             ; 2 uses
  %i.he = lshr i64 %i.hd, 6
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.he
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !210
  %i.hh = and i64 %i.hd, 63
  %i.hi = shl nuw i64 1, %i.hh
  %i.hj = and i64 %i.hi, %i.hg
  %i.hk = icmp ne i64 %i.hj, 0
  %i.hl = and i1 %.not.i7, %i.hk
  br i1 %i.hl, label %bb.ae, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_SB_RT0_.exit

bb.ae:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit
  %i.hm = getelementptr inbounds [4 x i8], ptr %0, i64 %.01316.i.i.i
  store i32 %i.eu, ptr %i.hm, align 4, !tbaa !3
  %.not9.i = icmp eq i64 %.017.i.i78.i, 0
  br i1 %.not9.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !728

_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_SB_RT0_.exit: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.x, %bb.w, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit, %bb.ae, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, %bb.r
  %.013.lcssa.i.i.i = phi i64 [ 0, %bb.r ], [ %.01316.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i ], [ %.01316.i.i.i, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIbEclERKiS6_.exit ], [ 0, %bb.ae ], [ %.01316.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i ], [ %.01316.i.i.i, %bb.w ], [ %.01316.i.i.i, %bb.x ]
  %i.hn = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i
  store i32 %i.g, ptr %i.hn, align 4, !tbaa !3
  %i.ho = icmp sgt i64 %i.j, 4
  br i1 %i.ho, label %bb.b, label %._crit_edge, !llvm.loop !729

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_SB_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE10rehashImplEmmmmm:bb.a
  %i.er = getelementptr inbounds nuw [128 x i8], ptr %i.eq, i64 %.041 ; 2 uses
  %i.es = zext nneg i8 %i.eo to i64
  %i.et = add nsw i64 %i.es, -1                   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.et
  %i.ew = icmp ne ptr %i.er, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp ult i8 %i.eo, 17
  call void @llvm.assume(i1 %i.ex)
  %i.ey = lshr i64 %i.et, 1
  %i.ez = ptrtoint ptr %i.ev to i64
  %i.fa = or i64 %i.ey, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !210
  br i1 %.not, label %bb.aa, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIibvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  call void @_ZdlPvm(ptr noundef nonnull %.0114, i64 noundef %4) #32
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIibvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIibvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIibvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !54
  %i.fc = load i64, ptr %i.d, align 8, !tbaa !210
  %.not.i.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIibvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fd = load ptr, ptr %i.c, align 8, !tbaa !895 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIibvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fe = load i64, ptr %i.e, align 8, !tbaa !210
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fe) #30
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIibvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIibvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIibvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !698, !range !163, !noundef !164
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIibvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !910, !nonnull !164
  %i.e = load i8, ptr %i.d, align 1, !tbaa !54, !range !163, !noundef !164
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !912, !nonnull !164, !align !242
  %i.i = load i64, ptr %i.h, align 8, !tbaa !210
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIibvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !913, !nonnull !164, !align !242
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !895
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !914, !nonnull !164, !align !242
  %i.o = load i64, ptr %i.n, align 8, !tbaa !210
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !915  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !916, !nonnull !164, !align !242
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !270
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !917, !nonnull !164, !align !242
  %i.w = load i64, ptr %i.v, align 8, !tbaa !210
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !913, !nonnull !164, !align !242
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !895
  store ptr %i.z, ptr %i.q, align 8, !tbaa !849
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !918, !nonnull !164, !align !242
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !210 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !524
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !524
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIibvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #30
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIibvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIibvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.434", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.434", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph25

bb.b:                                             ; preds = %.lr.ph25
  %i.g = icmp eq i64 %i.i, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph25, !llvm.loop !919

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.018.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph25:                                         ; preds = %.lr.ph, %bb.b
  %.0151724 = phi i64 [ %i.i, %bb.b ], [ %2, %.lr.ph ]
  %.01823 = phi ptr [ %i.m, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.h = phi i64 [ %i.o, %bb.b ], [ %i.c, %.lr.ph ]
  %i.i = add nsw i64 %.0151724, -1                ; 3 uses
  %i.j = lshr i64 %i.h, 3
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %.01823, i64 -4
  tail call void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_SB_SB_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.k, ptr noundef nonnull %i.l, ptr %3)
  %i.m = tail call noundef ptr @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEET_SB_SB_SB_T0_(ptr noundef nonnull %i.e, ptr noundef %.01823, ptr noundef %0, ptr %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_T0_T1_(ptr noundef %i.m, ptr noundef %.01823, i64 noundef %i.i, ptr %3)
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.a                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 64
  br i1 %i.p, label %bb.b, label %.loopexit, !llvm.loop !919

.loopexit:                                        ; preds = %.lr.ph25, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !726
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_SB_RT0_.exit
  %.047 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_SB_RT0_.exit ]
  %i.f = getelementptr inbounds i8, ptr %.047, i64 -4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 3 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.h, ptr %i.f, align 4, !tbaa !3
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 2                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %3 = lshr i64 %i.l, 1
  %i.m = icmp sgt i64 %i.k, 2
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !581  ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !667  ; 6 uses
  %.not.i.i7 = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 58 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 57
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 59 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit31.thread
  %.029.i.i = phi i64 [ %i.da, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit31.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.w = shl i64 %.029.i.i, 1                     ; 3 uses
  %i.x = add i64 %i.w, 2                          ; 6 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr [4 x i8], ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 4       ; 4 uses
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !3   ; 4 uses
  br i1 %.not.i.i7, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ac = load i8, ptr %i.q, align 2, !tbaa !668, !range !163, !noundef !164 ; 2 uses
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load i8, ptr %i.r, align 1, !range !163
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond.i.i8 = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond.i.i8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = zext i32 %i.ab to i64                   ; 2 uses
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !210
  %i.ak = and i64 %i.ag, 63
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.aj, %i.al
  %.not.i.i.i25 = icmp eq i64 %i.am, 0
  %i.an = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !210
  %i.as = and i64 %i.ao, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, %i.ar                    ; 2 uses
  br i1 %.not.i.i.i25, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.av = load i8, ptr %i.s, align 1, !tbaa !669, !range !163, !noundef !164 ; 2 uses
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !670 ; 2 uses
  %i.ay = sext i32 %i.ab to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = lshr i64 %i.bb, 6
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !210
  %i.bf = and i64 %i.bb, 63
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = and i64 %i.bg, %i.be
  %.not.i7.i.i9 = icmp eq i64 %i.bh, 0
  %i.bi = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = lshr i64 %i.bm, 6
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !210
  %i.bq = and i64 %i.bm, 63
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = and i64 %i.br, %i.bp                    ; 2 uses
  br i1 %.not.i7.i.i9, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, label %bb.h

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23: ; preds = %bb.e
  %i.bt = load i64, ptr %i.p, align 8, !tbaa !210
  %i.bu = and i64 %i.bt, 1
  %.not.i6.i.i24 = icmp eq i64 %i.bu, 0
  br i1 %.not.i6.i.i24, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit31.thread, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20: ; preds = %bb.f, %bb.d
  %.0.i10.in.i21 = phi i64 [ %i.au, %bb.d ], [ %i.bs, %bb.f ]
  %.0.i10.in.i21.fr = freeze i64 %.0.i10.in.i21
  %.0.i10.i22.not = icmp eq i64 %.0.i10.in.i21.fr, 0
  br i1 %.0.i10.i22.not, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit31.thread, label %bb.m

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28: ; preds = %.lr.ph.i.i
  %i.bv = load i32, ptr %i.aa, align 4, !tbaa !3
  %.pre.i30 = load i8, ptr %i.q, align 2, !tbaa !668, !range !163
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %.not.i.i19.i26 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i19.i26, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit31.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  %.not.i7.i16.i10 = icmp eq i64 %i.bs, 0
  br i1 %.not.i7.i16.i10, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit31.thread, label %.thread30.i11

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23
  %i.bw = load i32, ptr %i.aa, align 4, !tbaa !3
  br label %.thread30.i11

.thread30.i11:                                    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18, %bb.h
  %i.bx = phi i32 [ %i.bw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18 ], [ %i.bi, %bb.h ]
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !671
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28
  %i.bz = phi i8 [ %.pre.i30, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28 ], [ %i.ac, %bb.g ]
  %i.ca = phi i32 [ %i.bv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28 ], [ %i.an, %bb.g ] ; 2 uses
  %i.cb = load ptr, ptr %i.u, align 8, !tbaa !671 ; 3 uses
  %i.cc = trunc nuw i8 %i.bz to i1
  br i1 %i.cc, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i27, label %._crit_edge52

._crit_edge52:                                    ; preds = %bb.i
  %.pre = load i8, ptr %i.s, align 1, !tbaa !669, !range !163
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge52, %.thread30.i11
  %i.cd = phi i8 [ %i.av, %.thread30.i11 ], [ %.pre, %._crit_edge52 ]
  %i.ce = phi ptr [ %i.by, %.thread30.i11 ], [ %i.cb, %._crit_edge52 ] ; 4 uses
  %i.cf = phi i32 [ %i.bx, %.thread30.i11 ], [ %i.ca, %._crit_edge52 ]
  %i.cg = trunc nuw i8 %i.cd to i1
  br i1 %i.cg, label %bb.k, label %bb.l

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i27: ; preds = %bb.i
  %i.ch = sext i32 %i.ab to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.ch
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit31

bb.k:                                             ; preds = %bb.j
  %.0.i.i.ph33.i17 = load i32, ptr %i.v, align 8, !tbaa !3 ; 2 uses
  %i.cj = sext i32 %.0.i.i.ph33.i17 to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cj
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit31

bb.l:                                             ; preds = %bb.j
  %i.cl = load ptr, ptr %i.t, align 8, !tbaa !670 ; 2 uses
  %i.cm = sext i32 %i.ab to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  %.0.i.i.ph.i12 = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.co = sext i32 %.0.i.i.ph.i12 to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.co
  %i.cq = sext i32 %i.cf to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit31

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit31: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i27, %bb.k, %bb.l
  %i.ct = phi ptr [ %i.ce, %bb.l ], [ %i.ce, %bb.k ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i27 ]
  %.in.i14 = phi ptr [ %i.cp, %bb.l ], [ %i.ck, %bb.k ], [ %i.ci, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i27 ]
  %.0.i.i21.i15 = phi i32 [ %i.cs, %bb.l ], [ %.0.i.i.ph33.i17, %bb.k ], [ %i.ca, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i27 ]
  %i.cu = load i32, ptr %.in.i14, align 4, !tbaa !3
  %i.cv = sext i32 %.0.i.i21.i15 to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cy = icmp slt i32 %i.cu, %i.cx
  %cond.fr = freeze i1 %i.cy
  br i1 %cond.fr, label %bb.m, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit31.thread

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit31
  %i.cz = or disjoint i64 %i.w, 1
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit31.thread

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit31.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23, %bb.h, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit31, %bb.m
  %i.da = phi i64 [ %i.cz, %bb.m ], [ %i.x, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit31 ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20 ], [ %i.x, %bb.h ], [ %i.x, %bb.g ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23 ] ; 4 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %0, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !3
  %i.de = icmp slt i64 %i.da, %3
  br i1 %i.de, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !920

._crit_edge.i.i:                                  ; preds = %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit31.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.da, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit31.thread ] ; 5 uses
  %i.df = and i64 %i.j, 4
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.dh = add nsw i64 %i.k, -2
  %i.di = ashr exact i64 %i.dh, 1
  %i.dj = icmp eq i64 %.0.lcssa.i.i, %i.di
  br i1 %i.dj, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %bb.n
  %i.dk = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.dl = or disjoint i64 %i.dk, 1                ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.o, %.thread.i
  %.128.i12.i = phi i64 [ %i.dl, %.thread.i ], [ %.0.lcssa.i.i, %bb.o ] ; 3 uses
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !581 ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !667 ; 6 uses
  %.not.i.i = icmp eq ptr %i.dr, null
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 57
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 59 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 3 uses
  %i.dv = sext i32 %i.g to i64                    ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 3 uses
  %i.dx = zext i32 %i.g to i64                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 6
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dy
  %i.ea = and i64 %i.dx, 63
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 64 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 58
  %.pre.i.us = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !668, !range !163 ; 2 uses
  br i1 %.not.i.i, label %.lr.ph.i.i.preheader.i.split.us, label %.lr.ph.i.i.preheader.i.split

.lr.ph.i.i.preheader.i.split.us:                  ; preds = %.lr.ph.i.i.preheader.i
  %i.ed = load ptr, ptr %i.dw, align 8, !tbaa !671 ; 4 uses
  %i.ee = trunc nuw i8 %.pre.i.us to i1
  br i1 %i.ee, label %.lr.ph.i.i.preheader.i.split.us.split.us, label %.lr.ph.i.i.preheader.i.split.us.split

.lr.ph.i.i.preheader.i.split.us.split.us:         ; preds = %.lr.ph.i.i.preheader.i.split.us
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.dv
  br label %.lr.ph.i.i.i.us.us

.lr.ph.i.i.i.us.us:                               ; preds = %bb.p, %.lr.ph.i.i.preheader.i.split.us.split.us
  %.01316.i.i.i.us.us = phi i64 [ %.017.i.i78.i.us.us, %bb.p ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i.split.us.split.us ] ; 3 uses
  %.017.in.i.i.i.us.us = add nsw i64 %.01316.i.i.i.us.us, -1
  %.017.i.i78.i.us.us = lshr i64 %.017.in.i.i.i.us.us, 1 ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i.us.us
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3  ; 2 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3
  %i.el = load i32, ptr %i.ef, align 4, !tbaa !3
  %i.em = icmp slt i32 %i.ek, %i.el
  br i1 %i.em, label %bb.p, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_SB_RT0_.exit

bb.p:                                             ; preds = %.lr.ph.i.i.i.us.us
  %i.en = getelementptr inbounds [4 x i8], ptr %0, i64 %.01316.i.i.i.us.us
  store i32 %i.eh, ptr %i.en, align 4, !tbaa !3
  %.not9.i.us.us = icmp eq i64 %.017.i.i78.i.us.us, 0
  br i1 %.not9.i.us.us, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i.us.us, !llvm.loop !921

.lr.ph.i.i.preheader.i.split.us.split:            ; preds = %.lr.ph.i.i.preheader.i.split.us
  %i.eo = load i8, ptr %i.dt, align 1, !tbaa !669, !range !163, !noundef !164
  %i.ep = trunc nuw i8 %i.eo to i1
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %bb.s, %.lr.ph.i.i.preheader.i.split.us.split
  %.01316.i.i.i.us = phi i64 [ %.017.i.i78.i.us, %bb.s ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i.split.us.split ] ; 3 uses
  %.017.in.i.i.i.us = add nsw i64 %.01316.i.i.i.us, -1
  %.017.i.i78.i.us = lshr i64 %.017.in.i.i.i.us, 1 ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i.us
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3  ; 2 uses
  br i1 %i.ep, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.us
  %i.es = load ptr, ptr %i.du, align 8, !tbaa !670 ; 2 uses
  %i.et = sext i32 %i.er to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.et
  %.0.i.i.ph.i.us = load i32, ptr %i.eu, align 4, !tbaa !3
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.dv
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit.us

bb.r:                                             ; preds = %.lr.ph.i.i.i.us
  %.0.i.i.ph33.i.us = load i32, ptr %i.ec, align 8, !tbaa !3 ; 2 uses
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit.us

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit.us: ; preds = %bb.r, %bb.q
  %.pn.in = phi i32 [ %.0.i.i.ph.i.us, %bb.q ], [ %.0.i.i.ph33.i.us, %bb.r ]
  %.0.i.i21.i.us = phi i32 [ %i.ew, %bb.q ], [ %.0.i.i.ph33.i.us, %bb.r ]
  %.pn = sext i32 %.pn.in to i64
  %.in.i.us = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %.pn
  %i.ex = load i32, ptr %.in.i.us, align 4, !tbaa !3
  %i.ey = sext i32 %.0.i.i21.i.us to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fb = icmp slt i32 %i.ex, %i.fa
  br i1 %i.fb, label %bb.s, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_SB_RT0_.exit

bb.s:                                             ; preds = %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit.us
  %i.fc = getelementptr inbounds [4 x i8], ptr %0, i64 %.01316.i.i.i.us
  store i32 %i.er, ptr %i.fc, align 4, !tbaa !3
  %.not9.i.us = icmp eq i64 %.017.i.i78.i.us, 0
  br i1 %.not9.i.us, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i.us, !llvm.loop !921

.lr.ph.i.i.preheader.i.split:                     ; preds = %.lr.ph.i.i.preheader.i
  %i.fd = trunc nuw i8 %.pre.i.us to i1           ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ac, %.lr.ph.i.i.preheader.i.split
  %.01316.i.i.i = phi i64 [ %.017.i.i78.i, %bb.ac ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i.split ] ; 7 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i78.i = lshr i64 %.017.in.i.i.i, 1      ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3  ; 5 uses
  %i.fg = load i8, ptr %i.ds, align 1, !range !163
  %i.fh = trunc nuw i8 %i.fg to i1
  %or.cond.i.i = select i1 %i.fd, i1 true, i1 %i.fh
  br i1 %or.cond.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.fi = zext i32 %i.ff to i64                   ; 2 uses
  %i.fj = lshr i64 %i.fi, 6
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !210
  %i.fm = and i64 %i.fi, 63
  %i.fn = shl nuw i64 1, %i.fm
  %i.fo = and i64 %i.fl, %i.fn
  %.not.i.i.i = icmp eq i64 %i.fo, 0
  %i.fp = load i64, ptr %i.dz, align 8, !tbaa !210
  %i.fq = and i64 %i.fp, %i.eb                    ; 2 uses
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, label %bb.w

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.fr = load i8, ptr %i.dt, align 1, !tbaa !669, !range !163, !noundef !164 ; 2 uses
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ft = load ptr, ptr %i.du, align 8, !tbaa !670 ; 2 uses
  %i.fu = sext i32 %i.ff to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %i.fy = lshr i64 %i.fx, 6
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !210
  %i.gb = and i64 %i.fx, 63
  %i.gc = shl nuw i64 1, %i.gb
  %i.gd = and i64 %i.gc, %i.ga
  %.not.i7.i.i = icmp eq i64 %i.gd, 0
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.dv
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %i.gh = lshr i64 %i.gg, 6
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !210
  %i.gk = and i64 %i.gg, 63
  %i.gl = shl nuw i64 1, %i.gk
  %i.gm = and i64 %i.gl, %i.gj                    ; 2 uses
  br i1 %.not.i7.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.u
  %i.gn = load i64, ptr %i.dr, align 8, !tbaa !210
  %i.go = and i64 %i.gn, 1
  %.not.i6.i.i = icmp eq i64 %i.go, 0
  br i1 %.not.i6.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_SB_RT0_.exit, label %.thread30.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i: ; preds = %bb.v, %bb.t
  %.0.i10.in.i = phi i64 [ %i.fq, %bb.t ], [ %i.gm, %bb.v ]
  %.0.i10.i.not = icmp eq i64 %.0.i10.in.i, 0
  br i1 %.0.i10.i.not, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_SB_RT0_.exit, label %bb.ac

bb.w:                                             ; preds = %bb.t
  %.not.i.i19.i = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i19.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_SB_RT0_.exit, label %bb.y

bb.x:                                             ; preds = %bb.v
  %.not.i7.i16.i = icmp eq i64 %i.gm, 0
  br i1 %.not.i7.i16.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_SB_RT0_.exit, label %.thread30.i

.thread30.i:                                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.x
  %i.gp = load ptr, ptr %i.dw, align 8, !tbaa !671
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gq = load ptr, ptr %i.dw, align 8, !tbaa !671 ; 3 uses
  br i1 %i.fd, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i, label %._crit_edge53

._crit_edge53:                                    ; preds = %bb.y
  %.pre54 = load i8, ptr %i.dt, align 1, !tbaa !669, !range !163
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge53, %.thread30.i
  %i.gr = phi i8 [ %i.fr, %.thread30.i ], [ %.pre54, %._crit_edge53 ]
  %i.gs = phi ptr [ %i.gp, %.thread30.i ], [ %i.gq, %._crit_edge53 ] ; 4 uses
  %i.gt = trunc nuw i8 %i.gr to i1
  br i1 %i.gt, label %bb.aa, label %bb.ab

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i: ; preds = %bb.y
  %i.gu = sext i32 %i.ff to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gq, i64 %i.gu
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIiEclERKiS6_.exit

bb.aa:                                            ; preds = %bb.z
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE10rehashImplEmmmmm:bb.a
  %i.er = getelementptr inbounds nuw [48 x i8], ptr %i.eq, i64 %.041 ; 2 uses
  %i.es = zext nneg i8 %i.eo to i64
  %i.et = add nsw i64 %i.es, -1                   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.eu, i64 %i.et
  %i.ew = icmp ne ptr %i.er, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp ult i8 %i.eo, 17
  call void @llvm.assume(i1 %i.ex)
  %i.ey = lshr i64 %i.et, 3
  %i.ez = ptrtoint ptr %i.ev to i64
  %i.fa = or i64 %i.ey, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !210
  br i1 %.not, label %bb.aa, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIabvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  call void @_ZdlPvm(ptr noundef nonnull %.0114, i64 noundef %4) #32
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIabvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIabvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIabvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !54
  %i.fc = load i64, ptr %i.d, align 8, !tbaa !210
  %.not.i.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIabvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fd = load ptr, ptr %i.c, align 8, !tbaa !1003 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIabvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fe = load i64, ptr %i.e, align 8, !tbaa !210
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fe) #30
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIabvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIabvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIabvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !698, !range !163, !noundef !164
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIabvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1018, !nonnull !164
  %i.e = load i8, ptr %i.d, align 1, !tbaa !54, !range !163, !noundef !164
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1020, !nonnull !164, !align !242
  %i.i = load i64, ptr %i.h, align 8, !tbaa !210
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIabvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1021, !nonnull !164, !align !242
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1003
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1022, !nonnull !164, !align !242
  %i.o = load i64, ptr %i.n, align 8, !tbaa !210
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1023 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1024, !nonnull !164, !align !242
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !270
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1025, !nonnull !164, !align !242
  %i.w = load i64, ptr %i.v, align 8, !tbaa !210
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1021, !nonnull !164, !align !242
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1003
  store ptr %i.z, ptr %i.q, align 8, !tbaa !958
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1026, !nonnull !164, !align !242
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !210 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !524
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !524
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIabvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #30
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIabvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIabvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.495", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.495", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph25

bb.b:                                             ; preds = %.lr.ph25
  %i.g = icmp eq i64 %i.i, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph25, !llvm.loop !1027

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.018.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph25:                                         ; preds = %.lr.ph, %bb.b
  %.0151724 = phi i64 [ %i.i, %bb.b ], [ %2, %.lr.ph ]
  %.01823 = phi ptr [ %i.m, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.h = phi i64 [ %i.o, %bb.b ], [ %i.c, %.lr.ph ]
  %i.i = add nsw i64 %.0151724, -1                ; 3 uses
  %i.j = lshr i64 %i.h, 3
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %.01823, i64 -4
  tail call void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_SB_SB_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.k, ptr noundef nonnull %i.l, ptr %3)
  %i.m = tail call noundef ptr @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEET_SB_SB_SB_T0_(ptr noundef nonnull %i.e, ptr noundef %.01823, ptr noundef %0, ptr %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_T0_T1_(ptr noundef %i.m, ptr noundef %.01823, i64 noundef %i.i, ptr %3)
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.a                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 64
  br i1 %i.p, label %bb.b, label %.loopexit, !llvm.loop !1027

.loopexit:                                        ; preds = %.lr.ph25, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !726
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_SB_RT0_.exit
  %.047 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_SB_RT0_.exit ]
  %i.f = getelementptr inbounds i8, ptr %.047, i64 -4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 3 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.h, ptr %i.f, align 4, !tbaa !3
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 2                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %3 = lshr i64 %i.l, 1
  %i.m = icmp sgt i64 %i.k, 2
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !581  ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !667  ; 6 uses
  %.not.i.i7 = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 58 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 57
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 59 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit31.thread
  %.029.i.i = phi i64 [ %i.da, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit31.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.w = shl i64 %.029.i.i, 1                     ; 3 uses
  %i.x = add i64 %i.w, 2                          ; 6 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr [4 x i8], ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 4       ; 4 uses
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !3   ; 4 uses
  br i1 %.not.i.i7, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ac = load i8, ptr %i.q, align 2, !tbaa !668, !range !163, !noundef !164 ; 2 uses
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load i8, ptr %i.r, align 1, !range !163
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond.i.i8 = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond.i.i8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = zext i32 %i.ab to i64                   ; 2 uses
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !210
  %i.ak = and i64 %i.ag, 63
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.aj, %i.al
  %.not.i.i.i25 = icmp eq i64 %i.am, 0
  %i.an = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !210
  %i.as = and i64 %i.ao, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, %i.ar                    ; 2 uses
  br i1 %.not.i.i.i25, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.av = load i8, ptr %i.s, align 1, !tbaa !669, !range !163, !noundef !164 ; 2 uses
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !670 ; 2 uses
  %i.ay = sext i32 %i.ab to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = lshr i64 %i.bb, 6
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !210
  %i.bf = and i64 %i.bb, 63
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = and i64 %i.bg, %i.be
  %.not.i7.i.i9 = icmp eq i64 %i.bh, 0
  %i.bi = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = lshr i64 %i.bm, 6
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !210
  %i.bq = and i64 %i.bm, 63
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = and i64 %i.br, %i.bp                    ; 2 uses
  br i1 %.not.i7.i.i9, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, label %bb.h

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23: ; preds = %bb.e
  %i.bt = load i64, ptr %i.p, align 8, !tbaa !210
  %i.bu = and i64 %i.bt, 1
  %.not.i6.i.i24 = icmp eq i64 %i.bu, 0
  br i1 %.not.i6.i.i24, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit31.thread, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20: ; preds = %bb.f, %bb.d
  %.0.i10.in.i21 = phi i64 [ %i.au, %bb.d ], [ %i.bs, %bb.f ]
  %.0.i10.in.i21.fr = freeze i64 %.0.i10.in.i21
  %.0.i10.i22.not = icmp eq i64 %.0.i10.in.i21.fr, 0
  br i1 %.0.i10.i22.not, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit31.thread, label %bb.m

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28: ; preds = %.lr.ph.i.i
  %i.bv = load i32, ptr %i.aa, align 4, !tbaa !3
  %.pre.i30 = load i8, ptr %i.q, align 2, !tbaa !668, !range !163
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %.not.i.i19.i26 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i19.i26, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit31.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  %.not.i7.i16.i10 = icmp eq i64 %i.bs, 0
  br i1 %.not.i7.i16.i10, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit31.thread, label %.thread30.i11

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23
  %i.bw = load i32, ptr %i.aa, align 4, !tbaa !3
  br label %.thread30.i11

.thread30.i11:                                    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18, %bb.h
  %i.bx = phi i32 [ %i.bw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18 ], [ %i.bi, %bb.h ]
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !671
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28
  %i.bz = phi i8 [ %.pre.i30, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28 ], [ %i.ac, %bb.g ]
  %i.ca = phi i32 [ %i.bv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28 ], [ %i.an, %bb.g ] ; 2 uses
  %i.cb = load ptr, ptr %i.u, align 8, !tbaa !671 ; 3 uses
  %i.cc = trunc nuw i8 %i.bz to i1
  br i1 %i.cc, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i27, label %._crit_edge52

._crit_edge52:                                    ; preds = %bb.i
  %.pre = load i8, ptr %i.s, align 1, !tbaa !669, !range !163
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge52, %.thread30.i11
  %i.cd = phi i8 [ %i.av, %.thread30.i11 ], [ %.pre, %._crit_edge52 ]
  %i.ce = phi ptr [ %i.by, %.thread30.i11 ], [ %i.cb, %._crit_edge52 ] ; 4 uses
  %i.cf = phi i32 [ %i.bx, %.thread30.i11 ], [ %i.ca, %._crit_edge52 ]
  %i.cg = trunc nuw i8 %i.cd to i1
  br i1 %i.cg, label %bb.k, label %bb.l

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i27: ; preds = %bb.i
  %i.ch = sext i32 %i.ab to i64
  %i.ci = getelementptr inbounds i8, ptr %i.cb, i64 %i.ch
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit31

bb.k:                                             ; preds = %bb.j
  %.0.i.i.ph33.i17 = load i32, ptr %i.v, align 8, !tbaa !3 ; 2 uses
  %i.cj = sext i32 %.0.i.i.ph33.i17 to i64
  %i.ck = getelementptr inbounds i8, ptr %i.ce, i64 %i.cj
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit31

bb.l:                                             ; preds = %bb.j
  %i.cl = load ptr, ptr %i.t, align 8, !tbaa !670 ; 2 uses
  %i.cm = sext i32 %i.ab to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  %.0.i.i.ph.i12 = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.co = sext i32 %.0.i.i.ph.i12 to i64
  %i.cp = getelementptr inbounds i8, ptr %i.ce, i64 %i.co
  %i.cq = sext i32 %i.cf to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit31

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit31: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i27, %bb.k, %bb.l
  %i.ct = phi ptr [ %i.ce, %bb.l ], [ %i.ce, %bb.k ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i27 ]
  %.in.i14 = phi ptr [ %i.cp, %bb.l ], [ %i.ck, %bb.k ], [ %i.ci, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i27 ]
  %.0.i.i21.i15 = phi i32 [ %i.cs, %bb.l ], [ %.0.i.i.ph33.i17, %bb.k ], [ %i.ca, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i27 ]
  %i.cu = load i8, ptr %.in.i14, align 1, !tbaa !32
  %i.cv = sext i32 %.0.i.i21.i15 to i64
  %i.cw = getelementptr inbounds i8, ptr %i.ct, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !32
  %i.cy = icmp slt i8 %i.cu, %i.cx
  %cond.fr = freeze i1 %i.cy
  br i1 %cond.fr, label %bb.m, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit31.thread

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit31
  %i.cz = or disjoint i64 %i.w, 1
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit31.thread

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit31.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23, %bb.h, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit31, %bb.m
  %i.da = phi i64 [ %i.cz, %bb.m ], [ %i.x, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit31 ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20 ], [ %i.x, %bb.h ], [ %i.x, %bb.g ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23 ] ; 4 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %0, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !3
  %i.de = icmp slt i64 %i.da, %3
  br i1 %i.de, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1028

._crit_edge.i.i:                                  ; preds = %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit31.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.da, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit31.thread ] ; 5 uses
  %i.df = and i64 %i.j, 4
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.dh = add nsw i64 %i.k, -2
  %i.di = ashr exact i64 %i.dh, 1
  %i.dj = icmp eq i64 %.0.lcssa.i.i, %i.di
  br i1 %i.dj, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %bb.n
  %i.dk = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.dl = or disjoint i64 %i.dk, 1                ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.o, %.thread.i
  %.128.i12.i = phi i64 [ %i.dl, %.thread.i ], [ %.0.lcssa.i.i, %bb.o ] ; 3 uses
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !581 ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !667 ; 6 uses
  %.not.i.i = icmp eq ptr %i.dr, null
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 57
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 59 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 3 uses
  %i.dv = sext i32 %i.g to i64                    ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 3 uses
  %i.dx = zext i32 %i.g to i64                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 6
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dy
  %i.ea = and i64 %i.dx, 63
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 64 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 58
  %.pre.i.us = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !668, !range !163 ; 2 uses
  br i1 %.not.i.i, label %.lr.ph.i.i.preheader.i.split.us, label %.lr.ph.i.i.preheader.i.split

.lr.ph.i.i.preheader.i.split.us:                  ; preds = %.lr.ph.i.i.preheader.i
  %i.ed = load ptr, ptr %i.dw, align 8, !tbaa !671 ; 4 uses
  %i.ee = trunc nuw i8 %.pre.i.us to i1
  br i1 %i.ee, label %.lr.ph.i.i.preheader.i.split.us.split.us, label %.lr.ph.i.i.preheader.i.split.us.split

.lr.ph.i.i.preheader.i.split.us.split.us:         ; preds = %.lr.ph.i.i.preheader.i.split.us
  %i.ef = getelementptr inbounds i8, ptr %i.ed, i64 %i.dv
  br label %.lr.ph.i.i.i.us.us

.lr.ph.i.i.i.us.us:                               ; preds = %bb.p, %.lr.ph.i.i.preheader.i.split.us.split.us
  %.01316.i.i.i.us.us = phi i64 [ %.017.i.i78.i.us.us, %bb.p ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i.split.us.split.us ] ; 3 uses
  %.017.in.i.i.i.us.us = add nsw i64 %.01316.i.i.i.us.us, -1
  %.017.i.i78.i.us.us = lshr i64 %.017.in.i.i.i.us.us, 1 ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i.us.us
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3  ; 2 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds i8, ptr %i.ed, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !32
  %i.el = load i8, ptr %i.ef, align 1, !tbaa !32
  %i.em = icmp slt i8 %i.ek, %i.el
  br i1 %i.em, label %bb.p, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_SB_RT0_.exit

bb.p:                                             ; preds = %.lr.ph.i.i.i.us.us
  %i.en = getelementptr inbounds [4 x i8], ptr %0, i64 %.01316.i.i.i.us.us
  store i32 %i.eh, ptr %i.en, align 4, !tbaa !3
  %.not9.i.us.us = icmp eq i64 %.017.i.i78.i.us.us, 0
  br i1 %.not9.i.us.us, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i.us.us, !llvm.loop !1029

.lr.ph.i.i.preheader.i.split.us.split:            ; preds = %.lr.ph.i.i.preheader.i.split.us
  %i.eo = load i8, ptr %i.dt, align 1, !tbaa !669, !range !163, !noundef !164
  %i.ep = trunc nuw i8 %i.eo to i1
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %bb.s, %.lr.ph.i.i.preheader.i.split.us.split
  %.01316.i.i.i.us = phi i64 [ %.017.i.i78.i.us, %bb.s ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i.split.us.split ] ; 3 uses
  %.017.in.i.i.i.us = add nsw i64 %.01316.i.i.i.us, -1
  %.017.i.i78.i.us = lshr i64 %.017.in.i.i.i.us, 1 ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i.us
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3  ; 2 uses
  br i1 %i.ep, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.us
  %i.es = load ptr, ptr %i.du, align 8, !tbaa !670 ; 2 uses
  %i.et = sext i32 %i.er to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.et
  %.0.i.i.ph.i.us = load i32, ptr %i.eu, align 4, !tbaa !3
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.dv
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit.us

bb.r:                                             ; preds = %.lr.ph.i.i.i.us
  %.0.i.i.ph33.i.us = load i32, ptr %i.ec, align 8, !tbaa !3 ; 2 uses
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit.us

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit.us: ; preds = %bb.r, %bb.q
  %.pn.in = phi i32 [ %.0.i.i.ph.i.us, %bb.q ], [ %.0.i.i.ph33.i.us, %bb.r ]
  %.0.i.i21.i.us = phi i32 [ %i.ew, %bb.q ], [ %.0.i.i.ph33.i.us, %bb.r ]
  %.pn = sext i32 %.pn.in to i64
  %.in.i.us = getelementptr inbounds i8, ptr %i.ed, i64 %.pn
  %i.ex = load i8, ptr %.in.i.us, align 1, !tbaa !32
  %i.ey = sext i32 %.0.i.i21.i.us to i64
  %i.ez = getelementptr inbounds i8, ptr %i.ed, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !32
  %i.fb = icmp slt i8 %i.ex, %i.fa
  br i1 %i.fb, label %bb.s, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_SB_RT0_.exit

bb.s:                                             ; preds = %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit.us
  %i.fc = getelementptr inbounds [4 x i8], ptr %0, i64 %.01316.i.i.i.us
  store i32 %i.er, ptr %i.fc, align 4, !tbaa !3
  %.not9.i.us = icmp eq i64 %.017.i.i78.i.us, 0
  br i1 %.not9.i.us, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i.us, !llvm.loop !1029

.lr.ph.i.i.preheader.i.split:                     ; preds = %.lr.ph.i.i.preheader.i
  %i.fd = trunc nuw i8 %.pre.i.us to i1           ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ac, %.lr.ph.i.i.preheader.i.split
  %.01316.i.i.i = phi i64 [ %.017.i.i78.i, %bb.ac ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i.split ] ; 7 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i78.i = lshr i64 %.017.in.i.i.i, 1      ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3  ; 5 uses
  %i.fg = load i8, ptr %i.ds, align 1, !range !163
  %i.fh = trunc nuw i8 %i.fg to i1
  %or.cond.i.i = select i1 %i.fd, i1 true, i1 %i.fh
  br i1 %or.cond.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.fi = zext i32 %i.ff to i64                   ; 2 uses
  %i.fj = lshr i64 %i.fi, 6
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !210
  %i.fm = and i64 %i.fi, 63
  %i.fn = shl nuw i64 1, %i.fm
  %i.fo = and i64 %i.fl, %i.fn
  %.not.i.i.i = icmp eq i64 %i.fo, 0
  %i.fp = load i64, ptr %i.dz, align 8, !tbaa !210
  %i.fq = and i64 %i.fp, %i.eb                    ; 2 uses
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, label %bb.w

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.fr = load i8, ptr %i.dt, align 1, !tbaa !669, !range !163, !noundef !164 ; 2 uses
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ft = load ptr, ptr %i.du, align 8, !tbaa !670 ; 2 uses
  %i.fu = sext i32 %i.ff to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %i.fy = lshr i64 %i.fx, 6
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !210
  %i.gb = and i64 %i.fx, 63
  %i.gc = shl nuw i64 1, %i.gb
  %i.gd = and i64 %i.gc, %i.ga
  %.not.i7.i.i = icmp eq i64 %i.gd, 0
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.dv
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %i.gh = lshr i64 %i.gg, 6
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !210
  %i.gk = and i64 %i.gg, 63
  %i.gl = shl nuw i64 1, %i.gk
  %i.gm = and i64 %i.gl, %i.gj                    ; 2 uses
  br i1 %.not.i7.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.u
  %i.gn = load i64, ptr %i.dr, align 8, !tbaa !210
  %i.go = and i64 %i.gn, 1
  %.not.i6.i.i = icmp eq i64 %i.go, 0
  br i1 %.not.i6.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_SB_RT0_.exit, label %.thread30.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i: ; preds = %bb.v, %bb.t
  %.0.i10.in.i = phi i64 [ %i.fq, %bb.t ], [ %i.gm, %bb.v ]
  %.0.i10.i.not = icmp eq i64 %.0.i10.in.i, 0
  br i1 %.0.i10.i.not, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_SB_RT0_.exit, label %bb.ac

bb.w:                                             ; preds = %bb.t
  %.not.i.i19.i = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i19.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_SB_RT0_.exit, label %bb.y

bb.x:                                             ; preds = %bb.v
  %.not.i7.i16.i = icmp eq i64 %i.gm, 0
  br i1 %.not.i7.i16.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_SB_RT0_.exit, label %.thread30.i

.thread30.i:                                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.x
  %i.gp = load ptr, ptr %i.dw, align 8, !tbaa !671
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gq = load ptr, ptr %i.dw, align 8, !tbaa !671 ; 3 uses
  br i1 %i.fd, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i, label %._crit_edge53

._crit_edge53:                                    ; preds = %bb.y
  %.pre54 = load i8, ptr %i.dt, align 1, !tbaa !669, !range !163
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge53, %.thread30.i
  %i.gr = phi i8 [ %i.fr, %.thread30.i ], [ %.pre54, %._crit_edge53 ]
  %i.gs = phi ptr [ %i.gp, %.thread30.i ], [ %i.gq, %._crit_edge53 ] ; 4 uses
  %i.gt = trunc nuw i8 %i.gr to i1
  br i1 %i.gt, label %bb.aa, label %bb.ab

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i: ; preds = %bb.y
  %i.gu = sext i32 %i.ff to i64
  %i.gv = getelementptr inbounds i8, ptr %i.gq, i64 %i.gu
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIaEclERKiS6_.exit

bb.aa:                                            ; preds = %bb.z
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE10rehashImplEmmmmm:bb.a
  %i.ex = getelementptr inbounds nuw [64 x i8], ptr %i.ew, i64 %.041 ; 2 uses
  %i.ey = zext nneg i8 %i.eu to i64
  %i.ez = add nsw i64 %i.ey, -1                   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ez
  %i.fc = icmp ne ptr %i.ex, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp ult i8 %i.eu, 17
  call void @llvm.assume(i1 %i.fd)
  %i.fe = lshr i64 %i.ez, 2
  %i.ff = ptrtoint ptr %i.fb to i64
  %i.fg = or i64 %i.fe, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !210
  br i1 %.not, label %bb.aa, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIsbvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  call void @_ZdlPvm(ptr noundef nonnull %.0114, i64 noundef %4) #32
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIsbvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIsbvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIsbvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !54
  %i.fi = load i64, ptr %i.d, align 8, !tbaa !210
  %.not.i.i.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIsbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fj = load ptr, ptr %i.c, align 8, !tbaa !1116 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIsbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fk = load i64, ptr %i.e, align 8, !tbaa !210
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fk) #30
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIsbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIsbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIsbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !698, !range !163, !noundef !164
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIsbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1131, !nonnull !164
  %i.e = load i8, ptr %i.d, align 1, !tbaa !54, !range !163, !noundef !164
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1133, !nonnull !164, !align !242
  %i.i = load i64, ptr %i.h, align 8, !tbaa !210
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIsbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1134, !nonnull !164, !align !242
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1116
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1135, !nonnull !164, !align !242
  %i.o = load i64, ptr %i.n, align 8, !tbaa !210
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1136 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1137, !nonnull !164, !align !242
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !270
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1138, !nonnull !164, !align !242
  %i.w = load i64, ptr %i.v, align 8, !tbaa !210
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1134, !nonnull !164, !align !242
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1116
  store ptr %i.z, ptr %i.q, align 8, !tbaa !1066
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1139, !nonnull !164, !align !242
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !210 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !524
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !524
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIsbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #30
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIsbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIsbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.559", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.559", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph25

bb.b:                                             ; preds = %.lr.ph25
  %i.g = icmp eq i64 %i.i, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph25, !llvm.loop !1140

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.018.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph25:                                         ; preds = %.lr.ph, %bb.b
  %.0151724 = phi i64 [ %i.i, %bb.b ], [ %2, %.lr.ph ]
  %.01823 = phi ptr [ %i.m, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.h = phi i64 [ %i.o, %bb.b ], [ %i.c, %.lr.ph ]
  %i.i = add nsw i64 %.0151724, -1                ; 3 uses
  %i.j = lshr i64 %i.h, 3
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %.01823, i64 -4
  tail call void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_SB_SB_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.k, ptr noundef nonnull %i.l, ptr %3)
  %i.m = tail call noundef ptr @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEET_SB_SB_SB_T0_(ptr noundef nonnull %i.e, ptr noundef %.01823, ptr noundef %0, ptr %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_T0_T1_(ptr noundef %i.m, ptr noundef %.01823, i64 noundef %i.i, ptr %3)
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.a                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 64
  br i1 %i.p, label %bb.b, label %.loopexit, !llvm.loop !1140

.loopexit:                                        ; preds = %.lr.ph25, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !726
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_SB_RT0_.exit
  %.047 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_SB_RT0_.exit ]
  %i.f = getelementptr inbounds i8, ptr %.047, i64 -4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 3 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.h, ptr %i.f, align 4, !tbaa !3
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 2                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %3 = lshr i64 %i.l, 1
  %i.m = icmp sgt i64 %i.k, 2
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !581  ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !667  ; 6 uses
  %.not.i.i7 = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 58 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 57
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 59 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit31.thread
  %.029.i.i = phi i64 [ %i.da, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit31.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.w = shl i64 %.029.i.i, 1                     ; 3 uses
  %i.x = add i64 %i.w, 2                          ; 6 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr [4 x i8], ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 4       ; 4 uses
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !3   ; 4 uses
  br i1 %.not.i.i7, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ac = load i8, ptr %i.q, align 2, !tbaa !668, !range !163, !noundef !164 ; 2 uses
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load i8, ptr %i.r, align 1, !range !163
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond.i.i8 = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond.i.i8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = zext i32 %i.ab to i64                   ; 2 uses
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !210
  %i.ak = and i64 %i.ag, 63
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.aj, %i.al
  %.not.i.i.i25 = icmp eq i64 %i.am, 0
  %i.an = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !210
  %i.as = and i64 %i.ao, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, %i.ar                    ; 2 uses
  br i1 %.not.i.i.i25, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.av = load i8, ptr %i.s, align 1, !tbaa !669, !range !163, !noundef !164 ; 2 uses
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !670 ; 2 uses
  %i.ay = sext i32 %i.ab to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = lshr i64 %i.bb, 6
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !210
  %i.bf = and i64 %i.bb, 63
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = and i64 %i.bg, %i.be
  %.not.i7.i.i9 = icmp eq i64 %i.bh, 0
  %i.bi = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = lshr i64 %i.bm, 6
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !210
  %i.bq = and i64 %i.bm, 63
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = and i64 %i.br, %i.bp                    ; 2 uses
  br i1 %.not.i7.i.i9, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, label %bb.h

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23: ; preds = %bb.e
  %i.bt = load i64, ptr %i.p, align 8, !tbaa !210
  %i.bu = and i64 %i.bt, 1
  %.not.i6.i.i24 = icmp eq i64 %i.bu, 0
  br i1 %.not.i6.i.i24, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit31.thread, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20: ; preds = %bb.f, %bb.d
  %.0.i10.in.i21 = phi i64 [ %i.au, %bb.d ], [ %i.bs, %bb.f ]
  %.0.i10.in.i21.fr = freeze i64 %.0.i10.in.i21
  %.0.i10.i22.not = icmp eq i64 %.0.i10.in.i21.fr, 0
  br i1 %.0.i10.i22.not, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit31.thread, label %bb.m

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28: ; preds = %.lr.ph.i.i
  %i.bv = load i32, ptr %i.aa, align 4, !tbaa !3
  %.pre.i30 = load i8, ptr %i.q, align 2, !tbaa !668, !range !163
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %.not.i.i19.i26 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i19.i26, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit31.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  %.not.i7.i16.i10 = icmp eq i64 %i.bs, 0
  br i1 %.not.i7.i16.i10, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit31.thread, label %.thread30.i11

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23
  %i.bw = load i32, ptr %i.aa, align 4, !tbaa !3
  br label %.thread30.i11

.thread30.i11:                                    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18, %bb.h
  %i.bx = phi i32 [ %i.bw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18 ], [ %i.bi, %bb.h ]
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !671
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28
  %i.bz = phi i8 [ %.pre.i30, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28 ], [ %i.ac, %bb.g ]
  %i.ca = phi i32 [ %i.bv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28 ], [ %i.an, %bb.g ] ; 2 uses
  %i.cb = load ptr, ptr %i.u, align 8, !tbaa !671 ; 3 uses
  %i.cc = trunc nuw i8 %i.bz to i1
  br i1 %i.cc, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i27, label %._crit_edge52

._crit_edge52:                                    ; preds = %bb.i
  %.pre = load i8, ptr %i.s, align 1, !tbaa !669, !range !163
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge52, %.thread30.i11
  %i.cd = phi i8 [ %i.av, %.thread30.i11 ], [ %.pre, %._crit_edge52 ]
  %i.ce = phi ptr [ %i.by, %.thread30.i11 ], [ %i.cb, %._crit_edge52 ] ; 4 uses
  %i.cf = phi i32 [ %i.bx, %.thread30.i11 ], [ %i.ca, %._crit_edge52 ]
  %i.cg = trunc nuw i8 %i.cd to i1
  br i1 %i.cg, label %bb.k, label %bb.l

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i27: ; preds = %bb.i
  %i.ch = sext i32 %i.ab to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.cb, i64 %i.ch
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit31

bb.k:                                             ; preds = %bb.j
  %.0.i.i.ph33.i17 = load i32, ptr %i.v, align 8, !tbaa !3 ; 2 uses
  %i.cj = sext i32 %.0.i.i.ph33.i17 to i64
  %i.ck = getelementptr inbounds [2 x i8], ptr %i.ce, i64 %i.cj
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit31

bb.l:                                             ; preds = %bb.j
  %i.cl = load ptr, ptr %i.t, align 8, !tbaa !670 ; 2 uses
  %i.cm = sext i32 %i.ab to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  %.0.i.i.ph.i12 = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.co = sext i32 %.0.i.i.ph.i12 to i64
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.ce, i64 %i.co
  %i.cq = sext i32 %i.cf to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit31

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit31: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i27, %bb.k, %bb.l
  %i.ct = phi ptr [ %i.ce, %bb.l ], [ %i.ce, %bb.k ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i27 ]
  %.in.i14 = phi ptr [ %i.cp, %bb.l ], [ %i.ck, %bb.k ], [ %i.ci, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i27 ]
  %.0.i.i21.i15 = phi i32 [ %i.cs, %bb.l ], [ %.0.i.i.ph33.i17, %bb.k ], [ %i.ca, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i27 ]
  %i.cu = load i16, ptr %.in.i14, align 2, !tbaa !1089
  %i.cv = sext i32 %.0.i.i21.i15 to i64
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !1089
  %i.cy = icmp slt i16 %i.cu, %i.cx
  %cond.fr = freeze i1 %i.cy
  br i1 %cond.fr, label %bb.m, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit31.thread

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit31
  %i.cz = or disjoint i64 %i.w, 1
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit31.thread

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit31.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23, %bb.h, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit31, %bb.m
  %i.da = phi i64 [ %i.cz, %bb.m ], [ %i.x, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit31 ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20 ], [ %i.x, %bb.h ], [ %i.x, %bb.g ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23 ] ; 4 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %0, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !3
  %i.de = icmp slt i64 %i.da, %3
  br i1 %i.de, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1141

._crit_edge.i.i:                                  ; preds = %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit31.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.da, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit31.thread ] ; 5 uses
  %i.df = and i64 %i.j, 4
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.dh = add nsw i64 %i.k, -2
  %i.di = ashr exact i64 %i.dh, 1
  %i.dj = icmp eq i64 %.0.lcssa.i.i, %i.di
  br i1 %i.dj, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %bb.n
  %i.dk = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.dl = or disjoint i64 %i.dk, 1                ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.o, %.thread.i
  %.128.i12.i = phi i64 [ %i.dl, %.thread.i ], [ %.0.lcssa.i.i, %bb.o ] ; 3 uses
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !581 ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !667 ; 6 uses
  %.not.i.i = icmp eq ptr %i.dr, null
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 57
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 59 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 3 uses
  %i.dv = sext i32 %i.g to i64                    ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 3 uses
  %i.dx = zext i32 %i.g to i64                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 6
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dy
  %i.ea = and i64 %i.dx, 63
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 64 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 58
  %.pre.i.us = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !668, !range !163 ; 2 uses
  br i1 %.not.i.i, label %.lr.ph.i.i.preheader.i.split.us, label %.lr.ph.i.i.preheader.i.split

.lr.ph.i.i.preheader.i.split.us:                  ; preds = %.lr.ph.i.i.preheader.i
  %i.ed = load ptr, ptr %i.dw, align 8, !tbaa !671 ; 4 uses
  %i.ee = trunc nuw i8 %.pre.i.us to i1
  br i1 %i.ee, label %.lr.ph.i.i.preheader.i.split.us.split.us, label %.lr.ph.i.i.preheader.i.split.us.split

.lr.ph.i.i.preheader.i.split.us.split.us:         ; preds = %.lr.ph.i.i.preheader.i.split.us
  %i.ef = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %i.dv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !1089
  br label %.lr.ph.i.i.i.us.us

.lr.ph.i.i.i.us.us:                               ; preds = %bb.p, %.lr.ph.i.i.preheader.i.split.us.split.us
  %.01316.i.i.i.us.us = phi i64 [ %.017.i.i78.i.us.us, %bb.p ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i.split.us.split.us ] ; 3 uses
  %.017.in.i.i.i.us.us = add nsw i64 %.01316.i.i.i.us.us, -1
  %.017.i.i78.i.us.us = lshr i64 %.017.in.i.i.i.us.us, 1 ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i.us.us
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3  ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !1089
  %i.em = icmp slt i16 %i.el, %i.eg
  br i1 %i.em, label %bb.p, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_SB_RT0_.exit

bb.p:                                             ; preds = %.lr.ph.i.i.i.us.us
  %i.en = getelementptr inbounds [4 x i8], ptr %0, i64 %.01316.i.i.i.us.us
  store i32 %i.ei, ptr %i.en, align 4, !tbaa !3
  %.not9.i.us.us = icmp eq i64 %.017.i.i78.i.us.us, 0
  br i1 %.not9.i.us.us, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i.us.us, !llvm.loop !1142

.lr.ph.i.i.preheader.i.split.us.split:            ; preds = %.lr.ph.i.i.preheader.i.split.us
  %i.eo = load i8, ptr %i.dt, align 1, !tbaa !669, !range !163, !noundef !164
  %i.ep = trunc nuw i8 %i.eo to i1
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %bb.s, %.lr.ph.i.i.preheader.i.split.us.split
  %.01316.i.i.i.us = phi i64 [ %.017.i.i78.i.us, %bb.s ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i.split.us.split ] ; 3 uses
  %.017.in.i.i.i.us = add nsw i64 %.01316.i.i.i.us, -1
  %.017.i.i78.i.us = lshr i64 %.017.in.i.i.i.us, 1 ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i.us
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3  ; 2 uses
  br i1 %i.ep, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.us
  %i.es = load ptr, ptr %i.du, align 8, !tbaa !670 ; 2 uses
  %i.et = sext i32 %i.er to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.et
  %.0.i.i.ph.i.us = load i32, ptr %i.eu, align 4, !tbaa !3
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.dv
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit.us

bb.r:                                             ; preds = %.lr.ph.i.i.i.us
  %.0.i.i.ph33.i.us = load i32, ptr %i.ec, align 8, !tbaa !3 ; 2 uses
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit.us

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit.us: ; preds = %bb.r, %bb.q
  %.pn.in = phi i32 [ %.0.i.i.ph.i.us, %bb.q ], [ %.0.i.i.ph33.i.us, %bb.r ]
  %.0.i.i21.i.us = phi i32 [ %i.ew, %bb.q ], [ %.0.i.i.ph33.i.us, %bb.r ]
  %.pn = sext i32 %.pn.in to i64
  %.in.i.us = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %.pn
  %i.ex = load i16, ptr %.in.i.us, align 2, !tbaa !1089
  %i.ey = sext i32 %.0.i.i21.i.us to i64
  %i.ez = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !1089
  %i.fb = icmp slt i16 %i.ex, %i.fa
  br i1 %i.fb, label %bb.s, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_SB_RT0_.exit

bb.s:                                             ; preds = %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit.us
  %i.fc = getelementptr inbounds [4 x i8], ptr %0, i64 %.01316.i.i.i.us
  store i32 %i.er, ptr %i.fc, align 4, !tbaa !3
  %.not9.i.us = icmp eq i64 %.017.i.i78.i.us, 0
  br i1 %.not9.i.us, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i.us, !llvm.loop !1142

.lr.ph.i.i.preheader.i.split:                     ; preds = %.lr.ph.i.i.preheader.i
  %i.fd = trunc nuw i8 %.pre.i.us to i1           ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ac, %.lr.ph.i.i.preheader.i.split
  %.01316.i.i.i = phi i64 [ %.017.i.i78.i, %bb.ac ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i.split ] ; 7 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i78.i = lshr i64 %.017.in.i.i.i, 1      ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3  ; 5 uses
  %i.fg = load i8, ptr %i.ds, align 1, !range !163
  %i.fh = trunc nuw i8 %i.fg to i1
  %or.cond.i.i = select i1 %i.fd, i1 true, i1 %i.fh
  br i1 %or.cond.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.fi = zext i32 %i.ff to i64                   ; 2 uses
  %i.fj = lshr i64 %i.fi, 6
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !210
  %i.fm = and i64 %i.fi, 63
  %i.fn = shl nuw i64 1, %i.fm
  %i.fo = and i64 %i.fl, %i.fn
  %.not.i.i.i = icmp eq i64 %i.fo, 0
  %i.fp = load i64, ptr %i.dz, align 8, !tbaa !210
  %i.fq = and i64 %i.fp, %i.eb                    ; 2 uses
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, label %bb.w

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.fr = load i8, ptr %i.dt, align 1, !tbaa !669, !range !163, !noundef !164 ; 2 uses
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ft = load ptr, ptr %i.du, align 8, !tbaa !670 ; 2 uses
  %i.fu = sext i32 %i.ff to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %i.fy = lshr i64 %i.fx, 6
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !210
  %i.gb = and i64 %i.fx, 63
  %i.gc = shl nuw i64 1, %i.gb
  %i.gd = and i64 %i.gc, %i.ga
  %.not.i7.i.i = icmp eq i64 %i.gd, 0
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.dv
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %i.gh = lshr i64 %i.gg, 6
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !210
  %i.gk = and i64 %i.gg, 63
  %i.gl = shl nuw i64 1, %i.gk
  %i.gm = and i64 %i.gl, %i.gj                    ; 2 uses
  br i1 %.not.i7.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.u
  %i.gn = load i64, ptr %i.dr, align 8, !tbaa !210
  %i.go = and i64 %i.gn, 1
  %.not.i6.i.i = icmp eq i64 %i.go, 0
  br i1 %.not.i6.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_SB_RT0_.exit, label %.thread30.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i: ; preds = %bb.v, %bb.t
  %.0.i10.in.i = phi i64 [ %i.fq, %bb.t ], [ %i.gm, %bb.v ]
  %.0.i10.i.not = icmp eq i64 %.0.i10.in.i, 0
  br i1 %.0.i10.i.not, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_SB_RT0_.exit, label %bb.ac

bb.w:                                             ; preds = %bb.t
  %.not.i.i19.i = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i19.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_SB_RT0_.exit, label %bb.y

bb.x:                                             ; preds = %bb.v
  %.not.i7.i16.i = icmp eq i64 %i.gm, 0
  br i1 %.not.i7.i16.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_SB_RT0_.exit, label %.thread30.i

.thread30.i:                                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.x
  %i.gp = load ptr, ptr %i.dw, align 8, !tbaa !671
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gq = load ptr, ptr %i.dw, align 8, !tbaa !671 ; 3 uses
  br i1 %i.fd, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i, label %._crit_edge53

._crit_edge53:                                    ; preds = %bb.y
  %.pre54 = load i8, ptr %i.dt, align 1, !tbaa !669, !range !163
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge53, %.thread30.i
  %i.gr = phi i8 [ %i.fr, %.thread30.i ], [ %.pre54, %._crit_edge53 ]
  %i.gs = phi ptr [ %i.gp, %.thread30.i ], [ %i.gq, %._crit_edge53 ] ; 4 uses
  %i.gt = trunc nuw i8 %i.gr to i1
  br i1 %i.gt, label %bb.aa, label %bb.ab

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i: ; preds = %bb.y
  %i.gu = sext i32 %i.ff to i64
  %i.gv = getelementptr inbounds [2 x i8], ptr %i.gq, i64 %i.gu
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIsEclERKiS6_.exit

bb.aa:                                            ; preds = %bb.z
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE10rehashImplEmmmmm:bb.a
bb.z:                                             ; preds = %bb.y
  %i.eo = load ptr, ptr %0, align 8, !tbaa !1179
  %i.ep = getelementptr inbounds nuw [256 x i8], ptr %i.eo, i64 %.041 ; 2 uses
  %i.eq = zext nneg i8 %i.em to i64               ; 2 uses
  %i.er = add nsw i64 %i.eq, -1
  %i.es = getelementptr [16 x i8], ptr %i.ep, i64 %i.eq
  %i.et = icmp ne ptr %i.ep, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.et)
  %i.eu = icmp ult i8 %i.em, 17
  call void @llvm.assume(i1 %i.eu)
  %i.ev = ptrtoint ptr %i.es to i64
  %i.ew = or i64 %i.er, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !210
  br i1 %.not, label %bb.aa, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlbvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  call void @_ZdlPvm(ptr noundef nonnull %.0114, i64 noundef %4) #32
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlbvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlbvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlbvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !54
  %i.ey = load i64, ptr %i.d, align 8, !tbaa !210
  %.not.i.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ez = load ptr, ptr %i.c, align 8, !tbaa !1225 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fa = load i64, ptr %i.e, align 8, !tbaa !210
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fa) #30
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !698, !range !163, !noundef !164
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1240, !nonnull !164
  %i.e = load i8, ptr %i.d, align 1, !tbaa !54, !range !163, !noundef !164
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1242, !nonnull !164, !align !242
  %i.i = load i64, ptr %i.h, align 8, !tbaa !210
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1243, !nonnull !164, !align !242
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1225
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1244, !nonnull !164, !align !242
  %i.o = load i64, ptr %i.n, align 8, !tbaa !210
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1245 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1246, !nonnull !164, !align !242
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !270
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1247, !nonnull !164, !align !242
  %i.w = load i64, ptr %i.v, align 8, !tbaa !210
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1243, !nonnull !164, !align !242
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1225
  store ptr %i.z, ptr %i.q, align 8, !tbaa !1179
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1248, !nonnull !164, !align !242
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !210 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !524
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !524
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #30
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.623", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.623", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph25

bb.b:                                             ; preds = %.lr.ph25
  %i.g = icmp eq i64 %i.i, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph25, !llvm.loop !1249

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.018.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph25:                                         ; preds = %.lr.ph, %bb.b
  %.0151724 = phi i64 [ %i.i, %bb.b ], [ %2, %.lr.ph ]
  %.01823 = phi ptr [ %i.m, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.h = phi i64 [ %i.o, %bb.b ], [ %i.c, %.lr.ph ]
  %i.i = add nsw i64 %.0151724, -1                ; 3 uses
  %i.j = lshr i64 %i.h, 3
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %.01823, i64 -4
  tail call void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_SB_SB_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.k, ptr noundef nonnull %i.l, ptr %3)
  %i.m = tail call noundef ptr @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEET_SB_SB_SB_T0_(ptr noundef nonnull %i.e, ptr noundef %.01823, ptr noundef %0, ptr %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_T0_T1_(ptr noundef %i.m, ptr noundef %.01823, i64 noundef %i.i, ptr %3)
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.a                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 64
  br i1 %i.p, label %bb.b, label %.loopexit, !llvm.loop !1249

.loopexit:                                        ; preds = %.lr.ph25, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !726
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_SB_RT0_.exit
  %.047 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_SB_RT0_.exit ]
  %i.f = getelementptr inbounds i8, ptr %.047, i64 -4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 3 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.h, ptr %i.f, align 4, !tbaa !3
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 2                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %3 = lshr i64 %i.l, 1
  %i.m = icmp sgt i64 %i.k, 2
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !581  ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !667  ; 6 uses
  %.not.i.i7 = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 58 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 57
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 59 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit31.thread
  %.029.i.i = phi i64 [ %i.da, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit31.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.w = shl i64 %.029.i.i, 1                     ; 3 uses
  %i.x = add i64 %i.w, 2                          ; 6 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr [4 x i8], ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 4       ; 4 uses
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !3   ; 4 uses
  br i1 %.not.i.i7, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ac = load i8, ptr %i.q, align 2, !tbaa !668, !range !163, !noundef !164 ; 2 uses
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load i8, ptr %i.r, align 1, !range !163
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond.i.i8 = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond.i.i8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = zext i32 %i.ab to i64                   ; 2 uses
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !210
  %i.ak = and i64 %i.ag, 63
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.aj, %i.al
  %.not.i.i.i25 = icmp eq i64 %i.am, 0
  %i.an = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !210
  %i.as = and i64 %i.ao, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, %i.ar                    ; 2 uses
  br i1 %.not.i.i.i25, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.av = load i8, ptr %i.s, align 1, !tbaa !669, !range !163, !noundef !164 ; 2 uses
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !670 ; 2 uses
  %i.ay = sext i32 %i.ab to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = lshr i64 %i.bb, 6
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !210
  %i.bf = and i64 %i.bb, 63
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = and i64 %i.bg, %i.be
  %.not.i7.i.i9 = icmp eq i64 %i.bh, 0
  %i.bi = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = lshr i64 %i.bm, 6
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !210
  %i.bq = and i64 %i.bm, 63
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = and i64 %i.br, %i.bp                    ; 2 uses
  br i1 %.not.i7.i.i9, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, label %bb.h

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23: ; preds = %bb.e
  %i.bt = load i64, ptr %i.p, align 8, !tbaa !210
  %i.bu = and i64 %i.bt, 1
  %.not.i6.i.i24 = icmp eq i64 %i.bu, 0
  br i1 %.not.i6.i.i24, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit31.thread, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20: ; preds = %bb.f, %bb.d
  %.0.i10.in.i21 = phi i64 [ %i.au, %bb.d ], [ %i.bs, %bb.f ]
  %.0.i10.in.i21.fr = freeze i64 %.0.i10.in.i21
  %.0.i10.i22.not = icmp eq i64 %.0.i10.in.i21.fr, 0
  br i1 %.0.i10.i22.not, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit31.thread, label %bb.m

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28: ; preds = %.lr.ph.i.i
  %i.bv = load i32, ptr %i.aa, align 4, !tbaa !3
  %.pre.i30 = load i8, ptr %i.q, align 2, !tbaa !668, !range !163
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %.not.i.i19.i26 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i19.i26, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit31.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  %.not.i7.i16.i10 = icmp eq i64 %i.bs, 0
  br i1 %.not.i7.i16.i10, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit31.thread, label %.thread30.i11

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23
  %i.bw = load i32, ptr %i.aa, align 4, !tbaa !3
  br label %.thread30.i11

.thread30.i11:                                    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18, %bb.h
  %i.bx = phi i32 [ %i.bw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18 ], [ %i.bi, %bb.h ]
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !671
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28
  %i.bz = phi i8 [ %.pre.i30, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28 ], [ %i.ac, %bb.g ]
  %i.ca = phi i32 [ %i.bv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28 ], [ %i.an, %bb.g ] ; 2 uses
  %i.cb = load ptr, ptr %i.u, align 8, !tbaa !671 ; 3 uses
  %i.cc = trunc nuw i8 %i.bz to i1
  br i1 %i.cc, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i27, label %._crit_edge52

._crit_edge52:                                    ; preds = %bb.i
  %.pre = load i8, ptr %i.s, align 1, !tbaa !669, !range !163
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge52, %.thread30.i11
  %i.cd = phi i8 [ %i.av, %.thread30.i11 ], [ %.pre, %._crit_edge52 ]
  %i.ce = phi ptr [ %i.by, %.thread30.i11 ], [ %i.cb, %._crit_edge52 ] ; 4 uses
  %i.cf = phi i32 [ %i.bx, %.thread30.i11 ], [ %i.ca, %._crit_edge52 ]
  %i.cg = trunc nuw i8 %i.cd to i1
  br i1 %i.cg, label %bb.k, label %bb.l

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i27: ; preds = %bb.i
  %i.ch = sext i32 %i.ab to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.ch
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit31

bb.k:                                             ; preds = %bb.j
  %.0.i.i.ph33.i17 = load i32, ptr %i.v, align 8, !tbaa !3 ; 2 uses
  %i.cj = sext i32 %.0.i.i.ph33.i17 to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cj
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit31

bb.l:                                             ; preds = %bb.j
  %i.cl = load ptr, ptr %i.t, align 8, !tbaa !670 ; 2 uses
  %i.cm = sext i32 %i.ab to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  %.0.i.i.ph.i12 = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.co = sext i32 %.0.i.i.ph.i12 to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.co
  %i.cq = sext i32 %i.cf to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit31

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit31: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i27, %bb.k, %bb.l
  %i.ct = phi ptr [ %i.ce, %bb.l ], [ %i.ce, %bb.k ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i27 ]
  %.in.i14 = phi ptr [ %i.cp, %bb.l ], [ %i.ck, %bb.k ], [ %i.ci, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i27 ]
  %.0.i.i21.i15 = phi i32 [ %i.cs, %bb.l ], [ %.0.i.i.ph33.i17, %bb.k ], [ %i.ca, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i27 ]
  %i.cu = load i64, ptr %.in.i14, align 8, !tbaa !210
  %i.cv = sext i32 %.0.i.i21.i15 to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !210
  %i.cy = icmp slt i64 %i.cu, %i.cx
  %cond.fr = freeze i1 %i.cy
  br i1 %cond.fr, label %bb.m, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit31.thread

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit31
  %i.cz = or disjoint i64 %i.w, 1
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit31.thread

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit31.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23, %bb.h, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit31, %bb.m
  %i.da = phi i64 [ %i.cz, %bb.m ], [ %i.x, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit31 ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20 ], [ %i.x, %bb.h ], [ %i.x, %bb.g ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23 ] ; 4 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %0, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !3
  %i.de = icmp slt i64 %i.da, %3
  br i1 %i.de, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1250

._crit_edge.i.i:                                  ; preds = %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit31.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.da, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit31.thread ] ; 5 uses
  %i.df = and i64 %i.j, 4
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.dh = add nsw i64 %i.k, -2
  %i.di = ashr exact i64 %i.dh, 1
  %i.dj = icmp eq i64 %.0.lcssa.i.i, %i.di
  br i1 %i.dj, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %bb.n
  %i.dk = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.dl = or disjoint i64 %i.dk, 1                ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.o, %.thread.i
  %.128.i12.i = phi i64 [ %i.dl, %.thread.i ], [ %.0.lcssa.i.i, %bb.o ] ; 3 uses
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !581 ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !667 ; 6 uses
  %.not.i.i = icmp eq ptr %i.dr, null
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 57
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 59 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 3 uses
  %i.dv = sext i32 %i.g to i64                    ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 3 uses
  %i.dx = zext i32 %i.g to i64                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 6
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dy
  %i.ea = and i64 %i.dx, 63
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 64 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 58
  %.pre.i.us = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !668, !range !163 ; 2 uses
  br i1 %.not.i.i, label %.lr.ph.i.i.preheader.i.split.us, label %.lr.ph.i.i.preheader.i.split

.lr.ph.i.i.preheader.i.split.us:                  ; preds = %.lr.ph.i.i.preheader.i
  %i.ed = load ptr, ptr %i.dw, align 8, !tbaa !671 ; 4 uses
  %i.ee = trunc nuw i8 %.pre.i.us to i1
  br i1 %i.ee, label %.lr.ph.i.i.preheader.i.split.us.split.us, label %.lr.ph.i.i.preheader.i.split.us.split

.lr.ph.i.i.preheader.i.split.us.split.us:         ; preds = %.lr.ph.i.i.preheader.i.split.us
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.dv
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !210
  br label %.lr.ph.i.i.i.us.us

.lr.ph.i.i.i.us.us:                               ; preds = %bb.p, %.lr.ph.i.i.preheader.i.split.us.split.us
  %.01316.i.i.i.us.us = phi i64 [ %.017.i.i78.i.us.us, %bb.p ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i.split.us.split.us ] ; 3 uses
  %.017.in.i.i.i.us.us = add nsw i64 %.01316.i.i.i.us.us, -1
  %.017.i.i78.i.us.us = lshr i64 %.017.in.i.i.i.us.us, 1 ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i.us.us
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3  ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !210
  %i.em = icmp slt i64 %i.el, %i.eg
  br i1 %i.em, label %bb.p, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_SB_RT0_.exit

bb.p:                                             ; preds = %.lr.ph.i.i.i.us.us
  %i.en = getelementptr inbounds [4 x i8], ptr %0, i64 %.01316.i.i.i.us.us
  store i32 %i.ei, ptr %i.en, align 4, !tbaa !3
  %.not9.i.us.us = icmp eq i64 %.017.i.i78.i.us.us, 0
  br i1 %.not9.i.us.us, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i.us.us, !llvm.loop !1251

.lr.ph.i.i.preheader.i.split.us.split:            ; preds = %.lr.ph.i.i.preheader.i.split.us
  %i.eo = load i8, ptr %i.dt, align 1, !tbaa !669, !range !163, !noundef !164
  %i.ep = trunc nuw i8 %i.eo to i1
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %bb.s, %.lr.ph.i.i.preheader.i.split.us.split
  %.01316.i.i.i.us = phi i64 [ %.017.i.i78.i.us, %bb.s ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i.split.us.split ] ; 3 uses
  %.017.in.i.i.i.us = add nsw i64 %.01316.i.i.i.us, -1
  %.017.i.i78.i.us = lshr i64 %.017.in.i.i.i.us, 1 ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i.us
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3  ; 2 uses
  br i1 %i.ep, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.us
  %i.es = load ptr, ptr %i.du, align 8, !tbaa !670 ; 2 uses
  %i.et = sext i32 %i.er to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.et
  %.0.i.i.ph.i.us = load i32, ptr %i.eu, align 4, !tbaa !3
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.dv
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit.us

bb.r:                                             ; preds = %.lr.ph.i.i.i.us
  %.0.i.i.ph33.i.us = load i32, ptr %i.ec, align 8, !tbaa !3 ; 2 uses
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit.us

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit.us: ; preds = %bb.r, %bb.q
  %.pn.in = phi i32 [ %.0.i.i.ph.i.us, %bb.q ], [ %.0.i.i.ph33.i.us, %bb.r ]
  %.0.i.i21.i.us = phi i32 [ %i.ew, %bb.q ], [ %.0.i.i.ph33.i.us, %bb.r ]
  %.pn = sext i32 %.pn.in to i64
  %.in.i.us = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %.pn
  %i.ex = load i64, ptr %.in.i.us, align 8, !tbaa !210
  %i.ey = sext i32 %.0.i.i21.i.us to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !210
  %i.fb = icmp slt i64 %i.ex, %i.fa
  br i1 %i.fb, label %bb.s, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_SB_RT0_.exit

bb.s:                                             ; preds = %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit.us
  %i.fc = getelementptr inbounds [4 x i8], ptr %0, i64 %.01316.i.i.i.us
  store i32 %i.er, ptr %i.fc, align 4, !tbaa !3
  %.not9.i.us = icmp eq i64 %.017.i.i78.i.us, 0
  br i1 %.not9.i.us, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i.us, !llvm.loop !1251

.lr.ph.i.i.preheader.i.split:                     ; preds = %.lr.ph.i.i.preheader.i
  %i.fd = trunc nuw i8 %.pre.i.us to i1           ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ac, %.lr.ph.i.i.preheader.i.split
  %.01316.i.i.i = phi i64 [ %.017.i.i78.i, %bb.ac ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i.split ] ; 7 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i78.i = lshr i64 %.017.in.i.i.i, 1      ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3  ; 5 uses
  %i.fg = load i8, ptr %i.ds, align 1, !range !163
  %i.fh = trunc nuw i8 %i.fg to i1
  %or.cond.i.i = select i1 %i.fd, i1 true, i1 %i.fh
  br i1 %or.cond.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.fi = zext i32 %i.ff to i64                   ; 2 uses
  %i.fj = lshr i64 %i.fi, 6
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !210
  %i.fm = and i64 %i.fi, 63
  %i.fn = shl nuw i64 1, %i.fm
  %i.fo = and i64 %i.fl, %i.fn
  %.not.i.i.i = icmp eq i64 %i.fo, 0
  %i.fp = load i64, ptr %i.dz, align 8, !tbaa !210
  %i.fq = and i64 %i.fp, %i.eb                    ; 2 uses
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, label %bb.w

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.fr = load i8, ptr %i.dt, align 1, !tbaa !669, !range !163, !noundef !164 ; 2 uses
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ft = load ptr, ptr %i.du, align 8, !tbaa !670 ; 2 uses
  %i.fu = sext i32 %i.ff to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %i.fy = lshr i64 %i.fx, 6
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !210
  %i.gb = and i64 %i.fx, 63
  %i.gc = shl nuw i64 1, %i.gb
  %i.gd = and i64 %i.gc, %i.ga
  %.not.i7.i.i = icmp eq i64 %i.gd, 0
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.dv
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %i.gh = lshr i64 %i.gg, 6
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !210
  %i.gk = and i64 %i.gg, 63
  %i.gl = shl nuw i64 1, %i.gk
  %i.gm = and i64 %i.gl, %i.gj                    ; 2 uses
  br i1 %.not.i7.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.u
  %i.gn = load i64, ptr %i.dr, align 8, !tbaa !210
  %i.go = and i64 %i.gn, 1
  %.not.i6.i.i = icmp eq i64 %i.go, 0
  br i1 %.not.i6.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_SB_RT0_.exit, label %.thread30.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i: ; preds = %bb.v, %bb.t
  %.0.i10.in.i = phi i64 [ %i.fq, %bb.t ], [ %i.gm, %bb.v ]
  %.0.i10.i.not = icmp eq i64 %.0.i10.in.i, 0
  br i1 %.0.i10.i.not, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_SB_RT0_.exit, label %bb.ac

bb.w:                                             ; preds = %bb.t
  %.not.i.i19.i = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i19.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_SB_RT0_.exit, label %bb.y

bb.x:                                             ; preds = %bb.v
  %.not.i7.i16.i = icmp eq i64 %i.gm, 0
  br i1 %.not.i7.i16.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_SB_RT0_.exit, label %.thread30.i

.thread30.i:                                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.x
  %i.gp = load ptr, ptr %i.dw, align 8, !tbaa !671
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gq = load ptr, ptr %i.dw, align 8, !tbaa !671 ; 3 uses
  br i1 %i.fd, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i, label %._crit_edge53

._crit_edge53:                                    ; preds = %bb.y
  %.pre54 = load i8, ptr %i.dt, align 1, !tbaa !669, !range !163
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge53, %.thread30.i
  %i.gr = phi i8 [ %i.fr, %.thread30.i ], [ %.pre54, %._crit_edge53 ]
  %i.gs = phi ptr [ %i.gp, %.thread30.i ], [ %i.gq, %._crit_edge53 ] ; 4 uses
  %i.gt = trunc nuw i8 %i.gr to i1
  br i1 %i.gt, label %bb.aa, label %bb.ab

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i: ; preds = %bb.y
  %i.gu = sext i32 %i.ff to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gu
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIlEclERKiS6_.exit

bb.aa:                                            ; preds = %bb.z
end_hunk_5
begin_hunk_6_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1355 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1357, !nonnull !164
  %i.d = load i8, ptr %i.c, align 1, !tbaa !54, !range !163, !noundef !164
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1358, !nonnull !164, !align !242
  %i.h = load i64, ptr %i.g, align 8, !tbaa !210  ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1359, !nonnull !164, !align !242
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1338
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1360, !nonnull !164, !align !242
  %i.n = load i64, ptr %i.m, align 8, !tbaa !210
  br label %.noexc

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1361, !nonnull !164, !align !242
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !270  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1362, !nonnull !164, !align !242
  %i.t = load i64, ptr %i.s, align 8, !tbaa !210  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1359, !nonnull !164, !align !242
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1338
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !1291
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1363, !nonnull !164, !align !242
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !210 ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ab, i1 true)
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !524
  %i.af = and i64 %i.ae, -256
  %i.ag = select i1 %i.ad, i64 4294967295, i64 %i.ac
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !524
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #30
  %.pre = load ptr, ptr %0, align 8, !tbaa !1357
  %.pre3 = load i8, ptr %.pre, align 1, !tbaa !54, !range !163
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1358
  %.pre5 = load i64, ptr %.pre4, align 8, !tbaa !210
  %i.ai = trunc nuw i8 %.pre3 to i1
  br i1 %i.ai, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1364, !nonnull !164, !align !242
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !210
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1365, !nonnull !164, !align !242
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !210
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1366, !nonnull !164, !align !242
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1339
  invoke void @_ZN5folly3f146detail21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKnbEm(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ar, i64 noundef %i.ao)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.010 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ 0, %bb.b ], [ %i.n, %bb.c ]
  %.029 = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ null, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.as = phi i64 [ %.pre5, %bb.d ], [ %i.al, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.c ]
  %.not.i = icmp eq ptr %.029, null
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKnbEbmmmPhm.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.at = sub i64 0, %.010
  %i.au = and i64 %i.at, -16
  %i.av = shl i64 %i.as, 5
  %i.aw = sub i64 %i.av, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.029, i64 noundef %i.aw) #30
  br label %_ZN5folly3f146detail21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKnbEbmmmPhm.exit

_ZN5folly3f146detail21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKnbEbmmmPhm.exit: ; preds = %bb.f, %.noexc
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #33
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKnbEm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1288
  %i.b = shl i64 %2, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.a, i64 %i.b, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !1288
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.681", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.681", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph25

bb.b:                                             ; preds = %.lr.ph25
  %i.g = icmp eq i64 %i.i, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph25, !llvm.loop !1367

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.018.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph25:                                         ; preds = %.lr.ph, %bb.b
  %.0151724 = phi i64 [ %i.i, %bb.b ], [ %2, %.lr.ph ]
  %.01823 = phi ptr [ %i.m, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.h = phi i64 [ %i.o, %bb.b ], [ %i.c, %.lr.ph ]
  %i.i = add nsw i64 %.0151724, -1                ; 3 uses
  %i.j = lshr i64 %i.h, 3
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %.01823, i64 -4
  tail call void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_SB_SB_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.k, ptr noundef nonnull %i.l, ptr %3)
  %i.m = tail call noundef ptr @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEET_SB_SB_SB_T0_(ptr noundef nonnull %i.e, ptr noundef %.01823, ptr noundef %0, ptr %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_T0_T1_(ptr noundef %i.m, ptr noundef %.01823, i64 noundef %i.i, ptr %3)
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.a                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 64
  br i1 %i.p, label %bb.b, label %.loopexit, !llvm.loop !1367

.loopexit:                                        ; preds = %.lr.ph25, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !726
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_SB_RT0_.exit
  %.048 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_SB_RT0_.exit ]
  %i.f = getelementptr inbounds i8, ptr %.048, i64 -4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 3 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.h, ptr %i.f, align 4, !tbaa !3
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 2                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %3 = lshr i64 %i.l, 1
  %i.m = icmp sgt i64 %i.k, 2
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !581  ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !667  ; 6 uses
  %.not.i.i7 = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 58 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 57
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 59 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit33.thread
  %.029.i.i = phi i64 [ %i.dc, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit33.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.w = shl i64 %.029.i.i, 1                     ; 3 uses
  %i.x = add i64 %i.w, 2                          ; 6 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr [4 x i8], ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 4       ; 4 uses
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !3   ; 4 uses
  br i1 %.not.i.i7, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i30, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ac = load i8, ptr %i.q, align 2, !tbaa !668, !range !163, !noundef !164 ; 2 uses
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load i8, ptr %i.r, align 1, !range !163
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond.i.i8 = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond.i.i8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = zext i32 %i.ab to i64                   ; 2 uses
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !210
  %i.ak = and i64 %i.ag, 63
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.aj, %i.al
  %.not.i.i.i27 = icmp eq i64 %i.am, 0
  %i.an = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !210
  %i.as = and i64 %i.ao, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, %i.ar                    ; 2 uses
  br i1 %.not.i.i.i27, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i22, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.av = load i8, ptr %i.s, align 1, !tbaa !669, !range !163, !noundef !164 ; 2 uses
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i25, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !670 ; 2 uses
  %i.ay = sext i32 %i.ab to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = lshr i64 %i.bb, 6
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !210
  %i.bf = and i64 %i.bb, 63
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = and i64 %i.bg, %i.be
  %.not.i7.i.i9 = icmp eq i64 %i.bh, 0
  %i.bi = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = lshr i64 %i.bm, 6
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !210
  %i.bq = and i64 %i.bm, 63
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = and i64 %i.br, %i.bp                    ; 2 uses
  br i1 %.not.i7.i.i9, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i22, label %bb.h

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i25: ; preds = %bb.e
  %i.bt = load i64, ptr %i.p, align 8, !tbaa !210
  %i.bu = and i64 %i.bt, 1
  %.not.i6.i.i26 = icmp eq i64 %i.bu, 0
  br i1 %.not.i6.i.i26, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit33.thread, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i20

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i22: ; preds = %bb.f, %bb.d
  %.0.i10.in.i23 = phi i64 [ %i.au, %bb.d ], [ %i.bs, %bb.f ]
  %.0.i10.in.i23.fr = freeze i64 %.0.i10.in.i23
  %.0.i10.i24.not = icmp eq i64 %.0.i10.in.i23.fr, 0
  br i1 %.0.i10.i24.not, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit33.thread, label %bb.m

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i30: ; preds = %.lr.ph.i.i
  %i.bv = load i32, ptr %i.aa, align 4, !tbaa !3
  %.pre.i32 = load i8, ptr %i.q, align 2, !tbaa !668, !range !163
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %.not.i.i19.i28 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i19.i28, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit33.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  %.not.i7.i16.i10 = icmp eq i64 %i.bs, 0
  br i1 %.not.i7.i16.i10, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit33.thread, label %.thread34.i11

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i20: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i25
  %i.bw = load i32, ptr %i.aa, align 4, !tbaa !3
  br label %.thread34.i11

.thread34.i11:                                    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i20, %bb.h
  %i.bx = phi i32 [ %i.bw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i20 ], [ %i.bi, %bb.h ]
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !671
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i30
  %i.bz = phi i8 [ %.pre.i32, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i30 ], [ %i.ac, %bb.g ]
  %i.ca = phi i32 [ %i.bv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i30 ], [ %i.an, %bb.g ] ; 2 uses
  %i.cb = load ptr, ptr %i.u, align 8, !tbaa !671 ; 3 uses
  %i.cc = trunc nuw i8 %i.bz to i1
  br i1 %i.cc, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i29, label %._crit_edge49

._crit_edge49:                                    ; preds = %bb.i
  %.pre = load i8, ptr %i.s, align 1, !tbaa !669, !range !163
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge49, %.thread34.i11
  %i.cd = phi i8 [ %i.av, %.thread34.i11 ], [ %.pre, %._crit_edge49 ]
  %i.ce = phi ptr [ %i.by, %.thread34.i11 ], [ %i.cb, %._crit_edge49 ] ; 4 uses
  %i.cf = phi i32 [ %i.bx, %.thread34.i11 ], [ %i.ca, %._crit_edge49 ]
  %i.cg = trunc nuw i8 %i.cd to i1
  br i1 %i.cg, label %bb.k, label %bb.l

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i29: ; preds = %bb.i
  %i.ch = sext i32 %i.ab to i64
  %i.ci = shl nsw i64 %i.ch, 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ci
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit33

bb.k:                                             ; preds = %bb.j
  %.0.i.i.ph37.i19 = load i32, ptr %i.v, align 8, !tbaa !3 ; 2 uses
  %i.ck = sext i32 %.0.i.i.ph37.i19 to i64
  %i.cl = shl nsw i64 %i.ck, 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cl
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit33

bb.l:                                             ; preds = %bb.j
  %i.cn = load ptr, ptr %i.t, align 8, !tbaa !670 ; 2 uses
  %i.co = sext i32 %i.ab to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %.0.i.i.ph.i12 = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cq = sext i32 %.0.i.i.ph.i12 to i64
  %i.cr = shl nsw i64 %i.cq, 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cr
  %i.ct = sext i32 %i.cf to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit33

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit33: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i29, %bb.k, %bb.l
  %i.cw = phi ptr [ %i.ce, %bb.l ], [ %i.ce, %bb.k ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i29 ]
  %.0.copyload.i.i29.in.i14 = phi ptr [ %i.cs, %bb.l ], [ %i.cm, %bb.k ], [ %i.cj, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i29 ]
  %.0.i.i21.i15 = phi i32 [ %i.cv, %bb.l ], [ %.0.i.i.ph37.i19, %bb.k ], [ %i.ca, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i29 ]
  %.0.copyload.i.i29.i16 = load i128, ptr %.0.copyload.i.i29.in.i14, align 1
  %i.cx = sext i32 %.0.i.i21.i15 to i64
  %i.cy = shl nsw i64 %i.cx, 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cy
  %.0.copyload.i.i22.i17 = load i128, ptr %i.cz, align 1
  %i.da = icmp slt i128 %.0.copyload.i.i29.i16, %.0.copyload.i.i22.i17
  %cond.fr = freeze i1 %i.da
  br i1 %cond.fr, label %bb.m, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit33.thread

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i22, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit33
  %i.db = or disjoint i64 %i.w, 1
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit33.thread

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit33.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i25, %bb.h, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i22, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit33, %bb.m
  %i.dc = phi i64 [ %i.db, %bb.m ], [ %i.x, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit33 ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i22 ], [ %i.x, %bb.h ], [ %i.x, %bb.g ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i25 ] ; 4 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3
  %i.df = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i
  store i32 %i.de, ptr %i.df, align 4, !tbaa !3
  %i.dg = icmp slt i64 %i.dc, %3
  br i1 %i.dg, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1368

._crit_edge.i.i:                                  ; preds = %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit33.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.dc, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit33.thread ] ; 5 uses
  %i.dh = and i64 %i.j, 4
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.dj = add nsw i64 %i.k, -2
  %i.dk = ashr exact i64 %i.dj, 1
  %i.dl = icmp eq i64 %.0.lcssa.i.i, %i.dk
  br i1 %i.dl, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %bb.n
  %i.dm = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.dn = or disjoint i64 %i.dm, 1                ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.o, %.thread.i
  %.128.i12.i = phi i64 [ %i.dn, %.thread.i ], [ %.0.lcssa.i.i, %bb.o ]
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !581 ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !667 ; 6 uses
  %.not.i.i = icmp eq ptr %i.dt, null
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 58
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 57
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 59 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  %i.dy = sext i32 %i.g to i64                    ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %i.ea = zext i32 %i.g to i64                    ; 2 uses
  %i.eb = lshr i64 %i.ea, 6
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.eb
  %i.ed = and i64 %i.ea, 63
  %i.ee = shl nuw i64 1, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %.pre.i = load i8, ptr %i.du, align 2, !tbaa !668, !range !163 ; 2 uses
  %i.eg = trunc nuw i8 %.pre.i to i1
  %i.eh = trunc nuw i8 %.pre.i to i1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %.lr.ph.i.i.preheader.i
  %.01316.i.i.i = phi i64 [ %.017.i.i78.i, %bb.y ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i ] ; 7 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i78.i = lshr i64 %.017.in.i.i.i, 1      ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !3  ; 5 uses
  br i1 %.not.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.ek = load i8, ptr %i.dv, align 1, !range !163
  %i.el = trunc nuw i8 %i.ek to i1
  %or.cond.i.i = select i1 %i.eg, i1 true, i1 %i.el
  br i1 %or.cond.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.em = zext i32 %i.ej to i64                   ; 2 uses
  %i.en = lshr i64 %i.em, 6
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !210
  %i.eq = and i64 %i.em, 63
  %i.er = shl nuw i64 1, %i.eq
  %i.es = and i64 %i.ep, %i.er
  %.not.i.i.i = icmp eq i64 %i.es, 0
  %i.et = load i64, ptr %i.ec, align 8, !tbaa !210
  %i.eu = and i64 %i.et, %i.ee                    ; 2 uses
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ev = load i8, ptr %i.dw, align 1, !tbaa !669, !range !163, !noundef !164 ; 2 uses
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ex = load ptr, ptr %i.dx, align 8, !tbaa !670 ; 2 uses
  %i.ey = sext i32 %i.ej to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fb = zext i32 %i.fa to i64                   ; 2 uses
  %i.fc = lshr i64 %i.fb, 6
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !210
  %i.ff = and i64 %i.fb, 63
  %i.fg = shl nuw i64 1, %i.ff
  %i.fh = and i64 %i.fg, %i.fe
  %.not.i7.i.i = icmp eq i64 %i.fh, 0
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.dy
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !3
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %i.fl = lshr i64 %i.fk, 6
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !210
  %i.fo = and i64 %i.fk, 63
  %i.fp = shl nuw i64 1, %i.fo
  %i.fq = and i64 %i.fp, %i.fn                    ; 2 uses
  br i1 %.not.i7.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, label %bb.u

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.r
  %i.fr = load i64, ptr %i.dt, align 8, !tbaa !210
  %i.fs = and i64 %i.fr, 1
  %.not.i6.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not.i6.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_SB_RT0_.exit, label %.thread34.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i: ; preds = %bb.s, %bb.q
  %.0.i10.in.i = phi i64 [ %i.eu, %bb.q ], [ %i.fq, %bb.s ]
  %.0.i10.i.not = icmp eq i64 %.0.i10.in.i, 0
  br i1 %.0.i10.i.not, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_SB_RT0_.exit, label %bb.y

bb.t:                                             ; preds = %bb.q
  %.not.i.i19.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i.i19.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_SB_RT0_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i

bb.u:                                             ; preds = %bb.s
  %.not.i7.i16.i = icmp eq i64 %i.fq, 0
  br i1 %.not.i7.i16.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_SB_RT0_.exit, label %.thread34.i

.thread34.i:                                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.u
  %i.ft = load ptr, ptr %i.dz, align 8, !tbaa !671
  br label %bb.v

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i: ; preds = %.lr.ph.i.i.i, %bb.t
  %i.fu = load ptr, ptr %i.dz, align 8, !tbaa !671 ; 3 uses
  br i1 %i.eh, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i, label %._crit_edge50

._crit_edge50:                                    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i
  %.pre51 = load i8, ptr %i.dw, align 1, !tbaa !669, !range !163
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge50, %.thread34.i
  %i.fv = phi i8 [ %i.ev, %.thread34.i ], [ %.pre51, %._crit_edge50 ]
  %i.fw = phi ptr [ %i.ft, %.thread34.i ], [ %i.fu, %._crit_edge50 ] ; 4 uses
  %i.fx = trunc nuw i8 %i.fv to i1
  br i1 %i.fx, label %bb.w, label %bb.x

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i
  %i.fy = sext i32 %i.ej to i64
  %i.fz = shl nsw i64 %i.fy, 4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fz
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit

bb.w:                                             ; preds = %bb.v
  %.0.i.i.ph37.i = load i32, ptr %i.ef, align 8, !tbaa !3
  %i.gb = sext i32 %.0.i.i.ph37.i to i64          ; 2 uses
  %i.gc = shl nsw i64 %i.gb, 4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gc
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit

bb.x:                                             ; preds = %bb.v
  %i.ge = load ptr, ptr %i.dx, align 8, !tbaa !670 ; 2 uses
  %i.gf = sext i32 %i.ej to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gf
  %.0.i.i.ph.i = load i32, ptr %i.gg, align 4, !tbaa !3
  %i.gh = sext i32 %.0.i.i.ph.i to i64
  %i.gi = shl nsw i64 %i.gh, 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gi
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.dy
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !3
  %.pre52 = sext i32 %i.gl to i64
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i, %bb.w, %bb.x
  %.pre-phi = phi i64 [ %i.dy, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i ], [ %i.gb, %bb.w ], [ %.pre52, %bb.x ]
  %i.gm = phi ptr [ %i.fu, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i ], [ %i.fw, %bb.w ], [ %i.fw, %bb.x ]
  %.0.copyload.i.i29.in.i = phi ptr [ %i.ga, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i ], [ %i.gd, %bb.w ], [ %i.gj, %bb.x ]
  %.0.copyload.i.i29.i = load i128, ptr %.0.copyload.i.i29.in.i, align 1
  %i.gn = shl nsw i64 %.pre-phi, 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gn
  %.0.copyload.i.i22.i = load i128, ptr %i.go, align 1
  %i.gp = icmp slt i128 %.0.copyload.i.i29.i, %.0.copyload.i.i22.i
  br i1 %i.gp, label %bb.y, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_SB_RT0_.exit

bb.y:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit
  %i.gq = getelementptr inbounds [4 x i8], ptr %0, i64 %.01316.i.i.i
  store i32 %i.ej, ptr %i.gq, align 4, !tbaa !3
  %.not9.i = icmp eq i64 %.017.i.i78.i, 0
  br i1 %.not9.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1369

_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_SB_RT0_.exit: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.u, %bb.t, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit, %bb.y, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, %bb.o
  %.013.lcssa.i.i.i = phi i64 [ 0, %bb.o ], [ %.01316.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i ], [ %.01316.i.i.i, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessInEclERKiS6_.exit ], [ 0, %bb.y ], [ %.01316.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i ], [ %.01316.i.i.i, %bb.t ], [ %.01316.i.i.i, %bb.u ]
  %i.gr = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i
  store i32 %i.g, ptr %i.gr, align 4, !tbaa !3
  %i.gs = icmp sgt i64 %i.j, 4
  br i1 %i.gs, label %bb.b, label %._crit_edge, !llvm.loop !1370

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_SB_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !726
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 2 uses
  %i.n = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
end_hunk_6
begin_hunk_7_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE10rehashImplEmmmmm:bb.a
  %i.ew = getelementptr inbounds nuw [128 x i8], ptr %i.ev, i64 %.041 ; 2 uses
  %i.ex = zext nneg i8 %i.et to i64
  %i.ey = add nsw i64 %i.ex, -1                   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ey
  %i.fb = icmp ne ptr %i.ew, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.fb)
  %i.fc = icmp ult i8 %i.et, 17
  call void @llvm.assume(i1 %i.fc)
  %i.fd = lshr i64 %i.ey, 1
  %i.fe = ptrtoint ptr %i.fa to i64
  %i.ff = or i64 %i.fd, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !210
  br i1 %.not, label %bb.ac, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfbvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdlPvm(ptr noundef nonnull %.0114, i64 noundef %4) #32
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfbvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfbvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.ad

bb.ad:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfbvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.k, align 1, !tbaa !54
  %i.fh = load i64, ptr %i.e, align 8, !tbaa !210
  %.not.i.i.i = icmp eq i64 %i.fh, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fi = load ptr, ptr %i.d, align 8, !tbaa !1457 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fj = load i64, ptr %i.f, align 8, !tbaa !210
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fj) #30
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !698, !range !163, !noundef !164
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1472, !nonnull !164
  %i.e = load i8, ptr %i.d, align 1, !tbaa !54, !range !163, !noundef !164
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1474, !nonnull !164, !align !242
  %i.i = load i64, ptr %i.h, align 8, !tbaa !210
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1475, !nonnull !164, !align !242
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1457
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1476, !nonnull !164, !align !242
  %i.o = load i64, ptr %i.n, align 8, !tbaa !210
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1477 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1478, !nonnull !164, !align !242
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !270
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1479, !nonnull !164, !align !242
  %i.w = load i64, ptr %i.v, align 8, !tbaa !210
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1475, !nonnull !164, !align !242
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1457
  store ptr %i.z, ptr %i.q, align 8, !tbaa !1406
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1480, !nonnull !164, !align !242
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !210 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !524
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !524
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #30
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEEEvT_SB_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.743", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.743", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph25

bb.b:                                             ; preds = %.lr.ph25
  %i.g = icmp eq i64 %i.i, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph25, !llvm.loop !1481

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.018.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph25:                                         ; preds = %.lr.ph, %bb.b
  %.0151724 = phi i64 [ %i.i, %bb.b ], [ %2, %.lr.ph ]
  %.01823 = phi ptr [ %i.m, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.h = phi i64 [ %i.o, %bb.b ], [ %i.c, %.lr.ph ]
  %i.i = add nsw i64 %.0151724, -1                ; 3 uses
  %i.j = lshr i64 %i.h, 3
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %.01823, i64 -4
  tail call void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEEEvT_SB_SB_SB_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.k, ptr noundef nonnull %i.l, ptr %3)
  %i.m = tail call noundef ptr @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEEET_SB_SB_SB_T0_(ptr noundef nonnull %i.e, ptr noundef %.01823, ptr noundef %0, ptr %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEEEvT_SB_T0_T1_(ptr noundef %i.m, ptr noundef %.01823, i64 noundef %i.i, ptr %3)
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.a                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 64
  br i1 %i.p, label %bb.b, label %.loopexit, !llvm.loop !1481

.loopexit:                                        ; preds = %.lr.ph25, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !726
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEEEvT_SB_SB_RT0_.exit
  %.047 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEEEvT_SB_SB_RT0_.exit ]
  %i.f = getelementptr inbounds i8, ptr %.047, i64 -4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 3 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.h, ptr %i.f, align 4, !tbaa !3
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 2                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %3 = lshr i64 %i.l, 1
  %i.m = icmp sgt i64 %i.k, 2
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !581  ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !667  ; 6 uses
  %.not.i.i7 = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 58 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 57
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 59 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit31.thread
  %.029.i.i = phi i64 [ %i.da, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit31.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.w = shl i64 %.029.i.i, 1                     ; 3 uses
  %i.x = add i64 %i.w, 2                          ; 6 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr [4 x i8], ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 4       ; 4 uses
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !3   ; 4 uses
  br i1 %.not.i.i7, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ac = load i8, ptr %i.q, align 2, !tbaa !668, !range !163, !noundef !164 ; 2 uses
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load i8, ptr %i.r, align 1, !range !163
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond.i.i8 = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond.i.i8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = zext i32 %i.ab to i64                   ; 2 uses
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !210
  %i.ak = and i64 %i.ag, 63
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.aj, %i.al
  %.not.i.i.i25 = icmp eq i64 %i.am, 0
  %i.an = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !210
  %i.as = and i64 %i.ao, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, %i.ar                    ; 2 uses
  br i1 %.not.i.i.i25, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.av = load i8, ptr %i.s, align 1, !tbaa !669, !range !163, !noundef !164 ; 2 uses
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !670 ; 2 uses
  %i.ay = sext i32 %i.ab to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = lshr i64 %i.bb, 6
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !210
  %i.bf = and i64 %i.bb, 63
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = and i64 %i.bg, %i.be
  %.not.i7.i.i9 = icmp eq i64 %i.bh, 0
  %i.bi = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = lshr i64 %i.bm, 6
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !210
  %i.bq = and i64 %i.bm, 63
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = and i64 %i.br, %i.bp                    ; 2 uses
  br i1 %.not.i7.i.i9, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, label %bb.h

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23: ; preds = %bb.e
  %i.bt = load i64, ptr %i.p, align 8, !tbaa !210
  %i.bu = and i64 %i.bt, 1
  %.not.i6.i.i24 = icmp eq i64 %i.bu, 0
  br i1 %.not.i6.i.i24, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit31.thread, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20: ; preds = %bb.f, %bb.d
  %.0.i10.in.i21 = phi i64 [ %i.au, %bb.d ], [ %i.bs, %bb.f ]
  %.0.i10.in.i21.fr = freeze i64 %.0.i10.in.i21
  %.0.i10.i22.not = icmp eq i64 %.0.i10.in.i21.fr, 0
  br i1 %.0.i10.i22.not, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit31.thread, label %bb.m

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28: ; preds = %.lr.ph.i.i
  %i.bv = load i32, ptr %i.aa, align 4, !tbaa !3
  %.pre.i30 = load i8, ptr %i.q, align 2, !tbaa !668, !range !163
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %.not.i.i19.i26 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i19.i26, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit31.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  %.not.i7.i16.i10 = icmp eq i64 %i.bs, 0
  br i1 %.not.i7.i16.i10, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit31.thread, label %.thread30.i11

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23
  %i.bw = load i32, ptr %i.aa, align 4, !tbaa !3
  br label %.thread30.i11

.thread30.i11:                                    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18, %bb.h
  %i.bx = phi i32 [ %i.bw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18 ], [ %i.bi, %bb.h ]
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !671
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28
  %i.bz = phi i8 [ %.pre.i30, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28 ], [ %i.ac, %bb.g ]
  %i.ca = phi i32 [ %i.bv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28 ], [ %i.an, %bb.g ] ; 2 uses
  %i.cb = load ptr, ptr %i.u, align 8, !tbaa !671 ; 3 uses
  %i.cc = trunc nuw i8 %i.bz to i1
  br i1 %i.cc, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i27, label %._crit_edge52

._crit_edge52:                                    ; preds = %bb.i
  %.pre = load i8, ptr %i.s, align 1, !tbaa !669, !range !163
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge52, %.thread30.i11
  %i.cd = phi i8 [ %i.av, %.thread30.i11 ], [ %.pre, %._crit_edge52 ]
  %i.ce = phi ptr [ %i.by, %.thread30.i11 ], [ %i.cb, %._crit_edge52 ] ; 4 uses
  %i.cf = phi i32 [ %i.bx, %.thread30.i11 ], [ %i.ca, %._crit_edge52 ]
  %i.cg = trunc nuw i8 %i.cd to i1
  br i1 %i.cg, label %bb.k, label %bb.l

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i27: ; preds = %bb.i
  %i.ch = sext i32 %i.ab to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.ch
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit31

bb.k:                                             ; preds = %bb.j
  %.0.i.i.ph33.i17 = load i32, ptr %i.v, align 8, !tbaa !3 ; 2 uses
  %i.cj = sext i32 %.0.i.i.ph33.i17 to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cj
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit31

bb.l:                                             ; preds = %bb.j
  %i.cl = load ptr, ptr %i.t, align 8, !tbaa !670 ; 2 uses
  %i.cm = sext i32 %i.ab to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  %.0.i.i.ph.i12 = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.co = sext i32 %.0.i.i.ph.i12 to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.co
  %i.cq = sext i32 %i.cf to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit31

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit31: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i27, %bb.k, %bb.l
  %i.ct = phi ptr [ %i.ce, %bb.l ], [ %i.ce, %bb.k ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i27 ]
  %.in.i14 = phi ptr [ %i.cp, %bb.l ], [ %i.ck, %bb.k ], [ %i.ci, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i27 ]
  %.0.i.i21.i15 = phi i32 [ %i.cs, %bb.l ], [ %.0.i.i.ph33.i17, %bb.k ], [ %i.ca, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i27 ]
  %i.cu = load float, ptr %.in.i14, align 4, !tbaa !1431
  %i.cv = sext i32 %.0.i.i21.i15 to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !1431
  %i.cy = fcmp olt float %i.cu, %i.cx
  %cond.fr = freeze i1 %i.cy
  br i1 %cond.fr, label %bb.m, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit31.thread

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit31
  %i.cz = or disjoint i64 %i.w, 1
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit31.thread

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit31.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23, %bb.h, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit31, %bb.m
  %i.da = phi i64 [ %i.cz, %bb.m ], [ %i.x, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit31 ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20 ], [ %i.x, %bb.h ], [ %i.x, %bb.g ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23 ] ; 4 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %0, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !3
  %i.de = icmp slt i64 %i.da, %3
  br i1 %i.de, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1482

._crit_edge.i.i:                                  ; preds = %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit31.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.da, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit31.thread ] ; 5 uses
  %i.df = and i64 %i.j, 4
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.dh = add nsw i64 %i.k, -2
  %i.di = ashr exact i64 %i.dh, 1
  %i.dj = icmp eq i64 %.0.lcssa.i.i, %i.di
  br i1 %i.dj, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %bb.n
  %i.dk = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.dl = or disjoint i64 %i.dk, 1                ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.o, %.thread.i
  %.128.i12.i = phi i64 [ %i.dl, %.thread.i ], [ %.0.lcssa.i.i, %bb.o ] ; 3 uses
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !581 ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !667 ; 6 uses
  %.not.i.i = icmp eq ptr %i.dr, null
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 57
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 59 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 3 uses
  %i.dv = sext i32 %i.g to i64                    ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 3 uses
  %i.dx = zext i32 %i.g to i64                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 6
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dy
  %i.ea = and i64 %i.dx, 63
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 64 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 58
  %.pre.i.us = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !668, !range !163 ; 2 uses
  br i1 %.not.i.i, label %.lr.ph.i.i.preheader.i.split.us, label %.lr.ph.i.i.preheader.i.split

.lr.ph.i.i.preheader.i.split.us:                  ; preds = %.lr.ph.i.i.preheader.i
  %i.ed = load ptr, ptr %i.dw, align 8, !tbaa !671 ; 4 uses
  %i.ee = trunc nuw i8 %.pre.i.us to i1
  br i1 %i.ee, label %.lr.ph.i.i.preheader.i.split.us.split.us, label %.lr.ph.i.i.preheader.i.split.us.split

.lr.ph.i.i.preheader.i.split.us.split.us:         ; preds = %.lr.ph.i.i.preheader.i.split.us
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.dv
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !1431
  br label %.lr.ph.i.i.i.us.us

.lr.ph.i.i.i.us.us:                               ; preds = %bb.p, %.lr.ph.i.i.preheader.i.split.us.split.us
  %.01316.i.i.i.us.us = phi i64 [ %.017.i.i78.i.us.us, %bb.p ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i.split.us.split.us ] ; 3 uses
  %.017.in.i.i.i.us.us = add nsw i64 %.01316.i.i.i.us.us, -1
  %.017.i.i78.i.us.us = lshr i64 %.017.in.i.i.i.us.us, 1 ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i.us.us
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3  ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !1431
  %i.em = fcmp olt float %i.el, %i.eg
  br i1 %i.em, label %bb.p, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEEEvT_SB_SB_RT0_.exit

bb.p:                                             ; preds = %.lr.ph.i.i.i.us.us
  %i.en = getelementptr inbounds [4 x i8], ptr %0, i64 %.01316.i.i.i.us.us
  store i32 %i.ei, ptr %i.en, align 4, !tbaa !3
  %.not9.i.us.us = icmp eq i64 %.017.i.i78.i.us.us, 0
  br i1 %.not9.i.us.us, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i.us.us, !llvm.loop !1483

.lr.ph.i.i.preheader.i.split.us.split:            ; preds = %.lr.ph.i.i.preheader.i.split.us
  %i.eo = load i8, ptr %i.dt, align 1, !tbaa !669, !range !163, !noundef !164
  %i.ep = trunc nuw i8 %i.eo to i1
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %bb.s, %.lr.ph.i.i.preheader.i.split.us.split
  %.01316.i.i.i.us = phi i64 [ %.017.i.i78.i.us, %bb.s ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i.split.us.split ] ; 3 uses
  %.017.in.i.i.i.us = add nsw i64 %.01316.i.i.i.us, -1
  %.017.i.i78.i.us = lshr i64 %.017.in.i.i.i.us, 1 ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i.us
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3  ; 2 uses
  br i1 %i.ep, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.us
  %i.es = load ptr, ptr %i.du, align 8, !tbaa !670 ; 2 uses
  %i.et = sext i32 %i.er to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.et
  %.0.i.i.ph.i.us = load i32, ptr %i.eu, align 4, !tbaa !3
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.dv
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit.us

bb.r:                                             ; preds = %.lr.ph.i.i.i.us
  %.0.i.i.ph33.i.us = load i32, ptr %i.ec, align 8, !tbaa !3 ; 2 uses
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit.us

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit.us: ; preds = %bb.r, %bb.q
  %.pn.in = phi i32 [ %.0.i.i.ph.i.us, %bb.q ], [ %.0.i.i.ph33.i.us, %bb.r ]
  %.0.i.i21.i.us = phi i32 [ %i.ew, %bb.q ], [ %.0.i.i.ph33.i.us, %bb.r ]
  %.pn = sext i32 %.pn.in to i64
  %.in.i.us = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %.pn
  %i.ex = load float, ptr %.in.i.us, align 4, !tbaa !1431
  %i.ey = sext i32 %.0.i.i21.i.us to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ey
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !1431
  %i.fb = fcmp olt float %i.ex, %i.fa
  br i1 %i.fb, label %bb.s, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEEEvT_SB_SB_RT0_.exit

bb.s:                                             ; preds = %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit.us
  %i.fc = getelementptr inbounds [4 x i8], ptr %0, i64 %.01316.i.i.i.us
  store i32 %i.er, ptr %i.fc, align 4, !tbaa !3
  %.not9.i.us = icmp eq i64 %.017.i.i78.i.us, 0
  br i1 %.not9.i.us, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i.us, !llvm.loop !1483

.lr.ph.i.i.preheader.i.split:                     ; preds = %.lr.ph.i.i.preheader.i
  %i.fd = trunc nuw i8 %.pre.i.us to i1           ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ac, %.lr.ph.i.i.preheader.i.split
  %.01316.i.i.i = phi i64 [ %.017.i.i78.i, %bb.ac ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i.split ] ; 7 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i78.i = lshr i64 %.017.in.i.i.i, 1      ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3  ; 5 uses
  %i.fg = load i8, ptr %i.ds, align 1, !range !163
  %i.fh = trunc nuw i8 %i.fg to i1
  %or.cond.i.i = select i1 %i.fd, i1 true, i1 %i.fh
  br i1 %or.cond.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.fi = zext i32 %i.ff to i64                   ; 2 uses
  %i.fj = lshr i64 %i.fi, 6
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !210
  %i.fm = and i64 %i.fi, 63
  %i.fn = shl nuw i64 1, %i.fm
  %i.fo = and i64 %i.fl, %i.fn
  %.not.i.i.i = icmp eq i64 %i.fo, 0
  %i.fp = load i64, ptr %i.dz, align 8, !tbaa !210
  %i.fq = and i64 %i.fp, %i.eb                    ; 2 uses
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, label %bb.w

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.fr = load i8, ptr %i.dt, align 1, !tbaa !669, !range !163, !noundef !164 ; 2 uses
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ft = load ptr, ptr %i.du, align 8, !tbaa !670 ; 2 uses
  %i.fu = sext i32 %i.ff to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %i.fy = lshr i64 %i.fx, 6
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !210
  %i.gb = and i64 %i.fx, 63
  %i.gc = shl nuw i64 1, %i.gb
  %i.gd = and i64 %i.gc, %i.ga
  %.not.i7.i.i = icmp eq i64 %i.gd, 0
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.dv
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %i.gh = lshr i64 %i.gg, 6
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !210
  %i.gk = and i64 %i.gg, 63
  %i.gl = shl nuw i64 1, %i.gk
  %i.gm = and i64 %i.gl, %i.gj                    ; 2 uses
  br i1 %.not.i7.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.u
  %i.gn = load i64, ptr %i.dr, align 8, !tbaa !210
  %i.go = and i64 %i.gn, 1
  %.not.i6.i.i = icmp eq i64 %i.go, 0
  br i1 %.not.i6.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEEEvT_SB_SB_RT0_.exit, label %.thread30.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i: ; preds = %bb.v, %bb.t
  %.0.i10.in.i = phi i64 [ %i.fq, %bb.t ], [ %i.gm, %bb.v ]
  %.0.i10.i.not = icmp eq i64 %.0.i10.in.i, 0
  br i1 %.0.i10.i.not, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEEEvT_SB_SB_RT0_.exit, label %bb.ac

bb.w:                                             ; preds = %bb.t
  %.not.i.i19.i = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i19.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEEEvT_SB_SB_RT0_.exit, label %bb.y

bb.x:                                             ; preds = %bb.v
  %.not.i7.i16.i = icmp eq i64 %i.gm, 0
  br i1 %.not.i7.i16.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEEEvT_SB_SB_RT0_.exit, label %.thread30.i

.thread30.i:                                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.x
  %i.gp = load ptr, ptr %i.dw, align 8, !tbaa !671
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gq = load ptr, ptr %i.dw, align 8, !tbaa !671 ; 3 uses
  br i1 %i.fd, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i, label %._crit_edge53

._crit_edge53:                                    ; preds = %bb.y
  %.pre54 = load i8, ptr %i.dt, align 1, !tbaa !669, !range !163
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge53, %.thread30.i
  %i.gr = phi i8 [ %i.fr, %.thread30.i ], [ %.pre54, %._crit_edge53 ]
  %i.gs = phi ptr [ %i.gp, %.thread30.i ], [ %i.gq, %._crit_edge53 ] ; 4 uses
  %i.gt = trunc nuw i8 %i.gr to i1
  br i1 %i.gt, label %bb.aa, label %bb.ab

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i: ; preds = %bb.y
  %i.gu = sext i32 %i.ff to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gq, i64 %i.gu
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIfEclERKiS6_.exit

bb.aa:                                            ; preds = %bb.z
end_hunk_7
begin_hunk_8_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE10rehashImplEmmmmm:bb.a
bb.ab:                                            ; preds = %bb.aa
  %i.eu = load ptr, ptr %0, align 8, !tbaa !1520
  %i.ev = getelementptr inbounds nuw [256 x i8], ptr %i.eu, i64 %.041 ; 2 uses
  %i.ew = zext nneg i8 %i.es to i64               ; 2 uses
  %i.ex = add nsw i64 %i.ew, -1
  %i.ey = getelementptr [16 x i8], ptr %i.ev, i64 %i.ew
  %i.ez = icmp ne ptr %i.ev, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ez)
  %i.fa = icmp ult i8 %i.es, 17
  call void @llvm.assume(i1 %i.fa)
  %i.fb = ptrtoint ptr %i.ey to i64
  %i.fc = or i64 %i.ex, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !210
  br i1 %.not, label %bb.ac, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdbvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdlPvm(ptr noundef nonnull %.0114, i64 noundef %4) #32
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdbvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdbvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.ad

bb.ad:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdbvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.k, align 1, !tbaa !54
  %i.fe = load i64, ptr %i.e, align 8, !tbaa !210
  %.not.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ff = load ptr, ptr %i.d, align 8, !tbaa !1572 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fg = load i64, ptr %i.f, align 8, !tbaa !210
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fg) #30
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !698, !range !163, !noundef !164
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1587, !nonnull !164
  %i.e = load i8, ptr %i.d, align 1, !tbaa !54, !range !163, !noundef !164
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1589, !nonnull !164, !align !242
  %i.i = load i64, ptr %i.h, align 8, !tbaa !210
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1590, !nonnull !164, !align !242
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1572
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1591, !nonnull !164, !align !242
  %i.o = load i64, ptr %i.n, align 8, !tbaa !210
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1592 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1593, !nonnull !164, !align !242
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !270
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1594, !nonnull !164, !align !242
  %i.w = load i64, ptr %i.v, align 8, !tbaa !210
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1590, !nonnull !164, !align !242
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1572
  store ptr %i.z, ptr %i.q, align 8, !tbaa !1520
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1595, !nonnull !164, !align !242
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !210 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !524
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !524
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #30
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEEEvT_SB_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.805", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.805", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph25

bb.b:                                             ; preds = %.lr.ph25
  %i.g = icmp eq i64 %i.i, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph25, !llvm.loop !1596

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.018.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph25:                                         ; preds = %.lr.ph, %bb.b
  %.0151724 = phi i64 [ %i.i, %bb.b ], [ %2, %.lr.ph ]
  %.01823 = phi ptr [ %i.m, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.h = phi i64 [ %i.o, %bb.b ], [ %i.c, %.lr.ph ]
  %i.i = add nsw i64 %.0151724, -1                ; 3 uses
  %i.j = lshr i64 %i.h, 3
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %.01823, i64 -4
  tail call void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEEEvT_SB_SB_SB_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.k, ptr noundef nonnull %i.l, ptr %3)
  %i.m = tail call noundef ptr @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEEET_SB_SB_SB_T0_(ptr noundef nonnull %i.e, ptr noundef %.01823, ptr noundef %0, ptr %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEEEvT_SB_T0_T1_(ptr noundef %i.m, ptr noundef %.01823, i64 noundef %i.i, ptr %3)
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.a                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 64
  br i1 %i.p, label %bb.b, label %.loopexit, !llvm.loop !1596

.loopexit:                                        ; preds = %.lr.ph25, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !726
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEEEvT_SB_SB_RT0_.exit
  %.047 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEEEvT_SB_SB_RT0_.exit ]
  %i.f = getelementptr inbounds i8, ptr %.047, i64 -4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 3 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.h, ptr %i.f, align 4, !tbaa !3
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 2                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %3 = lshr i64 %i.l, 1
  %i.m = icmp sgt i64 %i.k, 2
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !581  ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !667  ; 6 uses
  %.not.i.i7 = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 58 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 57
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 59 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit31.thread
  %.029.i.i = phi i64 [ %i.da, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit31.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.w = shl i64 %.029.i.i, 1                     ; 3 uses
  %i.x = add i64 %i.w, 2                          ; 6 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr [4 x i8], ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 4       ; 4 uses
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !3   ; 4 uses
  br i1 %.not.i.i7, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ac = load i8, ptr %i.q, align 2, !tbaa !668, !range !163, !noundef !164 ; 2 uses
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load i8, ptr %i.r, align 1, !range !163
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond.i.i8 = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond.i.i8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = zext i32 %i.ab to i64                   ; 2 uses
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !210
  %i.ak = and i64 %i.ag, 63
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.aj, %i.al
  %.not.i.i.i25 = icmp eq i64 %i.am, 0
  %i.an = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !210
  %i.as = and i64 %i.ao, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, %i.ar                    ; 2 uses
  br i1 %.not.i.i.i25, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.av = load i8, ptr %i.s, align 1, !tbaa !669, !range !163, !noundef !164 ; 2 uses
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !670 ; 2 uses
  %i.ay = sext i32 %i.ab to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = lshr i64 %i.bb, 6
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !210
  %i.bf = and i64 %i.bb, 63
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = and i64 %i.bg, %i.be
  %.not.i7.i.i9 = icmp eq i64 %i.bh, 0
  %i.bi = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = lshr i64 %i.bm, 6
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !210
  %i.bq = and i64 %i.bm, 63
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = and i64 %i.br, %i.bp                    ; 2 uses
  br i1 %.not.i7.i.i9, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, label %bb.h

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23: ; preds = %bb.e
  %i.bt = load i64, ptr %i.p, align 8, !tbaa !210
  %i.bu = and i64 %i.bt, 1
  %.not.i6.i.i24 = icmp eq i64 %i.bu, 0
  br i1 %.not.i6.i.i24, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit31.thread, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20: ; preds = %bb.f, %bb.d
  %.0.i10.in.i21 = phi i64 [ %i.au, %bb.d ], [ %i.bs, %bb.f ]
  %.0.i10.in.i21.fr = freeze i64 %.0.i10.in.i21
  %.0.i10.i22.not = icmp eq i64 %.0.i10.in.i21.fr, 0
  br i1 %.0.i10.i22.not, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit31.thread, label %bb.m

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28: ; preds = %.lr.ph.i.i
  %i.bv = load i32, ptr %i.aa, align 4, !tbaa !3
  %.pre.i30 = load i8, ptr %i.q, align 2, !tbaa !668, !range !163
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %.not.i.i19.i26 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i19.i26, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit31.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  %.not.i7.i16.i10 = icmp eq i64 %i.bs, 0
  br i1 %.not.i7.i16.i10, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit31.thread, label %.thread30.i11

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23
  %i.bw = load i32, ptr %i.aa, align 4, !tbaa !3
  br label %.thread30.i11

.thread30.i11:                                    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18, %bb.h
  %i.bx = phi i32 [ %i.bw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.i18 ], [ %i.bi, %bb.h ]
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !671
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28
  %i.bz = phi i8 [ %.pre.i30, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28 ], [ %i.ac, %bb.g ]
  %i.ca = phi i32 [ %i.bv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit20.thread.i28 ], [ %i.an, %bb.g ] ; 2 uses
  %i.cb = load ptr, ptr %i.u, align 8, !tbaa !671 ; 3 uses
  %i.cc = trunc nuw i8 %i.bz to i1
  br i1 %i.cc, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i27, label %._crit_edge52

._crit_edge52:                                    ; preds = %bb.i
  %.pre = load i8, ptr %i.s, align 1, !tbaa !669, !range !163
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge52, %.thread30.i11
  %i.cd = phi i8 [ %i.av, %.thread30.i11 ], [ %.pre, %._crit_edge52 ]
  %i.ce = phi ptr [ %i.by, %.thread30.i11 ], [ %i.cb, %._crit_edge52 ] ; 4 uses
  %i.cf = phi i32 [ %i.bx, %.thread30.i11 ], [ %i.ca, %._crit_edge52 ]
  %i.cg = trunc nuw i8 %i.cd to i1
  br i1 %i.cg, label %bb.k, label %bb.l

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i27: ; preds = %bb.i
  %i.ch = sext i32 %i.ab to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.ch
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit31

bb.k:                                             ; preds = %bb.j
  %.0.i.i.ph33.i17 = load i32, ptr %i.v, align 8, !tbaa !3 ; 2 uses
  %i.cj = sext i32 %.0.i.i.ph33.i17 to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cj
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit31

bb.l:                                             ; preds = %bb.j
  %i.cl = load ptr, ptr %i.t, align 8, !tbaa !670 ; 2 uses
  %i.cm = sext i32 %i.ab to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  %.0.i.i.ph.i12 = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.co = sext i32 %.0.i.i.ph.i12 to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.co
  %i.cq = sext i32 %i.cf to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit31

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit31: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i27, %bb.k, %bb.l
  %i.ct = phi ptr [ %i.ce, %bb.l ], [ %i.ce, %bb.k ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i27 ]
  %.in.i14 = phi ptr [ %i.cp, %bb.l ], [ %i.ck, %bb.k ], [ %i.ci, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i27 ]
  %.0.i.i21.i15 = phi i32 [ %i.cs, %bb.l ], [ %.0.i.i.ph33.i17, %bb.k ], [ %i.ca, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i27 ]
  %i.cu = load double, ptr %.in.i14, align 8, !tbaa !1545
  %i.cv = sext i32 %.0.i.i21.i15 to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !1545
  %i.cy = fcmp olt double %i.cu, %i.cx
  %cond.fr = freeze i1 %i.cy
  br i1 %cond.fr, label %bb.m, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit31.thread

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit31
  %i.cz = or disjoint i64 %i.w, 1
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit31.thread

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit31.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23, %bb.h, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit31, %bb.m
  %i.da = phi i64 [ %i.cz, %bb.m ], [ %i.x, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit31 ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i20 ], [ %i.x, %bb.h ], [ %i.x, %bb.g ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23 ] ; 4 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %0, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !3
  %i.de = icmp slt i64 %i.da, %3
  br i1 %i.de, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1597

._crit_edge.i.i:                                  ; preds = %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit31.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.da, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit31.thread ] ; 5 uses
  %i.df = and i64 %i.j, 4
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.dh = add nsw i64 %i.k, -2
  %i.di = ashr exact i64 %i.dh, 1
  %i.dj = icmp eq i64 %.0.lcssa.i.i, %i.di
  br i1 %i.dj, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %bb.n
  %i.dk = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.dl = or disjoint i64 %i.dk, 1                ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.o, %.thread.i
  %.128.i12.i = phi i64 [ %i.dl, %.thread.i ], [ %.0.lcssa.i.i, %bb.o ] ; 3 uses
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !581 ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !667 ; 6 uses
  %.not.i.i = icmp eq ptr %i.dr, null
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 57
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 59 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 3 uses
  %i.dv = sext i32 %i.g to i64                    ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 3 uses
  %i.dx = zext i32 %i.g to i64                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 6
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dy
  %i.ea = and i64 %i.dx, 63
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 64 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 58
  %.pre.i.us = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !668, !range !163 ; 2 uses
  br i1 %.not.i.i, label %.lr.ph.i.i.preheader.i.split.us, label %.lr.ph.i.i.preheader.i.split

.lr.ph.i.i.preheader.i.split.us:                  ; preds = %.lr.ph.i.i.preheader.i
  %i.ed = load ptr, ptr %i.dw, align 8, !tbaa !671 ; 4 uses
  %i.ee = trunc nuw i8 %.pre.i.us to i1
  br i1 %i.ee, label %.lr.ph.i.i.preheader.i.split.us.split.us, label %.lr.ph.i.i.preheader.i.split.us.split

.lr.ph.i.i.preheader.i.split.us.split.us:         ; preds = %.lr.ph.i.i.preheader.i.split.us
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.dv
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !1545
  br label %.lr.ph.i.i.i.us.us

.lr.ph.i.i.i.us.us:                               ; preds = %bb.p, %.lr.ph.i.i.preheader.i.split.us.split.us
  %.01316.i.i.i.us.us = phi i64 [ %.017.i.i78.i.us.us, %bb.p ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i.split.us.split.us ] ; 3 uses
  %.017.in.i.i.i.us.us = add nsw i64 %.01316.i.i.i.us.us, -1
  %.017.i.i78.i.us.us = lshr i64 %.017.in.i.i.i.us.us, 1 ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i.us.us
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3  ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ej
  %i.el = load double, ptr %i.ek, align 8, !tbaa !1545
  %i.em = fcmp olt double %i.el, %i.eg
  br i1 %i.em, label %bb.p, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEEEvT_SB_SB_RT0_.exit

bb.p:                                             ; preds = %.lr.ph.i.i.i.us.us
  %i.en = getelementptr inbounds [4 x i8], ptr %0, i64 %.01316.i.i.i.us.us
  store i32 %i.ei, ptr %i.en, align 4, !tbaa !3
  %.not9.i.us.us = icmp eq i64 %.017.i.i78.i.us.us, 0
  br i1 %.not9.i.us.us, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i.us.us, !llvm.loop !1598

.lr.ph.i.i.preheader.i.split.us.split:            ; preds = %.lr.ph.i.i.preheader.i.split.us
  %i.eo = load i8, ptr %i.dt, align 1, !tbaa !669, !range !163, !noundef !164
  %i.ep = trunc nuw i8 %i.eo to i1
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %bb.s, %.lr.ph.i.i.preheader.i.split.us.split
  %.01316.i.i.i.us = phi i64 [ %.017.i.i78.i.us, %bb.s ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i.split.us.split ] ; 3 uses
  %.017.in.i.i.i.us = add nsw i64 %.01316.i.i.i.us, -1
  %.017.i.i78.i.us = lshr i64 %.017.in.i.i.i.us, 1 ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i.us
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3  ; 2 uses
  br i1 %i.ep, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.us
  %i.es = load ptr, ptr %i.du, align 8, !tbaa !670 ; 2 uses
  %i.et = sext i32 %i.er to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.et
  %.0.i.i.ph.i.us = load i32, ptr %i.eu, align 4, !tbaa !3
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.dv
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit.us

bb.r:                                             ; preds = %.lr.ph.i.i.i.us
  %.0.i.i.ph33.i.us = load i32, ptr %i.ec, align 8, !tbaa !3 ; 2 uses
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit.us

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit.us: ; preds = %bb.r, %bb.q
  %.pn.in = phi i32 [ %.0.i.i.ph.i.us, %bb.q ], [ %.0.i.i.ph33.i.us, %bb.r ]
  %.0.i.i21.i.us = phi i32 [ %i.ew, %bb.q ], [ %.0.i.i.ph33.i.us, %bb.r ]
  %.pn = sext i32 %.pn.in to i64
  %.in.i.us = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %.pn
  %i.ex = load double, ptr %.in.i.us, align 8, !tbaa !1545
  %i.ey = sext i32 %.0.i.i21.i.us to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !1545
  %i.fb = fcmp olt double %i.ex, %i.fa
  br i1 %i.fb, label %bb.s, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEEEvT_SB_SB_RT0_.exit

bb.s:                                             ; preds = %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit.us
  %i.fc = getelementptr inbounds [4 x i8], ptr %0, i64 %.01316.i.i.i.us
  store i32 %i.er, ptr %i.fc, align 4, !tbaa !3
  %.not9.i.us = icmp eq i64 %.017.i.i78.i.us, 0
  br i1 %.not9.i.us, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i.us, !llvm.loop !1598

.lr.ph.i.i.preheader.i.split:                     ; preds = %.lr.ph.i.i.preheader.i
  %i.fd = trunc nuw i8 %.pre.i.us to i1           ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ac, %.lr.ph.i.i.preheader.i.split
  %.01316.i.i.i = phi i64 [ %.017.i.i78.i, %bb.ac ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i.split ] ; 7 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i78.i = lshr i64 %.017.in.i.i.i, 1      ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3  ; 5 uses
  %i.fg = load i8, ptr %i.ds, align 1, !range !163
  %i.fh = trunc nuw i8 %i.fg to i1
  %or.cond.i.i = select i1 %i.fd, i1 true, i1 %i.fh
  br i1 %or.cond.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.fi = zext i32 %i.ff to i64                   ; 2 uses
  %i.fj = lshr i64 %i.fi, 6
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !210
  %i.fm = and i64 %i.fi, 63
  %i.fn = shl nuw i64 1, %i.fm
  %i.fo = and i64 %i.fl, %i.fn
  %.not.i.i.i = icmp eq i64 %i.fo, 0
  %i.fp = load i64, ptr %i.dz, align 8, !tbaa !210
  %i.fq = and i64 %i.fp, %i.eb                    ; 2 uses
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, label %bb.w

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.fr = load i8, ptr %i.dt, align 1, !tbaa !669, !range !163, !noundef !164 ; 2 uses
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ft = load ptr, ptr %i.du, align 8, !tbaa !670 ; 2 uses
  %i.fu = sext i32 %i.ff to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %i.fy = lshr i64 %i.fx, 6
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !210
  %i.gb = and i64 %i.fx, 63
  %i.gc = shl nuw i64 1, %i.gb
  %i.gd = and i64 %i.gc, %i.ga
  %.not.i7.i.i = icmp eq i64 %i.gd, 0
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.dv
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %i.gh = lshr i64 %i.gg, 6
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !210
  %i.gk = and i64 %i.gg, 63
  %i.gl = shl nuw i64 1, %i.gk
  %i.gm = and i64 %i.gl, %i.gj                    ; 2 uses
  br i1 %.not.i7.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i, label %bb.x

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.u
  %i.gn = load i64, ptr %i.dr, align 8, !tbaa !210
  %i.go = and i64 %i.gn, 1
  %.not.i6.i.i = icmp eq i64 %i.go, 0
  br i1 %.not.i6.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEEEvT_SB_SB_RT0_.exit, label %.thread30.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit13.i: ; preds = %bb.v, %bb.t
  %.0.i10.in.i = phi i64 [ %i.fq, %bb.t ], [ %i.gm, %bb.v ]
  %.0.i10.i.not = icmp eq i64 %.0.i10.in.i, 0
  br i1 %.0.i10.i.not, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEEEvT_SB_SB_RT0_.exit, label %bb.ac

bb.w:                                             ; preds = %bb.t
  %.not.i.i19.i = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i19.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEEEvT_SB_SB_RT0_.exit, label %bb.y

bb.x:                                             ; preds = %bb.v
  %.not.i7.i16.i = icmp eq i64 %i.gm, 0
  br i1 %.not.i7.i16.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEEEvT_SB_SB_RT0_.exit, label %.thread30.i

.thread30.i:                                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.x
  %i.gp = load ptr, ptr %i.dw, align 8, !tbaa !671
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gq = load ptr, ptr %i.dw, align 8, !tbaa !671 ; 3 uses
  br i1 %i.fd, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i, label %._crit_edge53

._crit_edge53:                                    ; preds = %bb.y
  %.pre54 = load i8, ptr %i.dt, align 1, !tbaa !669, !range !163
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge53, %.thread30.i
  %i.gr = phi i8 [ %i.fr, %.thread30.i ], [ %.pre54, %._crit_edge53 ]
  %i.gs = phi ptr [ %i.gp, %.thread30.i ], [ %i.gq, %._crit_edge53 ] ; 4 uses
  %i.gt = trunc nuw i8 %i.gr to i1
  br i1 %i.gt, label %bb.aa, label %bb.ab

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i: ; preds = %bb.y
  %i.gu = sext i32 %i.ff to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gu
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessIdEclERKiS6_.exit

bb.aa:                                            ; preds = %bb.z
end_hunk_8
begin_hunk_9_@_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_T0_T1_:bb.a
.lr.ph25:                                         ; preds = %.lr.ph, %bb.b
  %.0151724 = phi i64 [ %i.r, %bb.b ], [ %2, %.lr.ph ]
  %.01823 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.h = phi i64 [ %i.t, %bb.b ], [ %i.c, %.lr.ph ]
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr inbounds i8, ptr %.01823, i64 -4
  call void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_SC_SC_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.j, ptr noundef nonnull %i.k, ptr %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph25
  %.013.i.i = phi ptr [ %.01823, %.lr.ph25 ], [ %.114.i.i, %bb.f ]
  %.0.i.i = phi ptr [ %i.e, %.lr.ph25 ], [ %i.m, %bb.f ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.1.i.i = phi ptr [ %.0.i.i, %bb.c ], [ %i.m, %bb.d ] ; 9 uses
  %i.l = call noundef zeroext i1 @_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_10StringViewEEclERKiS7_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(4) %0)
  %i.m = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.l, label %bb.d, label %.preheader.i.i, !llvm.loop !1706

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.d ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 6 uses
  %i.n = call noundef zeroext i1 @_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_10StringViewEEclERKiS7_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %.114.i.i)
  br i1 %i.n, label %.preheader.i.i, label %bb.e, !llvm.loop !1707

bb.e:                                             ; preds = %.preheader.i.i
  %i.o = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.o, label %bb.f, label %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEET_SC_SC_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %.1.i.i, align 4, !tbaa !3
  %i.q = load i32, ptr %.114.i.i, align 4, !tbaa !3
  store i32 %i.q, ptr %.1.i.i, align 4, !tbaa !3
  store i32 %i.p, ptr %.114.i.i, align 4, !tbaa !3
  br label %bb.c, !llvm.loop !1708

_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEET_SC_SC_T0_.exit: ; preds = %bb.e
  %i.r = add nsw i64 %.0151724, -1                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.01823, i64 noundef %i.r, ptr %3)
  %i.s = ptrtoint ptr %.1.i.i to i64
  %i.t = sub i64 %i.s, %i.a                       ; 2 uses
  %i.u = icmp sgt i64 %i.t, 64
  br i1 %i.u, label %bb.b, label %.loopexit, !llvm.loop !1705

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEET_SC_SC_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.860", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.860", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.858", align 8 ; 5 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp sgt i64 %i.e, 64
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %2, ptr %5, align 8
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %.020.i.idx = phi i64 [ 4, %bb.b ], [ %.020.i.add, %bb.h ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %bb.b ], [ %.020.i.ptr, %bb.h ] ; 3 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 6 uses
  %i.g = call noundef zeroext i1 @_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_10StringViewEEclERKiS7_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %.020.i.ptr, ptr noundef nonnull align 4 dereferenceable(4) %0)
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %.020.i.ptr, align 4, !tbaa !3
  %i.i = icmp samesign ugt i64 %.020.i.idx, 4
  br i1 %i.i, label %bb.e, label %bb.f, !prof !66

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 4
  %i.k = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.k, ptr %i.j, align 4, !tbaa !3
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.f, %bb.e
  store i32 %i.h, ptr %0, align 4, !tbaa !3
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i = load ptr, ptr %5, align 8, !tbaa !726
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.0.0.copyload.i, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.l = load i32, ptr %.020.i.ptr, align 4, !tbaa !3
  store i32 %i.l, ptr %i.b, align 4, !tbaa !3
  %i.m = call noundef zeroext i1 @_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_10StringViewEEclERKiS7_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %.pn19.i)
  br i1 %i.m, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.g ] ; 4 uses
  %.0911.i.i = phi ptr [ %.012.i.i, %.lr.ph.i.i ], [ %.020.i.ptr, %bb.g ]
  %i.n = load i32, ptr %.012.i.i, align 4, !tbaa !3
  store i32 %i.n, ptr %.0911.i.i, align 4, !tbaa !3
  %.0.i.i = getelementptr inbounds i8, ptr %.012.i.i, i64 -4 ; 2 uses
  %i.o = call noundef zeroext i1 @_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_10StringViewEEclERKiS7_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %.0.i.i)
  br i1 %i.o, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_T0_.exit.i, !llvm.loop !1709

_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.g
  %.09.lcssa.i.i = phi ptr [ %.020.i.ptr, %bb.g ], [ %.012.i.i, %.lr.ph.i.i ]
  %i.p = load i32, ptr %i.b, align 4, !tbaa !3
  store i32 %i.p, ptr %.09.lcssa.i.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_T0_.exit.i, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i
  %.020.i.add = add nuw nsw i64 %.020.i.idx, 4    ; 2 uses
  %.not.i = icmp eq i64 %.020.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_T0_.exit, label %bb.c, !llvm.loop !1710

_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_T0_.exit: ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not7.i = icmp eq ptr %i.q, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_T0_.exit, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_T0_.exit.i11
  %.08.i = phi ptr [ %i.w, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_T0_.exit.i11 ], [ %i.q, %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_T0_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %2, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.r = load i32, ptr %.08.i, align 4, !tbaa !3
  store i32 %i.r, ptr %i.a, align 4, !tbaa !3
  %.010.i.i = getelementptr inbounds i8, ptr %.08.i, i64 -4 ; 2 uses
  %i.s = call noundef zeroext i1 @_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_10StringViewEEclERKiS7_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %.010.i.i)
  br i1 %i.s, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i14
  %.012.i.i15 = phi ptr [ %.0.i.i17, %.lr.ph.i.i14 ], [ %.010.i.i, %.lr.ph.i ] ; 4 uses
  %.0911.i.i16 = phi ptr [ %.012.i.i15, %.lr.ph.i.i14 ], [ %.08.i, %.lr.ph.i ]
  %i.t = load i32, ptr %.012.i.i15, align 4, !tbaa !3
  store i32 %i.t, ptr %.0911.i.i16, align 4, !tbaa !3
  %.0.i.i17 = getelementptr inbounds i8, ptr %.012.i.i15, i64 -4 ; 2 uses
  %i.u = call noundef zeroext i1 @_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_10StringViewEEclERKiS7_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %.0.i.i17)
  br i1 %i.u, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_T0_.exit.i11, !llvm.loop !1709

_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i
  %.09.lcssa.i.i12 = phi ptr [ %.08.i, %.lr.ph.i ], [ %.012.i.i15, %.lr.ph.i.i14 ]
  %i.v = load i32, ptr %i.a, align 4, !tbaa !3
  store i32 %i.v, ptr %.09.lcssa.i.i12, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.w, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_T0_.exit, label %.lr.ph.i, !llvm.loop !1711

bb.i:                                             ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1, ptr %2)
  br label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_T0_.exit

_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_T0_.exit.i11, %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_T0_.exit, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.858", align 8 ; 6 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.859", align 8 ; 6 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp sgt i64 %i.d, 4
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_SC_RT0_.exit
  %.07 = phi ptr [ %i.f, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_SC_RT0_.exit ], [ %1, %bb.a ]
  %i.f = getelementptr inbounds i8, ptr %.07, i64 -4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 3 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.h, ptr %i.f, align 4, !tbaa !3
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.b                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 2                   ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !726
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.0.0.copyload.i, ptr %3, align 8
  %i.l = add nsw i64 %i.k, -1
  %5 = lshr i64 %i.l, 1
  %i.m = icmp sgt i64 %i.k, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.029.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.n = shl i64 %.029.i.i, 1                     ; 3 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr [4 x i8], ptr %0, i64 %i.n
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = call noundef zeroext i1 @_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_10StringViewEEclERKiS7_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
  %i.t = or disjoint i64 %i.n, 1
  %spec.select.i.i = select i1 %i.s, i64 %i.t, i64 %i.o ; 4 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i
  store i32 %i.v, ptr %i.w, align 4, !tbaa !3
  %i.x = icmp slt i64 %spec.select.i.i, %5
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1712

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.y = and i64 %i.j, 4
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.b, label %._crit_edge.i.i._crit_edge

._crit_edge.i.i._crit_edge:                       ; preds = %._crit_edge.i.i
  %.pre = load i64, ptr %3, align 8, !tbaa !726
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.aa = add nsw i64 %i.k, -2
  %i.ab = ashr exact i64 %i.aa, 1
  %i.ac = icmp eq i64 %.0.lcssa.i.i, %i.ab
  %.pre8 = load i64, ptr %3, align 8, !tbaa !726  ; 2 uses
  br i1 %i.ac, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.ad = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ae = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store i64 %.pre8, ptr %4, align 8, !tbaa !726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.g, ptr %i.a, align 4, !tbaa !3
  br label %.lr.ph.i.i.i.preheader

bb.c:                                             ; preds = %._crit_edge.i.i._crit_edge, %bb.b
  %i.ai = phi i64 [ %.pre, %._crit_edge.i.i._crit_edge ], [ %.pre8, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store i64 %i.ai, ptr %4, align 8, !tbaa !726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.g, ptr %i.a, align 4, !tbaa !3
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_SC_RT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c, %.thread.i
  %.01316.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.c ], [ %i.ae, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.d
  %.01316.i.i.i = phi i64 [ %.017.i.i78.i, %bb.d ], [ %.01316.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i78.i = lshr i64 %.017.in.i.i.i, 1      ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i ; 2 uses
  %i.ak = call noundef zeroext i1 @_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_10StringViewEEclERKiS7_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.ak, label %bb.d, label %.critedge.loopexit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %.01316.i.i.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !3
  %.not9.i = icmp eq i64 %.017.i.i78.i, 0
  br i1 %.not9.i, label %.critedge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1713

.critedge.loopexit.i.i.i:                         ; preds = %bb.d, %.lr.ph.i.i.i
  %.013.lcssa.ph.i.i.i = phi i64 [ %.01316.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %.pre.i.i.i = load i32, ptr %i.a, align 4, !tbaa !3
  br label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_SC_RT0_.exit

_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_SC_RT0_.exit: ; preds = %bb.c, %.critedge.loopexit.i.i.i
  %i.an = phi i32 [ %i.g, %bb.c ], [ %.pre.i.i.i, %.critedge.loopexit.i.i.i ]
  %.013.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.013.lcssa.ph.i.i.i, %.critedge.loopexit.i.i.i ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ap = icmp sgt i64 %i.j, 4
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !1714

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_SC_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_SC_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.858", align 8 ; 5 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.859", align 8 ; 4 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 3 uses
  %i.f = icmp slt i64 %i.e, 2
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -2                     ; 3 uses
  %i.h = lshr i64 %i.g, 1
  %i.i = add nsw i64 %i.e, -1
  %i.j = lshr i64 %i.i, 1                         ; 2 uses
  %i.k = and i64 %i.d, 4
  %i.l = icmp eq i64 %i.k, 0
  %i.m = lshr exact i64 %i.g, 1                   ; 2 uses
  %i.n = or disjoint i64 %i.g, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_T0_SD_T1_T2_.exit, %bb.b
  %.014 = phi i64 [ %i.h, %bb.b ], [ %i.ap, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_T0_SD_T1_T2_.exit ] ; 8 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !726
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.0.0.copyload, ptr %3, align 8
  %i.s = icmp slt i64 %.014, %i.j
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.014, %bb.c ] ; 2 uses
  %i.t = shl i64 %.029.i, 1                       ; 3 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr [4 x i8], ptr %0, i64 %i.t
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = call noundef zeroext i1 @_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_10StringViewEEclERKiS7_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.x)
  %i.z = or disjoint i64 %i.t, 1
  %spec.select.i = select i1 %i.y, i64 %i.z, i64 %i.u ; 4 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !3
  %i.ad = icmp slt i64 %spec.select.i, %i.j
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1712

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.014, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ae = icmp eq i64 %.0.lcssa.i, %i.m
  %or.cond = select i1 %i.l, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.af = load i32, ptr %i.o, align 4, !tbaa !3
  store i32 %i.af, ptr %i.p, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.n, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.ag = load i64, ptr %3, align 8, !tbaa !726
  store i64 %i.ag, ptr %4, align 8, !tbaa !726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.r, ptr %i.a, align 4, !tbaa !3
  %i.ah = icmp sgt i64 %.128.i, %.014
  br i1 %i.ah, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_T0_SD_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01316.i.i = phi i64 [ %.017.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i ; 2 uses
  %i.aj = call noundef zeroext i1 @_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_10StringViewEEclERKiS7_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.aj, label %bb.f, label %.critedge.loopexit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01316.i.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  %i.am = icmp sgt i64 %.017.i.i, %.014
  br i1 %i.am, label %.lr.ph.i.i, label %.critedge.loopexit.i.i, !llvm.loop !1713

.critedge.loopexit.i.i:                           ; preds = %bb.f, %.lr.ph.i.i
  %.013.lcssa.ph.i.i = phi i64 [ %.01316.i.i, %.lr.ph.i.i ], [ %.017.i.i, %bb.f ]
  %.pre.i.i = load i32, ptr %i.a, align 4, !tbaa !3
  br label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_T0_SD_T1_T2_.exit

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_T0_SD_T1_T2_.exit: ; preds = %bb.e, %.critedge.loopexit.i.i
  %i.an = phi i32 [ %i.r, %bb.e ], [ %.pre.i.i, %.critedge.loopexit.i.i ]
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.013.lcssa.ph.i.i, %.critedge.loopexit.i.i ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not = icmp eq i64 %.014, 0
  %i.ap = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1715

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_10StringViewEEEEEEvT_T0_SD_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_10StringViewEEclERKiS7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 8 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1716, !nonnull !164, !align !242
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !581  ; 18 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !3      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !667  ; 9 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit21.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  %i.h = load i8, ptr %i.g, align 2, !tbaa !668, !range !163, !noundef !164 ; 2 uses
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  %i.k = load i8, ptr %i.j, align 1, !range !163
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = zext i32 %i.d to i64                     ; 2 uses
  %i.n = lshr i64 %i.m, 6
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !210
  %i.q = and i64 %i.m, 63
  %i.r = shl nuw i64 1, %i.q
  %i.s = and i64 %i.p, %i.r
  %.not.i.i = icmp eq i64 %i.s, 0
  %i.t = load i32, ptr %2, align 4, !tbaa !3      ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1798 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1800, !nonnull !164
  %i.d = load i8, ptr %i.c, align 1, !tbaa !54, !range !163, !noundef !164
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1801, !nonnull !164, !align !242
  %i.h = load i64, ptr %i.g, align 8, !tbaa !210  ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1802, !nonnull !164, !align !242
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1338
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1803, !nonnull !164, !align !242
  %i.n = load i64, ptr %i.m, align 8, !tbaa !210
  br label %.noexc

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1804, !nonnull !164, !align !242
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !270  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1805, !nonnull !164, !align !242
  %i.t = load i64, ptr %i.s, align 8, !tbaa !210  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1802, !nonnull !164, !align !242
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1338
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !1747
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1806, !nonnull !164, !align !242
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !210 ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ab, i1 true)
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !524
  %i.af = and i64 %i.ae, -256
  %i.ag = select i1 %i.ad, i64 4294967295, i64 %i.ac
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !524
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #30
  %.pre = load ptr, ptr %0, align 8, !tbaa !1800
  %.pre3 = load i8, ptr %.pre, align 1, !tbaa !54, !range !163
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1801
  %.pre5 = load i64, ptr %.pre4, align 8, !tbaa !210
  %i.ai = trunc nuw i8 %.pre3 to i1
  br i1 %i.ai, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1807, !nonnull !164, !align !242
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !210
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1808, !nonnull !164, !align !242
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !210
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1809, !nonnull !164, !align !242
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1784
  invoke void @_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS5_bEm(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ar, i64 noundef %i.ao)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.010 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ 0, %bb.b ], [ %i.n, %bb.c ]
  %.029 = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ null, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.as = phi i64 [ %.pre5, %bb.d ], [ %i.al, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.c ]
  %.not.i = icmp eq ptr %.029, null
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS5_bEbmmmPhm.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.at = sub i64 0, %.010
  %i.au = and i64 %i.at, -8
  %i.av = mul i64 %i.as, 24
  %i.aw = sub i64 %i.av, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.029, i64 noundef %i.aw) #30
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS5_bEbmmmPhm.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS5_bEbmmmPhm.exit: ; preds = %bb.f, %.noexc
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #33
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS5_bEm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1744
  %i.b = mul i64 %2, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.a, i64 %i.b, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !1744
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.910", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.910", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph25

bb.b:                                             ; preds = %.lr.ph25
  %i.g = icmp eq i64 %i.i, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph25, !llvm.loop !1810

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.018.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph25:                                         ; preds = %.lr.ph, %bb.b
  %.0151724 = phi i64 [ %i.i, %bb.b ], [ %2, %.lr.ph ]
  %.01823 = phi ptr [ %i.m, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.h = phi i64 [ %i.o, %bb.b ], [ %i.c, %.lr.ph ]
  %i.i = add nsw i64 %.0151724, -1                ; 3 uses
  %i.j = lshr i64 %i.h, 3
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %.01823, i64 -4
  tail call void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_SC_SC_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.k, ptr noundef nonnull %i.l, ptr %3)
  %i.m = tail call noundef ptr @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEET_SC_SC_SC_T0_(ptr noundef nonnull %i.e, ptr noundef %.01823, ptr noundef %0, ptr %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_T0_T1_(ptr noundef %i.m, ptr noundef %.01823, i64 noundef %i.i, ptr %3)
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.a                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 64
  br i1 %i.p, label %bb.b, label %.loopexit, !llvm.loop !1810

.loopexit:                                        ; preds = %.lr.ph25, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !726
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_SC_RT0_.exit
  %.055 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_SC_RT0_.exit ]
  %i.f = getelementptr inbounds i8, ptr %.055, i64 -4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 3 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.h, ptr %i.f, align 4, !tbaa !3
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 2                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %3 = lshr i64 %i.l, 1
  %i.m = icmp sgt i64 %i.k, 2
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !581  ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !667  ; 6 uses
  %.not.i.i7 = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 58 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 57
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 59 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit40.thread
  %.029.i.i = phi i64 [ %i.db, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit40.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.w = shl i64 %.029.i.i, 1                     ; 3 uses
  %i.x = add i64 %i.w, 2                          ; 6 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr [4 x i8], ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 4       ; 4 uses
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !3   ; 4 uses
  br i1 %.not.i.i7, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit21.thread.i37, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ac = load i8, ptr %i.q, align 2, !tbaa !668, !range !163, !noundef !164 ; 2 uses
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load i8, ptr %i.r, align 1, !range !163
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond.i.i8 = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond.i.i8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = zext i32 %i.ab to i64                   ; 2 uses
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !210
  %i.ak = and i64 %i.ag, 63
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.aj, %i.al
  %.not.i.i.i33 = icmp eq i64 %i.am, 0
  %i.an = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !210
  %i.as = and i64 %i.ao, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, %i.ar                    ; 2 uses
  br i1 %.not.i.i.i33, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit14.i28, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.av = load i8, ptr %i.s, align 1, !tbaa !669, !range !163, !noundef !164 ; 2 uses
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i31, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !670 ; 2 uses
  %i.ay = sext i32 %i.ab to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = lshr i64 %i.bb, 6
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !210
  %i.bf = and i64 %i.bb, 63
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = and i64 %i.bg, %i.be
  %.not.i7.i.i9 = icmp eq i64 %i.bh, 0
  %i.bi = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = lshr i64 %i.bm, 6
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !210
  %i.bq = and i64 %i.bm, 63
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = and i64 %i.br, %i.bp                    ; 2 uses
  br i1 %.not.i7.i.i9, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit14.i28, label %bb.h

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i31: ; preds = %bb.e
  %i.bt = load i64, ptr %i.p, align 8, !tbaa !210
  %i.bu = and i64 %i.bt, 1
  %.not.i6.i.i32 = icmp eq i64 %i.bu, 0
  br i1 %.not.i6.i.i32, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit40.thread, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit21.i26

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit14.i28: ; preds = %bb.f, %bb.d
  %.0.i11.in.i29 = phi i64 [ %i.au, %bb.d ], [ %i.bs, %bb.f ]
  %.0.i11.in.i29.fr = freeze i64 %.0.i11.in.i29
  %.0.i11.i30.not = icmp eq i64 %.0.i11.in.i29.fr, 0
  br i1 %.0.i11.i30.not, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit40.thread, label %bb.m

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit21.thread.i37: ; preds = %.lr.ph.i.i
  %i.bv = load i32, ptr %i.aa, align 4, !tbaa !3
  %.pre.i39 = load i8, ptr %i.q, align 2, !tbaa !668, !range !163
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %.not.i.i20.i34 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i20.i34, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit40.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  %.not.i7.i17.i10 = icmp eq i64 %i.bs, 0
  br i1 %.not.i7.i17.i10, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit40.thread, label %.thread47.i11

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit21.i26: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i31
  %i.bw = load i32, ptr %i.aa, align 4, !tbaa !3
  br label %.thread47.i11

.thread47.i11:                                    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit21.i26, %bb.h
  %i.bx = phi i32 [ %i.bw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit21.i26 ], [ %i.bi, %bb.h ]
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !671
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit21.thread.i37
  %i.bz = phi i8 [ %.pre.i39, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit21.thread.i37 ], [ %i.ac, %bb.g ]
  %i.ca = phi i32 [ %i.bv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit21.thread.i37 ], [ %i.an, %bb.g ] ; 2 uses
  %i.cb = load ptr, ptr %i.u, align 8, !tbaa !671 ; 3 uses
  %i.cc = trunc nuw i8 %i.bz to i1
  br i1 %i.cc, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i35, label %._crit_edge56

._crit_edge56:                                    ; preds = %bb.i
  %.pre = load i8, ptr %i.s, align 1, !tbaa !669, !range !163
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge56, %.thread47.i11
  %i.cd = phi i8 [ %i.av, %.thread47.i11 ], [ %.pre, %._crit_edge56 ]
  %i.ce = phi ptr [ %i.by, %.thread47.i11 ], [ %i.cb, %._crit_edge56 ] ; 4 uses
  %i.cf = phi i32 [ %i.bx, %.thread47.i11 ], [ %i.ca, %._crit_edge56 ]
  %i.cg = trunc nuw i8 %i.cd to i1
  br i1 %i.cg, label %bb.k, label %bb.l

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i35: ; preds = %bb.i
  %i.ch = sext i32 %i.ab to i64
  %i.ci = getelementptr inbounds [16 x i8], ptr %i.cb, i64 %i.ch ; 2 uses
  %.sroa.2.0..sroa_idx.i.i36 = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit40

bb.k:                                             ; preds = %bb.j
  %.0.i.i.ph50.i24 = load i32, ptr %i.v, align 8, !tbaa !3 ; 2 uses
  %i.cj = sext i32 %.0.i.i.ph50.i24 to i64
  %i.ck = getelementptr inbounds [16 x i8], ptr %i.ce, i64 %i.cj ; 2 uses
  %.sroa.2.0..sroa_idx.i3552.i25 = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit40

bb.l:                                             ; preds = %bb.j
  %i.cl = load ptr, ptr %i.t, align 8, !tbaa !670 ; 2 uses
  %i.cm = sext i32 %i.ab to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  %.0.i.i.ph.i12 = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.co = sext i32 %.0.i.i.ph.i12 to i64
  %i.cp = getelementptr inbounds [16 x i8], ptr %i.ce, i64 %i.co ; 2 uses
  %.sroa.2.0..sroa_idx.i35.i13 = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cq = sext i32 %i.cf to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit40

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit40: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i35, %bb.k, %bb.l
  %i.ct = phi ptr [ %i.ce, %bb.l ], [ %i.ce, %bb.k ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i35 ]
  %.sroa.2.0.copyload.i42.in.i15 = phi ptr [ %.sroa.2.0..sroa_idx.i35.i13, %bb.l ], [ %.sroa.2.0..sroa_idx.i3552.i25, %bb.k ], [ %.sroa.2.0..sroa_idx.i.i36, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i35 ]
  %.sroa.0.0.copyload.i40.in.i16 = phi ptr [ %i.cp, %bb.l ], [ %i.ck, %bb.k ], [ %i.ci, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i35 ]
  %.0.i.i22.i17 = phi i32 [ %i.cs, %bb.l ], [ %.0.i.i.ph50.i24, %bb.k ], [ %i.ca, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i35 ]
  %.sroa.0.0.copyload.i40.i18 = load i64, ptr %.sroa.0.0.copyload.i40.in.i16, align 8, !tbaa !210 ; 2 uses
  %.sroa.2.0.copyload.i42.i19 = load i64, ptr %.sroa.2.0.copyload.i42.in.i15, align 8, !tbaa !210
  %i.cu = sext i32 %.0.i.i22.i17 to i64
  %i.cv = getelementptr inbounds [16 x i8], ptr %i.ct, i64 %i.cu ; 2 uses
  %.sroa.0.0.copyload.i23.i20 = load i64, ptr %i.cv, align 8, !tbaa !210 ; 2 uses
  %.sroa.2.0..sroa_idx.i24.i21 = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.2.0.copyload.i25.i22 = load i64, ptr %.sroa.2.0..sroa_idx.i24.i21, align 8, !tbaa !210
  %i.cw = icmp eq i64 %.sroa.0.0.copyload.i40.i18, %.sroa.0.0.copyload.i23.i20
  %i.cx = icmp ult i64 %.sroa.2.0.copyload.i42.i19, %.sroa.2.0.copyload.i25.i22
  %i.cy = icmp slt i64 %.sroa.0.0.copyload.i40.i18, %.sroa.0.0.copyload.i23.i20
  %i.cz = select i1 %i.cw, i1 %i.cx, i1 %i.cy
  %cond.fr = freeze i1 %i.cz
  br i1 %cond.fr, label %bb.m, label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit40.thread

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit14.i28, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit40
  %i.da = or disjoint i64 %i.w, 1
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit40.thread

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit40.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i31, %bb.h, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit14.i28, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit40, %bb.m
  %i.db = phi i64 [ %i.da, %bb.m ], [ %i.x, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit40 ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit14.i28 ], [ %i.x, %bb.h ], [ %i.x, %bb.g ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i31 ] ; 4 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %0, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !3
  %i.de = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !3
  %i.df = icmp slt i64 %i.db, %3
  br i1 %i.df, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1811

._crit_edge.i.i:                                  ; preds = %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit40.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.db, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit40.thread ] ; 5 uses
  %i.dg = and i64 %i.j, 4
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.di = add nsw i64 %i.k, -2
  %i.dj = ashr exact i64 %i.di, 1
  %i.dk = icmp eq i64 %.0.lcssa.i.i, %i.dj
  br i1 %i.dk, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %bb.n
  %i.dl = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.dm = or disjoint i64 %i.dl, 1                ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_SC_RT0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.o, %.thread.i
  %.128.i12.i = phi i64 [ %i.dm, %.thread.i ], [ %.0.lcssa.i.i, %bb.o ]
  %i.dq = load ptr, ptr %i.e, align 8, !tbaa !581 ; 7 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !667 ; 6 uses
  %.not.i.i = icmp eq ptr %i.ds, null
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 58
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 57
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 59 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.dx = sext i32 %i.g to i64                    ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %i.dz = zext i32 %i.g to i64                    ; 2 uses
  %i.ea = lshr i64 %i.dz, 6
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ea
  %i.ec = and i64 %i.dz, 63
  %i.ed = shl nuw i64 1, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %.pre.i = load i8, ptr %i.dt, align 2, !tbaa !668, !range !163 ; 2 uses
  %i.ef = trunc nuw i8 %.pre.i to i1
  %i.eg = trunc nuw i8 %.pre.i to i1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %.lr.ph.i.i.preheader.i
  %.01316.i.i.i = phi i64 [ %.017.i.i78.i, %bb.y ], [ %.128.i12.i, %.lr.ph.i.i.preheader.i ] ; 7 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i78.i = lshr i64 %.017.in.i.i.i, 1      ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i.i78.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3  ; 5 uses
  br i1 %.not.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit21.thread.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.ej = load i8, ptr %i.du, align 1, !range !163
  %i.ek = trunc nuw i8 %i.ej to i1
  %or.cond.i.i = select i1 %i.ef, i1 true, i1 %i.ek
  br i1 %or.cond.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.el = zext i32 %i.ei to i64                   ; 2 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !210
  %i.ep = and i64 %i.el, 63
  %i.eq = shl nuw i64 1, %i.ep
  %i.er = and i64 %i.eo, %i.eq
  %.not.i.i.i = icmp eq i64 %i.er, 0
  %i.es = load i64, ptr %i.eb, align 8, !tbaa !210
  %i.et = and i64 %i.es, %i.ed                    ; 2 uses
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit14.i, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.eu = load i8, ptr %i.dv, align 1, !tbaa !669, !range !163, !noundef !164 ; 2 uses
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ew = load ptr, ptr %i.dw, align 8, !tbaa !670 ; 2 uses
  %i.ex = sext i32 %i.ei to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3
  %i.fa = zext i32 %i.ez to i64                   ; 2 uses
  %i.fb = lshr i64 %i.fa, 6
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !210
  %i.fe = and i64 %i.fa, 63
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %i.fd
  %.not.i7.i.i = icmp eq i64 %i.fg, 0
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.dx
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !3
  %i.fj = zext i32 %i.fi to i64                   ; 2 uses
  %i.fk = lshr i64 %i.fj, 6
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !210
  %i.fn = and i64 %i.fj, 63
  %i.fo = shl nuw i64 1, %i.fn
  %i.fp = and i64 %i.fo, %i.fm                    ; 2 uses
  br i1 %.not.i7.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit14.i, label %bb.u

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.r
  %i.fq = load i64, ptr %i.ds, align 8, !tbaa !210
  %i.fr = and i64 %i.fq, 1
  %.not.i6.i.i = icmp eq i64 %i.fr, 0
  br i1 %.not.i6.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_SC_RT0_.exit, label %.thread47.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit14.i: ; preds = %bb.s, %bb.q
  %.0.i11.in.i = phi i64 [ %i.et, %bb.q ], [ %i.fp, %bb.s ]
  %.0.i11.i.not = icmp eq i64 %.0.i11.in.i, 0
  br i1 %.0.i11.i.not, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_SC_RT0_.exit, label %bb.y

bb.t:                                             ; preds = %bb.q
  %.not.i.i20.i = icmp eq i64 %i.et, 0
  br i1 %.not.i.i20.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_SC_RT0_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit21.thread.i

bb.u:                                             ; preds = %bb.s
  %.not.i7.i17.i = icmp eq i64 %i.fp, 0
  br i1 %.not.i7.i17.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_SC_RT0_.exit, label %.thread47.i

.thread47.i:                                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.u
  %i.fs = load ptr, ptr %i.dy, align 8, !tbaa !671
  br label %bb.v

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit21.thread.i: ; preds = %.lr.ph.i.i.i, %bb.t
  %i.ft = load ptr, ptr %i.dy, align 8, !tbaa !671 ; 3 uses
  br i1 %i.eg, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i, label %._crit_edge57

._crit_edge57:                                    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit21.thread.i
  %.pre58 = load i8, ptr %i.dv, align 1, !tbaa !669, !range !163
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge57, %.thread47.i
  %i.fu = phi i8 [ %i.eu, %.thread47.i ], [ %.pre58, %._crit_edge57 ]
  %i.fv = phi ptr [ %i.fs, %.thread47.i ], [ %i.ft, %._crit_edge57 ] ; 4 uses
  %i.fw = trunc nuw i8 %i.fu to i1
  br i1 %i.fw, label %bb.w, label %bb.x

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit21.thread.i
  %i.fx = sext i32 %i.ei to i64
  %i.fy = getelementptr inbounds [16 x i8], ptr %i.ft, i64 %i.fx ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit

bb.w:                                             ; preds = %bb.v
  %.0.i.i.ph50.i = load i32, ptr %i.ee, align 8, !tbaa !3
  %i.fz = sext i32 %.0.i.i.ph50.i to i64          ; 2 uses
  %i.ga = getelementptr inbounds [16 x i8], ptr %i.fv, i64 %i.fz ; 2 uses
  %.sroa.2.0..sroa_idx.i3552.i = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit

bb.x:                                             ; preds = %bb.v
  %i.gb = load ptr, ptr %i.dw, align 8, !tbaa !670 ; 2 uses
  %i.gc = sext i32 %i.ei to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gc
  %.0.i.i.ph.i = load i32, ptr %i.gd, align 4, !tbaa !3
  %i.ge = sext i32 %.0.i.i.ph.i to i64
  %i.gf = getelementptr inbounds [16 x i8], ptr %i.fv, i64 %i.ge ; 2 uses
  %.sroa.2.0..sroa_idx.i35.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.dx
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !3
  %.pre59 = sext i32 %i.gh to i64
  br label %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit

_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i, %bb.w, %bb.x
  %.pre-phi = phi i64 [ %i.dx, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i ], [ %i.fz, %bb.w ], [ %.pre59, %bb.x ]
  %i.gi = phi ptr [ %i.ft, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i ], [ %i.fv, %bb.w ], [ %i.fv, %bb.x ]
  %.sroa.2.0.copyload.i42.in.i = phi ptr [ %.sroa.2.0..sroa_idx.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i ], [ %.sroa.2.0..sroa_idx.i3552.i, %bb.w ], [ %.sroa.2.0..sroa_idx.i35.i, %bb.x ]
  %.sroa.0.0.copyload.i40.in.i = phi ptr [ %i.fy, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i ], [ %i.ga, %bb.w ], [ %i.gf, %bb.x ]
  %.sroa.0.0.copyload.i40.i = load i64, ptr %.sroa.0.0.copyload.i40.in.i, align 8, !tbaa !210 ; 2 uses
  %.sroa.2.0.copyload.i42.i = load i64, ptr %.sroa.2.0.copyload.i42.in.i, align 8, !tbaa !210
  %i.gj = getelementptr inbounds [16 x i8], ptr %i.gi, i64 %.pre-phi ; 2 uses
  %.sroa.0.0.copyload.i23.i = load i64, ptr %i.gj, align 8, !tbaa !210 ; 2 uses
  %.sroa.2.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %.sroa.2.0.copyload.i25.i = load i64, ptr %.sroa.2.0..sroa_idx.i24.i, align 8, !tbaa !210
  %i.gk = icmp eq i64 %.sroa.0.0.copyload.i40.i, %.sroa.0.0.copyload.i23.i
  %i.gl = icmp ult i64 %.sroa.2.0.copyload.i42.i, %.sroa.2.0.copyload.i25.i
  %i.gm = icmp slt i64 %.sroa.0.0.copyload.i40.i, %.sroa.0.0.copyload.i23.i
  %i.gn = select i1 %i.gk, i1 %i.gl, i1 %i.gm
  br i1 %i.gn, label %bb.y, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_SC_RT0_.exit

bb.y:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit14.i, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit
  %i.go = getelementptr inbounds [4 x i8], ptr %0, i64 %.01316.i.i.i
  store i32 %i.ei, ptr %i.go, align 4, !tbaa !3
  %.not9.i = icmp eq i64 %.017.i.i78.i, 0
  br i1 %.not9.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_SC_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1812

_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_SC_RT0_.exit: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.u, %bb.t, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit, %bb.y, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit14.i, %bb.o
  %.013.lcssa.i.i.i = phi i64 [ 0, %bb.o ], [ %.01316.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i ], [ %.01316.i.i.i, %_ZNK8facebook5velox9functions3lib23Index2ValueNullableLessINS0_9TimestampEEclERKiS7_.exit ], [ 0, %bb.y ], [ %.01316.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit14.i ], [ %.01316.i.i.i, %bb.t ], [ %.01316.i.i.i, %bb.u ]
  %i.gp = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i
  store i32 %i.g, ptr %i.gp, align 4, !tbaa !3
  %i.gq = icmp sgt i64 %i.j, 4
  br i1 %i.gq, label %bb.b, label %._crit_edge, !llvm.loop !1813

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_SC_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !726
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
end_hunk_10
