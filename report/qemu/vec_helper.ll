Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vec_helper?download=true
inline.NumInlined: 1641
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 113
loop-unroll.NumUnrolled: 184
begin_hunk_0_@helper_gvec_sli_s:bb.a
  %i.aq = zext i32 %i.ap to i64
  %i.ar = and i64 %i.aq, %i.o
  %i.as = and i64 %i.l, %i.an
  %i.at = shl nuw nsw i64 %i.as, %i.m
  %i.au = or i64 %i.ar, %i.at
  %i.av = trunc i64 %i.au to i32
  store i32 %i.av, ptr %i.ao, align 4
  %i.aw = add nuw nsw i64 %.017, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.aw, %i.i
  br i1 %exitcond.not.1, label %.loopexit, label %deposit64.exit, !llvm.loop !604

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #19
  unreachable

.loopexit:                                        ; preds = %deposit64.exit, %middle.block
  %i.ax = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ax, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.ay = add nuw nsw i32 %i.e, 8
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr %0, i64 %i.g
  %i.bb = xor i64 %i.g, -1
  %i.bc = add nsw i64 %i.bb, %i.az
  %i.bd = and i64 %i.bc, -8
  %i.be = add nsw i64 %i.bd, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ba, i8 0, i64 %i.be, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_sli_d(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ashr i32 %2, 10                          ; 2 uses
  %i.i = lshr exact i64 %i.g, 3                   ; 4 uses
  %or.cond.not16.i = icmp ugt i32 %i.h, 63
  %i.j = zext nneg i32 %i.h to i64                ; 5 uses
  %i.k = shl nsw i64 -1, %i.j
  %i.l = xor i64 %i.k, -1                         ; 4 uses
  br i1 %or.cond.not16.i, label %bb.b, label %deposit64.exit.preheader

deposit64.exit.preheader:                         ; preds = %bb.a
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %deposit64.exit.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %deposit64.exit.preheader
  %scevgep = getelementptr i8, ptr %0, i64 %i.g
  %scevgep18 = getelementptr i8, ptr %1, i64 %i.g
  %bound0 = icmp ult ptr %0, %scevgep18
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %deposit64.exit.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 268435452                ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert19 = insertelement <2 x i64> poison, i64 %i.j, i64 0
  %broadcast.splat20 = shufflevector <2 x i64> %broadcast.splatinsert19, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <2 x i64>, ptr %i.m, align 8, !alias.scope !612
  %wide.load21 = load <2 x i64>, ptr %i.n, align 8, !alias.scope !612
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %wide.load22 = load <2 x i64>, ptr %i.o, align 8, !alias.scope !613, !noalias !612
  %wide.load23 = load <2 x i64>, ptr %i.p, align 8, !alias.scope !613, !noalias !612
  %i.q = and <2 x i64> %wide.load22, %broadcast.splat
  %i.r = and <2 x i64> %wide.load23, %broadcast.splat
  %i.s = shl <2 x i64> %wide.load, %broadcast.splat20
  %i.t = shl <2 x i64> %wide.load21, %broadcast.splat20
  %i.u = or <2 x i64> %i.q, %i.s
  %i.v = or <2 x i64> %i.r, %i.t
  store <2 x i64> %i.u, ptr %i.o, align 8, !alias.scope !613, !noalias !612
  store <2 x i64> %i.v, ptr %i.p, align 8, !alias.scope !613, !noalias !612
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !610

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %deposit64.exit.preheader24

deposit64.exit.preheader24:                       ; preds = %vector.memcheck, %deposit64.exit.preheader, %middle.block
  %.017.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %deposit64.exit.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.017.ph, 1
  %i.x = and i64 %i.g, 8
  %lcmp.mod.not = icmp eq i64 %i.x, 0
  br i1 %lcmp.mod.not, label %deposit64.exit.prol.loopexit, label %deposit64.exit.prol

deposit64.exit.prol:                              ; preds = %deposit64.exit.preheader24
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.017.ph
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.ph ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = and i64 %i.ab, %i.l
  %i.ad = shl i64 %i.z, %i.j
  %i.ae = or i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.aa, align 8
  %i.af = or disjoint i64 %.017.ph, 1
  br label %deposit64.exit.prol.loopexit

deposit64.exit.prol.loopexit:                     ; preds = %deposit64.exit.prol, %deposit64.exit.preheader24
  %.017.unr = phi i64 [ %.017.ph, %deposit64.exit.preheader24 ], [ %i.af, %deposit64.exit.prol ]
  %i.ag = icmp eq i64 %i.i, %.neg
  br i1 %i.ag, label %.loopexit, label %deposit64.exit

deposit64.exit:                                   ; preds = %deposit64.exit.prol.loopexit, %deposit64.exit
  %.017 = phi i64 [ %i.aw, %deposit64.exit ], [ %.017.unr, %deposit64.exit.prol.loopexit ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.017
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, %i.l
  %i.am = shl i64 %i.ai, %i.j
  %i.an = or i64 %i.al, %i.am
  store i64 %i.an, ptr %i.aj, align 8
  %i.ao = add nuw nsw i64 %.017, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = and i64 %i.as, %i.l
  %i.au = shl i64 %i.aq, %i.j
  %i.av = or i64 %i.at, %i.au
  store i64 %i.av, ptr %i.ar, align 8
  %i.aw = add nuw nsw i64 %.017, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.aw, %i.i
  br i1 %exitcond.not.1, label %.loopexit, label %deposit64.exit, !llvm.loop !611

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #19
  unreachable

.loopexit:                                        ; preds = %deposit64.exit.prol.loopexit, %deposit64.exit, %middle.block
  %i.ax = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ax, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.ay = add nuw nsw i32 %i.e, 8
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr %0, i64 %i.g
  %i.bb = xor i64 %i.g, -1
  %i.bc = add nsw i64 %i.bb, %i.az
  %i.bd = and i64 %i.bc, -8
  %i.be = add nsw i64 %i.bd, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ba, i8 0, i64 %i.be, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fmlal_a32(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = and i32 %4, 1024
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, i64 0, i64 -9223231297218904064
  tail call fastcc void @do_fmlal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 8, i64 noundef %i.b, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_fmlal(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef range(i32 1, 9) %5, i64 noundef range(i64 -9223231297218904064, 1) %6, i32 noundef range(i32 0, 3) %7) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12768
  %i.b = zext nneg i32 %5 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12688
  %i.e = load i64, ptr %i.d, align 16
  %i.f = and i64 %i.e, 524288
  %i.g = icmp ne i64 %i.f, 0                      ; 2 uses
  %i.h = lshr i32 %4, 8
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %i.j = shl nuw nsw i32 %i.i, 3
  %i.k = shl i32 %4, 3
  %i.l = and i32 %i.k, 2040                       ; 3 uses
  %i.m = icmp eq i32 %i.i, 2
  %.v.v.i = select i1 %i.m, i32 %i.l, i32 %i.j    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.n = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.o = lshr i32 %4, 11                          ; 2 uses
  %8 = and i32 %i.o, 1
  %i.p = icmp eq i32 %.v.i, 16
  %9 = zext i1 %i.p to i32                        ; 2 uses
  %10 = and i32 %i.o, %9
  %i.q = zext nneg i32 %10 to i64                 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8
  %11 = xor i32 %9, -1
  %i.t = and i32 %8, %11
  %12 = shl nuw nsw i32 %i.t, 5
  %i.u = zext nneg i32 %12 to i64                 ; 2 uses
  %i.v = lshr i64 %i.s, %i.u
  %i.w = xor i64 %i.v, %6
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.q
  %i.y = load i64, ptr %i.x, align 8
  %i.z = lshr i64 %i.y, %i.u
  %i.aa = lshr exact i64 %i.n, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %float16_to_float32_by_bits.exit36
  %.037 = phi i64 [ 0, %bb.a ], [ %i.bn, %float16_to_float32_by_bits.exit36 ] ; 3 uses
  %i.ab = shl nuw nsw i64 %.037, 4                ; 2 uses
  %i.ac = lshr i64 %i.w, %i.ab
  %i.ad = trunc i64 %i.ac to i32                  ; 4 uses
  %i.ae = lshr i32 %i.ad, 10
  %i.af = and i32 %i.ae, 31                       ; 2 uses
  %i.ag = and i32 %i.ad, 1023                     ; 4 uses
  switch i32 %i.af, label %bb.e [
    i32 31, label %float16_to_float32_by_bits.exit
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %i.ag, 0
  %brmerge.i = or i1 %i.g, %.not.i
  br i1 %brmerge.i, label %float16_to_float32_by_bits.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = tail call range(i32 22, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 1024) %i.ag, i1 true) ; 2 uses
  %i.ai = add nsw i32 %i.ah, -21
  %i.aj = shl i32 %i.ad, %i.ai
  %i.ak = and i32 %i.aj, 1023
  %i.al = sub nuw nsw i32 134, %i.ah
  br label %float16_to_float32_by_bits.exit

bb.e:                                             ; preds = %bb.b
  %i.am = add nuw nsw i32 %i.af, 112
  br label %float16_to_float32_by_bits.exit

float16_to_float32_by_bits.exit:                  ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.018.i = phi i32 [ %i.am, %bb.e ], [ 255, %bb.b ], [ %i.al, %bb.d ], [ 0, %bb.c ]
  %.0.i = phi i32 [ %i.ag, %bb.e ], [ %i.ag, %bb.b ], [ %i.ak, %bb.d ], [ 0, %bb.c ]
  %i.an = shl i32 %i.ad, 16
  %i.ao = and i32 %i.an, -2147483648
  %i.ap = shl nuw nsw i32 %.018.i, 23
  %i.aq = shl nuw nsw i32 %.0.i, 13
  %i.ar = or disjoint i32 %i.ap, %i.ao
  %i.as = or disjoint i32 %i.ar, %i.aq
  %i.at = lshr i64 %i.z, %i.ab
  %i.au = trunc i64 %i.at to i32                  ; 4 uses
  %i.av = lshr i32 %i.au, 10
  %i.aw = and i32 %i.av, 31                       ; 2 uses
  %i.ax = and i32 %i.au, 1023                     ; 4 uses
  switch i32 %i.aw, label %bb.h [
    i32 31, label %float16_to_float32_by_bits.exit36
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %float16_to_float32_by_bits.exit
  %.not.i32 = icmp eq i32 %i.ax, 0
  %brmerge.i33 = or i1 %i.g, %.not.i32
  br i1 %brmerge.i33, label %float16_to_float32_by_bits.exit36, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = tail call range(i32 22, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 1024) %i.ax, i1 true) ; 2 uses
  %i.az = add nsw i32 %i.ay, -21
  %i.ba = shl i32 %i.au, %i.az
  %i.bb = and i32 %i.ba, 1023
  %i.bc = sub nuw nsw i32 134, %i.ay
  br label %float16_to_float32_by_bits.exit36

bb.h:                                             ; preds = %float16_to_float32_by_bits.exit
  %i.bd = add nuw nsw i32 %i.aw, 112
  br label %float16_to_float32_by_bits.exit36

float16_to_float32_by_bits.exit36:                ; preds = %float16_to_float32_by_bits.exit, %bb.f, %bb.g, %bb.h
  %.018.i34 = phi i32 [ %i.bd, %bb.h ], [ 255, %float16_to_float32_by_bits.exit ], [ %i.bc, %bb.g ], [ 0, %bb.f ]
  %.0.i35 = phi i32 [ %i.ax, %bb.h ], [ %i.ax, %float16_to_float32_by_bits.exit ], [ %i.bb, %bb.g ], [ 0, %bb.f ]
  %i.be = shl i32 %i.au, 16
  %i.bf = and i32 %i.be, -2147483648
  %i.bg = shl nuw nsw i32 %.018.i34, 23
  %i.bh = shl nuw nsw i32 %.0.i35, 13
  %i.bi = or disjoint i32 %i.bg, %i.bf
  %i.bj = or disjoint i32 %i.bi, %i.bh
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.037 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = tail call i32 @float32_muladd(i32 noundef %i.as, i32 noundef %i.bj, i32 noundef %i.bl, i32 noundef %7, ptr noundef nonnull %i.c) #18
  store i32 %i.bm, ptr %i.bk, align 4
  %i.bn = add nuw nsw i64 %.037, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %i.aa
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !614

bb.i:                                             ; preds = %float16_to_float32_by_bits.exit36
  %i.bo = icmp samesign ult i32 %.v.v.i, %i.l
  br i1 %i.bo, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.bp = add nuw nsw i32 %i.l, 8
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr i8, ptr %0, i64 %i.n
  %i.bs = xor i64 %i.n, -1
  %i.bt = add nsw i64 %i.bs, %i.bq
  %i.bu = and i64 %i.bt, -8
  %i.bv = add nsw i64 %i.bu, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.br, i8 0, i64 %i.bv, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.i, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fmlal_a64(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = and i32 %4, 1024
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12688
  %i.c = load i64, ptr %i.b, align 16
  %i.d = and i64 %i.c, 2                          ; 2 uses
  %.not10 = icmp eq i64 %i.d, 0
  %. = select i1 %.not10, i64 -9223231297218904064, i64 0
  %.11 = trunc nuw nsw i64 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.09 = phi i64 [ %., %bb.b ], [ 0, %bb.a ]
  %.0 = phi i32 [ %.11, %bb.b ], [ 0, %bb.a ]
  tail call fastcc void @do_fmlal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 1, i64 noundef %.09, i32 noundef %.0)
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve2_fmlal_zzzw_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %5, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %5, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = and i32 %5, 1024
  %.not = icmp eq i32 %i.h, 0                     ; 2 uses
  %i.i = lshr i32 %5, 10
  %i.j = and i32 %i.i, 2
  %i.k = zext nneg i32 %i.j to i64
  %i.l = and i32 %5, 4096
  %.not33 = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12768
  %i.n = select i1 %.not33, i64 1, i64 6
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 12688
  %i.q = load i64, ptr %i.p, align 16             ; 2 uses
  %i.r = and i64 %i.q, 524288
  %i.s = icmp ne i64 %i.r, 0                      ; 2 uses
  %i.t = and i64 %i.q, 2                          ; 2 uses
  %.not34 = icmp ne i64 %i.t, 0
  %.35 = trunc nuw nsw i64 %i.t to i32
  %i.u = select i1 %.not, i1 true, i1 %.not34
  %.032 = select i1 %i.u, i16 0, i16 -32768
  %.031 = select i1 %.not, i32 0, i32 %.35
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %float16_to_float32_by_bits.exit40
  %.042 = phi i64 [ 0, %bb.a ], [ %i.bj, %float16_to_float32_by_bits.exit40 ] ; 4 uses
  %i.v = or disjoint i64 %.042, %i.k              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2
  %i.y = xor i16 %i.x, %.032                      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  %i.aa = load i16, ptr %i.z, align 2             ; 2 uses
  %i.ab = zext i16 %i.y to i32                    ; 3 uses
  %i.ac = lshr i32 %i.ab, 10
  %i.ad = and i32 %i.ac, 31                       ; 2 uses
  %i.ae = and i32 %i.ab, 1023                     ; 4 uses
  switch i32 %i.ad, label %bb.e [
    i32 31, label %float16_to_float32_by_bits.exit
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %i.ae, 0
  %brmerge.i = or i1 %i.s, %.not.i
  br i1 %brmerge.i, label %float16_to_float32_by_bits.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = tail call range(i32 22, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 1024) %i.ae, i1 true) ; 2 uses
  %i.ag = add nsw i32 %i.af, -21
  %i.ah = shl nuw nsw i32 %i.ab, %i.ag
  %i.ai = and i32 %i.ah, 1023
  %i.aj = sub nuw nsw i32 134, %i.af
  br label %float16_to_float32_by_bits.exit

bb.e:                                             ; preds = %bb.b
  %i.ak = add nuw nsw i32 %i.ad, 112
  br label %float16_to_float32_by_bits.exit

float16_to_float32_by_bits.exit:                  ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.018.i = phi i32 [ %i.ak, %bb.e ], [ 255, %bb.b ], [ %i.aj, %bb.d ], [ 0, %bb.c ]
  %.0.i = phi i32 [ %i.ae, %bb.e ], [ %i.ae, %bb.b ], [ %i.ai, %bb.d ], [ 0, %bb.c ]
  %.signext = sext i16 %i.y to i32
  %i.al = and i32 %.signext, -2147483648
  %i.am = shl nuw nsw i32 %.018.i, 23
  %i.an = shl nuw nsw i32 %.0.i, 13
  %i.ao = or disjoint i32 %i.am, %i.al
  %i.ap = or disjoint i32 %i.ao, %i.an
  %i.aq = zext i16 %i.aa to i32                   ; 3 uses
  %i.ar = lshr i32 %i.aq, 10
  %i.as = and i32 %i.ar, 31                       ; 2 uses
  %i.at = and i32 %i.aq, 1023                     ; 4 uses
  switch i32 %i.as, label %bb.h [
    i32 31, label %float16_to_float32_by_bits.exit40
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %float16_to_float32_by_bits.exit
  %.not.i36 = icmp eq i32 %i.at, 0
  %brmerge.i37 = or i1 %i.s, %.not.i36
  br i1 %brmerge.i37, label %float16_to_float32_by_bits.exit40, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = tail call range(i32 22, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 1024) %i.at, i1 true) ; 2 uses
  %i.av = add nsw i32 %i.au, -21
  %i.aw = shl nuw nsw i32 %i.aq, %i.av
  %i.ax = and i32 %i.aw, 1023
  %i.ay = sub nuw nsw i32 134, %i.au
  br label %float16_to_float32_by_bits.exit40

bb.h:                                             ; preds = %float16_to_float32_by_bits.exit
  %i.az = add nuw nsw i32 %i.as, 112
  br label %float16_to_float32_by_bits.exit40

float16_to_float32_by_bits.exit40:                ; preds = %float16_to_float32_by_bits.exit, %bb.f, %bb.g, %bb.h
  %.018.i38 = phi i32 [ %i.az, %bb.h ], [ 255, %float16_to_float32_by_bits.exit ], [ %i.ay, %bb.g ], [ 0, %bb.f ]
  %.0.i39 = phi i32 [ %i.at, %bb.h ], [ %i.at, %float16_to_float32_by_bits.exit ], [ %i.ax, %bb.g ], [ 0, %bb.f ]
  %.signext41 = sext i16 %i.aa to i32
  %i.ba = and i32 %.signext41, -2147483648
  %i.bb = shl nuw nsw i32 %.018.i38, 23
  %i.bc = shl nuw nsw i32 %.0.i39, 13
  %i.bd = or disjoint i32 %i.bb, %i.ba
  %i.be = or disjoint i32 %i.bd, %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 %.042
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = tail call i32 @float32_muladd(i32 noundef %i.ap, i32 noundef %i.be, i32 noundef %i.bg, i32 noundef %.031, ptr noundef nonnull %i.o) #18
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.042
  store i32 %i.bh, ptr %i.bi, align 4
  %i.bj = add nuw nsw i64 %.042, 4                ; 2 uses
  %i.bk = icmp samesign ult i64 %i.bj, %i.g
  br i1 %i.bk, label %bb.b, label %bb.i, !llvm.loop !615

bb.i:                                             ; preds = %float16_to_float32_by_bits.exit40
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fmlal_idx_a32(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = and i32 %4, 1024
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, i64 0, i64 -9223231297218904064
  tail call fastcc void @do_fmlal_idx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 8, i64 noundef %i.b, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_fmlal_idx(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef range(i32 1, 9) %5, i64 noundef range(i64 -9223231297218904064, 1) %6, i32 noundef range(i32 0, 3) %7) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12768
  %i.b = zext nneg i32 %5 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12688
  %i.e = load i64, ptr %i.d, align 16
  %.fr = freeze i64 %i.e
  %i.f = and i64 %.fr, 524288
  %i.g = icmp ne i64 %i.f, 0                      ; 2 uses
  %i.h = lshr i32 %4, 8
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %i.j = shl nuw nsw i32 %i.i, 3
  %i.k = shl i32 %4, 3
  %i.l = and i32 %i.k, 2040                       ; 3 uses
  %i.m = icmp eq i32 %i.i, 2
  %.v.v.i = select i1 %i.m, i32 %i.l, i32 %i.j    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.n = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.o = lshr i32 %4, 11                          ; 2 uses
  %8 = and i32 %i.o, 1
  %i.p = lshr i32 %4, 12
  %i.q = and i32 %i.p, 7
  %i.r = icmp eq i32 %.v.i, 16
  %9 = zext i1 %i.r to i32                        ; 2 uses
  %10 = and i32 %i.o, %9
  %i.s = zext nneg i32 %10 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  %11 = xor i32 %9, -1
  %i.v = and i32 %8, %11
  %12 = shl nuw nsw i32 %i.v, 5
  %i.w = zext nneg i32 %12 to i64
  %i.x = lshr i64 %i.u, %i.w
  %i.y = xor i64 %i.x, %6                         ; 2 uses
  %i.z = zext nneg i32 %i.q to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2            ; 3 uses
  %i.ac = zext i16 %i.ab to i32                   ; 3 uses
  %i.ad = lshr i32 %i.ac, 10
  %i.ae = and i32 %i.ad, 31                       ; 2 uses
  %i.af = and i32 %i.ac, 1023                     ; 4 uses
  switch i32 %i.ae, label %bb.c [
    i32 31, label %float16_to_float32_by_bits.exit
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.af, 0
  %brmerge.i = or i1 %i.g, %.not.i
  br i1 %brmerge.i, label %float16_to_float32_by_bits.exit, label %float16_to_float32_by_bits.exit.thread

float16_to_float32_by_bits.exit.thread:           ; preds = %bb.b
  %i.ag = tail call range(i32 22, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 1024) %i.af, i1 true) ; 2 uses
  %i.ah = add nsw i32 %i.ag, -21
  %i.ai = shl nuw nsw i32 %i.ac, %i.ah
  %.signext45 = sext i16 %i.ab to i32
  %i.aj = and i32 %.signext45, -2147483648
  %i.ak = shl nuw nsw i32 %i.ag, 23
  %i.al = sub nuw nsw i32 1124073472, %i.ak
  %i.am = shl i32 %i.ai, 13
  %i.an = and i32 %i.am, 8380416
  %i.ao = or disjoint i32 %i.al, %i.aj
  %i.ap = or disjoint i32 %i.ao, %i.an
  %i.aq = lshr exact i64 %i.n, 2
  br label %float16_to_float32_by_bits.exit.split.preheader

bb.c:                                             ; preds = %bb.a
  %i.ar = shl nuw nsw i32 %i.ae, 23
  %i.as = add nuw nsw i32 %i.ar, 939524096
  br label %float16_to_float32_by_bits.exit

float16_to_float32_by_bits.exit:                  ; preds = %bb.a, %bb.b, %bb.c
  %.018.i = phi i32 [ %i.as, %bb.c ], [ 2139095040, %bb.a ], [ 0, %bb.b ]
  %.0.i = phi i32 [ %i.af, %bb.c ], [ %i.af, %bb.a ], [ 0, %bb.b ]
  %.signext = sext i16 %i.ab to i32
  %i.at = and i32 %.signext, -2147483648
  %i.au = shl nuw nsw i32 %.0.i, 13
  %i.av = or disjoint i32 %.018.i, %i.at
  %i.aw = or disjoint i32 %i.av, %i.au            ; 2 uses
  %i.ax = lshr exact i64 %i.n, 2                  ; 2 uses
  br i1 %i.g, label %float16_to_float32_by_bits.exit.split.us, label %float16_to_float32_by_bits.exit.split.preheader

float16_to_float32_by_bits.exit.split.preheader:  ; preds = %float16_to_float32_by_bits.exit.thread, %float16_to_float32_by_bits.exit
  %i.ay = phi i64 [ %i.aq, %float16_to_float32_by_bits.exit.thread ], [ %i.ax, %float16_to_float32_by_bits.exit ]
  %i.az = phi i32 [ %i.ap, %float16_to_float32_by_bits.exit.thread ], [ %i.aw, %float16_to_float32_by_bits.exit ]
  br label %float16_to_float32_by_bits.exit.split

float16_to_float32_by_bits.exit.split.us:         ; preds = %float16_to_float32_by_bits.exit, %float16_to_float32_by_bits.exit34.us
  %.035.us = phi i64 [ %i.bq, %float16_to_float32_by_bits.exit34.us ], [ 0, %float16_to_float32_by_bits.exit ] ; 3 uses
  %i.ba = shl nuw nsw i64 %.035.us, 4
  %i.bb = lshr i64 %i.y, %i.ba
  %i.bc = trunc i64 %i.bb to i32                  ; 3 uses
  %i.bd = lshr i32 %i.bc, 10
  %i.be = and i32 %i.bd, 31                       ; 2 uses
  %i.bf = and i32 %i.bc, 1023                     ; 2 uses
  switch i32 %i.be, label %bb.e [
    i32 31, label %float16_to_float32_by_bits.exit34.us
    i32 0, label %bb.d
  ]

bb.d:                                             ; preds = %float16_to_float32_by_bits.exit.split.us
  br label %float16_to_float32_by_bits.exit34.us

bb.e:                                             ; preds = %float16_to_float32_by_bits.exit.split.us
  %i.bg = shl nuw nsw i32 %i.be, 23
  %i.bh = add nuw nsw i32 %i.bg, 939524096
  br label %float16_to_float32_by_bits.exit34.us

float16_to_float32_by_bits.exit34.us:             ; preds = %bb.d, %bb.e, %float16_to_float32_by_bits.exit.split.us
  %.018.i32.us = phi i32 [ %i.bh, %bb.e ], [ 2139095040, %float16_to_float32_by_bits.exit.split.us ], [ 0, %bb.d ]
  %.0.i33.us = phi i32 [ %i.bf, %bb.e ], [ %i.bf, %float16_to_float32_by_bits.exit.split.us ], [ 0, %bb.d ]
  %i.bi = shl i32 %i.bc, 16
  %i.bj = and i32 %i.bi, -2147483648
  %i.bk = shl nuw nsw i32 %.0.i33.us, 13
  %i.bl = add nuw nsw i32 %.018.i32.us, %i.bj
  %i.bm = add nuw nsw i32 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.035.us ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = tail call i32 @float32_muladd(i32 noundef %i.bm, i32 noundef %i.aw, i32 noundef %i.bo, i32 noundef %7, ptr noundef nonnull %i.c) #18
  store i32 %i.bp, ptr %i.bn, align 4
  %i.bq = add nuw nsw i64 %.035.us, 1             ; 2 uses
  %exitcond38.not = icmp eq i64 %i.bq, %i.ax
  br i1 %exitcond38.not, label %.split.us, label %float16_to_float32_by_bits.exit.split.us, !llvm.loop !616

float16_to_float32_by_bits.exit.split:            ; preds = %float16_to_float32_by_bits.exit.split.preheader, %float16_to_float32_by_bits.exit34
  %.035 = phi i64 [ %i.cm, %float16_to_float32_by_bits.exit34 ], [ 0, %float16_to_float32_by_bits.exit.split.preheader ] ; 3 uses
  %i.br = shl nuw nsw i64 %.035, 4
  %i.bs = lshr i64 %i.y, %i.br
  %i.bt = trunc i64 %i.bs to i32                  ; 4 uses
  %i.bu = lshr i32 %i.bt, 10
  %i.bv = and i32 %i.bu, 31                       ; 2 uses
  %i.bw = and i32 %i.bt, 1023                     ; 4 uses
  switch i32 %i.bv, label %bb.h [
    i32 31, label %float16_to_float32_by_bits.exit34
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %float16_to_float32_by_bits.exit.split
  %.not.i30 = icmp eq i32 %i.bw, 0
  br i1 %.not.i30, label %float16_to_float32_by_bits.exit34, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bx = tail call range(i32 22, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 1024) %i.bw, i1 true) ; 2 uses
  %i.by = add nsw i32 %i.bx, -21
  %i.bz = shl i32 %i.bt, %i.by
  %i.ca = and i32 %i.bz, 1023
  %i.cb = sub nuw nsw i32 134, %i.bx
  br label %float16_to_float32_by_bits.exit34

bb.h:                                             ; preds = %float16_to_float32_by_bits.exit.split
  %i.cc = add nuw nsw i32 %i.bv, 112
  br label %float16_to_float32_by_bits.exit34

float16_to_float32_by_bits.exit34:                ; preds = %float16_to_float32_by_bits.exit.split, %bb.f, %bb.g, %bb.h
  %.018.i32 = phi i32 [ %i.cc, %bb.h ], [ 255, %float16_to_float32_by_bits.exit.split ], [ %i.cb, %bb.g ], [ 0, %bb.f ]
  %.0.i33 = phi i32 [ %i.bw, %bb.h ], [ %i.bw, %float16_to_float32_by_bits.exit.split ], [ %i.ca, %bb.g ], [ 0, %bb.f ]
  %i.cd = shl i32 %i.bt, 16
  %i.ce = and i32 %i.cd, -2147483648
  %i.cf = shl nuw nsw i32 %.018.i32, 23
  %i.cg = shl nuw nsw i32 %.0.i33, 13
  %i.ch = or disjoint i32 %i.cf, %i.ce
  %i.ci = or disjoint i32 %i.ch, %i.cg
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.035 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = tail call i32 @float32_muladd(i32 noundef %i.ci, i32 noundef %i.az, i32 noundef %i.ck, i32 noundef %7, ptr noundef nonnull %i.c) #18
  store i32 %i.cl, ptr %i.cj, align 4
  %i.cm = add nuw nsw i64 %.035, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cm, %i.ay
  br i1 %exitcond.not, label %.split.us, label %float16_to_float32_by_bits.exit.split, !llvm.loop !616

.split.us:                                        ; preds = %float16_to_float32_by_bits.exit34, %float16_to_float32_by_bits.exit34.us
  %i.cn = icmp samesign ult i32 %.v.v.i, %i.l
  br i1 %i.cn, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split.us
  %i.co = add nuw nsw i32 %i.l, 8
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr i8, ptr %0, i64 %i.n
  %i.cr = xor i64 %i.n, -1
  %i.cs = add nsw i64 %i.cr, %i.cp
  %i.ct = and i64 %i.cs, -8
  %i.cu = add nsw i64 %i.ct, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cq, i8 0, i64 %i.cu, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fmlal_idx_a64(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = and i32 %4, 1024
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12688
  %i.c = load i64, ptr %i.b, align 16
  %i.d = and i64 %i.c, 2                          ; 2 uses
  %.not10 = icmp eq i64 %i.d, 0
  %. = select i1 %.not10, i64 -9223231297218904064, i64 0
  %.11 = trunc nuw nsw i64 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.09 = phi i64 [ %., %bb.b ], [ 0, %bb.a ]
  %.0 = phi i32 [ %.11, %bb.b ], [ 0, %bb.a ]
  tail call fastcc void @do_fmlal_idx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 1, i64 noundef %.09, i32 noundef %.0)
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve2_fmlal_zzxw_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %5, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %5, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = and i32 %5, 1024
  %.not = icmp eq i32 %i.h, 0                     ; 2 uses
  %i.i = lshr i32 %5, 10
  %i.j = and i32 %i.i, 2
  %i.k = zext nneg i32 %i.j to i64
  %i.l = and i32 %5, 4096
  %.not40 = icmp eq i32 %i.l, 0
  %i.m = lshr i32 %5, 12
end_hunk_0
