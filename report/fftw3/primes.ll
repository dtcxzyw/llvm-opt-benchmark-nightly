Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/primes?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@fftw_find_generator:bb.a
  %.not30.i = icmp eq i64 %i.h, 0
  br i1 %.not30.i, label %bb.e, label %.loopexit.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.036.i
  store i64 %.02535.i, ptr %i.i, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.2.i = phi i64 [ %.12834.i, %bb.e ], [ %i.j, %bb.f ]
  %i.j = sdiv i64 %.2.i, %.02535.i                ; 3 uses
  %i.k = srem i64 %i.j, %.02535.i
  %.not31.i = icmp eq i64 %i.k, 0
  br i1 %.not31.i, label %bb.f, label %.loopexit.loopexit.i, !llvm.loop !17

.loopexit.loopexit.i:                             ; preds = %bb.f
  %i.l = add nsw i64 %.036.i, 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.lr.ph.i
  %.3.i = phi i64 [ %.12834.i, %.lr.ph.i ], [ %i.j, %.loopexit.loopexit.i ] ; 3 uses
  %.1.i = phi i64 [ %.036.i, %.lr.ph.i ], [ %i.l, %.loopexit.loopexit.i ] ; 2 uses
  %i.m = add nuw nsw i64 %.02535.i, 2             ; 3 uses
  %i.n = mul nuw nsw i64 %i.m, %i.m
  %.not.i = icmp sgt i64 %i.n, %.3.i
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !18

._crit_edge.i:                                    ; preds = %.loopexit.i, %.preheader.i
  %.128.lcssa.i = phi i64 [ %i.d, %.preheader.i ], [ %.3.i, %.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 1, %.preheader.i ], [ %.1.i, %.loopexit.i ] ; 3 uses
  %i.o = icmp eq i64 %.128.lcssa.i, 1
  br i1 %i.o, label %get_prime_factors.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.p = add nsw i64 %.0.lcssa.i, 1
  %i.q = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.0.lcssa.i
  store i64 %.128.lcssa.i, ptr %i.q, align 8, !tbaa !15
  br label %get_prime_factors.exit

get_prime_factors.exit:                           ; preds = %._crit_edge.i, %bb.g
  %.026.i = phi i64 [ %i.p, %bb.g ], [ %.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.r = icmp sgt i64 %.026.i, 0
  br i1 %i.r, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.d, %get_prime_factors.exit
  %.026.i24 = phi i64 [ %.026.i, %get_prime_factors.exit ], [ 1, %bb.d ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.020 = phi i64 [ %i.z, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.01319 = phi i64 [ %spec.select, %.lr.ph ], [ 2, %.lr.ph.preheader ] ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.020
  %i.t = load i64, ptr %i.s, align 8, !tbaa !15
  %i.u = sdiv i64 %i.b, %i.t
  %i.v = tail call i64 @fftw_power_mod(i64 noundef %.01319, i64 noundef %i.u, i64 noundef %0)
  %i.w = icmp eq i64 %i.v, 1                      ; 2 uses
  %i.x = zext i1 %i.w to i64
  %spec.select = add nuw nsw i64 %.01319, %i.x    ; 2 uses
  %i.y = add nsw i64 %.020, 1
  %i.z = select i1 %i.w, i64 0, i64 %i.y          ; 2 uses
  %i.aa = icmp slt i64 %i.z, %.026.i24
  br i1 %i.aa, label %.lr.ph, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %.lr.ph, %get_prime_factors.exit, %bb.a
  %.015 = phi i64 [ 1, %bb.a ], [ 2, %get_prime_factors.exit ], [ %spec.select, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %.015
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local range(i64 -9223372036854775808, 9223372036854775807) i64 @fftw_first_divisor(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %0, 2
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %0, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not14 = icmp samesign ult i64 %0, 9
  br i1 %.not14, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.015 = phi i64 [ %i.f, %bb.c ], [ 3, %.preheader ] ; 3 uses
  %i.d = urem i64 %0, %.015
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.015, 2                 ; 3 uses
  %i.g = mul nuw nsw i64 %i.f, %i.f
  %.not = icmp samesign ugt i64 %i.g, %0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader, %bb.b, %bb.a
  %.012 = phi i64 [ 2, %bb.b ], [ %0, %bb.a ], [ %0, %.preheader ], [ %.015, %.lr.ph ], [ %0, %bb.c ]
  ret i64 %.012
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local range(i32 0, 2) i32 @fftw_is_prime(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %0, 1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %0, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %fftw_first_divisor.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.not14.i = icmp samesign ult i64 %0, 9
  br i1 %.not14.i, label %fftw_first_divisor.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.015.i = phi i64 [ %i.f, %bb.c ], [ 3, %.preheader.i ] ; 3 uses
  %i.d = urem i64 %0, %.015.i
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %fftw_first_divisor.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.f = add nuw nsw i64 %.015.i, 2               ; 3 uses
  %i.g = mul nuw nsw i64 %i.f, %i.f
  %.not.i = icmp samesign ugt i64 %i.g, %0
  br i1 %.not.i, label %fftw_first_divisor.exit, label %.lr.ph.i, !llvm.loop !1

fftw_first_divisor.exit:                          ; preds = %.lr.ph.i, %bb.c, %bb.b, %.preheader.i
  %.012.i = phi i64 [ 2, %bb.b ], [ %0, %.preheader.i ], [ %.015.i, %.lr.ph.i ], [ %0, %bb.c ]
  %i.h = icmp eq i64 %.012.i, %0
  %i.i = zext i1 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %fftw_first_divisor.exit, %bb.a
  %i.j = phi i32 [ 0, %bb.a ], [ %i.i, %fftw_first_divisor.exit ]
  ret i32 %i.j
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local range(i64 2, -9223372036854775808) i64 @fftw_next_prime(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %fftw_is_prime.exit.thread, %bb.a
  %.0 = phi i64 [ %0, %bb.a ], [ %i.h, %fftw_is_prime.exit.thread ] ; 8 uses
  %i.a = icmp sgt i64 %.0, 1
  br i1 %i.a, label %bb.c, label %fftw_is_prime.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = and i64 %.0, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %fftw_is_prime.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %.not14.i.i = icmp samesign ult i64 %.0, 9
  br i1 %.not14.i.i, label %fftw_is_prime.exit.thread4, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.d
  %.015.i.i = phi i64 [ %i.f, %bb.d ], [ 3, %.preheader.i.i ] ; 3 uses
  %i.d = urem i64 %.0, %.015.i.i
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %fftw_is_prime.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.f = add nuw nsw i64 %.015.i.i, 2             ; 3 uses
  %i.g = mul nuw nsw i64 %i.f, %i.f
  %.not.i.i = icmp samesign ugt i64 %i.g, %.0
  br i1 %.not.i.i, label %fftw_is_prime.exit.thread4, label %.lr.ph.i.i, !llvm.loop !1

fftw_is_prime.exit:                               ; preds = %.lr.ph.i.i, %bb.c
  %.012.i.i = phi i64 [ 2, %bb.c ], [ %.015.i.i, %.lr.ph.i.i ]
  %.not = icmp eq i64 %.012.i.i, %.0
  br i1 %.not, label %fftw_is_prime.exit.thread4, label %fftw_is_prime.exit.thread

fftw_is_prime.exit.thread:                        ; preds = %bb.b, %fftw_is_prime.exit
  %i.h = add nsw i64 %.0, 1
  br label %bb.b, !llvm.loop !20

fftw_is_prime.exit.thread4:                       ; preds = %.preheader.i.i, %fftw_is_prime.exit, %bb.d
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @fftw_factors_into(i64 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !15     ; 2 uses
  %.not8 = icmp eq i64 %i.a, 0
  br i1 %.not8, label %._crit_edge11, label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %i.b = phi i64 [ %i.i, %._crit_edge ], [ %i.a, %bb.a ] ; 3 uses
  %.010 = phi ptr [ %i.h, %._crit_edge ], [ %1, %bb.a ]
  %.069 = phi i64 [ %.1.lcssa, %._crit_edge ], [ %0, %bb.a ] ; 3 uses
  %i.c = srem i64 %.069, %i.b
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.17 = phi i64 [ %i.e, %.lr.ph ], [ %.069, %.preheader ]
  %i.e = sdiv i64 %.17, %i.b                      ; 3 uses
  %i.f = srem i64 %i.e, %i.b
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !llvm.loop !2

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.1.lcssa = phi i64 [ %.069, %.preheader ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.010, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge11, label %.preheader, !llvm.loop !21

._crit_edge11:                                    ; preds = %._crit_edge, %bb.a
  %.06.lcssa = phi i64 [ %0, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  %i.j = icmp eq i64 %.06.lcssa, 1
  %i.k = zext i1 %i.j to i32
  ret i32 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local range(i64 -4611686018427387904, 4611686018427387904) i64 @fftw_isqrt(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.010 = phi i64 [ %i.c, %.preheader ], [ %0, %bb.a ]
  %.0 = phi i64 [ %i.d, %.preheader ], [ 1, %bb.a ]
  %i.b = add nsw i64 %.0, %.010
  %i.c = sdiv i64 %i.b, 2                         ; 4 uses
  %i.d = sdiv i64 %0, %i.c                        ; 2 uses
  %i.e = icmp sgt i64 %i.c, %i.d
  br i1 %i.e, label %.preheader, label %.loopexit, !llvm.loop !3

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.011 = phi i64 [ 0, %bb.a ], [ %i.c, %.preheader ]
  ret i64 %.011
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @fftw_choose_radix(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = srem i64 %1, %0
  %i.c = icmp eq i64 %i.b, 0
  %. = select i1 %i.c, i64 %0, i64 0
  br label %fftw_first_divisor.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %0, 0
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %1, 2
  br i1 %i.e, label %fftw_first_divisor.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = and i64 %1, 1
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %fftw_first_divisor.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %.not14.i = icmp samesign ult i64 %1, 9
  br i1 %.not14.i, label %fftw_first_divisor.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.f
  %.015.i = phi i64 [ %i.j, %bb.f ], [ 3, %.preheader.i ] ; 3 uses
  %i.h = urem i64 %1, %.015.i
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %fftw_first_divisor.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.j = add nuw nsw i64 %.015.i, 2               ; 3 uses
  %i.k = mul nuw nsw i64 %i.j, %i.j
  %.not.i = icmp samesign ugt i64 %i.k, %1
  br i1 %.not.i, label %fftw_first_divisor.exit, label %.lr.ph.i, !llvm.loop !1

bb.g:                                             ; preds = %bb.c
  %i.l = sub nsw i64 0, %0                        ; 3 uses
  %i.m = icmp sgt i64 %1, %i.l
  br i1 %i.m, label %bb.h, label %fftw_first_divisor.exit

bb.h:                                             ; preds = %bb.g
  %i.n = urem i64 %1, %i.l
  %i.o = udiv i64 %1, %i.l                        ; 3 uses
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %.preheader.i.i, label %fftw_first_divisor.exit

.preheader.i.i:                                   ; preds = %bb.h, %.preheader.i.i
  %.010.i.i = phi i64 [ %i.r, %.preheader.i.i ], [ %i.o, %bb.h ]
  %.0.i.i = phi i64 [ %i.s, %.preheader.i.i ], [ 1, %bb.h ]
  %i.q = add nuw nsw i64 %.0.i.i, %.010.i.i
  %i.r = lshr i64 %i.q, 1                         ; 6 uses
  %i.s = udiv i64 %i.o, %i.r                      ; 2 uses
  %i.t = icmp samesign ugt i64 %i.r, %i.s
  br i1 %i.t, label %.preheader.i.i, label %isqrt_maybe.exit, !llvm.loop !3

isqrt_maybe.exit:                                 ; preds = %.preheader.i.i
  %i.u = mul nuw nsw i64 %i.r, %i.r
  %i.v = icmp eq i64 %i.u, %i.o
  %i.w = select i1 %i.v, i64 %i.r, i64 0
  br label %fftw_first_divisor.exit

fftw_first_divisor.exit:                          ; preds = %bb.f, %.lr.ph.i, %.preheader.i, %bb.e, %bb.d, %isqrt_maybe.exit, %bb.h, %bb.g, %bb.b
  %.0 = phi i64 [ %., %bb.b ], [ 0, %bb.g ], [ %i.w, %isqrt_maybe.exit ], [ 0, %bb.h ], [ 2, %bb.e ], [ %1, %bb.d ], [ %1, %.preheader.i ], [ %1, %bb.f ], [ %.015.i, %.lr.ph.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @fftw_modulo(i64 noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i64 %0, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = srem i64 %0, %1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = xor i64 %0, -1
  %i.d = srem i64 %i.c, %1
  %i.e = xor i64 %i.d, -1
  %i.f = add i64 %1, %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %i.f, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local range(i32 0, 2) i32 @fftw_factors_into_small_primes(i64 noundef %0) local_unnamed_addr #0 {
.preheader.i:
  %i.a = and i64 %0, 1
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.17.i = phi i64 [ %1, %.lr.ph.i ], [ %0, %.preheader.i ]
  %1 = sdiv i64 %.17.i, 2                         ; 3 uses
  %i.c = and i64 %1, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.1.lcssa.i = phi i64 [ %0, %.preheader.i ], [ %1, %.lr.ph.i ] ; 3 uses
  %i.e = srem i64 %.1.lcssa.i, 3
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.1, label %._crit_edge.i.1

.lr.ph.i.1:                                       ; preds = %._crit_edge.i, %.lr.ph.i.1
  %.17.i.1 = phi i64 [ %i.g, %.lr.ph.i.1 ], [ %.1.lcssa.i, %._crit_edge.i ]
  %i.g = sdiv i64 %.17.i.1, 3                     ; 3 uses
  %i.h = srem i64 %i.g, 3
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.1, label %._crit_edge.i.1, !llvm.loop !2

._crit_edge.i.1:                                  ; preds = %.lr.ph.i.1, %._crit_edge.i
  %.1.lcssa.i.1 = phi i64 [ %.1.lcssa.i, %._crit_edge.i ], [ %i.g, %.lr.ph.i.1 ] ; 3 uses
  %i.j = srem i64 %.1.lcssa.i.1, 5
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.2, label %._crit_edge.i.2

.lr.ph.i.2:                                       ; preds = %._crit_edge.i.1, %.lr.ph.i.2
  %.17.i.2 = phi i64 [ %i.l, %.lr.ph.i.2 ], [ %.1.lcssa.i.1, %._crit_edge.i.1 ]
  %i.l = sdiv i64 %.17.i.2, 5                     ; 3 uses
  %i.m = srem i64 %i.l, 5
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.2, label %._crit_edge.i.2, !llvm.loop !2

._crit_edge.i.2:                                  ; preds = %.lr.ph.i.2, %._crit_edge.i.1
  %.1.lcssa.i.2 = phi i64 [ %.1.lcssa.i.1, %._crit_edge.i.1 ], [ %i.l, %.lr.ph.i.2 ]
  %i.o = icmp eq i64 %.1.lcssa.i.2, 1
  %i.p = zext i1 %i.o to i32
  ret i32 %i.p
}

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = distinct !{!2, !13}
!3 = distinct !{!3, !13}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"long", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
end_hunk_0
