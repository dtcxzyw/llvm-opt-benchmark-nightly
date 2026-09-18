Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bn_exp?download=true
inline.NumInlined: 16
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 19
begin_hunk_0_@bn_mod_exp_mont_fixed_top:bb.a
  call void @CRYPTO_free(ptr noundef %.2392, ptr noundef nonnull @.str, i32 noundef 1140) #7
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  call void @BN_CTX_end(ptr noundef %4) #7
  br label %bb.az

bb.az:                                            ; preds = %bb.g, %bb.h, %bb.ay, %bb.d, %bb.b
  %.0305 = phi i32 [ %i.e, %bb.d ], [ 0, %bb.b ], [ %i.k, %bb.h ], [ %.1298389, %bb.ay ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret i32 %.0305
}

declare i32 @rsaz_avx2_eligible() local_unnamed_addr #2

declare void @RSAZ_1024_mod_exp_avx2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @bn_correct_top(ptr noundef) local_unnamed_addr #2

declare void @RSAZ_512_mod_exp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @bn_scatter5(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @bn_mul_mont(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @bn_mul_mont_gather5(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @bn_get_bits(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = sdiv i32 %1, 64                          ; 3 uses
  %i.b = srem i32 %1, 64                          ; 3 uses
  %i.c = icmp sgt i32 %1, -64
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %i.f = icmp slt i32 %i.a, %i.e
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.h = zext nneg i32 %i.a to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.b to i64
  %i.l = lshr i64 %i.j, %i.k                      ; 2 uses
  %i.m = add nuw nsw i32 %i.a, 1                  ; 2 uses
  %i.n = icmp slt i32 %i.m, %i.e
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = zext nneg i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = sub nsw i32 64, %i.b
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl i64 %i.q, %i.s
  %i.u = or i64 %i.t, %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b, %bb.a
  %.0 = phi i64 [ %i.u, %bb.e ], [ %i.l, %bb.d ], [ %i.j, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

declare void @bn_gather5(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @bn_get_bits5(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @bn_power5(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @MOD_EXP_CTIME_COPY_FROM_PREBUF(ptr noundef nonnull %0, i32 noundef range(i32 -2147483648, 1048576) %1, ptr nofree noundef nonnull captures(address) %2, i32 noundef %3, i32 noundef range(i32 1, 7) %4) unnamed_addr #0 {
bb.a:
  %i.a = shl nuw nsw i32 1, %4
  %.fr429 = freeze i32 %i.a                       ; 3 uses
  %i.b = tail call ptr @bn_wexpand(ptr noundef nonnull %0, i32 noundef %1) #7
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %4, 4
  br i1 %i.d, label %.preheader81, label %bb.d

.preheader81:                                     ; preds = %bb.b
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader81
  %i.f = zext i32 %.fr429 to i64                  ; 3 uses
  %i.g = zext i32 %3 to i64                       ; 5 uses
  %wide.trip.count349 = zext nneg i32 %1 to i64
  %xtraiter423 = and i64 %i.f, 3                  ; 3 uses
  %i.h = add i32 %.fr429, -1
  %i.i = icmp ult i32 %i.h, 3
  %unroll_iter427 = and i64 %i.f, 4294967292
  %lcmp.mod424.not = icmp eq i64 %xtraiter423, 0
  %lcmp.mod426 = icmp ne i64 %xtraiter423, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.epilog-lcssa
  %indvars.iv346 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next347, %.epilog-lcssa ] ; 2 uses
  %.064163 = phi ptr [ %2, %.preheader.lr.ph ], [ %i.ak, %.epilog-lcssa ] ; 6 uses
  br i1 %i.i, label %.epil.preheader422, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv341 = phi i64 [ %indvars.iv.next342.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %.063161 = phi i64 [ %i.ac, %.preheader.new ], [ 0, %.preheader ]
  %niter428 = phi i64 [ %niter428.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.064163, i64 %indvars.iv341
  %i.k = load volatile i64, ptr %i.j, align 8, !tbaa !16
  %i.l = icmp eq i64 %indvars.iv341, %i.g
  %i.m = select i1 %i.l, i64 %i.k, i64 0
  %i.n = or i64 %i.m, %.063161
  %indvars.iv.next342 = or disjoint i64 %indvars.iv341, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.064163, i64 %indvars.iv.next342
  %i.p = load volatile i64, ptr %i.o, align 8, !tbaa !16
  %i.q = icmp eq i64 %indvars.iv.next342, %i.g
  %i.r = select i1 %i.q, i64 %i.p, i64 0
  %i.s = or i64 %i.r, %i.n
  %indvars.iv.next342.1 = or disjoint i64 %indvars.iv341, 2 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.064163, i64 %indvars.iv.next342.1
  %i.u = load volatile i64, ptr %i.t, align 8, !tbaa !16
  %i.v = icmp eq i64 %indvars.iv.next342.1, %i.g
  %i.w = select i1 %i.v, i64 %i.u, i64 0
  %i.x = or i64 %i.w, %i.s
  %indvars.iv.next342.2 = or disjoint i64 %indvars.iv341, 3 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.064163, i64 %indvars.iv.next342.2
  %i.z = load volatile i64, ptr %i.y, align 8, !tbaa !16
  %i.aa = icmp eq i64 %indvars.iv.next342.2, %i.g
  %i.ab = select i1 %i.aa, i64 %i.z, i64 0
  %i.ac = or i64 %i.ab, %i.x                      ; 3 uses
  %indvars.iv.next342.3 = add nuw nsw i64 %indvars.iv341, 4 ; 2 uses
  %niter428.next.3 = add i64 %niter428, 4         ; 2 uses
  %niter428.ncmp.3 = icmp eq i64 %niter428.next.3, %unroll_iter427
  br i1 %niter428.ncmp.3, label %.unr-lcssa, label %.preheader.new, !llvm.loop !58

.unr-lcssa:                                       ; preds = %.preheader.new
  br i1 %lcmp.mod424.not, label %.epilog-lcssa, label %.epil.preheader422

.epil.preheader422:                               ; preds = %.unr-lcssa, %.preheader
  %indvars.iv341.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next342.3, %.unr-lcssa ]
  %.063161.epil.init = phi i64 [ 0, %.preheader ], [ %i.ac, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod426)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader422
  %indvars.iv341.epil = phi i64 [ %indvars.iv341.epil.init, %.epil.preheader422 ], [ %indvars.iv.next342.epil, %bb.c ] ; 3 uses
  %.063161.epil = phi i64 [ %.063161.epil.init, %.epil.preheader422 ], [ %i.ah, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader422 ], [ %epil.iter.next, %bb.c ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.064163, i64 %indvars.iv341.epil
  %i.ae = load volatile i64, ptr %i.ad, align 8, !tbaa !16
  %i.af = icmp eq i64 %indvars.iv341.epil, %i.g
  %i.ag = select i1 %i.af, i64 %i.ae, i64 0
  %i.ah = or i64 %i.ag, %.063161.epil             ; 2 uses
  %indvars.iv.next342.epil = add nuw nsw i64 %indvars.iv341.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter423
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !59

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %.lcssa = phi i64 [ %i.ac, %.unr-lcssa ], [ %i.ah, %bb.c ]
  %i.ai = load ptr, ptr %0, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv346
  store i64 %.lcssa, ptr %i.aj, align 8, !tbaa !16
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.064163, i64 %i.f
  %exitcond350.not = icmp eq i64 %indvars.iv.next347, %wide.trip.count349
  br i1 %exitcond350.not, label %.loopexit, label %.preheader, !llvm.loop !60

bb.d:                                             ; preds = %bb.b
  %i.al = add nsw i32 %4, -2                      ; 4 uses
  %i.am = shl nuw nsw i32 1, %i.al
  %.fr = freeze i32 %i.am                         ; 13 uses
  %i.an = ashr i32 %3, %i.al
  %.fr164 = freeze i32 %i.an                      ; 2 uses
  %i.ao = add nsw i32 %.fr, -1
  %i.ap = and i32 %i.ao, %3                       ; 4 uses
  %i.aq = icmp eq i32 %.fr164, 3                  ; 3 uses
  %i.ar = icmp sgt i32 %1, 0
  br i1 %i.ar, label %.preheader82.lr.ph, label %.loopexit

.preheader82.lr.ph:                               ; preds = %bb.d
  %i.as = shl nuw nsw i32 2, %i.al                ; 4 uses
  %i.at = shl nuw nsw i32 3, %i.al                ; 4 uses
  %i.au = zext nneg i32 %.fr429 to i64            ; 4 uses
  %wide.trip.count199 = zext nneg i32 %1 to i64   ; 4 uses
  switch i32 %.fr164, label %.preheader82.preheader [
    i32 0, label %.preheader82.us.preheader
    i32 1, label %.preheader82.us102.preheader
    i32 2, label %.preheader82.us105.preheader
  ]

.preheader82.us.preheader:                        ; preds = %.preheader82.lr.ph
  %i.av = zext i32 %.fr to i64                    ; 3 uses
  %i.aw = zext nneg i32 %i.as to i64
  %i.ax = zext nneg i32 %i.at to i64
  %i.ay = zext nneg i32 %i.ap to i64              ; 3 uses
  %xtraiter409 = and i64 %i.av, 1
  %i.az = icmp eq i32 %.fr, 1
  %unroll_iter413 = and i64 %i.av, 4294967294
  %lcmp.mod410.not = icmp eq i64 %xtraiter409, 0
  %lcmp.mod412 = trunc i32 %.fr to i1
  br label %.preheader82.us

.preheader82.us:                                  ; preds = %.preheader82.us.preheader, %.split.us.us.split.split.split
  %indvars.iv266 = phi i64 [ 0, %.preheader82.us.preheader ], [ %indvars.iv.next267, %.split.us.us.split.split.split ] ; 2 uses
  %.199.us = phi ptr [ %2, %.preheader82.us.preheader ], [ %i.ca, %.split.us.us.split.split.split ] ; 7 uses
  %invariant.gep377.a = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %i.av ; 3 uses
  %invariant.gep379.a = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %i.aw ; 3 uses
  %invariant.gep381.a = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %i.ax ; 3 uses
  br i1 %i.az, label %.epil.preheader408, label %.preheader82.us.new

.preheader82.us.new:                              ; preds = %.preheader82.us, %.preheader82.us.new
  %indvars.iv261 = phi i64 [ %indvars.iv.next262.1, %.preheader82.us.new ], [ 0, %.preheader82.us ] ; 7 uses
  %.085.us.us = phi i64 [ %i.bp, %.preheader82.us.new ], [ 0, %.preheader82.us ]
  %niter414 = phi i64 [ %niter414.next.1, %.preheader82.us.new ], [ 0, %.preheader82.us ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %indvars.iv261
  %i.bb = load volatile i64, ptr %i.ba, align 8, !tbaa !16
  %gep378.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep377.a, i64 %indvars.iv261
  %i.bc = load volatile i64, ptr %gep378.a, align 8, !tbaa !16 ; 0 uses
  %gep380.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep379.a, i64 %indvars.iv261
  %i.bd = load volatile i64, ptr %gep380.a, align 8, !tbaa !16 ; 0 uses
  %gep382.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep381.a, i64 %indvars.iv261
  %i.be = load volatile i64, ptr %gep382.a, align 8, !tbaa !16 ; 0 uses
  %i.bf = icmp eq i64 %indvars.iv261, %i.ay
  %i.bg = select i1 %i.bf, i64 %i.bb, i64 0
  %i.bh = or i64 %i.bg, %.085.us.us
  %indvars.iv.next262 = or disjoint i64 %indvars.iv261, 1 ; 5 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %indvars.iv.next262
  %i.bj = load volatile i64, ptr %i.bi, align 8, !tbaa !16
  %gep378.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep377.a, i64 %indvars.iv.next262
  %i.bk = load volatile i64, ptr %gep378.1.a, align 8, !tbaa !16 ; 0 uses
  %gep380.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep379.a, i64 %indvars.iv.next262
  %i.bl = load volatile i64, ptr %gep380.1.a, align 8, !tbaa !16 ; 0 uses
  %gep382.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep381.a, i64 %indvars.iv.next262
  %i.bm = load volatile i64, ptr %gep382.1.a, align 8, !tbaa !16 ; 0 uses
  %i.bn = icmp eq i64 %indvars.iv.next262, %i.ay
  %i.bo = select i1 %i.bn, i64 %i.bj, i64 0
  %i.bp = or i64 %i.bo, %i.bh                     ; 3 uses
  %indvars.iv.next262.1 = add nuw nsw i64 %indvars.iv261, 2 ; 2 uses
  %niter414.next.1 = add i64 %niter414, 2         ; 2 uses
  %niter414.ncmp.1 = icmp eq i64 %niter414.next.1, %unroll_iter413
  br i1 %niter414.ncmp.1, label %.split.us.us.split.split.split.unr-lcssa, label %.preheader82.us.new, !llvm.loop !61

.split.us.us.split.split.split.unr-lcssa:         ; preds = %.preheader82.us.new
  br i1 %lcmp.mod410.not, label %.split.us.us.split.split.split, label %.epil.preheader408

.epil.preheader408:                               ; preds = %.split.us.us.split.split.split.unr-lcssa, %.preheader82.us
  %indvars.iv261.epil.init = phi i64 [ 0, %.preheader82.us ], [ %indvars.iv.next262.1, %.split.us.us.split.split.split.unr-lcssa ] ; 5 uses
  %.085.us.us.epil.init = phi i64 [ 0, %.preheader82.us ], [ %i.bp, %.split.us.us.split.split.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod412)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %indvars.iv261.epil.init
  %i.br = load volatile i64, ptr %i.bq, align 8, !tbaa !16
  %gep378.epil.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep377.a, i64 %indvars.iv261.epil.init
  %i.bs = load volatile i64, ptr %gep378.epil.a, align 8, !tbaa !16 ; 0 uses
  %gep380.epil.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep379.a, i64 %indvars.iv261.epil.init
  %i.bt = load volatile i64, ptr %gep380.epil.a, align 8, !tbaa !16 ; 0 uses
  %gep382.epil.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep381.a, i64 %indvars.iv261.epil.init
  %i.bu = load volatile i64, ptr %gep382.epil.a, align 8, !tbaa !16 ; 0 uses
  %i.bv = icmp eq i64 %indvars.iv261.epil.init, %i.ay
  %i.bw = select i1 %i.bv, i64 %i.br, i64 0
  %i.bx = or i64 %i.bw, %.085.us.us.epil.init
  br label %.split.us.us.split.split.split

.split.us.us.split.split.split:                   ; preds = %.split.us.us.split.split.split.unr-lcssa, %.epil.preheader408
  %.lcssa394 = phi i64 [ %i.bp, %.split.us.us.split.split.split.unr-lcssa ], [ %i.bx, %.epil.preheader408 ]
  %i.by = load ptr, ptr %0, align 8, !tbaa !14
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv266
  store i64 %.lcssa394, ptr %i.bz, align 8, !tbaa !16
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %i.au
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count199
  br i1 %exitcond270.not, label %.loopexit, label %.preheader82.us, !llvm.loop !62

.preheader82.us102.preheader:                     ; preds = %.preheader82.lr.ph
  %i.cb = zext i32 %.fr to i64                    ; 3 uses
  %i.cc = zext nneg i32 %i.as to i64
  %i.cd = zext nneg i32 %i.at to i64
  %i.ce = zext nneg i32 %i.ap to i64              ; 3 uses
  %xtraiter402 = and i64 %i.cb, 1
  %i.cf = icmp eq i32 %.fr, 1
  %unroll_iter406 = and i64 %i.cb, 4294967294
  %lcmp.mod403.not = icmp eq i64 %xtraiter402, 0
  %lcmp.mod405 = trunc i32 %.fr to i1
  br label %.preheader82.us102

.preheader82.us102:                               ; preds = %.preheader82.us102.preheader, %.split.split.us.us.split.split
  %indvars.iv226 = phi i64 [ 0, %.preheader82.us102.preheader ], [ %indvars.iv.next227, %.split.split.us.us.split.split ] ; 2 uses
  %.199.us103 = phi ptr [ %2, %.preheader82.us102.preheader ], [ %i.dg, %.split.split.us.us.split.split ] ; 7 uses
  %invariant.gep371.a = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %i.cb ; 3 uses
  %invariant.gep373.a = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %i.cc ; 3 uses
  %invariant.gep375.a = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %i.cd ; 3 uses
  br i1 %i.cf, label %.epil.preheader401, label %.preheader82.us102.new

.preheader82.us102.new:                           ; preds = %.preheader82.us102, %.preheader82.us102.new
  %indvars.iv221 = phi i64 [ %indvars.iv.next222.1, %.preheader82.us102.new ], [ 0, %.preheader82.us102 ] ; 7 uses
  %.085.us86.us = phi i64 [ %i.cv, %.preheader82.us102.new ], [ 0, %.preheader82.us102 ]
  %niter407 = phi i64 [ %niter407.next.1, %.preheader82.us102.new ], [ 0, %.preheader82.us102 ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %indvars.iv221
  %i.ch = load volatile i64, ptr %i.cg, align 8, !tbaa !16 ; 0 uses
  %gep372.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep371.a, i64 %indvars.iv221
  %i.ci = load volatile i64, ptr %gep372.a, align 8, !tbaa !16
  %gep374.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep373.a, i64 %indvars.iv221
  %i.cj = load volatile i64, ptr %gep374.a, align 8, !tbaa !16 ; 0 uses
  %gep376.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep375.a, i64 %indvars.iv221
  %i.ck = load volatile i64, ptr %gep376.a, align 8, !tbaa !16 ; 0 uses
  %i.cl = icmp eq i64 %indvars.iv221, %i.ce
  %i.cm = select i1 %i.cl, i64 %i.ci, i64 0
  %i.cn = or i64 %i.cm, %.085.us86.us
  %indvars.iv.next222 = or disjoint i64 %indvars.iv221, 1 ; 5 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %indvars.iv.next222
  %i.cp = load volatile i64, ptr %i.co, align 8, !tbaa !16 ; 0 uses
  %gep372.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep371.a, i64 %indvars.iv.next222
  %i.cq = load volatile i64, ptr %gep372.1.a, align 8, !tbaa !16
  %gep374.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep373.a, i64 %indvars.iv.next222
  %i.cr = load volatile i64, ptr %gep374.1.a, align 8, !tbaa !16 ; 0 uses
  %gep376.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep375.a, i64 %indvars.iv.next222
  %i.cs = load volatile i64, ptr %gep376.1.a, align 8, !tbaa !16 ; 0 uses
  %i.ct = icmp eq i64 %indvars.iv.next222, %i.ce
  %i.cu = select i1 %i.ct, i64 %i.cq, i64 0
  %i.cv = or i64 %i.cu, %i.cn                     ; 3 uses
  %indvars.iv.next222.1 = add nuw nsw i64 %indvars.iv221, 2 ; 2 uses
  %niter407.next.1 = add i64 %niter407, 2         ; 2 uses
  %niter407.ncmp.1 = icmp eq i64 %niter407.next.1, %unroll_iter406
  br i1 %niter407.ncmp.1, label %.split.split.us.us.split.split.unr-lcssa, label %.preheader82.us102.new, !llvm.loop !61

.split.split.us.us.split.split.unr-lcssa:         ; preds = %.preheader82.us102.new
  br i1 %lcmp.mod403.not, label %.split.split.us.us.split.split, label %.epil.preheader401

.epil.preheader401:                               ; preds = %.split.split.us.us.split.split.unr-lcssa, %.preheader82.us102
  %indvars.iv221.epil.init = phi i64 [ 0, %.preheader82.us102 ], [ %indvars.iv.next222.1, %.split.split.us.us.split.split.unr-lcssa ] ; 5 uses
  %.085.us86.us.epil.init = phi i64 [ 0, %.preheader82.us102 ], [ %i.cv, %.split.split.us.us.split.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod405)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %indvars.iv221.epil.init
  %i.cx = load volatile i64, ptr %i.cw, align 8, !tbaa !16 ; 0 uses
  %gep372.epil.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep371.a, i64 %indvars.iv221.epil.init
  %i.cy = load volatile i64, ptr %gep372.epil.a, align 8, !tbaa !16
  %gep374.epil.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep373.a, i64 %indvars.iv221.epil.init
  %i.cz = load volatile i64, ptr %gep374.epil.a, align 8, !tbaa !16 ; 0 uses
  %gep376.epil.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep375.a, i64 %indvars.iv221.epil.init
  %i.da = load volatile i64, ptr %gep376.epil.a, align 8, !tbaa !16 ; 0 uses
  %i.db = icmp eq i64 %indvars.iv221.epil.init, %i.ce
  %i.dc = select i1 %i.db, i64 %i.cy, i64 0
  %i.dd = or i64 %i.dc, %.085.us86.us.epil.init
  br label %.split.split.us.us.split.split

.split.split.us.us.split.split:                   ; preds = %.split.split.us.us.split.split.unr-lcssa, %.epil.preheader401
  %.lcssa396 = phi i64 [ %i.cv, %.split.split.us.us.split.split.unr-lcssa ], [ %i.dd, %.epil.preheader401 ]
  %i.de = load ptr, ptr %0, align 8, !tbaa !14
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv226
  store i64 %.lcssa396, ptr %i.df, align 8, !tbaa !16
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %i.au
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count199
  br i1 %exitcond230.not, label %.loopexit, label %.preheader82.us102, !llvm.loop !62

.preheader82.preheader:                           ; preds = %.preheader82.lr.ph
  %i.dh = zext nneg i32 %i.ap to i64              ; 3 uses
  %i.di = zext i32 %.fr to i64                    ; 3 uses
  %i.dj = zext nneg i32 %i.as to i64
  %i.dk = zext nneg i32 %i.at to i64
  %xtraiter416 = and i64 %i.di, 1
  %i.dl = icmp eq i32 %.fr, 1
  %unroll_iter420 = and i64 %i.di, 4294967294
  %lcmp.mod417.not = icmp eq i64 %xtraiter416, 0
  %lcmp.mod419 = trunc i32 %.fr to i1
  br label %.preheader82

.preheader82.us105.preheader:                     ; preds = %.preheader82.lr.ph
  %i.dm = zext i32 %.fr to i64                    ; 3 uses
  %i.dn = zext nneg i32 %i.as to i64
  %i.do = zext nneg i32 %i.at to i64
  %i.dp = zext nneg i32 %i.ap to i64              ; 3 uses
  %xtraiter = and i64 %i.dm, 1
  %i.dq = icmp eq i32 %.fr, 1
  %unroll_iter = and i64 %i.dm, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod400 = trunc i32 %.fr to i1
  br label %.preheader82.us105

.preheader82.us105:                               ; preds = %.preheader82.us105.preheader, %.split.split.split.us.us.split
  %indvars.iv206 = phi i64 [ 0, %.preheader82.us105.preheader ], [ %indvars.iv.next207, %.split.split.split.us.us.split ] ; 2 uses
  %.199.us106 = phi ptr [ %2, %.preheader82.us105.preheader ], [ %i.er, %.split.split.split.us.us.split ] ; 7 uses
  %invariant.gep365 = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %i.dm ; 3 uses
  %invariant.gep367.a = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %i.dn ; 3 uses
  %invariant.gep369.a = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %i.do ; 3 uses
  br i1 %i.dq, label %.epil.preheader, label %.preheader82.us105.new

.preheader82.us105.new:                           ; preds = %.preheader82.us105, %.preheader82.us105.new
  %indvars.iv201 = phi i64 [ %indvars.iv.next202.1, %.preheader82.us105.new ], [ 0, %.preheader82.us105 ] ; 7 uses
  %.085.us92.us = phi i64 [ %i.eg, %.preheader82.us105.new ], [ 0, %.preheader82.us105 ]
  %niter = phi i64 [ %niter.next.1, %.preheader82.us105.new ], [ 0, %.preheader82.us105 ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %indvars.iv201
  %i.ds = load volatile i64, ptr %i.dr, align 8, !tbaa !16 ; 0 uses
  %gep366 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep365, i64 %indvars.iv201
  %i.dt = load volatile i64, ptr %gep366, align 8, !tbaa !16 ; 0 uses
  %gep368.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep367.a, i64 %indvars.iv201
  %i.du = load volatile i64, ptr %gep368.a, align 8, !tbaa !16
  %gep370.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep369.a, i64 %indvars.iv201
  %i.dv = load volatile i64, ptr %gep370.a, align 8, !tbaa !16 ; 0 uses
  %i.dw = icmp eq i64 %indvars.iv201, %i.dp
  %i.dx = select i1 %i.dw, i64 %i.du, i64 0
  %i.dy = or i64 %i.dx, %.085.us92.us
  %indvars.iv.next202 = or disjoint i64 %indvars.iv201, 1 ; 5 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %indvars.iv.next202
  %i.ea = load volatile i64, ptr %i.dz, align 8, !tbaa !16 ; 0 uses
  %gep366.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep365, i64 %indvars.iv.next202
  %i.eb = load volatile i64, ptr %gep366.1, align 8, !tbaa !16 ; 0 uses
  %gep368.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep367.a, i64 %indvars.iv.next202
  %i.ec = load volatile i64, ptr %gep368.1.a, align 8, !tbaa !16
  %gep370.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep369.a, i64 %indvars.iv.next202
  %i.ed = load volatile i64, ptr %gep370.1.a, align 8, !tbaa !16 ; 0 uses
  %i.ee = icmp eq i64 %indvars.iv.next202, %i.dp
  %i.ef = select i1 %i.ee, i64 %i.ec, i64 0
  %i.eg = or i64 %i.ef, %i.dy                     ; 3 uses
  %indvars.iv.next202.1 = add nuw nsw i64 %indvars.iv201, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split.split.split.us.us.split.unr-lcssa, label %.preheader82.us105.new, !llvm.loop !61

.split.split.split.us.us.split.unr-lcssa:         ; preds = %.preheader82.us105.new
  br i1 %lcmp.mod.not, label %.split.split.split.us.us.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %.split.split.split.us.us.split.unr-lcssa, %.preheader82.us105
  %indvars.iv201.epil.init = phi i64 [ 0, %.preheader82.us105 ], [ %indvars.iv.next202.1, %.split.split.split.us.us.split.unr-lcssa ] ; 5 uses
  %.085.us92.us.epil.init = phi i64 [ 0, %.preheader82.us105 ], [ %i.eg, %.split.split.split.us.us.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod400)
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %indvars.iv201.epil.init
  %i.ei = load volatile i64, ptr %i.eh, align 8, !tbaa !16 ; 0 uses
  %gep366.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep365, i64 %indvars.iv201.epil.init
  %i.ej = load volatile i64, ptr %gep366.epil, align 8, !tbaa !16 ; 0 uses
  %gep368.epil.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep367.a, i64 %indvars.iv201.epil.init
  %i.ek = load volatile i64, ptr %gep368.epil.a, align 8, !tbaa !16
  %gep370.epil.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep369.a, i64 %indvars.iv201.epil.init
  %i.el = load volatile i64, ptr %gep370.epil.a, align 8, !tbaa !16 ; 0 uses
  %i.em = icmp eq i64 %indvars.iv201.epil.init, %i.dp
  %i.en = select i1 %i.em, i64 %i.ek, i64 0
  %i.eo = or i64 %i.en, %.085.us92.us.epil.init
  br label %.split.split.split.us.us.split

.split.split.split.us.us.split:                   ; preds = %.split.split.split.us.us.split.unr-lcssa, %.epil.preheader
  %.lcssa398.a = phi i64 [ %i.eg, %.split.split.split.us.us.split.unr-lcssa ], [ %i.eo, %.epil.preheader ]
  %i.ep = load ptr, ptr %0, align 8, !tbaa !14
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv206
  store i64 %.lcssa398.a, ptr %i.eq, align 8, !tbaa !16
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %i.au
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count199
  br i1 %exitcond210.not, label %.loopexit, label %.preheader82.us105, !llvm.loop !62

.preheader82:                                     ; preds = %.preheader82.preheader, %.split.split.split
  %indvars.iv196 = phi i64 [ 0, %.preheader82.preheader ], [ %indvars.iv.next197, %.split.split.split ] ; 2 uses
  %.199 = phi ptr [ %2, %.preheader82.preheader ], [ %i.fv, %.split.split.split ] ; 7 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %i.di ; 3 uses
  %invariant.gep361 = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %i.dj ; 3 uses
  %invariant.gep363 = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %i.dk ; 3 uses
  br i1 %i.dl, label %.epil.preheader415, label %.preheader82.new

.preheader82.new:                                 ; preds = %.preheader82, %.preheader82.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader82.new ], [ 0, %.preheader82 ] ; 7 uses
  %.085 = phi i64 [ %i.fj, %.preheader82.new ], [ 0, %.preheader82 ]
  %niter421 = phi i64 [ %niter421.next.1, %.preheader82.new ], [ 0, %.preheader82 ]
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %indvars.iv
  %i.et = load volatile i64, ptr %i.es, align 8, !tbaa !16 ; 0 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.eu = load volatile i64, ptr %gep, align 8, !tbaa !16 ; 0 uses
  %gep362 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep361, i64 %indvars.iv
  %i.ev = load volatile i64, ptr %gep362, align 8, !tbaa !16 ; 0 uses
  %gep364 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep363, i64 %indvars.iv
  %i.ew = load volatile i64, ptr %gep364, align 8, !tbaa !16
  %i.ex = icmp eq i64 %indvars.iv, %i.dh
  %i.ey = and i1 %i.ex, %i.aq
  %i.ez = select i1 %i.ey, i64 %i.ew, i64 0
  %i.fa = or i64 %i.ez, %.085
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 5 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %indvars.iv.next
  %i.fc = load volatile i64, ptr %i.fb, align 8, !tbaa !16 ; 0 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.fd = load volatile i64, ptr %gep.1, align 8, !tbaa !16 ; 0 uses
  %gep362.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep361, i64 %indvars.iv.next
  %i.fe = load volatile i64, ptr %gep362.1, align 8, !tbaa !16 ; 0 uses
  %gep364.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep363, i64 %indvars.iv.next
  %i.ff = load volatile i64, ptr %gep364.1, align 8, !tbaa !16
  %i.fg = icmp eq i64 %indvars.iv.next, %i.dh
  %i.fh = and i1 %i.fg, %i.aq
  %i.fi = select i1 %i.fh, i64 %i.ff, i64 0
  %i.fj = or i64 %i.fi, %i.fa                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter421.next.1 = add i64 %niter421, 2         ; 2 uses
  %niter421.ncmp.1 = icmp eq i64 %niter421.next.1, %unroll_iter420
  br i1 %niter421.ncmp.1, label %.split.split.split.unr-lcssa, label %.preheader82.new, !llvm.loop !61

.split.split.split.unr-lcssa:                     ; preds = %.preheader82.new
  br i1 %lcmp.mod417.not, label %.split.split.split, label %.epil.preheader415

.epil.preheader415:                               ; preds = %.split.split.split.unr-lcssa, %.preheader82
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader82 ], [ %indvars.iv.next.1, %.split.split.split.unr-lcssa ] ; 5 uses
  %.085.epil.init = phi i64 [ 0, %.preheader82 ], [ %i.fj, %.split.split.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod419)
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %indvars.iv.epil.init
  %i.fl = load volatile i64, ptr %i.fk, align 8, !tbaa !16 ; 0 uses
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.fm = load volatile i64, ptr %gep.epil, align 8, !tbaa !16 ; 0 uses
  %gep362.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep361, i64 %indvars.iv.epil.init
  %i.fn = load volatile i64, ptr %gep362.epil, align 8, !tbaa !16 ; 0 uses
  %gep364.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep363, i64 %indvars.iv.epil.init
  %i.fo = load volatile i64, ptr %gep364.epil, align 8, !tbaa !16
  %i.fp = icmp eq i64 %indvars.iv.epil.init, %i.dh
  %i.fq = and i1 %i.fp, %i.aq
  %i.fr = select i1 %i.fq, i64 %i.fo, i64 0
  %i.fs = or i64 %i.fr, %.085.epil.init
  br label %.split.split.split

.split.split.split:                               ; preds = %.split.split.split.unr-lcssa, %.epil.preheader415
  %.lcssa392 = phi i64 [ %i.fj, %.split.split.split.unr-lcssa ], [ %i.fs, %.epil.preheader415 ]
  %i.ft = load ptr, ptr %0, align 8, !tbaa !14
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv196
  store i64 %.lcssa392, ptr %i.fu, align 8, !tbaa !16
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %i.au
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %wide.trip.count199
  br i1 %exitcond200.not, label %.loopexit, label %.preheader82, !llvm.loop !62

.loopexit:                                        ; preds = %.split.split.split.us.us.split, %.split.split.us.us.split.split, %.split.us.us.split.split.split, %.split.split.split, %.epilog-lcssa, %bb.d, %.preheader81
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.fw, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.loopexit
  %.069 = phi i32 [ 1, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.069
}

declare i32 @bn_from_mont_fixed_top(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_to_montgomery(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_mul_word(ptr noundef, i64 noundef) local_unnamed_addr #2

end_hunk_0
