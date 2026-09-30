Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bn_exp?download=true
inline.NumInlined: 16
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 19
begin_hunk_0_@bn_mod_exp_mont_fixed_top:bb.a
  %.0290396 = phi ptr [ %.0290397, %.thread383 ], [ %.0290, %.thread ] ; 2 uses
  %.1394 = phi i32 [ %.1395, %.thread383 ], [ %.1, %.thread ]
  %.2392 = phi ptr [ %.2393, %.thread383 ], [ %.2, %.thread ]
  %.1298389 = phi i32 [ %.1298390, %.thread383 ], [ %.1298, %.thread ]
  %.not335 = icmp eq ptr %.0290396, null
  br i1 %.not335, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.pu = sext i32 %.1394 to i64
  call void @OPENSSL_cleanse(ptr noundef nonnull %.0290396, i64 noundef %i.pu) #7
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
  %.fr435 = freeze i32 %i.a                       ; 3 uses
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
  %i.f = zext i32 %.fr435 to i64                  ; 3 uses
  %i.g = zext i32 %3 to i64                       ; 5 uses
  %wide.trip.count355 = zext nneg i32 %1 to i64
  %xtraiter429 = and i64 %i.f, 3                  ; 3 uses
  %i.h = add i32 %.fr435, -1
  %i.i = icmp ult i32 %i.h, 3
  %unroll_iter433 = and i64 %i.f, 4294967292
  %lcmp.mod430.not = icmp eq i64 %xtraiter429, 0
  %lcmp.mod432 = icmp ne i64 %xtraiter429, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.epilog-lcssa
  %indvars.iv352 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next353, %.epilog-lcssa ] ; 2 uses
  %.064169 = phi ptr [ %2, %.preheader.lr.ph ], [ %i.ak, %.epilog-lcssa ] ; 6 uses
  br i1 %i.i, label %.epil.preheader428, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv347 = phi i64 [ %indvars.iv.next348.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %.063167 = phi i64 [ %i.ac, %.preheader.new ], [ 0, %.preheader ]
  %niter434 = phi i64 [ %niter434.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.064169, i64 %indvars.iv347
  %i.k = load volatile i64, ptr %i.j, align 8, !tbaa !16
  %i.l = icmp eq i64 %indvars.iv347, %i.g
  %i.m = select i1 %i.l, i64 %i.k, i64 0
  %i.n = or i64 %i.m, %.063167
  %indvars.iv.next348 = or disjoint i64 %indvars.iv347, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.064169, i64 %indvars.iv.next348
  %i.p = load volatile i64, ptr %i.o, align 8, !tbaa !16
  %i.q = icmp eq i64 %indvars.iv.next348, %i.g
  %i.r = select i1 %i.q, i64 %i.p, i64 0
  %i.s = or i64 %i.r, %i.n
  %indvars.iv.next348.1 = or disjoint i64 %indvars.iv347, 2 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.064169, i64 %indvars.iv.next348.1
  %i.u = load volatile i64, ptr %i.t, align 8, !tbaa !16
  %i.v = icmp eq i64 %indvars.iv.next348.1, %i.g
  %i.w = select i1 %i.v, i64 %i.u, i64 0
  %i.x = or i64 %i.w, %i.s
  %indvars.iv.next348.2 = or disjoint i64 %indvars.iv347, 3 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.064169, i64 %indvars.iv.next348.2
  %i.z = load volatile i64, ptr %i.y, align 8, !tbaa !16
  %i.aa = icmp eq i64 %indvars.iv.next348.2, %i.g
  %i.ab = select i1 %i.aa, i64 %i.z, i64 0
  %i.ac = or i64 %i.ab, %i.x                      ; 3 uses
  %indvars.iv.next348.3 = add nuw nsw i64 %indvars.iv347, 4 ; 2 uses
  %niter434.next.3 = add i64 %niter434, 4         ; 2 uses
  %niter434.ncmp.3 = icmp eq i64 %niter434.next.3, %unroll_iter433
  br i1 %niter434.ncmp.3, label %.unr-lcssa, label %.preheader.new, !llvm.loop !58

.unr-lcssa:                                       ; preds = %.preheader.new
  br i1 %lcmp.mod430.not, label %.epilog-lcssa, label %.epil.preheader428

.epil.preheader428:                               ; preds = %.unr-lcssa, %.preheader
  %indvars.iv347.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next348.3, %.unr-lcssa ]
  %.063167.epil.init = phi i64 [ 0, %.preheader ], [ %i.ac, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod432)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader428
  %indvars.iv347.epil = phi i64 [ %indvars.iv347.epil.init, %.epil.preheader428 ], [ %indvars.iv.next348.epil, %bb.c ] ; 3 uses
  %.063167.epil = phi i64 [ %.063167.epil.init, %.epil.preheader428 ], [ %i.ah, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader428 ], [ %epil.iter.next, %bb.c ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.064169, i64 %indvars.iv347.epil
  %i.ae = load volatile i64, ptr %i.ad, align 8, !tbaa !16
  %i.af = icmp eq i64 %indvars.iv347.epil, %i.g
  %i.ag = select i1 %i.af, i64 %i.ae, i64 0
  %i.ah = or i64 %i.ag, %.063167.epil             ; 2 uses
  %indvars.iv.next348.epil = add nuw nsw i64 %indvars.iv347.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter429
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !59

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %.lcssa = phi i64 [ %i.ac, %.unr-lcssa ], [ %i.ah, %bb.c ]
  %i.ai = load ptr, ptr %0, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv352
  store i64 %.lcssa, ptr %i.aj, align 8, !tbaa !16
  %indvars.iv.next353 = add nuw nsw i64 %indvars.iv352, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.064169, i64 %i.f
  %exitcond356.not = icmp eq i64 %indvars.iv.next353, %wide.trip.count355
  br i1 %exitcond356.not, label %.loopexit, label %.preheader, !llvm.loop !60

bb.d:                                             ; preds = %bb.b
  %i.al = add nsw i32 %4, -2                      ; 4 uses
  %i.am = shl nuw nsw i32 1, %i.al
  %.fr = freeze i32 %i.am                         ; 13 uses
  %i.an = ashr i32 %3, %i.al
  %.fr170 = freeze i32 %i.an                      ; 2 uses
  %i.ao = add nsw i32 %.fr, -1
  %i.ap = and i32 %i.ao, %3                       ; 4 uses
  %i.aq = icmp eq i32 %.fr170, 0                  ; 3 uses
  %i.ar = icmp sgt i32 %1, 0
  br i1 %i.ar, label %.preheader82.lr.ph, label %.loopexit

.preheader82.lr.ph:                               ; preds = %bb.d
  %i.as = shl nuw nsw i32 2, %i.al                ; 4 uses
  %i.at = shl nuw nsw i32 3, %i.al                ; 4 uses
  %i.au = zext nneg i32 %.fr435 to i64            ; 4 uses
  %wide.trip.count205 = zext nneg i32 %1 to i64   ; 4 uses
  switch i32 %.fr170, label %.preheader82.preheader [
    i32 3, label %.preheader82.us.preheader
    i32 2, label %.preheader82.us102.preheader
    i32 1, label %.preheader82.us105.preheader
  ]

.preheader82.us.preheader:                        ; preds = %.preheader82.lr.ph
  %i.av = zext i32 %.fr to i64                    ; 3 uses
  %i.aw = zext nneg i32 %i.as to i64
  %i.ax = zext nneg i32 %i.at to i64
  %i.ay = zext nneg i32 %i.ap to i64              ; 3 uses
  %xtraiter415 = and i64 %i.av, 1
  %i.az = icmp eq i32 %.fr, 1
  %unroll_iter419 = and i64 %i.av, 4294967294
  %lcmp.mod416.not = icmp eq i64 %xtraiter415, 0
  %lcmp.mod418 = trunc i32 %.fr to i1
  br label %.preheader82.us

.preheader82.us:                                  ; preds = %.preheader82.us.preheader, %.split.us.us.split.split.split
  %indvars.iv272 = phi i64 [ 0, %.preheader82.us.preheader ], [ %indvars.iv.next273, %.split.us.us.split.split.split ] ; 2 uses
  %.199.us = phi ptr [ %2, %.preheader82.us.preheader ], [ %i.ca, %.split.us.us.split.split.split ] ; 7 uses
  %invariant.gep383 = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %i.av ; 3 uses
  %invariant.gep385 = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %i.aw ; 3 uses
  %invariant.gep387 = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %i.ax ; 3 uses
  br i1 %i.az, label %.epil.preheader414, label %.preheader82.us.new

.preheader82.us.new:                              ; preds = %.preheader82.us, %.preheader82.us.new
  %indvars.iv267 = phi i64 [ %indvars.iv.next268.1, %.preheader82.us.new ], [ 0, %.preheader82.us ] ; 7 uses
  %.085.us.us = phi i64 [ %i.bp, %.preheader82.us.new ], [ 0, %.preheader82.us ]
  %niter420 = phi i64 [ %niter420.next.1, %.preheader82.us.new ], [ 0, %.preheader82.us ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %indvars.iv267
  %i.bb = load volatile i64, ptr %i.ba, align 8, !tbaa !16 ; 0 uses
  %gep384 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep383, i64 %indvars.iv267
  %i.bc = load volatile i64, ptr %gep384, align 8, !tbaa !16 ; 0 uses
  %gep386 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep385, i64 %indvars.iv267
  %i.bd = load volatile i64, ptr %gep386, align 8, !tbaa !16 ; 0 uses
  %gep388 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep387, i64 %indvars.iv267
  %i.be = load volatile i64, ptr %gep388, align 8, !tbaa !16
  %i.bf = icmp eq i64 %indvars.iv267, %i.ay
  %i.bg = select i1 %i.bf, i64 %i.be, i64 0
  %i.bh = or i64 %i.bg, %.085.us.us
  %indvars.iv.next268 = or disjoint i64 %indvars.iv267, 1 ; 5 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %indvars.iv.next268
  %i.bj = load volatile i64, ptr %i.bi, align 8, !tbaa !16 ; 0 uses
  %gep384.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep383, i64 %indvars.iv.next268
  %i.bk = load volatile i64, ptr %gep384.1, align 8, !tbaa !16 ; 0 uses
  %gep386.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep385, i64 %indvars.iv.next268
  %i.bl = load volatile i64, ptr %gep386.1, align 8, !tbaa !16 ; 0 uses
  %gep388.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep387, i64 %indvars.iv.next268
  %i.bm = load volatile i64, ptr %gep388.1, align 8, !tbaa !16
  %i.bn = icmp eq i64 %indvars.iv.next268, %i.ay
  %i.bo = select i1 %i.bn, i64 %i.bm, i64 0
  %i.bp = or i64 %i.bo, %i.bh                     ; 3 uses
  %indvars.iv.next268.1 = add nuw nsw i64 %indvars.iv267, 2 ; 2 uses
  %niter420.next.1 = add i64 %niter420, 2         ; 2 uses
  %niter420.ncmp.1 = icmp eq i64 %niter420.next.1, %unroll_iter419
  br i1 %niter420.ncmp.1, label %.split.us.us.split.split.split.unr-lcssa, label %.preheader82.us.new, !llvm.loop !61

.split.us.us.split.split.split.unr-lcssa:         ; preds = %.preheader82.us.new
  br i1 %lcmp.mod416.not, label %.split.us.us.split.split.split, label %.epil.preheader414

.epil.preheader414:                               ; preds = %.split.us.us.split.split.split.unr-lcssa, %.preheader82.us
  %indvars.iv267.epil.init = phi i64 [ 0, %.preheader82.us ], [ %indvars.iv.next268.1, %.split.us.us.split.split.split.unr-lcssa ] ; 5 uses
  %.085.us.us.epil.init = phi i64 [ 0, %.preheader82.us ], [ %i.bp, %.split.us.us.split.split.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod418)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %indvars.iv267.epil.init
  %i.br = load volatile i64, ptr %i.bq, align 8, !tbaa !16 ; 0 uses
  %gep384.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep383, i64 %indvars.iv267.epil.init
  %i.bs = load volatile i64, ptr %gep384.epil, align 8, !tbaa !16 ; 0 uses
  %gep386.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep385, i64 %indvars.iv267.epil.init
  %i.bt = load volatile i64, ptr %gep386.epil, align 8, !tbaa !16 ; 0 uses
  %gep388.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep387, i64 %indvars.iv267.epil.init
  %i.bu = load volatile i64, ptr %gep388.epil, align 8, !tbaa !16
  %i.bv = icmp eq i64 %indvars.iv267.epil.init, %i.ay
  %i.bw = select i1 %i.bv, i64 %i.bu, i64 0
  %i.bx = or i64 %i.bw, %.085.us.us.epil.init
  br label %.split.us.us.split.split.split

.split.us.us.split.split.split:                   ; preds = %.split.us.us.split.split.split.unr-lcssa, %.epil.preheader414
  %.lcssa400 = phi i64 [ %i.bp, %.split.us.us.split.split.split.unr-lcssa ], [ %i.bx, %.epil.preheader414 ]
  %i.by = load ptr, ptr %0, align 8, !tbaa !14
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv272
  store i64 %.lcssa400, ptr %i.bz, align 8, !tbaa !16
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %i.au
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count205
  br i1 %exitcond276.not, label %.loopexit, label %.preheader82.us, !llvm.loop !62

.preheader82.us102.preheader:                     ; preds = %.preheader82.lr.ph
  %i.cb = zext i32 %.fr to i64                    ; 3 uses
  %i.cc = zext nneg i32 %i.as to i64
  %i.cd = zext nneg i32 %i.at to i64
  %i.ce = zext nneg i32 %i.ap to i64              ; 3 uses
  %xtraiter408 = and i64 %i.cb, 1
  %i.cf = icmp eq i32 %.fr, 1
  %unroll_iter412 = and i64 %i.cb, 4294967294
  %lcmp.mod409.not = icmp eq i64 %xtraiter408, 0
  %lcmp.mod411 = trunc i32 %.fr to i1
  br label %.preheader82.us102

.preheader82.us102:                               ; preds = %.preheader82.us102.preheader, %.split.split.us.us.split.split
  %indvars.iv232 = phi i64 [ 0, %.preheader82.us102.preheader ], [ %indvars.iv.next233, %.split.split.us.us.split.split ] ; 2 uses
  %.199.us103 = phi ptr [ %2, %.preheader82.us102.preheader ], [ %i.dg, %.split.split.us.us.split.split ] ; 7 uses
  %invariant.gep377 = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %i.cb ; 3 uses
  %invariant.gep379 = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %i.cc ; 3 uses
  %invariant.gep381 = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %i.cd ; 3 uses
  br i1 %i.cf, label %.epil.preheader407, label %.preheader82.us102.new

.preheader82.us102.new:                           ; preds = %.preheader82.us102, %.preheader82.us102.new
  %indvars.iv227 = phi i64 [ %indvars.iv.next228.1, %.preheader82.us102.new ], [ 0, %.preheader82.us102 ] ; 7 uses
  %.085.us86.us = phi i64 [ %i.cv, %.preheader82.us102.new ], [ 0, %.preheader82.us102 ]
  %niter413 = phi i64 [ %niter413.next.1, %.preheader82.us102.new ], [ 0, %.preheader82.us102 ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %indvars.iv227
  %i.ch = load volatile i64, ptr %i.cg, align 8, !tbaa !16 ; 0 uses
  %gep378 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep377, i64 %indvars.iv227
  %i.ci = load volatile i64, ptr %gep378, align 8, !tbaa !16 ; 0 uses
  %gep380 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep379, i64 %indvars.iv227
  %i.cj = load volatile i64, ptr %gep380, align 8, !tbaa !16
  %gep382 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep381, i64 %indvars.iv227
  %i.ck = load volatile i64, ptr %gep382, align 8, !tbaa !16 ; 0 uses
  %i.cl = icmp eq i64 %indvars.iv227, %i.ce
  %i.cm = select i1 %i.cl, i64 %i.cj, i64 0
  %i.cn = or i64 %i.cm, %.085.us86.us
  %indvars.iv.next228 = or disjoint i64 %indvars.iv227, 1 ; 5 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %indvars.iv.next228
  %i.cp = load volatile i64, ptr %i.co, align 8, !tbaa !16 ; 0 uses
  %gep378.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep377, i64 %indvars.iv.next228
  %i.cq = load volatile i64, ptr %gep378.1, align 8, !tbaa !16 ; 0 uses
  %gep380.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep379, i64 %indvars.iv.next228
  %i.cr = load volatile i64, ptr %gep380.1, align 8, !tbaa !16
  %gep382.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep381, i64 %indvars.iv.next228
  %i.cs = load volatile i64, ptr %gep382.1, align 8, !tbaa !16 ; 0 uses
  %i.ct = icmp eq i64 %indvars.iv.next228, %i.ce
  %i.cu = select i1 %i.ct, i64 %i.cr, i64 0
  %i.cv = or i64 %i.cu, %i.cn                     ; 3 uses
  %indvars.iv.next228.1 = add nuw nsw i64 %indvars.iv227, 2 ; 2 uses
  %niter413.next.1 = add i64 %niter413, 2         ; 2 uses
  %niter413.ncmp.1 = icmp eq i64 %niter413.next.1, %unroll_iter412
  br i1 %niter413.ncmp.1, label %.split.split.us.us.split.split.unr-lcssa, label %.preheader82.us102.new, !llvm.loop !61

.split.split.us.us.split.split.unr-lcssa:         ; preds = %.preheader82.us102.new
  br i1 %lcmp.mod409.not, label %.split.split.us.us.split.split, label %.epil.preheader407

.epil.preheader407:                               ; preds = %.split.split.us.us.split.split.unr-lcssa, %.preheader82.us102
  %indvars.iv227.epil.init = phi i64 [ 0, %.preheader82.us102 ], [ %indvars.iv.next228.1, %.split.split.us.us.split.split.unr-lcssa ] ; 5 uses
  %.085.us86.us.epil.init = phi i64 [ 0, %.preheader82.us102 ], [ %i.cv, %.split.split.us.us.split.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod411)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %indvars.iv227.epil.init
  %i.cx = load volatile i64, ptr %i.cw, align 8, !tbaa !16 ; 0 uses
  %gep378.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep377, i64 %indvars.iv227.epil.init
  %i.cy = load volatile i64, ptr %gep378.epil, align 8, !tbaa !16 ; 0 uses
  %gep380.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep379, i64 %indvars.iv227.epil.init
  %i.cz = load volatile i64, ptr %gep380.epil, align 8, !tbaa !16
  %gep382.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep381, i64 %indvars.iv227.epil.init
  %i.da = load volatile i64, ptr %gep382.epil, align 8, !tbaa !16 ; 0 uses
  %i.db = icmp eq i64 %indvars.iv227.epil.init, %i.ce
  %i.dc = select i1 %i.db, i64 %i.cz, i64 0
  %i.dd = or i64 %i.dc, %.085.us86.us.epil.init
  br label %.split.split.us.us.split.split

.split.split.us.us.split.split:                   ; preds = %.split.split.us.us.split.split.unr-lcssa, %.epil.preheader407
  %.lcssa402 = phi i64 [ %i.cv, %.split.split.us.us.split.split.unr-lcssa ], [ %i.dd, %.epil.preheader407 ]
  %i.de = load ptr, ptr %0, align 8, !tbaa !14
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv232
  store i64 %.lcssa402, ptr %i.df, align 8, !tbaa !16
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %i.au
  %exitcond236.not = icmp eq i64 %indvars.iv.next233, %wide.trip.count205
  br i1 %exitcond236.not, label %.loopexit, label %.preheader82.us102, !llvm.loop !62

.preheader82.preheader:                           ; preds = %.preheader82.lr.ph
  %i.dh = zext nneg i32 %i.ap to i64              ; 3 uses
  %i.di = zext i32 %.fr to i64                    ; 3 uses
  %i.dj = zext nneg i32 %i.as to i64
  %i.dk = zext nneg i32 %i.at to i64
  %xtraiter422 = and i64 %i.di, 1
  %i.dl = icmp eq i32 %.fr, 1
  %unroll_iter426 = and i64 %i.di, 4294967294
  %lcmp.mod423.not = icmp eq i64 %xtraiter422, 0
  %lcmp.mod425 = trunc i32 %.fr to i1
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
  %lcmp.mod406 = trunc i32 %.fr to i1
  br label %.preheader82.us105

.preheader82.us105:                               ; preds = %.preheader82.us105.preheader, %.split.split.split.us.us.split
  %indvars.iv212 = phi i64 [ 0, %.preheader82.us105.preheader ], [ %indvars.iv.next213, %.split.split.split.us.us.split ] ; 2 uses
  %.199.us106 = phi ptr [ %2, %.preheader82.us105.preheader ], [ %i.er, %.split.split.split.us.us.split ] ; 7 uses
  %invariant.gep371 = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %i.dm ; 3 uses
  %invariant.gep373 = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %i.dn ; 3 uses
  %invariant.gep375 = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %i.do ; 3 uses
  br i1 %i.dq, label %.epil.preheader, label %.preheader82.us105.new

.preheader82.us105.new:                           ; preds = %.preheader82.us105, %.preheader82.us105.new
  %indvars.iv207 = phi i64 [ %indvars.iv.next208.1, %.preheader82.us105.new ], [ 0, %.preheader82.us105 ] ; 7 uses
  %.085.us92.us = phi i64 [ %i.eg, %.preheader82.us105.new ], [ 0, %.preheader82.us105 ]
  %niter = phi i64 [ %niter.next.1, %.preheader82.us105.new ], [ 0, %.preheader82.us105 ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %indvars.iv207
  %i.ds = load volatile i64, ptr %i.dr, align 8, !tbaa !16 ; 0 uses
  %gep372 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep371, i64 %indvars.iv207
  %i.dt = load volatile i64, ptr %gep372, align 8, !tbaa !16
  %gep374 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep373, i64 %indvars.iv207
  %i.du = load volatile i64, ptr %gep374, align 8, !tbaa !16 ; 0 uses
  %gep376 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep375, i64 %indvars.iv207
  %i.dv = load volatile i64, ptr %gep376, align 8, !tbaa !16 ; 0 uses
  %i.dw = icmp eq i64 %indvars.iv207, %i.dp
  %i.dx = select i1 %i.dw, i64 %i.dt, i64 0
  %i.dy = or i64 %i.dx, %.085.us92.us
  %indvars.iv.next208 = or disjoint i64 %indvars.iv207, 1 ; 5 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %indvars.iv.next208
  %i.ea = load volatile i64, ptr %i.dz, align 8, !tbaa !16 ; 0 uses
  %gep372.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep371, i64 %indvars.iv.next208
  %i.eb = load volatile i64, ptr %gep372.1, align 8, !tbaa !16
  %gep374.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep373, i64 %indvars.iv.next208
  %i.ec = load volatile i64, ptr %gep374.1, align 8, !tbaa !16 ; 0 uses
  %gep376.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep375, i64 %indvars.iv.next208
  %i.ed = load volatile i64, ptr %gep376.1, align 8, !tbaa !16 ; 0 uses
  %i.ee = icmp eq i64 %indvars.iv.next208, %i.dp
  %i.ef = select i1 %i.ee, i64 %i.eb, i64 0
  %i.eg = or i64 %i.ef, %i.dy                     ; 3 uses
  %indvars.iv.next208.1 = add nuw nsw i64 %indvars.iv207, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split.split.split.us.us.split.unr-lcssa, label %.preheader82.us105.new, !llvm.loop !61

.split.split.split.us.us.split.unr-lcssa:         ; preds = %.preheader82.us105.new
  br i1 %lcmp.mod.not, label %.split.split.split.us.us.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %.split.split.split.us.us.split.unr-lcssa, %.preheader82.us105
  %indvars.iv207.epil.init = phi i64 [ 0, %.preheader82.us105 ], [ %indvars.iv.next208.1, %.split.split.split.us.us.split.unr-lcssa ] ; 5 uses
  %.085.us92.us.epil.init = phi i64 [ 0, %.preheader82.us105 ], [ %i.eg, %.split.split.split.us.us.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod406)
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %indvars.iv207.epil.init
  %i.ei = load volatile i64, ptr %i.eh, align 8, !tbaa !16 ; 0 uses
  %gep372.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep371, i64 %indvars.iv207.epil.init
  %i.ej = load volatile i64, ptr %gep372.epil, align 8, !tbaa !16
  %gep374.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep373, i64 %indvars.iv207.epil.init
  %i.ek = load volatile i64, ptr %gep374.epil, align 8, !tbaa !16 ; 0 uses
  %gep376.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep375, i64 %indvars.iv207.epil.init
  %i.el = load volatile i64, ptr %gep376.epil, align 8, !tbaa !16 ; 0 uses
  %i.em = icmp eq i64 %indvars.iv207.epil.init, %i.dp
  %i.en = select i1 %i.em, i64 %i.ej, i64 0
  %i.eo = or i64 %i.en, %.085.us92.us.epil.init
  br label %.split.split.split.us.us.split

.split.split.split.us.us.split:                   ; preds = %.split.split.split.us.us.split.unr-lcssa, %.epil.preheader
  %.lcssa404 = phi i64 [ %i.eg, %.split.split.split.us.us.split.unr-lcssa ], [ %i.eo, %.epil.preheader ]
  %i.ep = load ptr, ptr %0, align 8, !tbaa !14
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv212
  store i64 %.lcssa404, ptr %i.eq, align 8, !tbaa !16
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %i.au
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %wide.trip.count205
  br i1 %exitcond216.not, label %.loopexit, label %.preheader82.us105, !llvm.loop !62

.preheader82:                                     ; preds = %.preheader82.preheader, %.split.split.split
  %indvars.iv202 = phi i64 [ 0, %.preheader82.preheader ], [ %indvars.iv.next203, %.split.split.split ] ; 2 uses
  %.199 = phi ptr [ %2, %.preheader82.preheader ], [ %i.fv, %.split.split.split ] ; 7 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %i.di ; 3 uses
  %invariant.gep367 = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %i.dj ; 3 uses
  %invariant.gep369 = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %i.dk ; 3 uses
  br i1 %i.dl, label %.epil.preheader421, label %.preheader82.new

.preheader82.new:                                 ; preds = %.preheader82, %.preheader82.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader82.new ], [ 0, %.preheader82 ] ; 7 uses
  %.085 = phi i64 [ %i.fj, %.preheader82.new ], [ 0, %.preheader82 ]
  %niter427 = phi i64 [ %niter427.next.1, %.preheader82.new ], [ 0, %.preheader82 ]
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %indvars.iv
  %i.et = load volatile i64, ptr %i.es, align 8, !tbaa !16
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.eu = load volatile i64, ptr %gep, align 8, !tbaa !16 ; 0 uses
  %gep368 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep367, i64 %indvars.iv
  %i.ev = load volatile i64, ptr %gep368, align 8, !tbaa !16 ; 0 uses
  %gep370 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep369, i64 %indvars.iv
  %i.ew = load volatile i64, ptr %gep370, align 8, !tbaa !16 ; 0 uses
  %i.ex = icmp eq i64 %indvars.iv, %i.dh
  %i.ey = and i1 %i.ex, %i.aq
  %i.ez = select i1 %i.ey, i64 %i.et, i64 0
  %i.fa = or i64 %i.ez, %.085
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 5 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %indvars.iv.next
  %i.fc = load volatile i64, ptr %i.fb, align 8, !tbaa !16
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.fd = load volatile i64, ptr %gep.1, align 8, !tbaa !16 ; 0 uses
  %gep368.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep367, i64 %indvars.iv.next
  %i.fe = load volatile i64, ptr %gep368.1, align 8, !tbaa !16 ; 0 uses
  %gep370.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep369, i64 %indvars.iv.next
  %i.ff = load volatile i64, ptr %gep370.1, align 8, !tbaa !16 ; 0 uses
  %i.fg = icmp eq i64 %indvars.iv.next, %i.dh
  %i.fh = and i1 %i.fg, %i.aq
  %i.fi = select i1 %i.fh, i64 %i.fc, i64 0
  %i.fj = or i64 %i.fi, %i.fa                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter427.next.1 = add i64 %niter427, 2         ; 2 uses
  %niter427.ncmp.1 = icmp eq i64 %niter427.next.1, %unroll_iter426
  br i1 %niter427.ncmp.1, label %.split.split.split.unr-lcssa, label %.preheader82.new, !llvm.loop !61

.split.split.split.unr-lcssa:                     ; preds = %.preheader82.new
  br i1 %lcmp.mod423.not, label %.split.split.split, label %.epil.preheader421

.epil.preheader421:                               ; preds = %.split.split.split.unr-lcssa, %.preheader82
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader82 ], [ %indvars.iv.next.1, %.split.split.split.unr-lcssa ] ; 5 uses
  %.085.epil.init = phi i64 [ 0, %.preheader82 ], [ %i.fj, %.split.split.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod425)
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %indvars.iv.epil.init
  %i.fl = load volatile i64, ptr %i.fk, align 8, !tbaa !16
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.fm = load volatile i64, ptr %gep.epil, align 8, !tbaa !16 ; 0 uses
  %gep368.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep367, i64 %indvars.iv.epil.init
  %i.fn = load volatile i64, ptr %gep368.epil, align 8, !tbaa !16 ; 0 uses
  %gep370.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep369, i64 %indvars.iv.epil.init
  %i.fo = load volatile i64, ptr %gep370.epil, align 8, !tbaa !16 ; 0 uses
  %i.fp = icmp eq i64 %indvars.iv.epil.init, %i.dh
  %i.fq = and i1 %i.fp, %i.aq
  %i.fr = select i1 %i.fq, i64 %i.fl, i64 0
  %i.fs = or i64 %i.fr, %.085.epil.init
  br label %.split.split.split

.split.split.split:                               ; preds = %.split.split.split.unr-lcssa, %.epil.preheader421
  %.lcssa398 = phi i64 [ %i.fj, %.split.split.split.unr-lcssa ], [ %i.fs, %.epil.preheader421 ]
  %i.ft = load ptr, ptr %0, align 8, !tbaa !14
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv202
  store i64 %.lcssa398, ptr %i.fu, align 8, !tbaa !16
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %i.au
  %exitcond206.not = icmp eq i64 %indvars.iv.next203, %wide.trip.count205
  br i1 %exitcond206.not, label %.loopexit, label %.preheader82, !llvm.loop !62

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

declare i32 @BN_div(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_mod_mul_montgomery(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @BN_mod_exp_simple(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = tail call i32 @BN_get_flags(ptr noundef %2, i32 noundef 4) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @BN_get_flags(ptr noundef %1, i32 noundef 4) #7
  %.not118 = icmp eq i32 %i.c, 0
  br i1 %.not118, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @BN_get_flags(ptr noundef %3, i32 noundef 4) #7
  %.not119 = icmp eq i32 %i.d, 0
  br i1 %.not119, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1319, ptr noundef nonnull @__func__.BN_mod_exp_simple) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786689, ptr noundef null) #7
  br label %bb.af

bb.e:                                             ; preds = %bb.c
  %i.e = icmp eq ptr %0, %3
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1324, ptr noundef nonnull @__func__.BN_mod_exp_simple) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 524550, ptr noundef null) #7
  br label %bb.af

bb.g:                                             ; preds = %bb.e
  %i.f = tail call i32 @BN_num_bits(ptr noundef %2) #7 ; 6 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @BN_abs_is_word(ptr noundef %3, i64 noundef 1) #7
  %.not132 = icmp eq i32 %i.h, 0
  br i1 %.not132, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @BN_zero_ex(ptr noundef %0) #7
  br label %bb.af

bb.j:                                             ; preds = %bb.h
  %i.i = tail call i32 @BN_set_word(ptr noundef %0, i64 noundef 1) #7
  br label %bb.af

bb.k:                                             ; preds = %bb.g
  tail call void @BN_CTX_start(ptr noundef %4) #7
  %i.j = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 2 uses
  %i.k = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 6 uses
  store ptr %i.k, ptr %i.a, align 16, !tbaa !19
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread139, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = tail call i32 @BN_nnmod(ptr noundef nonnull %i.k, ptr noundef %1, ptr noundef %3, ptr noundef %4) #7
  %.not120 = icmp eq i32 %i.m, 0
  br i1 %.not120, label %.thread139, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = tail call i32 @BN_is_zero(ptr noundef nonnull %i.k) #7
  %.not121 = icmp eq i32 %i.n, 0
  br i1 %.not121, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @BN_zero_ex(ptr noundef %0) #7
  br label %.thread139

bb.o:                                             ; preds = %bb.m
  %i.o = icmp sgt i32 %i.f, 671
  br i1 %i.o, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.p = icmp sgt i32 %i.f, 239
  br i1 %i.p, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = icmp sgt i32 %i.f, 79
  br i1 %i.q, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.r = icmp sgt i32 %i.f, 23
  br i1 %i.r, label %.thread, label %.loopexit157

.thread:                                          ; preds = %bb.q, %bb.p, %bb.o, %bb.r
  %i.s = phi i32 [ 3, %bb.r ], [ 6, %bb.o ], [ 5, %bb.p ], [ 4, %bb.q ] ; 2 uses
  %i.t = tail call i32 @BN_mod_mul(ptr noundef %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef %3, ptr noundef %4) #7
  %.not122 = icmp eq i32 %i.t, 0
  br i1 %.not122, label %.thread139, label %bb.s

bb.s:                                             ; preds = %.thread
  %i.u = add nsw i32 %i.s, -1                     ; 2 uses
  %.not170 = icmp eq i32 %i.u, 0
  br i1 %.not170, label %.loopexit157, label %.lr.ph

bb.t:                                             ; preds = %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = trunc nuw i64 %indvars.iv.next to i32
  %.0101.highbits = lshr i32 %i.v, %i.u
  %i.w = icmp eq i32 %.0101.highbits, 0
  br i1 %i.w, label %.lr.ph, label %.loopexit157, !llvm.loop !63

.lr.ph:                                           ; preds = %bb.s, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ 1, %bb.s ] ; 2 uses
  %i.x = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !19
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %.thread139, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.aa = getelementptr i8, ptr %i.y, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.ac = tail call i32 @BN_mod_mul(ptr noundef nonnull %i.x, ptr noundef %i.ab, ptr noundef %i.j, ptr noundef %3, ptr noundef %4) #7
  %.not131 = icmp eq i32 %i.ac, 0
  br i1 %.not131, label %.thread139, label %bb.t

.loopexit157:                                     ; preds = %bb.t, %bb.s, %bb.r
  %i.ad = phi i32 [ 1, %bb.r ], [ 1, %bb.s ], [ %i.s, %bb.t ] ; 2 uses
  %i.ae = add nsw i32 %i.f, -1
  %i.af = icmp eq ptr %0, %2
  br i1 %i.af, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.loopexit157
  %i.ag = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.thread139, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ai = tail call ptr @BN_copy(ptr noundef nonnull %i.ag, ptr noundef %2) #7
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.thread139, label %bb.x

bb.x:                                             ; preds = %bb.w, %.loopexit157
  %.1105 = phi ptr [ %2, %.loopexit157 ], [ %i.ag, %bb.w ] ; 2 uses
  %i.ak = tail call i32 @BN_set_word(ptr noundef %0, i64 noundef 1) #7
  %.not123 = icmp eq i32 %i.ak, 0
  br i1 %.not123, label %.thread139, label %.preheader155

.preheader155:                                    ; preds = %bb.x
  %i.al = icmp sgt i32 %i.ad, 1
  br label %.outer

.outer:                                           ; preds = %bb.ae, %.preheader155
  %.097.ph = phi i32 [ %i.bf, %bb.ae ], [ %i.ae, %.preheader155 ]
  %.not125 = phi i1 [ true, %bb.ae ], [ false, %.preheader155 ] ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.outer, %bb.ab
  %.097 = phi i32 [ %i.aq, %bb.ab ], [ %.097.ph, %.outer ] ; 5 uses
  %i.am = tail call i32 @BN_is_bit_set(ptr noundef %.1105, i32 noundef %.097) #7
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.z, label %.preheader154

.preheader154:                                    ; preds = %bb.y
  br i1 %i.al, label %.lr.ph164, label %._crit_edge
end_hunk_0
