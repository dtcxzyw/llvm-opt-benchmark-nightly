loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Fxu_PairHashKeyArray:bb.a
  %.121.ph = phi i32 [ %.0.lcssa, %.lr.ph22.preheader ], [ %i.y, %middle.block51 ]
  br label %.lr.ph22

.lr.ph:                                           ; preds = %.lr.ph.preheader59, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader59 ] ; 3 uses
  %.019 = phi i32 [ %i.af, %.lr.ph ], [ %.019.ph, %.lr.ph.preheader59 ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @s_Primes, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 400
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !19
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !19
  %i.ae = mul nsw i32 %i.ad, %i.ab
  %i.af = xor i32 %i.ae, %.019                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !25

.lr.ph22:                                         ; preds = %.lr.ph22.preheader56, %.lr.ph22
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %.lr.ph22 ], [ %indvars.iv26.ph, %.lr.ph22.preheader56 ] ; 3 uses
  %.121 = phi i32 [ %i.am, %.lr.ph22 ], [ %.121.ph, %.lr.ph22.preheader56 ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @s_Primes, i64 %indvars.iv26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 800
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !19
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv26
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !19
  %i.al = mul nsw i32 %i.ak, %i.ai
  %i.am = xor i32 %i.al, %.121                    ; 2 uses
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1 ; 2 uses
  %exitcond30.not = icmp eq i64 %indvars.iv.next27, %wide.trip.count29
  br i1 %exitcond30.not, label %._crit_edge, label %.lr.ph22, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph22, %middle.block51, %.preheader
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ %i.y, %middle.block51 ], [ %i.am, %.lr.ph22 ]
  ret i32 %.1.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Fxu_PairHashKey(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %.outer

.outer:                                           ; preds = %bb.d, %bb.a
  %.058.ph = phi i32 [ %i.j, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.056.ph = phi i32 [ %.056.ph65, %bb.d ], [ 0, %bb.a ]
  %.054.ph = phi i32 [ %.054, %bb.d ], [ 0, %bb.a ]
  %.052.ph.in = phi ptr [ %i.h, %bb.d ], [ %i.a, %bb.a ]
  %.050.ph.in = phi ptr [ %i.i, %bb.d ], [ %i.b, %bb.a ]
  %.0.ph = phi i32 [ %.0, %bb.d ], [ 0, %bb.a ]
  %.050.ph = load ptr, ptr %.050.ph.in, align 8, !tbaa !11
  br label %.outer64

.outer64:                                         ; preds = %.outer64.backedge, %.outer
  %.056.ph65 = phi i32 [ %.056.ph, %.outer ], [ %.056.ph65.be, %.outer64.backedge ] ; 5 uses
  %.054.ph66 = phi i32 [ %.054.ph, %.outer ], [ %.054, %.outer64.backedge ]
  %.052.ph67.in = phi ptr [ %.052.ph.in, %.outer ], [ %.052.ph67.be.in, %.outer64.backedge ]
  %.050.ph68 = phi ptr [ %.050.ph, %.outer ], [ %.050.ph68.be, %.outer64.backedge ]
  %.0.ph69 = phi i32 [ %.0.ph, %.outer ], [ %.0.ph69.be, %.outer64.backedge ]
  %.052.ph67 = load ptr, ptr %.052.ph67.in, align 8, !tbaa !11
  br label %.outer70

.outer70:                                         ; preds = %.outer64, %bb.k
  %.054.ph71 = phi i32 [ %.054.ph66, %.outer64 ], [ %i.ap, %bb.k ]
  %.052.ph72 = phi ptr [ %.052.ph67, %.outer64 ], [ null, %bb.k ] ; 6 uses
  %.050.ph73 = phi ptr [ %.050.ph68, %.outer64 ], [ %i.ao, %bb.k ]
  %.0.ph74 = phi i32 [ %.0.ph69, %.outer64 ], [ %i.am, %bb.k ]
  %i.c = icmp ne ptr %.052.ph72, null
  br label %bb.b

bb.b:                                             ; preds = %.outer70, %bb.g
  %.054 = phi i32 [ %i.y, %bb.g ], [ %.054.ph71, %.outer70 ] ; 7 uses
  %.050 = phi ptr [ %i.x, %bb.g ], [ %.050.ph73, %.outer70 ] ; 7 uses
  %.0 = phi i32 [ %i.v, %bb.g ], [ %.0.ph74, %.outer70 ] ; 5 uses
  %i.d = icmp ne ptr %.050, null                  ; 3 uses
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %.052.ph72, align 8, !tbaa !13 ; 3 uses
  %i.f = load i32, ptr %.050, align 8, !tbaa !13  ; 3 uses
  %i.g = icmp eq i32 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.052.ph72, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %.050, i64 32
  %i.j = add nuw nsw i32 %.058.ph, 1
  br label %.outer

bb.e:                                             ; preds = %bb.c
  %i.k = icmp slt i32 %i.e, %i.f
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = sext i32 %.056.ph65 to i64
  %i.m = getelementptr [4 x i8], ptr @s_Primes, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 400
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19
  %i.p = mul nsw i32 %i.o, %i.e
  br label %.outer64.backedge

bb.g:                                             ; preds = %bb.e
  %i.q = sext i32 %.054 to i64
  %i.r = getelementptr [4 x i8], ptr @s_Primes, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 800
  %i.t = load i32, ptr %i.s, align 4, !tbaa !19
  %i.u = mul nsw i32 %i.t, %i.f
  %i.v = xor i32 %i.u, %.0
  %i.w = getelementptr inbounds nuw i8, ptr %.050, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.y = add nsw i32 %.054, 1
  br label %bb.b

bb.h:                                             ; preds = %bb.b
  %i.z = icmp eq ptr %.052.ph72, null             ; 2 uses
  %or.cond3 = select i1 %i.z, i1 true, i1 %i.d
  br i1 %or.cond3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = sext i32 %.056.ph65 to i64
  %i.ab = getelementptr [4 x i8], ptr @s_Primes, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 400
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !19
  %i.ae = load i32, ptr %.052.ph72, align 8, !tbaa !13
  %i.af = mul nsw i32 %i.ae, %i.ad
  br label %.outer64.backedge

.outer64.backedge:                                ; preds = %bb.i, %bb.f
  %.050.ph68.be = phi ptr [ %.050, %bb.f ], [ null, %bb.i ]
  %.pn = phi i32 [ %i.p, %bb.f ], [ %i.af, %bb.i ]
  %.0.ph69.be = xor i32 %.pn, %.0
  %.052.ph67.be.in = getelementptr inbounds nuw i8, ptr %.052.ph72, i64 32
  %.056.ph65.be = add nsw i32 %.056.ph65, 1
  br label %.outer64

bb.j:                                             ; preds = %bb.h
  %or.cond5 = select i1 %i.z, i1 %i.d, i1 false
  br i1 %or.cond5, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = sext i32 %.054 to i64
  %i.ah = getelementptr [4 x i8], ptr @s_Primes, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 800
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !19
  %i.ak = load i32, ptr %.050, align 8, !tbaa !13
  %i.al = mul nsw i32 %i.ak, %i.aj
  %i.am = xor i32 %i.al, %.0
  %i.an = getelementptr inbounds nuw i8, ptr %.050, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27
  %i.ap = add nsw i32 %.054, 1
  br label %.outer70

bb.l:                                             ; preds = %bb.j
  store i32 %.058.ph, ptr %3, align 4, !tbaa !19
  store i32 %.056.ph65, ptr %4, align 4, !tbaa !19
  store i32 %.054, ptr %5, align 4, !tbaa !19
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Fxu_PairCompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !28
  %i.b = load i32, ptr %1, align 8, !tbaa !28
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32
  %.not177 = icmp eq i32 %i.d, %i.f
  br i1 %.not177, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %bb.c
  %.1149.sink = phi ptr [ %i.j, %bb.c ], [ %.1149.sink.be, %.backedge ] ; 24 uses
  %.1147.sink = phi ptr [ %i.n, %bb.c ], [ %.1147.sink.be, %.backedge ] ; 24 uses
  %.1145.sink = phi ptr [ %i.r, %bb.c ], [ %.1145.sink.be, %.backedge ] ; 24 uses
  %.1.sink = phi ptr [ %i.v, %bb.c ], [ %.1.sink.be, %.backedge ] ; 24 uses
  %2 = insertelement <4 x ptr> poison, ptr %.1.sink, i64 0
  %3 = insertelement <4 x ptr> %2, ptr %.1147.sink, i64 1
  %4 = insertelement <4 x ptr> %3, ptr %.1149.sink, i64 2
  %5 = insertelement <4 x ptr> %4, ptr %.1145.sink, i64 3
  %.not222 = icmp eq <4 x ptr> %5, splat (ptr null)
  %6 = select <4 x i1> %.not222, <4 x i32> zeroinitializer, <4 x i32> <i32 1, i32 4, i32 8, i32 2>
  %7 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %6)
  switch i32 %7, label %default.unreachable216 [
    i32 0, label %.loopexit.loopexit
    i32 1, label %.loopexit
    i32 2, label %.loopexit
    i32 3, label %bb.e
    i32 4, label %.loopexit
    i32 5, label %bb.g
    i32 6, label %.loopexit
    i32 7, label %bb.i
    i32 8, label %.loopexit
    i32 9, label %.loopexit
    i32 10, label %bb.n
    i32 11, label %bb.p
    i32 12, label %bb.u
    i32 13, label %bb.w
    i32 14, label %bb.ab
    i32 15, label %bb.ag
  ]

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %.1145.sink, align 8, !tbaa !13
  %i.x = load i32, ptr %.1.sink, align 8, !tbaa !13
  %.not196 = icmp eq i32 %i.w, %i.x
  br i1 %.not196, label %bb.f, label %.loopexit.loopexit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.1145.sink, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.sink, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !27
  br label %.backedge

bb.g:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %.1147.sink, align 8, !tbaa !13
  %i.ad = load i32, ptr %.1.sink, align 8, !tbaa !13
  %.not195 = icmp eq i32 %i.ac, %i.ad
  br i1 %.not195, label %bb.h, label %.loopexit.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.1147.sink, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.sink, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !27
  br label %.backedge

bb.i:                                             ; preds = %bb.d
  %i.ai = load i32, ptr %.1145.sink, align 8, !tbaa !13 ; 3 uses
  %i.aj = load i32, ptr %.1.sink, align 8, !tbaa !13 ; 3 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.aj) ; 2 uses
  %i.ak = load i32, ptr %.1147.sink, align 8, !tbaa !13 ; 2 uses
  %i.al = icmp eq i32 %., %i.ak
  br i1 %i.al, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.not194 = icmp sgt i32 %i.ai, %i.aj
  br i1 %.not194, label %bb.k, label %.loopexit.loopexit

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.1147.sink, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.sink, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !27
  br label %.backedge

bb.l:                                             ; preds = %bb.i
  %i.aq = icmp slt i32 %., %i.ak
  %.not193 = icmp eq i32 %i.ai, %i.aj
  %or.cond = and i1 %.not193, %i.aq
  br i1 %or.cond, label %bb.m, label %.loopexit.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %.1145.sink, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %.1.sink, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !27
  br label %.backedge

bb.n:                                             ; preds = %bb.d
  %i.av = load i32, ptr %.1149.sink, align 8, !tbaa !13
  %i.aw = load i32, ptr %.1145.sink, align 8, !tbaa !13
  %.not192 = icmp eq i32 %i.av, %i.aw
  br i1 %.not192, label %bb.o, label %.loopexit.loopexit

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %.1149.sink, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %.1145.sink, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !27
  br label %.backedge

bb.p:                                             ; preds = %bb.d
  %i.bb = load i32, ptr %.1145.sink, align 8, !tbaa !13 ; 3 uses
  %i.bc = load i32, ptr %.1.sink, align 8, !tbaa !13 ; 3 uses
  %.201 = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.bc) ; 2 uses
  %i.bd = load i32, ptr %.1149.sink, align 8, !tbaa !13 ; 2 uses
  %i.be = icmp eq i32 %.201, %i.bd
  br i1 %i.be, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bf = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bf, label %bb.r, label %.loopexit.loopexit

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %.1149.sink, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %.1145.sink, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !27
  br label %.backedge

bb.s:                                             ; preds = %bb.p
  %i.bk = icmp slt i32 %.201, %i.bd
  %.not190 = icmp eq i32 %i.bb, %i.bc
  %or.cond205 = and i1 %.not190, %i.bk
  br i1 %or.cond205, label %bb.t, label %.loopexit.loopexit

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %.1145.sink, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %.1.sink, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !27
  br label %.backedge

bb.u:                                             ; preds = %bb.d
  %i.bp = load i32, ptr %.1149.sink, align 8, !tbaa !13
  %i.bq = load i32, ptr %.1147.sink, align 8, !tbaa !13
  %.not189 = icmp eq i32 %i.bp, %i.bq
  br i1 %.not189, label %bb.v, label %.loopexit.loopexit

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %.1149.sink, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %.1147.sink, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !27
  br label %.backedge

bb.w:                                             ; preds = %bb.d
  %i.bv = load i32, ptr %.1149.sink, align 8, !tbaa !13 ; 3 uses
  %i.bw = load i32, ptr %.1147.sink, align 8, !tbaa !13 ; 3 uses
  %.202 = tail call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.bw) ; 2 uses
  %i.bx = load i32, ptr %.1.sink, align 8, !tbaa !13 ; 2 uses
  %i.by = icmp eq i32 %.202, %i.bx
  br i1 %i.by, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %.not188 = icmp sgt i32 %i.bv, %i.bw
  br i1 %.not188, label %bb.y, label %.loopexit.loopexit

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %.1147.sink, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !27
  %i.cb = getelementptr inbounds nuw i8, ptr %.1.sink, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !27
  br label %.backedge

bb.z:                                             ; preds = %bb.w
  %i.cd = icmp slt i32 %.202, %i.bx
  %.not187 = icmp eq i32 %i.bv, %i.bw
  %or.cond206 = and i1 %.not187, %i.cd
  br i1 %or.cond206, label %bb.aa, label %.loopexit.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %.1149.sink, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !27
  %i.cg = getelementptr inbounds nuw i8, ptr %.1147.sink, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !27
  br label %.backedge

bb.ab:                                            ; preds = %bb.d
  %i.ci = load i32, ptr %.1149.sink, align 8, !tbaa !13 ; 3 uses
  %i.cj = load i32, ptr %.1147.sink, align 8, !tbaa !13 ; 3 uses
  %.203 = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.cj) ; 2 uses
  %i.ck = load i32, ptr %.1145.sink, align 8, !tbaa !13 ; 2 uses
  %i.cl = icmp eq i32 %.203, %i.ck
  br i1 %i.cl, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cm = icmp slt i32 %i.ci, %i.cj
  br i1 %i.cm, label %bb.ad, label %.loopexit.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.cn = getelementptr inbounds nuw i8, ptr %.1149.sink, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !27
  %i.cp = getelementptr inbounds nuw i8, ptr %.1145.sink, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !27
  br label %.backedge

bb.ae:                                            ; preds = %bb.ab
  %i.cr = icmp slt i32 %.203, %i.ck
  %.not185 = icmp eq i32 %i.ci, %i.cj
  %or.cond207 = and i1 %.not185, %i.cr
  br i1 %or.cond207, label %bb.af, label %.loopexit.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.cs = getelementptr inbounds nuw i8, ptr %.1149.sink, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !27
  %i.cu = getelementptr inbounds nuw i8, ptr %.1147.sink, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !27
  br label %.backedge

bb.ag:                                            ; preds = %bb.d
  %i.cw = load i32, ptr %.1149.sink, align 8, !tbaa !13 ; 4 uses
end_hunk_0
begin_hunk_1_@Fxu_PairAllocStorage:bb.a
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod19 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod19)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %store_forwarded.epil = phi ptr [ %store_forwarded.epil.init, %.lr.ph.epil.preheader ], [ %i.am, %.lr.ph.epil ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.al = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.epil
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %store_forwarded.epil, i64 %i.b ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !42
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !45

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Fxu_PairClearStorage(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 6 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !16
  %i.i = sext i32 %i.h to i64                     ; 6 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.l = icmp ult i32 %i.d, 4
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store ptr null, ptr %i.m, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.i
  store ptr null, ptr %i.p, align 8, !tbaa !48
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next
  store ptr null, ptr %i.q, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42
  %i.t = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.i
  store ptr null, ptr %i.t, align 8, !tbaa !48
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.1
  store ptr null, ptr %i.u, align 8, !tbaa !48
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.1
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.i
  store ptr null, ptr %i.x, align 8, !tbaa !48
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.2
  store ptr null, ptr %i.y, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.2
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.i
  store ptr null, ptr %i.ab, align 8, !tbaa !48
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !49

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.epil
  store ptr null, ptr %i.ac, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.epil
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.i
  store ptr null, ptr %i.af, align 8, !tbaa !48
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !50

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @Fxu_PairFreeStorage(ptr nofree noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %.not9 = icmp eq ptr %i.c, null
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.c) #16
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  tail call void @free(ptr noundef nonnull %i.e) #16
  store ptr null, ptr %i.a, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define noundef ptr @Fxu_PairAlloc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call ptr @Fxu_MemFetch(ptr noundef %0, i32 noundef 64) #16 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.c, align 8, !tbaa !35
  %i.d = load i32, ptr %1, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %i.d, ptr %i.e, align 8, !tbaa !51
  %i.f = load i32, ptr %2, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %i.f, ptr %i.g, align 4, !tbaa !52
  ret ptr %i.a
}

declare ptr @Fxu_MemFetch(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Fxu_PairAdd(ptr noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !51
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !52
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.n
  store ptr %0, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.i
  store ptr %0, ptr %i.r, align 8, !tbaa !48
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS7FxuCube", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS6FxuLit", !10, i64 0}
!13 = !{!14, !5, i64 0}
!14 = !{!"FxuLit", !5, i64 0, !5, i64 4, !9, i64 8, !15, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!15 = !{!"p1 _ZTS6FxuVar", !10, i64 0}
!16 = !{!17, !5, i64 0}
!17 = !{!"FxuCube", !5, i64 0, !9, i64 8, !15, i64 16, !18, i64 24, !9, i64 48, !9, i64 56, !9, i64 64}
!18 = !{!"FxuListLit", !12, i64 0, !12, i64 8, !5, i64 16}
!19 = !{!5, !5, i64 0}
!20 = distinct !{!20, !21, !22, !23}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !21, !22, !23}
!25 = distinct !{!25, !21, !23, !22}
!26 = distinct !{!26, !21, !23, !22}
!27 = !{!14, !12, i64 32}
!28 = !{!29, !5, i64 0}
!29 = !{!"FxuPair", !5, i64 0, !5, i64 4, !5, i64 8, !30, i64 16, !9, i64 24, !9, i64 32, !5, i64 40, !5, i64 44, !31, i64 48, !31, i64 56}
!30 = !{!"p1 _ZTS9FxuDouble", !10, i64 0}
!31 = !{!"p1 _ZTS7FxuPair", !10, i64 0}
!32 = !{!29, !5, i64 4}
!33 = !{!29, !9, i64 24}
!34 = !{!17, !12, i64 24}
!35 = !{!29, !9, i64 32}
!36 = !{!37, !5, i64 4}
!37 = !{!"FxuVar", !5, i64 0, !5, i64 4, !9, i64 8, !38, i64 16, !18, i64 24, !15, i64 48, !15, i64 56, !15, i64 64}
!38 = !{!"p3 _ZTS7FxuPair", !39, i64 0}
!39 = !{!"any p3 pointer", !40, i64 0}
!40 = !{!"any p2 pointer", !10, i64 0}
!41 = !{!37, !38, i64 16}
!42 = !{!43, !43, i64 0}
!43 = !{!"p2 _ZTS7FxuPair", !40, i64 0}
!44 = distinct !{!44, !21}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!17, !15, i64 16}
!48 = !{!31, !31, i64 0}
!49 = distinct !{!49, !21}
!50 = distinct !{!50, !46}
!51 = !{!29, !5, i64 40}
!52 = !{!29, !5, i64 44}
end_hunk_1
