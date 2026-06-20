inline.NumInlined: 16
inline.NumDeleted: 4
begin_hunk_0_@AddVector_AVX2:bb.a
  %i.ba = trunc i64 %n.vec to i32
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
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %._crit_edge ] ; 6 uses
  %.05979 = phi i64 [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.06078 = phi i32 [ 0, %bb.a ], [ %.161.lcssa, %._crit_edge ] ; 2 uses
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
  br i1 %.not70, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  %.pre = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %VP8LFastSLog2.exit67
  %.174 = phi i64 [ %i.bi, %VP8LFastSLog2.exit67 ], [ %.05979, %.lr.ph.preheader ] ; 2 uses
  %.16173 = phi i32 [ %i.ba, %VP8LFastSLog2.exit67 ], [ %.06078, %.lr.ph.preheader ]
  %.06272 = phi i32 [ %i.bk, %VP8LFastSLog2.exit67 ], [ %i.ag, %.lr.ph.preheader ] ; 3 uses
  %.16471 = phi i32 [ %.265, %VP8LFastSLog2.exit67 ], [ %.06377, %.lr.ph.preheader ] ; 2 uses
  %i.ah = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %.06272, i1 true) ; 3 uses
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = and i32 %i.ai, %i.ac
  %.not66 = icmp eq i32 %i.aj, 0
  br i1 %.not66, label %.lr.ph._crit_edge, label %bb.c

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre83 = or disjoint i32 %i.ah, %.pre
  %.pre85 = zext nneg i32 %.pre83 to i64
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %3 = or disjoint i32 %i.ah, %2
  %4 = zext nneg i32 %3 to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3  ; 4 uses
  %i.am = add i32 %i.al, %.16471
  %i.an = icmp ult i32 %i.al, 256
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = zext nneg i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @kSLog2Table, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !29
  br label %VP8LFastSLog2.exit

bb.e:                                             ; preds = %bb.c
  %i.ar = load ptr, ptr @VP8LFastSLog2Slow, align 8, !tbaa !7
  %i.as = tail call i64 %i.ar(i32 noundef %i.al) #6, !inline_history !31
  br label %VP8LFastSLog2.exit

VP8LFastSLog2.exit:                               ; preds = %bb.d, %bb.e
  %i.at = phi i64 [ %i.aq, %bb.d ], [ %i.as, %bb.e ]
  %i.au = add i64 %i.at, %.174
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph._crit_edge, %VP8LFastSLog2.exit
  %.pre-phi86 = phi i64 [ %.pre85, %.lr.ph._crit_edge ], [ %4, %VP8LFastSLog2.exit ] ; 2 uses
  %.265 = phi i32 [ %.16471, %.lr.ph._crit_edge ], [ %i.am, %VP8LFastSLog2.exit ] ; 2 uses
  %.2 = phi i64 [ %.174, %.lr.ph._crit_edge ], [ %i.au, %VP8LFastSLog2.exit ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.pre-phi86
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pre-phi86
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = add i32 %i.ay, %i.aw                    ; 4 uses
  %i.ba = add i32 %i.az, %.16173                  ; 2 uses
  %i.bb = icmp ult i32 %i.az, 256
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = zext nneg i32 %i.az to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @kSLog2Table, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !29
  br label %VP8LFastSLog2.exit67

bb.h:                                             ; preds = %bb.f
  %i.bf = load ptr, ptr @VP8LFastSLog2Slow, align 8, !tbaa !7
  %i.bg = tail call i64 %i.bf(i32 noundef %i.az) #6, !inline_history !31
  br label %VP8LFastSLog2.exit67

VP8LFastSLog2.exit67:                             ; preds = %bb.g, %bb.h
  %i.bh = phi i64 [ %i.be, %bb.g ], [ %i.bg, %bb.h ]
  %i.bi = add i64 %i.bh, %.2                      ; 2 uses
  %i.bj = add i32 %.06272, -1
  %i.bk = and i32 %i.bj, %.06272                  ; 2 uses
  %.not = icmp eq i32 %i.bk, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %VP8LFastSLog2.exit67, %bb.b
  %.164.lcssa = phi i32 [ %.06377, %bb.b ], [ %.265, %VP8LFastSLog2.exit67 ] ; 4 uses
  %.161.lcssa = phi i32 [ %.06078, %bb.b ], [ %i.ba, %VP8LFastSLog2.exit67 ] ; 4 uses
  %.1.lcssa = phi i64 [ %.05979, %bb.b ], [ %i.bi, %VP8LFastSLog2.exit67 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.bl = icmp samesign ult i64 %indvars.iv, 224
  br i1 %i.bl, label %bb.b, label %bb.i, !llvm.loop !33

bb.i:                                             ; preds = %._crit_edge
  %i.bm = icmp ult i32 %.161.lcssa, 256
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bn = zext nneg i32 %.161.lcssa to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @kSLog2Table, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !29
  br label %VP8LFastSLog2.exit68

bb.k:                                             ; preds = %bb.i
  %i.bq = load ptr, ptr @VP8LFastSLog2Slow, align 8, !tbaa !7
  %i.br = tail call i64 %i.bq(i32 noundef %.161.lcssa) #6, !inline_history !31
  br label %VP8LFastSLog2.exit68

VP8LFastSLog2.exit68:                             ; preds = %bb.j, %bb.k
  %i.bs = phi i64 [ %i.bp, %bb.j ], [ %i.br, %bb.k ]
  %i.bt = icmp ult i32 %.164.lcssa, 256
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %VP8LFastSLog2.exit68
  %i.bu = zext nneg i32 %.164.lcssa to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @kSLog2Table, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !29
  br label %VP8LFastSLog2.exit69

bb.m:                                             ; preds = %VP8LFastSLog2.exit68
  %i.bx = load ptr, ptr @VP8LFastSLog2Slow, align 8, !tbaa !7
  %i.by = tail call i64 %i.bx(i32 noundef %.164.lcssa) #6, !inline_history !31
  br label %VP8LFastSLog2.exit69

VP8LFastSLog2.exit69:                             ; preds = %bb.l, %bb.m
  %i.bz = phi i64 [ %i.bw, %bb.l ], [ %i.by, %bb.m ]
  %i.ca = sub i64 %i.bs, %.1.lcssa
  %i.cb = add i64 %i.ca, %i.bz
  ret i64 %i.cb
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @VectorMismatch_AVX2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = icmp sgt i32 %2, 23
  br i1 %i.a, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a, %bb.b
  %.040.in = phi ptr [ %i.r, %bb.b ], [ %1, %bb.a ]
  %.038.in = phi ptr [ %i.q, %bb.b ], [ %0, %bb.a ]
  %.0 = phi i32 [ %.45, %bb.b ], [ 0, %bb.a ]     ; 3 uses
  %.03853 = load <8 x i32>, ptr %.038.in, align 1, !tbaa !9
  %.04052 = load <8 x i32>, ptr %.040.in, align 1, !tbaa !9
  %i.b = icmp eq <8 x i32> %.03853, %.04052
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
  %.45 = select i1 %.not44, i32 %i.o, i32 %i.g    ; 3 uses
  %i.v = add nsw i32 %.45, 24
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
  %.3 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ %spec.select, %bb.f ], [ 8, %bb.e ], [ %.0, %.preheader ], [ %.45, %bb.b ] ; 3 uses
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

end_hunk_0
