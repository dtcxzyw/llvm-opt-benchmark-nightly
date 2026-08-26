Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/lossless_enc_avx2?download=true
inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@AddVector_AVX2:bb.a
  %i.bb = sub i32 %i.au, %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = add i64 %index, %i.av                   ; 3 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bc
  %wide.load = load <8 x i32>, ptr %i.bd, align 4, !tbaa !3
  %i.be = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bc
  %wide.load83 = load <8 x i32>, ptr %i.be, align 4, !tbaa !3
  %i.bf = add <8 x i32> %wide.load83, %wide.load
  %i.bg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bc
  store <8 x i32> %i.bf, ptr %i.bg, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader85

.lr.ph.preheader85:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv80.ph = phi i64 [ %i.av, %.lr.ph.preheader ], [ %i.az, %middle.block ]
  %.078.ph = phi i32 [ %i.au, %.lr.ph.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.bi = sext i32 %.1 to i64                     ; 3 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bi
  %i.bk = load <8 x i32>, ptr %i.bj, align 1, !tbaa !9
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bi
  %i.bm = load <8 x i32>, ptr %i.bl, align 1, !tbaa !9
  %i.bn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bi
  %i.bo = add <8 x i32> %i.bm, %i.bk
  store <8 x i32> %i.bo, ptr %i.bn, align 1, !tbaa !9
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader85, %.lr.ph
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph ], [ %indvars.iv80.ph, %.lr.ph.preheader85 ] ; 4 uses
  %.078 = phi i32 [ %i.bp, %.lr.ph ], [ %.078.ph, %.lr.ph.preheader85 ]
  %i.bp = add nsw i32 %.078, -1                   ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv80
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bs = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv80
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = add i32 %i.bt, %i.br
  %i.bv = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv80
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !3
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 1
  %.not75 = icmp eq i32 %i.bp, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph, !llvm.loop !25

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.e, %bb.f
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @AddVectorEq_AVX2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = and i32 %2, -32                          ; 2 uses
  %i.b = zext i32 %i.a to i64                     ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 8 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.d = load <8 x i32>, ptr %i.c, align 1, !tbaa !9
  %i.e = or disjoint i64 %indvars.iv, 8           ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %i.g = load <8 x i32>, ptr %i.f, align 1, !tbaa !9
  %i.h = or disjoint i64 %indvars.iv, 16          ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.h
  %i.j = load <8 x i32>, ptr %i.i, align 1, !tbaa !9
  %i.k = or disjoint i64 %indvars.iv, 24          ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = load <8 x i32>, ptr %i.l, align 1, !tbaa !9
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.o = load <8 x i32>, ptr %i.n, align 1, !tbaa !9
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e ; 2 uses
  %i.q = load <8 x i32>, ptr %i.p, align 1, !tbaa !9
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.h ; 2 uses
  %i.s = load <8 x i32>, ptr %i.r, align 1, !tbaa !9
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k ; 2 uses
  %i.u = load <8 x i32>, ptr %i.t, align 1, !tbaa !9
  %i.v = add <8 x i32> %i.o, %i.d
  store <8 x i32> %i.v, ptr %i.n, align 1, !tbaa !9
  %i.w = add <8 x i32> %i.q, %i.g
  store <8 x i32> %i.w, ptr %i.p, align 1, !tbaa !9
  %i.x = add <8 x i32> %i.s, %i.j
  store <8 x i32> %i.x, ptr %i.r, align 1, !tbaa !9
  %i.y = add <8 x i32> %i.u, %i.m
  store <8 x i32> %i.y, ptr %i.t, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !26

bb.c:                                             ; preds = %bb.b
  %i.z = and i32 %2, 16
  %.not72 = icmp eq i32 %i.z, 0
  br i1 %.not72, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.ac = load <8 x i32>, ptr %i.ab, align 1, !tbaa !9
  %i.ad = add nuw nsw i64 %indvars.iv, 40
  %i.ae = and i64 %i.ad, 4294967272               ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ae
  %i.ag = load <8 x i32>, ptr %i.af, align 1, !tbaa !9
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.b ; 2 uses
  %i.ai = load <8 x i32>, ptr %i.ah, align 1, !tbaa !9
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ae ; 2 uses
  %i.ak = load <8 x i32>, ptr %i.aj, align 1, !tbaa !9
  %i.al = add <8 x i32> %i.ai, %i.ac
  store <8 x i32> %i.al, ptr %i.ah, align 1, !tbaa !9
  %i.am = add <8 x i32> %i.ak, %i.ag
  store <8 x i32> %i.am, ptr %i.aj, align 1, !tbaa !9
  %i.an = add nuw nsw i32 %i.aa, 48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.an, %bb.d ], [ %i.a, %bb.c ] ; 2 uses
  %i.ao = and i32 %2, 15                          ; 4 uses
  switch i32 %i.ao, label %.lr.ph.preheader [
    i32 8, label %bb.f
    i32 0, label %.loopexit
  ]

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ap = sext i32 %.1 to i64                     ; 3 uses
  %i.aq = add nsw i32 %i.ao, -1                   ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.aq, 7
  br i1 %min.iters.check, label %.lr.ph.preheader83, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.as, 8589934584              ; 4 uses
  %i.at = add nsw i64 %n.vec, %i.ap
  %i.au = trunc i64 %n.vec to i32
  %i.av = sub i32 %i.ao, %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = add i64 %index, %i.ap                   ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aw
  %wide.load = load <8 x i32>, ptr %i.ax, align 4, !tbaa !3
  %i.ay = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aw ; 2 uses
  %wide.load81 = load <8 x i32>, ptr %i.ay, align 4, !tbaa !3
  %i.az = add <8 x i32> %wide.load81, %wide.load
  store <8 x i32> %i.az, ptr %i.ay, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader83

.lr.ph.preheader83:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv78.ph = phi i64 [ %i.ap, %.lr.ph.preheader ], [ %i.at, %middle.block ]
  %.076.ph = phi i32 [ %i.ao, %.lr.ph.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.bb = sext i32 %.1 to i64                     ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bb
  %i.bd = load <8 x i32>, ptr %i.bc, align 1, !tbaa !9
  %i.be = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bb ; 2 uses
  %i.bf = load <8 x i32>, ptr %i.be, align 1, !tbaa !9
  %i.bg = add <8 x i32> %i.bf, %i.bd
  store <8 x i32> %i.bg, ptr %i.be, align 1, !tbaa !9
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader83, %.lr.ph
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.lr.ph ], [ %indvars.iv78.ph, %.lr.ph.preheader83 ] ; 3 uses
  %.076 = phi i32 [ %i.bh, %.lr.ph ], [ %.076.ph, %.lr.ph.preheader83 ]
  %i.bh = add nsw i32 %.076, -1                   ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv78
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv78 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = add i32 %i.bl, %i.bj
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !3
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1
  %.not73 = icmp eq i32 %i.bh, 0
  br i1 %.not73, label %.loopexit, label %.lr.ph, !llvm.loop !28

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @CombinedShannonEntropy_AVX2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %._crit_edge ] ; 5 uses
  %.05979 = phi i64 [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.06178 = phi i32 [ 0, %bb.a ], [ %.162.lcssa, %._crit_edge ] ; 2 uses
  %.06377 = phi i32 [ 0, %bb.a ], [ %.164.lcssa, %._crit_edge ] ; 2 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 4 uses
  %i.b = load <8 x i32>, ptr %i.a, align 1, !tbaa !9
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.d = load <8 x i32>, ptr %i.c, align 1, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load <8 x i32>, ptr %i.e, align 1, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load <8 x i32>, ptr %i.g, align 1, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.j = load <8 x i32>, ptr %i.i, align 1, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = load <8 x i32>, ptr %i.k, align 1, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.n = load <8 x i32>, ptr %i.m, align 1, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.p = load <8 x i32>, ptr %i.o, align 1, !tbaa !9
  %i.q = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.b, <8 x i32> %i.f)
  %i.r = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.j, <8 x i32> %i.n)
  %i.s = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.q, <16 x i16> %i.r)
  %i.t = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.d, <8 x i32> %i.h)
  %i.u = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.l, <8 x i32> %i.p)
  %i.v = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.t, <16 x i16> %i.u)
  %i.w = bitcast <32 x i8> %i.s to <8 x i32>
  %i.x = shufflevector <8 x i32> %i.w, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.y = bitcast <32 x i8> %i.v to <8 x i32>
  %i.z = shufflevector <8 x i32> %i.y, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.aa = bitcast <8 x i32> %i.x to <32 x i8>
  %i.ab = icmp sgt <32 x i8> %i.aa, zeroinitializer ; 2 uses
  %i.ac = bitcast <32 x i1> %i.ab to i32
  %i.ad = bitcast <8 x i32> %i.z to <32 x i8>
  %i.ae = icmp sgt <32 x i8> %i.ad, zeroinitializer
  %i.af = or <32 x i1> %i.ab, %i.ae
  %i.ag = bitcast <32 x i1> %i.af to i32          ; 2 uses
  %.not70 = icmp eq i32 %i.ag, 0
  br i1 %.not70, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %VP8LFastSLog2.exit67
  %.174 = phi i64 [ %i.bj, %VP8LFastSLog2.exit67 ], [ %.05979, %bb.b ] ; 2 uses
  %.173 = phi i32 [ %i.bb, %VP8LFastSLog2.exit67 ], [ %.06178, %bb.b ]
  %.16272 = phi i32 [ %i.bl, %VP8LFastSLog2.exit67 ], [ %i.ag, %bb.b ] ; 3 uses
  %.16471 = phi i32 [ %.265, %VP8LFastSLog2.exit67 ], [ %.06377, %bb.b ] ; 2 uses
  %i.ah = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %.16272, i1 true) ; 2 uses
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = and i32 %i.ai, %i.ac
  %.not66 = icmp eq i32 %i.aj, 0
  %i.ak = zext nneg i32 %i.ah to i64
  %.pre85 = or disjoint i64 %indvars.iv, %i.ak    ; 3 uses
  br i1 %.not66, label %.lr.ph._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.pre85
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3  ; 4 uses
  %i.an = add i32 %i.am, %.16471
  %i.ao = icmp ult i32 %i.am, 256
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr @kSLog2Table, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !29
  br label %VP8LFastSLog2.exit

bb.e:                                             ; preds = %bb.c
  %i.as = load ptr, ptr @VP8LFastSLog2Slow, align 8, !tbaa !7
  %i.at = tail call i64 %i.as(i32 noundef %i.am) #6, !inline_history !31
  br label %VP8LFastSLog2.exit

VP8LFastSLog2.exit:                               ; preds = %bb.d, %bb.e
  %i.au = phi i64 [ %i.ar, %bb.d ], [ %i.at, %bb.e ]
  %i.av = add i64 %i.au, %.174
  br label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %VP8LFastSLog2.exit
  %.265 = phi i32 [ %i.an, %VP8LFastSLog2.exit ], [ %.16471, %.lr.ph ] ; 2 uses
  %.2 = phi i64 [ %i.av, %VP8LFastSLog2.exit ], [ %.174, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.pre85
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pre85
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = add i32 %i.az, %i.ax                    ; 4 uses
  %i.bb = add i32 %i.ba, %.173                    ; 2 uses
  %i.bc = icmp ult i32 %i.ba, 256
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge
  %i.bd = zext nneg i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @kSLog2Table, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !29
  br label %VP8LFastSLog2.exit67

bb.g:                                             ; preds = %.lr.ph._crit_edge
  %i.bg = load ptr, ptr @VP8LFastSLog2Slow, align 8, !tbaa !7
  %i.bh = tail call i64 %i.bg(i32 noundef %i.ba) #6, !inline_history !31
  br label %VP8LFastSLog2.exit67

VP8LFastSLog2.exit67:                             ; preds = %bb.f, %bb.g
  %i.bi = phi i64 [ %i.bf, %bb.f ], [ %i.bh, %bb.g ]
  %i.bj = add i64 %i.bi, %.2                      ; 2 uses
  %i.bk = add i32 %.16272, -1
  %i.bl = and i32 %i.bk, %.16272                  ; 2 uses
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %VP8LFastSLog2.exit67, %bb.b
  %.164.lcssa = phi i32 [ %.06377, %bb.b ], [ %.265, %VP8LFastSLog2.exit67 ] ; 4 uses
  %.162.lcssa = phi i32 [ %.06178, %bb.b ], [ %i.bb, %VP8LFastSLog2.exit67 ] ; 4 uses
  %.1.lcssa = phi i64 [ %.05979, %bb.b ], [ %i.bj, %VP8LFastSLog2.exit67 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.bm = icmp samesign ult i64 %indvars.iv, 224
  br i1 %i.bm, label %bb.b, label %bb.h, !llvm.loop !33

bb.h:                                             ; preds = %._crit_edge
  %i.bn = icmp ult i32 %.162.lcssa, 256
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = zext nneg i32 %.162.lcssa to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @kSLog2Table, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !29
  br label %VP8LFastSLog2.exit68

bb.j:                                             ; preds = %bb.h
  %i.br = load ptr, ptr @VP8LFastSLog2Slow, align 8, !tbaa !7
  %i.bs = tail call i64 %i.br(i32 noundef %.162.lcssa) #6, !inline_history !31
  br label %VP8LFastSLog2.exit68

VP8LFastSLog2.exit68:                             ; preds = %bb.i, %bb.j
  %i.bt = phi i64 [ %i.bq, %bb.i ], [ %i.bs, %bb.j ]
  %i.bu = icmp ult i32 %.164.lcssa, 256
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %VP8LFastSLog2.exit68
  %i.bv = zext nneg i32 %.164.lcssa to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @kSLog2Table, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !29
  br label %VP8LFastSLog2.exit69

bb.l:                                             ; preds = %VP8LFastSLog2.exit68
  %i.by = load ptr, ptr @VP8LFastSLog2Slow, align 8, !tbaa !7
  %i.bz = tail call i64 %i.by(i32 noundef %.164.lcssa) #6, !inline_history !31
  br label %VP8LFastSLog2.exit69

VP8LFastSLog2.exit69:                             ; preds = %bb.k, %bb.l
  %i.ca = phi i64 [ %i.bx, %bb.k ], [ %i.bz, %bb.l ]
  %i.cb = sub i64 %i.bt, %.1.lcssa
  %i.cc = add i64 %i.cb, %i.ca
  ret i64 %i.cc
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @VectorMismatch_AVX2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = icmp sgt i32 %2, 23
  br i1 %i.a, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a, %bb.b
  %.040.in = phi ptr [ %i.r, %bb.b ], [ %1, %bb.a ]
  %.038.in = phi ptr [ %i.q, %bb.b ], [ %0, %bb.a ]
  %.0 = phi i32 [ %., %bb.b ], [ 0, %bb.a ]       ; 3 uses
  %.03653 = load <8 x i32>, ptr %.038.in, align 1, !tbaa !9
  %.03852 = load <8 x i32>, ptr %.040.in, align 1, !tbaa !9
  %i.b = icmp eq <8 x i32> %.03653, %.03852
  %i.c = sext <8 x i1> %i.b to <8 x i32>
  %i.d = bitcast <8 x i32> %i.c to <32 x i8>
  %i.e = icmp sgt <32 x i8> %i.d, splat (i8 -1)
  %i.f = bitcast <32 x i1> %i.e to i32
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %.preheader
  %i.g = add nsw i32 %.0, 8                       ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %i.h
  %i.j = load <8 x i32>, ptr %i.i, align 1, !tbaa !9
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %i.h
  %i.l = load <8 x i32>, ptr %i.k, align 1, !tbaa !9
  %i.m = icmp eq <8 x i32> %i.l, %i.j
  %i.n = sext <8 x i1> %i.m to <8 x i32>
  %i.o = add nsw i32 %.0, 16                      ; 2 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr %1, i64 %i.p
  %i.s = bitcast <8 x i32> %i.n to <32 x i8>
  %i.t = icmp sgt <32 x i8> %i.s, splat (i8 -1)
  %i.u = bitcast <32 x i1> %i.t to i32
  %.not44 = icmp eq i32 %i.u, 0                   ; 2 uses
  %. = select i1 %.not44, i32 %i.o, i32 %i.g      ; 3 uses
  %i.v = add nsw i32 %., 24
  %i.w = icmp slt i32 %i.v, %2
  %or.cond = select i1 %.not44, i1 %i.w, i1 false
  br i1 %or.cond, label %.preheader, label %.thread, !llvm.loop !34

bb.c:                                             ; preds = %bb.a
  %i.x = icmp sgt i32 %2, 7
  br i1 %i.x, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.y = load <8 x i32>, ptr %0, align 1, !tbaa !9
  %i.z = load <8 x i32>, ptr %1, align 1, !tbaa !9
  %i.aa = icmp eq <8 x i32> %i.y, %i.z
  %i.ab = sext <8 x i1> %i.aa to <8 x i32>
  %i.ac = bitcast <8 x i32> %i.ab to <32 x i8>
  %i.ad = icmp sgt <32 x i8> %i.ac, splat (i8 -1)
  %i.ae = bitcast <32 x i1> %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp samesign ugt i32 %2, 15
  br i1 %i.ag, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load <8 x i32>, ptr %i.ah, align 1, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load <8 x i32>, ptr %i.aj, align 1, !tbaa !9
  %i.al = icmp eq <8 x i32> %i.ai, %i.ak
  %i.am = sext <8 x i1> %i.al to <8 x i32>
  %i.an = bitcast <8 x i32> %i.am to <32 x i8>
  %i.ao = icmp sgt <32 x i8> %i.an, splat (i8 -1)
  %i.ap = bitcast <32 x i1> %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  %spec.select = select i1 %i.aq, i32 16, i32 8
  br label %.thread

.thread:                                          ; preds = %.preheader, %bb.b, %bb.f, %bb.c, %bb.d, %bb.e
  %.3 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ %spec.select, %bb.f ], [ 8, %bb.e ], [ %.0, %.preheader ], [ %., %bb.b ] ; 3 uses
  %i.ar = icmp slt i32 %.3, %2
  br i1 %i.ar, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.thread
  %i.as = sext i32 %.3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ %i.as, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = icmp eq i32 %i.au, %i.aw
  br i1 %i.ax, label %bb.g, label %.critedge.loopexit.split.loop.exit59

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !35

.critedge.loopexit.split.loop.exit59:             ; preds = %.lr.ph
  %i.ay = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.critedge.loopexit.split.loop.exit59, %.thread
  %.4.lcssa = phi i32 [ %.3, %.thread ], [ %i.ay, %.critedge.loopexit.split.loop.exit59 ], [ %2, %bb.g ]
  ret i32 %.4.lcssa
}

; Function Attrs: nounwind uwtable
define internal void @BundleColorMap_AVX2(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not103127 = icmp slt i32 %1, 32               ; 4 uses
  switch i32 %2, label %.preheader [
    i32 0, label %.preheader105
    i32 1, label %.preheader107
    i32 2, label %.preheader109
  ]

.preheader109:                                    ; preds = %bb.a
  br i1 %.not103127, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader109
  %i.a = zext nneg i32 %1 to i64
  br label %.lr.ph

.preheader107:                                    ; preds = %bb.a
  br i1 %.not103127, label %.loopexit, label %.lr.ph118.preheader

.lr.ph118.preheader:                              ; preds = %.preheader107
  %i.b = zext nneg i32 %1 to i64
  br label %.lr.ph118

.preheader105:                                    ; preds = %bb.a
  br i1 %.not103127, label %.loopexit, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %.preheader105
  %i.c = zext nneg i32 %1 to i64
  br label %.lr.ph124

.preheader:                                       ; preds = %bb.a
  br i1 %.not103127, label %.loopexit, label %.lr.ph130.preheader

.lr.ph130.preheader:                              ; preds = %.preheader
  %i.d = zext nneg i32 %1 to i64
  br label %.lr.ph130

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %.lr.ph124
  %indvars.iv157 = phi i64 [ 0, %.lr.ph124.preheader ], [ %indvars.iv.next158, %.lr.ph124 ] ; 2 uses
  %indvars.iv155 = phi i64 [ 32, %.lr.ph124.preheader ], [ %indvars.iv.next156, %.lr.ph124 ]
  %.0123 = phi ptr [ %3, %.lr.ph124.preheader ], [ %i.al, %.lr.ph124 ] ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv157
  %i.f = load <32 x i8>, ptr %i.e, align 1, !tbaa !9 ; 2 uses
  %i.g = shufflevector <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i8> %i.f, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.h = bitcast <32 x i8> %i.g to <16 x i16>     ; 2 uses
  %i.i = shufflevector <16 x i16> %i.h, <16 x i16> <i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.j = bitcast <16 x i16> %i.i to <4 x i64>
  %i.k = shufflevector <16 x i16> %i.h, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.l = bitcast <16 x i16> %i.k to <4 x i64>
  %i.m = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.f, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.n = bitcast <32 x i8> %i.m to <16 x i16>     ; 2 uses
  %i.o = shufflevector <16 x i16> %i.n, <16 x i16> <i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.p = bitcast <16 x i16> %i.o to <4 x i64>
  %i.q = shufflevector <16 x i16> %i.n, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.r = bitcast <16 x i16> %i.q to <4 x i64>
  %i.s = getelementptr inbounds nuw i8, ptr %.0123, i64 64
  %i.t = shufflevector <4 x i64> %i.j, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.t, ptr %.0123, align 1, !tbaa !9
  %i.u = bitcast <16 x i16> %i.i to <8 x i32>
  %i.v = shufflevector <8 x i32> %i.u, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.v, ptr %i.s, align 1, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %.0123, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %.0123, i64 16
  %i.y = shufflevector <4 x i64> %i.l, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.y, ptr %i.x, align 1, !tbaa !9
  %i.z = bitcast <16 x i16> %i.k to <8 x i32>
  %i.aa = shufflevector <8 x i32> %i.z, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.aa, ptr %i.w, align 1, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %.0123, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.0123, i64 32
  %i.ad = shufflevector <4 x i64> %i.p, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ad, ptr %i.ac, align 1, !tbaa !9
  %i.ae = bitcast <16 x i16> %i.o to <8 x i32>
  %i.af = shufflevector <8 x i32> %i.ae, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.af, ptr %i.ab, align 1, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %.0123, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %.0123, i64 48
  %i.ai = shufflevector <4 x i64> %i.r, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ai, ptr %i.ah, align 1, !tbaa !9
  %i.aj = bitcast <16 x i16> %i.q to <8 x i32>
  %i.ak = shufflevector <8 x i32> %i.aj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.ak, ptr %i.ag, align 1, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %.0123, i64 128 ; 2 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 32 ; 2 uses
  %.not102 = icmp samesign ugt i64 %indvars.iv.next156, %i.c
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 32
  br i1 %.not102, label %.loopexit.loopexit133, label %.lr.ph124, !llvm.loop !36

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %.lr.ph118
  %indvars.iv150 = phi i64 [ 0, %.lr.ph118.preheader ], [ %indvars.iv.next151, %.lr.ph118 ] ; 2 uses
  %indvars.iv148 = phi i64 [ 32, %.lr.ph118.preheader ], [ %indvars.iv.next149, %.lr.ph118 ]
  %.1117 = phi ptr [ %3, %.lr.ph118.preheader ], [ %i.bd, %.lr.ph118 ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv150
  %i.an = load <16 x i16>, ptr %i.am, align 1, !tbaa !9
  %i.ao = mul <16 x i16> %i.an, splat (i16 272)
  %i.ap = and <16 x i16> %i.ao, splat (i16 -256)  ; 2 uses
  %i.aq = shufflevector <16 x i16> %i.ap, <16 x i16> <i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ar = bitcast <16 x i16> %i.aq to <4 x i64>
  %i.as = shufflevector <16 x i16> %i.ap, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.at = bitcast <16 x i16> %i.as to <4 x i64>
  %i.au = getelementptr inbounds nuw i8, ptr %.1117, i64 32
  %i.av = shufflevector <4 x i64> %i.ar, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.av, ptr %.1117, align 1, !tbaa !9
  %i.aw = bitcast <16 x i16> %i.aq to <8 x i32>
  %i.ax = shufflevector <8 x i32> %i.aw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.ax, ptr %i.au, align 1, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %.1117, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %.1117, i64 16
  %i.ba = shufflevector <4 x i64> %i.at, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ba, ptr %i.az, align 1, !tbaa !9
  %i.bb = bitcast <16 x i16> %i.as to <8 x i32>
  %i.bc = shufflevector <8 x i32> %i.bb, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.bc, ptr %i.ay, align 1, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %.1117, i64 64 ; 2 uses
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 32 ; 2 uses
  %.not101 = icmp samesign ugt i64 %indvars.iv.next149, %i.b
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 32
  br i1 %.not101, label %.loopexit.loopexit134, label %.lr.ph118, !llvm.loop !37

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv143 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next144, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 32, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.2113 = phi ptr [ %3, %.lr.ph.preheader ], [ %i.bn, %.lr.ph ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv143
  %i.bf = load <16 x i16>, ptr %i.be, align 1, !tbaa !9
  %i.bg = mul <16 x i16> %i.bf, splat (i16 260)
  %.inner = and <16 x i16> %i.bg, splat (i16 3840) ; 2 uses
  %i.bh = bitcast <16 x i16> %.inner to <8 x i32>
  %i.bi = lshr <8 x i32> %i.bh, splat (i32 12)
  %i.bj = bitcast <8 x i32> %i.bi to <4 x i64>
  %i.bk = bitcast <16 x i16> %.inner to <4 x i64>
  %i.bl = or <4 x i64> %i.bk, splat (i64 -72057589759737856)
  %i.bm = or disjoint <4 x i64> %i.bl, %i.bj
  store <4 x i64> %i.bm, ptr %.2113, align 1, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %.2113, i64 32 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 32
  br i1 %.not, label %.loopexit.loopexit135, label %.lr.ph, !llvm.loop !38

.lr.ph130:                                        ; preds = %.lr.ph130.preheader, %.lr.ph130
  %indvars.iv164 = phi i64 [ 0, %.lr.ph130.preheader ], [ %indvars.iv.next165, %.lr.ph130 ] ; 2 uses
  %indvars.iv162 = phi i64 [ 32, %.lr.ph130.preheader ], [ %indvars.iv.next163, %.lr.ph130 ]
  %.3129 = phi ptr [ %3, %.lr.ph130.preheader ], [ %i.by, %.lr.ph130 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv164
  %i.bp = load <4 x i64>, ptr %i.bo, align 1, !tbaa !9
  %i.bq = shl <4 x i64> %i.bp, splat (i64 7)
  %i.br = bitcast <4 x i64> %i.bq to <32 x i8>
  %i.bs = icmp slt <32 x i8> %i.br, zeroinitializer
  %i.bt = bitcast <32 x i1> %i.bs to i32
  %i.bu = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %4 = shufflevector <4 x i32> %i.bu, <4 x i32> poison, <4 x i32> zeroinitializer
  %5 = shl <4 x i32> %4, <i32 8, i32 0, i32 0, i32 0>
  %i.bv = lshr <4 x i32> %5, <i32 0, i32 0, i32 8, i32 16>
  %i.bw = and <4 x i32> %i.bv, splat (i32 65280)
  %i.bx = or disjoint <4 x i32> %i.bw, splat (i32 -16777216)
  store <4 x i32> %i.bx, ptr %.3129, align 4, !tbaa !3
  %i.by = getelementptr inbounds nuw i8, ptr %.3129, i64 16 ; 2 uses
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 32 ; 2 uses
  %.not103 = icmp samesign ugt i64 %indvars.iv.next163, %i.d
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 32
  br i1 %.not103, label %.loopexit.loopexit, label %.lr.ph130, !llvm.loop !39

.loopexit.loopexit:                               ; preds = %.lr.ph130
  %i.bz = add nuw i32 %1, 2147483616
  %i.ca = and i32 %i.bz, 2147483616
  %narrow172 = add nuw i32 %i.ca, 32
  br label %.loopexit

.loopexit.loopexit133:                            ; preds = %.lr.ph124
  %i.cb = add nuw i32 %1, 2147483616
  %i.cc = and i32 %i.cb, 2147483616
  %narrow171 = add nuw i32 %i.cc, 32
  br label %.loopexit

.loopexit.loopexit134:                            ; preds = %.lr.ph118
  %i.cd = add nuw i32 %1, 2147483616
  %i.ce = and i32 %i.cd, 2147483616
  %narrow170 = add nuw i32 %i.ce, 32
  br label %.loopexit

.loopexit.loopexit135:                            ; preds = %.lr.ph
  %i.cf = add nuw i32 %1, 2147483616
  %i.cg = and i32 %i.cf, 2147483616
  %narrow = add nuw i32 %i.cg, 32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit135, %.loopexit.loopexit134, %.loopexit.loopexit133, %.loopexit.loopexit, %.preheader109, %.preheader107, %.preheader105, %.preheader
  %.495 = phi i32 [ %narrow172, %.loopexit.loopexit ], [ %narrow170, %.loopexit.loopexit134 ], [ %narrow171, %.loopexit.loopexit133 ], [ 0, %.preheader ], [ 0, %.preheader105 ], [ 0, %.preheader107 ], [ 0, %.preheader109 ], [ %narrow, %.loopexit.loopexit135 ] ; 3 uses
  %.4 = phi ptr [ %i.by, %.loopexit.loopexit ], [ %i.bd, %.loopexit.loopexit134 ], [ %i.al, %.loopexit.loopexit133 ], [ %3, %.preheader ], [ %3, %.preheader105 ], [ %3, %.preheader107 ], [ %3, %.preheader109 ], [ %i.bn, %.loopexit.loopexit135 ]
  %.not104 = icmp eq i32 %.495, %1
  br i1 %.not104, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.ch = load ptr, ptr @VP8LBundleColorMap_SSE, align 8, !tbaa !7
  %i.ci = zext nneg i32 %.495 to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ci
  %i.ck = sub nsw i32 %1, %.495
  tail call void %i.ch(ptr noundef %i.cj, i32 noundef %i.ck, i32 noundef %2, ptr noundef %.4) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub0_AVX2(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not20 = icmp slt i32 %2, 8
  br i1 %.not20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv22 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next23, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv22
  %i.c = load <32 x i8>, ptr %i.b, align 1, !tbaa !9
  %i.d = add <32 x i8> %i.c, <i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1>
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv22
  store <32 x i8> %i.d, ptr %i.e, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !40

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.f = add nuw i32 %2, 2147483640
  %i.g = and i32 %i.f, 2147483640
  %narrow = add nuw i32 %i.g, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not19 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not19, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.h = load ptr, ptr @VP8LPredictorsSub_SSE, align 16, !tbaa !7
  %i.i = zext nneg i32 %.0.lcssa to i64           ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %i.k = sub nsw i32 %2, %.0.lcssa
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.i
  tail call void %i.h(ptr noundef %i.j, ptr noundef null, i32 noundef %i.k, ptr noundef %i.l) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub1_AVX2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not25 = icmp slt i32 %2, 8
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv27 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next28, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv27 ; 2 uses
  %i.c = load <32 x i8>, ptr %i.b, align 1, !tbaa !9
  %i.d = getelementptr i8, ptr %i.b, i64 -4
  %i.e = load <32 x i8>, ptr %i.d, align 1, !tbaa !9
  %i.f = sub <32 x i8> %i.c, %i.e
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv27
  store <32 x i8> %i.f, ptr %i.g, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.h = add nuw i32 %2, 2147483640
  %i.i = and i32 %i.h, 2147483640
  %narrow = add nuw i32 %i.i, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not24 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_SSE, i64 8), align 8, !tbaa !7
  %i.k = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = icmp eq ptr %1, null
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  %i.o = select i1 %i.m, ptr null, ptr %i.n
  %i.p = sub nsw i32 %2, %.0.lcssa
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.k
  tail call void %i.j(ptr noundef %i.l, ptr noundef %i.o, i32 noundef %i.p, ptr noundef %i.q) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub2_AVX2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not25 = icmp slt i32 %2, 8
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv27 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next28, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv27
  %i.c = load <32 x i8>, ptr %i.b, align 1, !tbaa !9
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv27
  %i.e = load <32 x i8>, ptr %i.d, align 1, !tbaa !9
  %i.f = sub <32 x i8> %i.c, %i.e
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv27
  store <32 x i8> %i.f, ptr %i.g, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !42

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.h = add nuw i32 %2, 2147483640
  %i.i = and i32 %i.h, 2147483640
  %narrow = add nuw i32 %i.i, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not24 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_SSE, i64 16), align 16, !tbaa !7
  %i.k = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = icmp eq ptr %1, null
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  %i.o = select i1 %i.m, ptr null, ptr %i.n
  %i.p = sub nsw i32 %2, %.0.lcssa
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.k
  tail call void %i.j(ptr noundef %i.l, ptr noundef %i.o, i32 noundef %i.p, ptr noundef %i.q) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
end_hunk_0
