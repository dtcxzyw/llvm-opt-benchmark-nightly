Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/TransformKeys?download=true
inline.NumInlined: 2023
inline.NumDeleted: 1071
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi:bb.a
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
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !107
  %i.bf = or i64 %i.be, %i.bb
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !107
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
  store i64 -1, ptr %i.bk, align 8, !tbaa !107
  %i.bl = add nsw i32 %i.bh, 64                   ; 2 uses
  %.not33.i.i.i = icmp sgt i32 %i.bl, %i.aj
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !11

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
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !107
  %i.bs = or i64 %i.br, %.sink19
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !107
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i:    ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split, %._crit_edge.i.i.i, %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 37
  store i8 0, ptr %i.bt, align 1, !tbaa !200
  br label %_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit

_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i, %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS7_PKT_PKmPKiEUliE_EEvSE_iibSA_EUlimE_ZNS3_ISH_EEvSE_iibSA_EUliE_EEviiSA_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.172) align 8 %2, ptr noundef byval(%class.anon.173) align 8 %3) local_unnamed_addr #11 comdat {
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
  %i.q = load i8, ptr %2, align 8, !tbaa !238, !range !73, !noundef !74
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !239
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !107
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
  %i.af = add nuw i64 %.011.i, 9223372036854775807
  %i.ag = and i64 %i.af, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ag, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !470

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
  %i.ao = load i8, ptr %2, align 8, !tbaa !238, !range !73, !noundef !74
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !239
  %i.ar = sext i32 %i.ah to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !107
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
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !470

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
  %4 = phi i32 [ %i.bg, %.lr.ph ], [ %i.ey, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit ] ; 2 uses
  %.052.a = phi i32 [ %i.c, %.lr.ph ], [ %4, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit ] ; 2 uses
  %5 = sdiv i32 %.052.a, 64                       ; 3 uses
  %6 = load i8, ptr %3, align 8, !tbaa !241, !range !73, !noundef !74
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !242
  %i.bo = sext i32 %5 to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !107
  %i.br = xor i8 %6, 1
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = xor i64 %i.bq, %i.bt                    ; 2 uses
  switch i64 %i.bu, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.bv = shl nsw i32 %5, 6
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !249, !nonnull !74, !align !201
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !189 ; 2 uses
  %.not.i48 = icmp eq ptr %i.bx, null
  %i.by = load ptr, ptr %i.bj, align 8, !tbaa !250, !nonnull !74, !align !201
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !231 ; 2 uses
  %.not9.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %i.bk, align 8, !nonnull !74, !align !201
  %i.cb = load ptr, ptr %i.bl, align 8, !nonnull !74, !align !201
  %i.cc = load ptr, ptr %i.bm, align 8, !nonnull !74, !align !201 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 37
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ce = shl nsw i32 %5, 6                       ; 2 uses
  %i.cf = add nuw i32 %i.ce, 64
  %i.cg = sext i32 %i.cf to i64
  %.0.off = add i32 %.052.a, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.ch = sext i32 %i.ce to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.ch, %.lr.ph21.i ], [ %i.cj, %bb.j ] ; 2 uses
  %i.ci = trunc i64 %.020.i to i32
  call void @_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i32 noundef %i.ci)
  %i.cj = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.cg
  br i1 %i.ck, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, !llvm.loop !471

bb.k:                                             ; preds = %_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, %.lr.ph.i
  %.01519.i = phi i64 [ %i.bu, %.lr.ph.i ], [ %i.ex, %_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit ] ; 3 uses
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
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !107
  %i.cw = and i64 %i.cs, 63
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = and i64 %i.cv, %i.cx
  %.not.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i, label %_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cz = load ptr, ptr %i.ca, align 8, !tbaa !189
  %i.da = sext i32 %i.cr to i64                   ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !59 ; 3 uses
  %i.dd = load ptr, ptr %i.cb, align 8, !tbaa !189
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.da
  %i.df = load i32, ptr %i.de, align 4, !tbaa !59 ; 6 uses
  %i.dg = add nsw i32 %i.df, %i.dc                ; 5 uses
  %i.dh = icmp eq i32 %i.dc, 0
  br i1 %i.dh, label %_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.di = load ptr, ptr %i.cc, align 8, !tbaa !203 ; 3 uses
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
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !107
  %i.ei = or i64 %i.eh, %i.ee
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !107
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
  store i64 -1, ptr %i.en, align 8, !tbaa !107
  %i.eo = add nsw i32 %i.ek, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.eo, %i.dm
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !11

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
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !107
  %i.ev = or i64 %i.eu, %.sink19.i
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !107
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i:  ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i, %._crit_edge.i.i.i.i, %bb.p
  store i8 0, ptr %i.cd, align 1, !tbaa !200
  br label %_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit

_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit: ; preds = %bb.n, %bb.o, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i
  %i.ew = add i64 %.01519.i, -1
  %i.ex = and i64 %i.ew, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.ex, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !472

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit: ; preds = %bb.j, %_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, %bb.h, %bb.i
  %i.ey = add nsw i32 %4, 64                      ; 2 uses
  %.not33 = icmp sgt i32 %i.ey, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !473

bb.v:                                             ; preds = %._crit_edge
  %i.ez = ashr i32 %1, 6
  %i.fa = and i32 %1, 63
  %i.fb = zext nneg i32 %i.fa to i64
  %notmask.i42 = shl nsw i64 -1, %i.fb
  %i.fc = xor i64 %notmask.i42, -1
  %i.fd = load i8, ptr %2, align 8, !tbaa !238, !range !73, !noundef !74
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !239
  %i.fg = sext i32 %i.ez to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !107
  %i.fj = xor i8 %i.fd, 1
  %i.fk = zext nneg i8 %i.fj to i64
  %i.fl = sub nsw i64 0, %i.fk
  %i.fm = xor i64 %i.fi, %i.fl
  %i.fn = and i64 %i.fm, %i.fc                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fn, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.v
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fn, %.preheader.i44 ], [ %i.ft, %bb.w ] ; 3 uses
  %i.fp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fq = trunc nuw nsw i64 %i.fp to i32
  %i.fr = or disjoint i32 %i.d, %i.fq
  call void @_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %i.fo, i32 noundef %i.fr)
  %i.fs = add nuw i64 %.011.i45, 9223372036854775807
  %i.ft = and i64 %i.fs, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.ft, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %bb.w, !llvm.loop !470

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit: ; preds = %bb.w, %bb.d, %bb.v, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #14

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.176) align 8 %2, ptr noundef byval(%class.anon.178) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 5 uses
  %i.d = and i32 %1, -64                          ; 3 uses
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
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !245, !range !73, !noundef !74
  %i.s = load ptr, ptr %2, align 8, !tbaa !244
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !107
  %i.w = xor i8 %i.r, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = or i32 %1, 63
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = sub nuw nsw i32 %i.ab, %i.ad
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

bb.e:                                             ; preds = %bb.b
  %.not35 = icmp eq i32 %1, %i.d
  br i1 %.not35, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = ashr i32 %1, 6
  %i.ag = and i32 %1, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %notmask.i38 = shl nsw i64 -1, %i.ah
  %i.ai = xor i64 %notmask.i38, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !245, !range !73, !noundef !74
  %i.al = load ptr, ptr %2, align 8, !tbaa !244
  %i.am = sext i32 %i.af to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !107
  %i.ap = xor i8 %i.ak, 1
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = xor i64 %i.ao, %i.ar
  %i.at = and i64 %i.as, %i.ai                    ; 2 uses
  %.not.i39 = icmp eq i64 %i.at, 0
  br i1 %.not.i39, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40: ; preds = %bb.f
  %i.au = or i32 %1, 63
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = sub nuw nsw i32 %i.au, %i.aw
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread: ; preds = %bb.f, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !range !73
  %i.ba = load ptr, ptr %3, align 8
  %i.bb = xor i8 %i.az, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc                    ; 2 uses
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit: ; preds = %bb.g, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread
  %.0.in = phi i32 [ %i.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread ], [ %.0, %bb.g ] ; 2 uses
  %.0 = add nsw i32 %.0.in, -64                   ; 3 uses
  %.not36 = icmp slt i32 %.0, %i.c
  br i1 %.not36, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %i.be = ashr exact i32 %.0, 6
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !107 ; 2 uses
  %.not.i41 = icmp eq i64 %i.bh, %i.bd
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = xor i64 %i.bh, %i.bd
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = xor i32 %i.bk, -1
  %i.bm = add i32 %.0.in, %i.bl
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

.critedge:                                        ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %.not37 = icmp eq i32 %0, %i.c
  br i1 %.not37, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.bn = sdiv i32 %0, 64                         ; 2 uses
  %i.bo = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %notmask.i.i42 = shl nsw i64 -1, %i.bp
  %i.bq = xor i64 %notmask.i.i42, -1
  %i.br = sub nsw i32 64, %i.bo
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !245, !range !73, !noundef !74
  %i.bw = load ptr, ptr %2, align 8, !tbaa !244
  %i.bx = sext i32 %i.bn to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !107
  %i.ca = xor i8 %i.bv, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = xor i64 %i.bz, %i.cc
  %i.ce = and i64 %i.cd, %i.bt                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ce, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = shl nsw i32 %i.bn, 6
  %i.cg = or disjoint i32 %i.cf, 63
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = sub nuw nsw i32 %i.cg, %i.ci
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split: ; preds = %bb.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40, %bb.h, %bb.j
  %.sink61 = phi ptr [ %2, %bb.j ], [ %3, %bb.h ], [ %2, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %2, %bb.d ]
  %.sink = phi i32 [ %i.cj, %bb.j ], [ %i.bm, %bb.h ], [ %i.ax, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %i.ae, %bb.d ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink61, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !189, !nonnull !74, !align !251
  store i32 %.sink, ptr %i.cl, align 4, !tbaa !59
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split, %bb.i, %bb.c, %.critedge, %bb.a
end_hunk_0
