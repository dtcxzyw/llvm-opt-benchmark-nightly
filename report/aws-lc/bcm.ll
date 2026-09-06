Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 550
begin_hunk_0_@bn_less_than_montgomery_R:bb.a
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.k, -4                       ; 3 uses
  %i.l = add nsw i64 %n.vec, %i.i
  %invariant.gep = getelementptr [8 x i8], ptr %i.j, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi4 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x i64>, ptr %gep, align 8, !tbaa !80
  %wide.load5 = load <2 x i64>, ptr %i.m, align 8, !tbaa !80
  %i.n = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.o = or <2 x i64> %wide.load5, %vec.phi4      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !1458

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.o, %i.n
  %i.q = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.09.i.ph = phi i64 [ %i.i, %.lr.ph.i ], [ %i.l, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %middle.block ]
  br label %scalar.ph

._crit_edge.loopexit.i:                           ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.q, %middle.block ], [ %i.v, %scalar.ph ]
  %i.r = icmp eq i64 %.lcssa, 0
  %i.s = zext i1 %i.r to i32
  br label %bn_fits_in_words.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i = phi i64 [ %i.w, %scalar.ph ], [ %.09.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.078.i = phi i64 [ %i.v, %scalar.ph ], [ %.078.i.ph, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.09.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !80
  %i.v = or i64 %i.u, %.078.i                     ; 2 uses
  %i.w = add nuw i64 %.09.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.g
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %scalar.ph, !llvm.loop !1459

bn_fits_in_words.exit:                            ; preds = %._crit_edge.loopexit.i, %bb.b, %bb.a
  %i.x = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ %i.s, %._crit_edge.loopexit.i ]
  ret i32 %i.x
}

; Function Attrs: nounwind uwtable
define hidden void @bn_to_montgomery_small(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !124
  tail call void @bn_mod_mul_montgomery_small(ptr noundef %0, ptr noundef %1, ptr noundef %i.a, i64 noundef %2, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @bn_from_montgomery_in_place(ptr noundef %0, i64 noundef range(i64 -2147483648, 2147483648) %1, ptr noundef %2, i64 noundef range(i64 -2147483648, 2147483648) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !122  ; 2 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %.not = icmp eq i64 %1, %i.e
  %i.f = shl nsw i64 %i.e, 1
  %.not46 = icmp eq i64 %3, %i.f
  %or.cond = select i1 %.not, i1 %.not46, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str.8, i32 noundef 226) #46
  br label %bn_reduce_once.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !80
  %.not50 = icmp eq i32 %i.d, 0
  br i1 %.not50, label %bn_reduce_once.exit, label %.lr.ph

.lr.ph.i.i:                                       ; preds = %.lr.ph
  %i.i = getelementptr [8 x i8], ptr %2, i64 %1   ; 6 uses
  %i.j = tail call { i64, i64, i64 } asm sideeffect "\09subq\09$0,$0\09\09\0A\09jmp\091f\09\09\0A.p2align 4\09\09\09\0A1:\09movq\09($4,$2,8),$0\09\0A\09sbbq\09($5,$2,8),$0\09\0A\09movq\09$0,($3,$2,8)\09\0A\09lea\091($2),$2\09\0A\09dec\09$1\09\09\0A\09jnz\091b\09\09\0A\09sbbq\09$0,$0\09\09\0A", "=&r,=&{cx},=&r,r,r,r,1,2,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %0, ptr nonnull %i.i, ptr %i.b, i64 %1, i64 0) #46, !srcloc !97
  %i.k = extractvalue { i64, i64, i64 } %i.j, 0
  %i.l = and i64 %i.k, 1
  %i.m = sub nsw i64 %i.bk, %i.l                  ; 2 uses
  %i.n = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.m) #47, !srcloc !81 ; 4 uses
  %i.o = xor i64 %i.m, -1
  %i.p = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.o) #47, !srcloc !81 ; 4 uses
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.q = shl nsw i64 %1, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.q
  %i.r = shl nsw i64 %1, 4
  %scevgep53 = getelementptr i8, ptr %2, i64 %i.r
  %bound0 = icmp ult ptr %0, %scevgep53
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert54 = insertelement <2 x i64> poison, i64 %i.p, i64 0
  %broadcast.splat55 = shufflevector <2 x i64> %broadcast.splatinsert54, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x i64>, ptr %i.s, align 8, !tbaa !80, !alias.scope !1466
  %wide.load56 = load <2 x i64>, ptr %i.t, align 8, !tbaa !80, !alias.scope !1466
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %wide.load57 = load <2 x i64>, ptr %i.u, align 8, !tbaa !80, !alias.scope !1467, !noalias !1466
  %wide.load58 = load <2 x i64>, ptr %i.v, align 8, !tbaa !80, !alias.scope !1467, !noalias !1466
  %i.w = and <2 x i64> %wide.load, %broadcast.splat
  %i.x = and <2 x i64> %wide.load56, %broadcast.splat
  %i.y = and <2 x i64> %wide.load57, %broadcast.splat55
  %i.z = and <2 x i64> %wide.load58, %broadcast.splat55
  %i.aa = or <2 x i64> %i.y, %i.w
  %i.ab = or <2 x i64> %i.z, %i.x
  store <2 x i64> %i.aa, ptr %i.u, align 8, !tbaa !80, !alias.scope !1467, !noalias !1466
  store <2 x i64> %i.ab, ptr %i.v, align 8, !tbaa !80, !alias.scope !1467, !noalias !1466
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !1463

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %bn_reduce_once.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.i.ph, 1
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.09.i.i.ph
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !80
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.i.ph ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !80
  %i.ah = and i64 %i.ae, %i.n
  %i.ai = and i64 %i.ag, %i.p
  %i.aj = or i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %i.af, align 8, !tbaa !80
  %i.ak = or disjoint i64 %.09.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %scalar.ph.preheader ], [ %i.ak, %scalar.ph.prol ]
  %i.al = icmp eq i64 %1, %.neg
  br i1 %i.al, label %bn_reduce_once.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i = phi i64 [ %i.bb, %scalar.ph ], [ %.09.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.09.i.i
  %i.an = load i64, ptr %i.am, align 8, !tbaa !80
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.i ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !80
  %i.aq = and i64 %i.an, %i.n
  %i.ar = and i64 %i.ap, %i.p
  %i.as = or i64 %i.ar, %i.aq
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !80
  %i.at = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !80
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.at ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !80
  %i.ay = and i64 %i.av, %i.n
  %i.az = and i64 %i.ax, %i.p
  %i.ba = or i64 %i.az, %i.ay
  store i64 %i.ba, ptr %i.aw, align 8, !tbaa !80
  %i.bb = add nuw i64 %.09.i.i, 2                 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bb, %1
  br i1 %exitcond.not.i.i.1, label %bn_reduce_once.exit, label %scalar.ph, !llvm.loop !1464

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.04349 = phi i64 [ %i.bl, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %.04448 = phi i64 [ %i.bk, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04349 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !80
  %i.be = mul i64 %i.bd, %i.h
  %i.bf = tail call i64 @bn_mul_add_words(ptr noundef nonnull %i.bc, ptr noundef %i.b, i64 noundef %1, i64 noundef %i.be)
  %i.bg = getelementptr [8 x i8], ptr %i.bc, i64 %1 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !80 ; 2 uses
  %i.bi = add i64 %i.bf, %.04448                  ; 2 uses
  %i.bj = add i64 %i.bi, %i.bh                    ; 2 uses
  %.not47 = icmp ule i64 %i.bj, %i.bh
  %5 = or i64 %i.bi, %.04448
  %.narrow = icmp ne i64 %5, 0
  %narrow = select i1 %.not47, i1 %.narrow, i1 false
  %i.bk = zext i1 %narrow to i64                  ; 2 uses
  store i64 %i.bj, ptr %i.bg, align 8, !tbaa !80
  %i.bl = add nuw i64 %.04349, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %1
  br i1 %exitcond.not, label %.lr.ph.i.i, label %.lr.ph, !llvm.loop !1465

bn_reduce_once.exit:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %middle.block ], [ 1, %scalar.ph ], [ 1, %scalar.ph.prol.loopexit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @bn_sqr_small(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [18 x i64], align 16              ; 4 uses
  %i.b = shl i64 %3, 1
  %i.c = icmp ne i64 %1, %i.b
  %i.d = icmp ugt i64 %3, 9
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #49
  unreachable

bb.c:                                             ; preds = %bb.a
  switch i64 %3, label %bb.f [
    i64 4, label %bb.d
    i64 8, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @bn_sqr_comba4(ptr noundef %0, ptr noundef %2)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @bn_sqr_comba8(ptr noundef %0, ptr noundef %2)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call fastcc void @bn_sqr_normal(ptr noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %i.a)
  %i.e = shl nuw nsw i64 %3, 4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef %i.e) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bn_mul_small(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %5, %3
  %.not = icmp eq i64 %1, %i.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #49
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %3, 8
  %i.c = icmp eq i64 %5, 8
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @bn_mul_comba8(ptr noundef %0, ptr noundef %2, ptr noundef %4)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @bn_mul_normal(ptr noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

declare i32 @bn_sqr8x_mont(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @bn_mulx4x_mont(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @bn_mul4x_mont(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @bn_mul_mont_nohw(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @bn_mont_n0(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92
  %i.b = load i64, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.018.i = phi i64 [ 1, %bb.a ], [ %i.p, %bb.b ] ; 3 uses
  %.01417.i = phi i64 [ 0, %bb.a ], [ %i.u, %bb.b ]
  %.01516.i = phi i64 [ 0, %bb.a ], [ %i.v, %bb.b ]
  %i.c = and i64 %.018.i, 1
  %i.d = sub nsw i64 0, %i.c                      ; 2 uses
  %i.e = and i64 %i.b, %i.d                       ; 2 uses
  %i.f = xor i64 %i.e, %.018.i
  %i.g = lshr i64 %i.f, 1
  %i.h = and i64 %i.e, %.018.i
  %i.i = add i64 %i.g, %i.h                       ; 3 uses
  %i.j = and i64 %i.i, 1
  %i.k = sub nsw i64 0, %i.j                      ; 2 uses
  %i.l = and i64 %i.b, %i.k                       ; 2 uses
  %i.m = xor i64 %i.l, %i.i
  %i.n = lshr i64 %i.m, 1
  %i.o = and i64 %i.l, %i.i
  %i.p = add i64 %i.n, %i.o
  %i.q = and i64 %i.k, -9223372036854775808
  %i.r = lshr i64 %.01417.i, 2
  %i.s = and i64 %i.d, 4611686018427387904
  %i.t = or disjoint i64 %i.r, %i.s
  %i.u = or disjoint i64 %i.q, %i.t               ; 2 uses
  %i.v = add nuw nsw i64 %.01516.i, 2             ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.v, 64
  br i1 %exitcond.not.i.1, label %bn_neg_inv_mod_r_u64.exit, label %bb.b, !llvm.loop !15

bn_neg_inv_mod_r_u64.exit:                        ; preds = %bb.b
  ret i64 %i.u
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @bn_abs_sub_consttime(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !93   ; 3 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.d)
  %i.e = sub nsw i32 %i.b, %i.d
  %i.f = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.d) ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !110
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %bb.b, label %BN_CTX_start.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !111
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !112  ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !113
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !109
  br label %BN_STACK_push.exit.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i64 %i.m, 0
  %i.q = mul i64 %i.m, 3
  %i.r = lshr i64 %i.q, 1
  %i.s = select i1 %.not.i.i, i64 32, i64 %i.r    ; 4 uses
  %i.t = icmp ule i64 %i.s, %i.m
  %i.u = icmp samesign ugt i64 %i.s, 2305843009213693951
  %or.cond.i.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.w = shl nuw i64 %i.s, 3
  %i.x = tail call ptr @OPENSSL_realloc(ptr noundef %i.v, i64 noundef %i.w) #46 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.x, ptr %i.i, align 8, !tbaa !109
  store i64 %i.s, ptr %i.n, align 8, !tbaa !113
  %.pre26.i.i = load i64, ptr %i.l, align 8, !tbaa !112
  br label %BN_STACK_push.exit.i

BN_STACK_push.exit.i:                             ; preds = %bb.e, %._crit_edge.i.i
  %i.z = phi i64 [ %i.m, %._crit_edge.i.i ], [ %.pre26.i.i, %bb.e ]
  %i.aa = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.x, %bb.e ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  store i64 %i.k, ptr %i.ab, align 8, !tbaa !80
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !112
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.l, align 8, !tbaa !112
  br label %BN_CTX_start.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  store i8 1, ptr %i.g, align 8, !tbaa !110
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 41
  store i8 1, ptr %i.ae, align 1, !tbaa !114
  br label %BN_CTX_start.exit

BN_CTX_start.exit:                                ; preds = %bb.a, %BN_STACK_push.exit.i, %bb.f
  %i.af = tail call ptr @BN_CTX_get(ptr noundef nonnull %3) ; 8 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %.thread, label %bb.g
end_hunk_0
