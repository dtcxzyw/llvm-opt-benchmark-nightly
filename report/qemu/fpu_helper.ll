inline.NumInlined: 830
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 540
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 554
begin_hunk_0_@helper_dpps_xmm:bb.a
  %i.bf = shufflevector <4 x i32> %i.be, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bg = select <4 x i1> %i.bd, <4 x i32> zeroinitializer, <4 x i32> %i.bf
  store <4 x i32> %i.bg, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_dppd_xmm(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %4, 16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8
  %i.c = load i64, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.e = tail call i64 @float64_mul(i64 noundef %i.b, i64 noundef %i.c, ptr noundef nonnull %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = and i32 %4, 32
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.l = tail call i64 @float64_mul(i64 noundef %i.h, i64 noundef %i.j, ptr noundef nonnull %i.k) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %i.l, %bb.d ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.n = tail call i64 @float64_add(i64 noundef %.016, i64 noundef %.0, ptr noundef nonnull %i.m) #26 ; 2 uses
  %i.o = and i32 %4, 1
  %.not18 = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not18, i64 0, i64 %i.n
  store i64 %i.p, ptr %1, align 8
  %i.q = and i32 %4, 2
  %.not19 = icmp eq i32 %i.q, 0
  %i.r = select i1 %.not19, i64 0, i64 %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.r, ptr %i.s, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_mpsadbw_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #6 {
.preheader.preheader:
  %i.a = shl i32 %4, 2
  %i.b = and i32 %i.a, 12
  %i.c = and i32 %4, 4                            ; 4 uses
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %i.d
  %i.f = load <4 x i8>, ptr %i.e, align 1
  %i.g = zext <4 x i8> %i.f to <4 x i16>          ; 4 uses
  %i.h = zext nneg i32 %i.c to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = zext nneg i32 %i.c to i64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = zext nneg i32 %i.c to i64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.p = zext nneg i32 %i.c to i64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.s = load <8 x i8>, ptr %i.i, align 1
  %i.t = load <8 x i8>, ptr %i.l, align 1
  %i.u = load <8 x i8>, ptr %i.o, align 1
  %i.v = load <8 x i8>, ptr %i.r, align 1
  %i.w = zext <8 x i8> %i.s to <8 x i16>
  %i.x = zext <8 x i8> %i.t to <8 x i16>
  %i.y = zext <8 x i8> %i.u to <8 x i16>
  %i.z = zext <8 x i8> %i.v to <8 x i16>
  %i.aa = shufflevector <4 x i16> %i.g, <4 x i16> poison, <8 x i32> zeroinitializer
  %i.ab = sub nsw <8 x i16> %i.w, %i.aa
  %i.ac = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ab, i1 true)
  %i.ad = shufflevector <4 x i16> %i.g, <4 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ae = sub nsw <8 x i16> %i.x, %i.ad
  %i.af = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ae, i1 true)
  %i.ag = add nuw nsw <8 x i16> %i.af, %i.ac
  %i.ah = shufflevector <4 x i16> %i.g, <4 x i16> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ai = sub nsw <8 x i16> %i.y, %i.ah
  %i.aj = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ai, i1 true)
  %i.ak = add nuw nsw <8 x i16> %i.aj, %i.ag
  %i.al = shufflevector <4 x i16> %i.g, <4 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.am = sub nsw <8 x i16> %i.z, %i.al
  %i.an = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.am, i1 true)
  %i.ao = add nuw nsw <8 x i16> %i.an, %i.ak
  store <8 x i16> %i.ao, ptr %1, align 2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_pcmpestri_xmm(ptr nofree noundef captures(none) initializes((8, 16), (280, 288), (296, 300)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = trunc i32 %3 to i8
  %.not.i = icmp ult i32 %3, 256                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %sext.i = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext.i, 32
  %.012.i = select i1 %.not.i, i64 %i.d, i64 %i.c ; 3 uses
  %i.e = and i32 %3, 1                            ; 2 uses
  %.not14.i = icmp eq i32 %i.e, 0                 ; 2 uses
  %..neg.i = select i1 %.not14.i, i64 -16, i64 -8 ; 2 uses
  %..i = select i1 %.not14.i, i64 16, i64 8       ; 3 uses
  %i.f = icmp sgt i64 %.012.i, %..i
  %i.g = icmp slt i64 %.012.i, %..neg.i
  %or.cond.i = or i1 %i.f, %i.g
  %i.h = trunc nuw nsw i64 %..i to i32            ; 2 uses
  %i.i = trunc nsw i64 %.012.i to i32
  %.0.i.i = tail call range(i32 0, 256) i32 @llvm.abs.i32(i32 range(i32 -255, 256) %i.i, i1 true)
  %.013.i = select i1 %or.cond.i, i32 %i.h, i32 %.0.i.i
  %i.j = load i64, ptr %0, align 8                ; 2 uses
  %sext.i16 = shl i64 %i.j, 32
  %i.k = ashr exact i64 %sext.i16, 32
  %.012.i17 = select i1 %.not.i, i64 %i.k, i64 %i.j ; 3 uses
  %i.l = icmp sgt i64 %.012.i17, %..i
  %i.m = icmp slt i64 %.012.i17, %..neg.i
  %or.cond.i21 = or i1 %i.l, %i.m
  %i.n = trunc nsw i64 %.012.i17 to i32
  %.0.i.i22 = tail call range(i32 0, 256) i32 @llvm.abs.i32(i32 range(i32 -255, 256) %i.n, i1 true)
  %.013.i23 = select i1 %or.cond.i21, i32 %i.h, i32 %.0.i.i22
  %i.o = tail call fastcc i32 @pcmpxstrx(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %i.a, i32 noundef %.013.i, i32 noundef %.013.i23) ; 3 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = and i32 %3, 64
  %.not14 = icmp eq i32 %i.p, 0
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.o, i1 true)
  %i.r = xor i32 %i.q, 31
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.s = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %i.o, i1 true)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.t = lshr exact i32 16, %i.e
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.sink25 = phi i32 [ %i.t, %bb.e ], [ %i.r, %bb.c ], [ %i.s, %bb.d ]
  %i.u = zext nneg i32 %.sink25 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal fastcc i32 @pcmpxstrx(ptr nofree noundef writeonly captures(none) initializes((280, 288), (296, 300)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) unnamed_addr #17 {
bb.a:
  %i.a = zext i8 %3 to i32                        ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, i32 15, i32 7           ; 6 uses
  %i.d = add i32 %4, -1                           ; 11 uses
  %i.e = add i32 %5, -1                           ; 12 uses
  %i.f = icmp slt i32 %i.d, %i.c
  %i.g = select i1 %i.f, i64 64, i64 0
  %i.h = icmp slt i32 %i.e, %i.c
  %i.i = select i1 %i.h, i64 128, i64 0
  %i.j = or disjoint i64 %i.g, %i.i               ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  store i64 %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.l, align 8
  %i.m = lshr i32 %i.a, 2
  %i.n = and i32 %i.m, 3
  switch i32 %i.n, label %default.unreachable363 [
    i32 0, label %.preheader
    i32 1, label %.preheader181
    i32 2, label %bb.v
    i32 3, label %bb.ab
  ]

.preheader181:                                    ; preds = %bb.a
  %i.o = icmp sgt i32 %i.d, -1
  br i1 %i.o, label %.lr.ph244, label %.loopexit

.lr.ph244:                                        ; preds = %.preheader181
  %i.p = and i8 %3, 3                             ; 3 uses
  %i.q = or i32 %5, 1                             ; 2 uses
  %.1129235 = add i32 %i.q, -2                    ; 2 uses
  %i.r = icmp sgt i32 %.1129235, -1
  br i1 %i.r, label %.lr.ph244.split.us, label %.loopexit

.lr.ph244.split.us:                               ; preds = %.lr.ph244
  %i.s = zext nneg i32 %.1129235 to i64
  %i.t = zext nneg i32 %i.d to i64
  br label %.lr.ph244.split.us.split.split.us

.lr.ph244.split.us.split.split.us:                ; preds = %.lr.ph244.split.us, %._crit_edge240.us.us
  %indvars.iv342 = phi i64 [ %i.t, %.lr.ph244.split.us ], [ %indvars.iv.next343, %._crit_edge240.us.us ] ; 6 uses
  %.2243.us.us = phi i32 [ 0, %.lr.ph244.split.us ], [ %i.bi, %._crit_edge240.us.us ]
  %i.u = shl i32 %.2243.us.us, 1
  switch i8 %i.p, label %.lr.ph244.split.us.split.split.us.unreachabledefault [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.c
    i8 3, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph244.split.us.split.split.us
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv342
  %i.w = load i16, ptr %i.v, align 2
  %i.x = sext i16 %i.w to i32
  br label %pcmp_val.exit143.us.us

bb.c:                                             ; preds = %.lr.ph244.split.us.split.split.us
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv342
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = sext i8 %i.z to i32
  br label %pcmp_val.exit143.us.us

bb.d:                                             ; preds = %.lr.ph244.split.us.split.split.us
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv342
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i32
  br label %pcmp_val.exit143.us.us

bb.e:                                             ; preds = %.lr.ph244.split.us.split.split.us
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv342
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  br label %pcmp_val.exit143.us.us

pcmp_val.exit143.us.us:                           ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i141.us.us = phi i32 [ %i.ag, %bb.e ], [ %i.ad, %bb.d ], [ %i.aa, %bb.c ], [ %i.x, %bb.b ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %pcmp_val.exit143.us.us, %bb.p
  %indvars.iv339.a = phi i64 [ %i.s, %pcmp_val.exit143.us.us ], [ %indvars.iv.next340, %bb.p ] ; 7 uses
  %.3237.us.us = phi i32 [ %i.u, %pcmp_val.exit143.us.us ], [ %i.bi, %bb.p ] ; 2 uses
  %.1129.in236.us.us = phi i32 [ %i.q, %pcmp_val.exit143.us.us ], [ %8, %bb.p ]
  switch i8 %i.p, label %.unreachabledefault [
    i8 0, label %bb.j
    i8 1, label %bb.i
    i8 2, label %bb.h
    i8 3, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv339.a
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = sext i16 %i.ai to i32
  br label %pcmp_val.exit146.us.us

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv339.a
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = sext i8 %i.al to i32
  br label %pcmp_val.exit146.us.us

bb.i:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv339.a
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = zext i16 %i.ao to i32
  br label %pcmp_val.exit146.us.us

bb.j:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv339.a
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  br label %pcmp_val.exit146.us.us

pcmp_val.exit146.us.us:                           ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.0.i144.us.us = phi i32 [ %i.as, %bb.j ], [ %i.ap, %bb.i ], [ %i.am, %bb.h ], [ %i.aj, %bb.g ]
  %.not134.us.us = icmp slt i32 %.0.i144.us.us, %.0.i141.us.us
  br i1 %.not134.us.us, label %bb.p, label %bb.k

bb.k:                                             ; preds = %pcmp_val.exit146.us.us
  %6 = add i32 %.1129.in236.us.us, -3
  %7 = sext i32 %6 to i64                         ; 4 uses
  switch i8 %i.p, label %.unreachabledefault390 [
    i8 0, label %bb.o
    i8 1, label %bb.n
    i8 2, label %bb.m
    i8 3, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds [2 x i8], ptr %1, i64 %7
  %i.au = load i16, ptr %i.at, align 2
  %i.av = sext i16 %i.au to i32
  br label %pcmp_val.exit149.us.us

bb.m:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds i8, ptr %1, i64 %7
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = sext i8 %i.ax to i32
  br label %pcmp_val.exit149.us.us

bb.n:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds [2 x i8], ptr %1, i64 %7
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = zext i16 %i.ba to i32
  br label %pcmp_val.exit149.us.us

bb.o:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds i8, ptr %1, i64 %7
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i32
  br label %pcmp_val.exit149.us.us

pcmp_val.exit149.us.us:                           ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.0.i147.us.us = phi i32 [ %i.be, %bb.o ], [ %i.bb, %bb.n ], [ %i.ay, %bb.m ], [ %i.av, %bb.l ]
  %i.bf = icmp sle i32 %.0.i147.us.us, %.0.i141.us.us
  %i.bg = zext i1 %i.bf to i32
  %i.bh = or i32 %.3237.us.us, %i.bg
  br label %bb.p

bb.p:                                             ; preds = %pcmp_val.exit149.us.us, %pcmp_val.exit146.us.us
  %i.bi = phi i32 [ %.3237.us.us, %pcmp_val.exit146.us.us ], [ %i.bh, %pcmp_val.exit149.us.us ] ; 3 uses
  %indvars.iv.next340 = add nsw i64 %indvars.iv339.a, -2
  %i.bj = icmp sgt i64 %indvars.iv339.a, 1
  %8 = trunc nuw nsw i64 %indvars.iv339.a to i32
  br i1 %i.bj, label %bb.f, label %._crit_edge240.us.us, !llvm.loop !39

._crit_edge240.us.us:                             ; preds = %bb.p
  %indvars.iv.next343 = add nsw i64 %indvars.iv342, -1
  %i.bk = icmp sgt i64 %indvars.iv342, 0
  br i1 %i.bk, label %.lr.ph244.split.us.split.split.us, label %.loopexit, !llvm.loop !40

.preheader:                                       ; preds = %bb.a
  %i.bl = icmp sgt i32 %i.d, -1
  br i1 %i.bl, label %.lr.ph294, label %.loopexit

.lr.ph294:                                        ; preds = %.preheader
  %i.bm = and i8 %3, 3                            ; 2 uses
  %i.bn = icmp sgt i32 %i.e, -1
  %i.bo = zext i32 %i.e to i64                    ; 13 uses
  %i.bp = zext nneg i32 %i.d to i64
  %i.bq = add nuw nsw i64 %i.bo, 1                ; 8 uses
  %min.iters.check504 = icmp ult i32 %i.e, 7      ; 4 uses
  %n.vec564 = and i64 %i.bq, 4294967288           ; 3 uses
  %i.br = sub nsw i64 %i.bo, %n.vec564
  %cmp.n578 = icmp eq i64 %i.bq, %n.vec564
  %n.vec544 = and i64 %i.bq, 4294967288           ; 3 uses
  %i.bs = sub nsw i64 %i.bo, %n.vec544
  %cmp.n558 = icmp eq i64 %i.bq, %n.vec544
  %n.vec524 = and i64 %i.bq, 4294967288           ; 3 uses
  %i.bt = sub nsw i64 %i.bo, %n.vec524
  %cmp.n538 = icmp eq i64 %i.bq, %n.vec524
  %n.vec506 = and i64 %i.bq, 4294967288           ; 3 uses
  %i.bu = sub nsw i64 %i.bo, %n.vec506
  %cmp.n518 = icmp eq i64 %i.bq, %n.vec506
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph294, %._crit_edge268
  %indvars.iv357 = phi i64 [ %i.bp, %.lr.ph294 ], [ %indvars.iv.next358, %._crit_edge268 ] ; 6 uses
  %.0293 = phi i32 [ 0, %.lr.ph294 ], [ %.1.lcssa, %._crit_edge268 ]
  %i.bv = shl i32 %.0293, 1                       ; 9 uses
  switch i8 %i.bm, label %.unreachabledefault391 [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv357
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i32
  br label %pcmp_val.exit

bb.s:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv357
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = zext i16 %i.ca to i32
  br label %pcmp_val.exit

bb.t:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv357
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i32
  br label %pcmp_val.exit

bb.u:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv357
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = sext i16 %i.cg to i32
  br label %pcmp_val.exit

pcmp_val.exit:                                    ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  %.0.i = phi i32 [ %i.by, %bb.r ], [ %i.cb, %bb.s ], [ %i.ce, %bb.t ], [ %i.ch, %bb.u ] ; 8 uses
  br i1 %i.bn, label %.lr.ph267, label %._crit_edge268

.lr.ph267:                                        ; preds = %pcmp_val.exit
  switch i8 %i.bm, label %.lr.ph267.unreachabledefault [
    i8 0, label %pcmp_val.exit140.us.preheader
    i8 1, label %pcmp_val.exit140.us274.preheader
    i8 2, label %pcmp_val.exit140.us281.preheader
    i8 3, label %pcmp_val.exit140.us288.preheader
  ]

pcmp_val.exit140.us288.preheader:                 ; preds = %.lr.ph267
  br i1 %min.iters.check504, label %pcmp_val.exit140.us288.preheader590, label %vector.ph563

vector.ph563:                                     ; preds = %pcmp_val.exit140.us288.preheader
  %i.ci = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bv, i64 0
  %broadcast.splatinsert565 = insertelement <4 x i32> poison, i32 %.0.i, i64 0
  %broadcast.splat566 = shufflevector <4 x i32> %broadcast.splatinsert565, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body567

vector.body567:                                   ; preds = %vector.body567, %vector.ph563
  %index568 = phi i64 [ 0, %vector.ph563 ], [ %index.next575, %vector.body567 ] ; 2 uses
  %vec.phi569 = phi <4 x i32> [ %i.ci, %vector.ph563 ], [ %i.ct, %vector.body567 ]
  %vec.phi570 = phi <4 x i32> [ zeroinitializer, %vector.ph563 ], [ %i.cu, %vector.body567 ]
  %i.cj = sub i64 %i.bo, %index568
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -6
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -14
  %wide.load571 = load <4 x i16>, ptr %i.cl, align 2
  %wide.load572 = load <4 x i16>, ptr %i.cm, align 2
  %reverse573 = shufflevector <4 x i16> %wide.load571, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse574 = shufflevector <4 x i16> %wide.load572, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cn = sext <4 x i16> %reverse573 to <4 x i32>
  %i.co = sext <4 x i16> %reverse574 to <4 x i32>
  %i.cp = icmp eq <4 x i32> %broadcast.splat566, %i.cn
  %i.cq = icmp eq <4 x i32> %broadcast.splat566, %i.co
  %i.cr = zext <4 x i1> %i.cp to <4 x i32>
  %i.cs = zext <4 x i1> %i.cq to <4 x i32>
  %i.ct = or <4 x i32> %vec.phi569, %i.cr         ; 2 uses
  %i.cu = or <4 x i32> %vec.phi570, %i.cs         ; 2 uses
  %index.next575 = add nuw i64 %index568, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next575, %n.vec564
  br i1 %i.cv, label %middle.block576, label %vector.body567, !llvm.loop !41

middle.block576:                                  ; preds = %vector.body567
  %bin.rdx577 = or <4 x i32> %i.cu, %i.ct
  %i.cw = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx577) ; 2 uses
  br i1 %cmp.n578, label %._crit_edge268, label %pcmp_val.exit140.us288.preheader590

pcmp_val.exit140.us288.preheader590:              ; preds = %pcmp_val.exit140.us288.preheader, %middle.block576
  %indvars.iv345.ph = phi i64 [ %i.bo, %pcmp_val.exit140.us288.preheader ], [ %i.br, %middle.block576 ]
  %.1266.us286.ph = phi i32 [ %i.bv, %pcmp_val.exit140.us288.preheader ], [ %i.cw, %middle.block576 ]
  br label %pcmp_val.exit140.us288

pcmp_val.exit140.us281.preheader:                 ; preds = %.lr.ph267
  br i1 %min.iters.check504, label %pcmp_val.exit140.us281.preheader588, label %vector.ph543

vector.ph543:                                     ; preds = %pcmp_val.exit140.us281.preheader
  %i.cx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bv, i64 0
  %broadcast.splatinsert545 = insertelement <4 x i32> poison, i32 %.0.i, i64 0
  %broadcast.splat546 = shufflevector <4 x i32> %broadcast.splatinsert545, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body547

vector.body547:                                   ; preds = %vector.body547, %vector.ph543
  %index548 = phi i64 [ 0, %vector.ph543 ], [ %index.next555, %vector.body547 ] ; 2 uses
  %vec.phi549 = phi <4 x i32> [ %i.cx, %vector.ph543 ], [ %i.di, %vector.body547 ]
  %vec.phi550 = phi <4 x i32> [ zeroinitializer, %vector.ph543 ], [ %i.dj, %vector.body547 ]
  %i.cy = sub i64 %i.bo, %index548
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -3
  %i.db = getelementptr inbounds i8, ptr %i.cz, i64 -7
  %wide.load551 = load <4 x i8>, ptr %i.da, align 1
  %wide.load552 = load <4 x i8>, ptr %i.db, align 1
  %reverse553 = shufflevector <4 x i8> %wide.load551, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse554 = shufflevector <4 x i8> %wide.load552, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.dc = sext <4 x i8> %reverse553 to <4 x i32>
  %i.dd = sext <4 x i8> %reverse554 to <4 x i32>
  %i.de = icmp eq <4 x i32> %broadcast.splat546, %i.dc
  %i.df = icmp eq <4 x i32> %broadcast.splat546, %i.dd
  %i.dg = zext <4 x i1> %i.de to <4 x i32>
  %i.dh = zext <4 x i1> %i.df to <4 x i32>
  %i.di = or <4 x i32> %vec.phi549, %i.dg         ; 2 uses
  %i.dj = or <4 x i32> %vec.phi550, %i.dh         ; 2 uses
  %index.next555 = add nuw i64 %index548, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next555, %n.vec544
  br i1 %i.dk, label %middle.block556, label %vector.body547, !llvm.loop !42

middle.block556:                                  ; preds = %vector.body547
  %bin.rdx557 = or <4 x i32> %i.dj, %i.di
  %i.dl = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx557) ; 2 uses
  br i1 %cmp.n558, label %._crit_edge268, label %pcmp_val.exit140.us281.preheader588

pcmp_val.exit140.us281.preheader588:              ; preds = %pcmp_val.exit140.us281.preheader, %middle.block556
  %indvars.iv348.ph = phi i64 [ %i.bo, %pcmp_val.exit140.us281.preheader ], [ %i.bs, %middle.block556 ]
  %.1266.us279.ph = phi i32 [ %i.bv, %pcmp_val.exit140.us281.preheader ], [ %i.dl, %middle.block556 ]
  br label %pcmp_val.exit140.us281

pcmp_val.exit140.us274.preheader:                 ; preds = %.lr.ph267
  br i1 %min.iters.check504, label %pcmp_val.exit140.us274.preheader586, label %vector.ph523

vector.ph523:                                     ; preds = %pcmp_val.exit140.us274.preheader
  %i.dm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bv, i64 0
  %broadcast.splatinsert525 = insertelement <4 x i32> poison, i32 %.0.i, i64 0
  %broadcast.splat526 = shufflevector <4 x i32> %broadcast.splatinsert525, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body527

vector.body527:                                   ; preds = %vector.body527, %vector.ph523
  %index528 = phi i64 [ 0, %vector.ph523 ], [ %index.next535, %vector.body527 ] ; 2 uses
  %vec.phi529 = phi <4 x i32> [ %i.dm, %vector.ph523 ], [ %i.dx, %vector.body527 ]
  %vec.phi530 = phi <4 x i32> [ zeroinitializer, %vector.ph523 ], [ %i.dy, %vector.body527 ]
  %i.dn = sub i64 %i.bo, %index528
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -6
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 -14
  %wide.load531 = load <4 x i16>, ptr %i.dp, align 2
  %wide.load532 = load <4 x i16>, ptr %i.dq, align 2
  %reverse533 = shufflevector <4 x i16> %wide.load531, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse534 = shufflevector <4 x i16> %wide.load532, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.dr = zext <4 x i16> %reverse533 to <4 x i32>
  %i.ds = zext <4 x i16> %reverse534 to <4 x i32>
  %i.dt = icmp eq <4 x i32> %broadcast.splat526, %i.dr
  %i.du = icmp eq <4 x i32> %broadcast.splat526, %i.ds
  %i.dv = zext <4 x i1> %i.dt to <4 x i32>
  %i.dw = zext <4 x i1> %i.du to <4 x i32>
  %i.dx = or <4 x i32> %vec.phi529, %i.dv         ; 2 uses
  %i.dy = or <4 x i32> %vec.phi530, %i.dw         ; 2 uses
  %index.next535 = add nuw i64 %index528, 8       ; 2 uses
  %i.dz = icmp eq i64 %index.next535, %n.vec524
  br i1 %i.dz, label %middle.block536, label %vector.body527, !llvm.loop !43

middle.block536:                                  ; preds = %vector.body527
  %bin.rdx537 = or <4 x i32> %i.dy, %i.dx
end_hunk_0
