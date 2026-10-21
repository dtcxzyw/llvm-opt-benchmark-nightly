Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ArrayDistinct?download=true
inline.NumInlined: 9725
inline.NumDeleted: 3794
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi:bb.a
  %i.ag = add i32 %i.aa, 63                       ; 2 uses
  %i.ah = srem i32 %i.ag, 64
  %i.ai = sub nsw i32 %i.ag, %i.ah                ; 6 uses
  %i.aj = and i32 %i.ad, -64                      ; 4 uses
  %i.ak = icmp slt i32 %i.aj, %i.ai
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = and i32 %i.ad, 63
  %i.am = zext nneg i32 %i.al to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.am
  %i.an = xor i64 %notmask.i.i.i.i, -1
  %i.ao = sub nsw i32 %i.ai, %i.aa                ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.ap
  %i.aq = xor i64 %notmask.i.i.i.i.i, -1
  %i.ar = sub nsw i32 64, %i.ao
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl i64 %i.aq, %i.as
  %i.au = and i64 %i.at, %i.an
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split

bb.i:                                             ; preds = %bb.g
  %.not32.i.i.i = icmp eq i32 %i.aa, %i.ai
  br i1 %.not32.i.i.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = sdiv i32 %i.aa, 64
  %i.aw = sub nsw i32 %i.ai, %i.aa                ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %notmask.i.i35.i.i.i = shl nsw i64 -1, %i.ax
  %i.ay = xor i64 %notmask.i.i35.i.i.i, -1
  %i.az = sub nsw i32 64, %i.aw
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl i64 %i.ay, %i.ba
  %i.bc = sext i32 %i.av to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bc ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !116
  %i.bf = or i64 %i.be, %i.bb
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !116
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
  store i64 -1, ptr %i.bk, align 8, !tbaa !116
  %i.bl = add nsw i32 %i.bh, 64                   ; 2 uses
  %.not33.i.i.i = icmp sgt i32 %i.bl, %i.aj
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !18

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
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !116
  %i.bs = or i64 %i.br, %.sink19
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !116
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i:    ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split, %._crit_edge.i.i.i, %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 37
  store i8 0, ptr %i.bt, align 1, !tbaa !254
  br label %_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit

_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i, %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS7_PKT_PKmPKiEUliE_EEvSE_iibSA_EUlimE_ZNS3_ISH_EEvSE_iibSA_EUliE_EEviiSA_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.332) align 8 %2, ptr noundef byval(%class.anon.333) align 8 %3) local_unnamed_addr #11 comdat {
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
  %i.q = load i8, ptr %2, align 8, !tbaa !320, !range !80, !noundef !81
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !321
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
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
  %i.af = add nuw i64 %.011.i, 9223372036854775807
  %i.ag = and i64 %i.af, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ag, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !927

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
  %i.ao = load i8, ptr %2, align 8, !tbaa !320, !range !80, !noundef !81
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !321
  %i.ar = sext i32 %i.ah to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !116
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
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !927

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
  %.pre55 = load i8, ptr %3, align 8, !tbaa !323, !range !80
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %bb.v

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit
  %4 = phi i8 [ %.pre55, %.lr.ph ], [ %6, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit ] ; 4 uses
  %.052.a = phi i32 [ %i.bg, %.lr.ph ], [ %i.ey, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit ] ; 2 uses
  %.052 = phi i32 [ %i.c, %.lr.ph ], [ %.052.a, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit ] ; 2 uses
  %5 = sdiv i32 %.052, 64                         ; 3 uses
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !324
  %i.bo = sext i32 %5 to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !116
  %i.br = xor i8 %4, 1
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = xor i64 %i.bq, %i.bt                    ; 2 uses
  switch i64 %i.bu, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.bv = shl nsw i32 %5, 6
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !325, !nonnull !81, !align !132
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !258 ; 2 uses
  %.not.i48 = icmp eq ptr %i.bx, null
  %i.by = load ptr, ptr %i.bj, align 8, !tbaa !326, !nonnull !81, !align !132
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !134 ; 2 uses
  %.not9.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %i.bk, align 8, !nonnull !81, !align !132
  %i.cb = load ptr, ptr %i.bl, align 8, !nonnull !81, !align !132
  %i.cc = load ptr, ptr %i.bm, align 8, !nonnull !81, !align !132 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 37
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ce = shl nsw i32 %5, 6                       ; 2 uses
  %i.cf = add nuw i32 %i.ce, 64
  %i.cg = sext i32 %i.cf to i64
  %.0.off = add i32 %.052, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.ch = sext i32 %i.ce to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.ch, %.lr.ph21.i ], [ %i.cj, %bb.j ] ; 2 uses
  %i.ci = trunc i64 %.020.i to i32
  call void @_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i32 noundef %i.ci)
  %i.cj = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.cg
  br i1 %i.ck, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit.loopexit54, !llvm.loop !928

bb.k:                                             ; preds = %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, %.lr.ph.i
  %.01519.i = phi i64 [ %i.bu, %.lr.ph.i ], [ %i.ex, %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit ] ; 3 uses
  %i.cl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = or disjoint i32 %i.bv, %i.cm            ; 3 uses
  br i1 %.not.i48, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !59
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cr = phi i32 [ %i.cq, %bb.l ], [ %i.cn, %bb.k ]
  br i1 %.not9.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cs = zext i32 %i.cn to i64                   ; 2 uses
  %i.ct = lshr i64 %i.cs, 6
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !116
  %i.cw = and i64 %i.cs, 63
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = and i64 %i.cv, %i.cx
  %.not.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i, label %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cz = load ptr, ptr %i.ca, align 8, !tbaa !258
  %i.da = sext i32 %i.cr to i64                   ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !59 ; 3 uses
  %i.dd = load ptr, ptr %i.cb, align 8, !tbaa !258
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.da
  %i.df = load i32, ptr %i.de, align 4, !tbaa !59 ; 6 uses
  %i.dg = add nsw i32 %i.df, %i.dc                ; 5 uses
  %i.dh = icmp eq i32 %i.dc, 0
  br i1 %i.dh, label %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.di = load ptr, ptr %i.cc, align 8, !tbaa !237 ; 3 uses
  %.not.i.i.i.i = icmp sgt i32 %i.dc, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.dj = add i32 %i.df, 63                       ; 2 uses
  %i.dk = srem i32 %i.dj, 64
  %i.dl = sub nsw i32 %i.dj, %i.dk                ; 6 uses
  %i.dm = and i32 %i.dg, -64                      ; 4 uses
  %i.dn = icmp slt i32 %i.dm, %i.dl
  br i1 %i.dn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.do = and i32 %i.dg, 63
  %i.dp = zext nneg i32 %i.do to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.dp
  %i.dq = xor i64 %notmask.i.i.i.i.i, -1
  %i.dr = sub nsw i32 %i.dl, %i.df                ; 2 uses
  %i.ds = zext nneg i32 %i.dr to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.ds
  %i.dt = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.du = sub nsw i32 64, %i.dr
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = shl i64 %i.dt, %i.dv
  %i.dx = and i64 %i.dw, %i.dq
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i

bb.s:                                             ; preds = %bb.q
  %.not32.i.i.i.i = icmp eq i32 %i.df, %i.dl
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dy = sdiv i32 %i.df, 64
  %i.dz = sub nsw i32 %i.dl, %i.df                ; 2 uses
  %i.ea = zext nneg i32 %i.dz to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.ea
  %i.eb = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.ec = sub nsw i32 64, %i.dz
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = shl i64 %i.eb, %i.ed
  %i.ef = sext i32 %i.dy to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.ef ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !116
  %i.ei = or i64 %i.eh, %i.ee
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !116
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i: ; preds = %bb.t, %bb.s
  %i.ej = add nsw i32 %i.dl, 64                   ; 2 uses
  %.not3347.i.i.i.i = icmp sgt i32 %i.ej, %i.dm
  br i1 %.not3347.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.dg, %i.dm
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i, label %bb.u

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ek = phi i32 [ %i.eo, %.lr.ph.i.i.i.i ], [ %i.ej, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i = phi i32 [ %i.ek, %.lr.ph.i.i.i.i ], [ %i.dl, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i ]
  %i.el = sdiv i32 %.048.i.i.i.i, 64
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.em
  store i64 -1, ptr %i.en, align 8, !tbaa !116
  %i.eo = add nsw i32 %i.ek, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.eo, %i.dm
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ep = and i32 %i.dg, 63
  %i.eq = zext nneg i32 %i.ep to i64
  %notmask.i37.i.i.i.i = shl nsw i64 -1, %i.eq
  %i.er = xor i64 %notmask.i37.i.i.i.i, -1
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i: ; preds = %bb.u, %bb.r
  %.sink19.i = phi i64 [ %i.er, %bb.u ], [ %i.dx, %bb.r ]
  %.sink.i = ashr i32 %i.dg, 6
  %i.es = sext i32 %.sink.i to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.es ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !116
  %i.ev = or i64 %i.eu, %.sink19.i
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !116
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i:  ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i, %._crit_edge.i.i.i.i, %bb.p
  store i8 0, ptr %i.cd, align 1, !tbaa !254
  br label %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit

_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit: ; preds = %bb.n, %bb.o, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i
  %i.ew = add i64 %.01519.i, -1
  %i.ex = and i64 %i.ew, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.ex, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !929

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit.loopexit54: ; preds = %bb.j
  %.pre = load i8, ptr %3, align 8, !tbaa !323, !range !80
  br label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit: ; preds = %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit.loopexit54, %bb.h, %bb.i
  %6 = phi i8 [ %.pre, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit.loopexit54 ], [ %4, %bb.i ], [ %4, %bb.h ], [ %4, %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit ]
  %i.ey = add nsw i32 %.052.a, 64                 ; 2 uses
  %.not33 = icmp sgt i32 %i.ey, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !930

bb.v:                                             ; preds = %._crit_edge
  %i.ez = ashr i32 %1, 6
  %i.fa = and i32 %1, 63
  %i.fb = zext nneg i32 %i.fa to i64
  %notmask.i42 = shl nsw i64 -1, %i.fb
  %i.fc = xor i64 %notmask.i42, -1
  %i.fd = load i8, ptr %2, align 8, !tbaa !320, !range !80, !noundef !81
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !321
  %i.fg = sext i32 %i.ez to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !116
  %i.fj = xor i8 %i.fd, 1
  %i.fk = zext nneg i8 %i.fj to i64
  %i.fl = sub nsw i64 0, %i.fk
  %i.fm = xor i64 %i.fi, %i.fl
  %i.fn = and i64 %i.fm, %i.fc                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fn, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.v
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fn, %.preheader.i44 ], [ %i.ft, %bb.w ] ; 3 uses
  %i.fp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fq = trunc nuw nsw i64 %i.fp to i32
  %i.fr = or disjoint i32 %i.d, %i.fq
  call void @_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %i.fo, i32 noundef %i.fr)
  %i.fs = add nuw i64 %.011.i45, 9223372036854775807
  %i.ft = and i64 %i.fs, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.ft, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %bb.w, !llvm.loop !927

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit: ; preds = %bb.w, %bb.d, %bb.v, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 2 uses
  %.not2 = icmp eq ptr %i.b, null
  br i1 %.not2, label %bb.b, label %_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !296    ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !232, !range !80, !noalias !937, !noundef !81
  %i.f = trunc nuw i8 %i.e to i1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !938, !noalias !937
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %.pre3.i = load ptr, ptr %.phi.trans.insert2.i, align 8, !tbaa !938, !noalias !937 ; 2 uses
  %i.g = icmp eq ptr %.pre.i, %.pre3.i            ; 2 uses
  br i1 %i.f, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.g, label %.critedge.thread.i, label %bb.e, !prof !70

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core7ExecCtx16getDecodedVectorEvE18veloxCheckFailArgs) #37, !noalias !937
  unreachable

.critedge.i:                                      ; preds = %bb.c
  br i1 %i.g, label %.critedge.thread.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.d
  %i.h = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #34, !noalias !939 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, i8 0, i64 72, i1 false), !noalias !939
  store i8 1, ptr %i.i, align 8, !tbaa !940, !noalias !939
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.j, i8 0, i64 13, i1 false), !noalias !939
  store i8 1, ptr %i.k, align 1, !tbaa !941, !noalias !939
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i8 0, i64 48, i1 false), !noalias !939
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit

_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i: ; preds = %.critedge.i
  %i.m = getelementptr inbounds i8, ptr %.pre3.i, i64 -8 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !312, !noalias !937
  store ptr null, ptr %i.m, align 8, !tbaa !312, !noalias !937
  store ptr %i.m, ptr %.phi.trans.insert2.i, align 8, !tbaa !310, !noalias !937
  %i.o = inttoptr i64 %i.n to ptr
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit

bb.f:                                             ; preds = %bb.b
  %i.p = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #34, !noalias !942 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i8 0, i64 72, i1 false), !noalias !942
  store i8 1, ptr %i.q, align 8, !tbaa !940, !noalias !942
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.r, i8 0, i64 13, i1 false), !noalias !942
  store i8 1, ptr %i.s, align 1, !tbaa !941, !noalias !942
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i8 0, i64 48, i1 false), !noalias !942
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit

_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i, %.critedge.thread.i, %bb.f
  %.sroa.0.0 = phi ptr [ %i.p, %bb.f ], [ %i.h, %.critedge.thread.i ], [ %i.o, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i ] ; 2 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !312  ; 6 uses
  store ptr %.sroa.0.0, ptr %i.a, align 8, !tbaa !312
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !237  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !238
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i:        ; preds = %bb.h, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !314 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !315
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #35
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i: ; preds = %bb.i, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 120) #35
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !312
  br label %_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i, %bb.a
  %i.aj = phi ptr [ %.sroa.0.0, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit ], [ %.pre, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i ], [ %i.b, %bb.a ]
  ret ptr %i.aj
}

declare void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(94), ptr noundef nonnull align 8 dereferenceable(38), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !312    ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !237  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !238
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !314  ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !315
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #35
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #35
  br label %bb.e

end_hunk_0
