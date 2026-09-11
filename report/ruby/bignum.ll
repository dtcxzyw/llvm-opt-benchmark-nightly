Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/bignum?download=true
inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 154
loop-unroll.NumUnrolled: 182
begin_hunk_0_@bary_mul_karatsuba:bb.a
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !44
  %i.agb = zext i32 %i.aga to i64
  %i.agc = mul nuw i64 %i.agb, %i.aey
  %i.agd = add nuw i64 %i.agc, %.131.i424         ; 2 uses
  %.not.i423.1 = icmp eq i64 %i.agd, 0
  br i1 %.not.i423.1, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i420.1
  %i.age = getelementptr [4 x i8], ptr %i.aet, i64 %i.afy ; 2 uses
  %i.agf = load i32, ptr %i.age, align 4, !tbaa !44
  %i.agg = zext i32 %i.agf to i64
  %i.agh = add nuw i64 %i.agd, %i.agg             ; 2 uses
  %i.agi = trunc i64 %i.agh to i32
  store i32 %i.agi, ptr %i.age, align 4, !tbaa !44
  %i.agj = lshr i64 %i.agh, 32
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.lr.ph.i420.1
  %.131.i424.1 = phi i64 [ %i.agj, %bb.ba ], [ 0, %.lr.ph.i420.1 ] ; 3 uses
  %i.agk = add nuw i64 %.036.i421, 2              ; 2 uses
  %niter874.next.1 = add nuw i64 %niter874, 2     ; 2 uses
  %niter874.ncmp.1 = icmp eq i64 %niter874.next.1, %unroll_iter873
  br i1 %niter874.ncmp.1, label %.preheader.i426.unr-lcssa, label %.lr.ph.i420, !llvm.loop !0

.lr.ph41.i428:                                    ; preds = %.preheader.i426, %.lr.ph41.i428
  %.140.i429 = phi i64 [ %i.agr, %.lr.ph41.i428 ], [ %.0197, %.preheader.i426 ] ; 2 uses
  %.239.i430 = phi i64 [ %i.agq, %.lr.ph41.i428 ], [ %.131.i424.lcssa, %.preheader.i426 ]
  %i.agl = getelementptr [4 x i8], ptr %i.aet, i64 %.140.i429 ; 2 uses
  %i.agm = load i32, ptr %i.agl, align 4, !tbaa !44
  %i.agn = zext i32 %i.agm to i64
  %i.ago = add nuw nsw i64 %.239.i430, %i.agn     ; 2 uses
  %i.agp = trunc i64 %i.ago to i32
  store i32 %i.agp, ptr %i.agl, align 4, !tbaa !44
  %i.agq = lshr i64 %i.ago, 32                    ; 2 uses
  %i.agr = add nuw i64 %.140.i429, 1              ; 2 uses
  %i.ags = icmp uge i64 %i.agr, %i.aeu
  %i.agt = icmp eq i64 %i.agq, 0
  %or.cond.i431 = select i1 %i.ags, i1 true, i1 %i.agt
  br i1 %or.cond.i431, label %bary_muladd_1xN.exit418, label %.lr.ph41.i428, !llvm.loop !1

bary_muladd_1xN.exit418:                          ; preds = %.lr.ph41.i411, %.lr.ph41.i428, %bb.ax, %.preheader.i426, %.preheader.i409, %bb.aw, %bary_muladd_1xN.exit, %bb.av
  %i.agu = load i64, ptr %i.aa, align 8, !tbaa !46
  %.not217 = icmp eq i64 %i.agu, 0
  br i1 %.not217, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bary_muladd_1xN.exit418
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.aa) #23
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bary_muladd_1xN.exit418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_big_mul_toom3(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !46
  store i64 %1, ptr %i.b, align 8, !tbaa !46
  %i.e = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48   ; 3 uses
  %i.g = and i64 %i.f, 16384
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !49
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.j = lshr i64 %i.f, 15
  %i.k = and i64 %i.j, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.k, %bb.c ], [ %i.i, %bb.b ] ; 4 uses
  %i.l = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48   ; 3 uses
  %i.n = and i64 %i.m, 16384
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  %i.o = getelementptr i8, ptr %i.l, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !49
  br label %BIGNUM_LEN.exit18

bb.e:                                             ; preds = %BIGNUM_LEN.exit
  %i.q = lshr i64 %i.m, 15
  %i.r = and i64 %i.q, 511
  br label %BIGNUM_LEN.exit18

BIGNUM_LEN.exit18:                                ; preds = %bb.d, %bb.e
  %.0.i17 = phi i64 [ %i.r, %bb.e ], [ %i.p, %bb.d ] ; 5 uses
  %i.s = add i64 %.0.i17, %.0.i                   ; 2 uses
  %i.t = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.u = xor i64 %i.m, %i.f
  %i.v = and i64 %i.u, 8192
  %.not = icmp eq i64 %i.v, 0
  %i.w = zext i1 %.not to i32
  %i.x = tail call fastcc i64 @bignew_1(i64 noundef %i.t, i64 noundef %i.s, i32 noundef %i.w) ; 2 uses
  %i.y = icmp ugt i64 %.0.i, %.0.i17
  %i.z = icmp ult i64 %.0.i17, 3
  %or.cond = or i1 %i.y, %i.z
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %BIGNUM_LEN.exit18
  %i.aa = add i64 %.0.i17, 2
  %i.ab = udiv i64 %i.aa, 3
  %i.ac = shl nuw i64 %i.ab, 1
  %i.ad = icmp ult i64 %i.ac, %.0.i
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %BIGNUM_LEN.exit18
  %i.ae = load i64, ptr @rb_eArgError, align 8, !tbaa !46
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ae, ptr noundef nonnull @.str.1) #25
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.af = inttoptr i64 %i.x to ptr                ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !48
  %i.ah = and i64 %i.ag, 16384
  %.not.i19 = icmp eq i64 %i.ah, 0
  br i1 %.not.i19, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %i.af, i64 16
  br label %BIGNUM_DIGITS.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr i8, ptr %i.af, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.i, %bb.j
  %.0.i20 = phi ptr [ %i.ai, %bb.i ], [ %i.ak, %bb.j ]
  %i.al = load i64, ptr %i.e, align 8, !tbaa !48
  %i.am = and i64 %i.al, 16384
  %.not.i21 = icmp eq i64 %i.am, 0
  br i1 %.not.i21, label %bb.l, label %bb.k

bb.k:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.an = getelementptr i8, ptr %i.e, i64 16
  br label %BIGNUM_DIGITS.exit23

bb.l:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.ao = getelementptr i8, ptr %i.e, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit23

BIGNUM_DIGITS.exit23:                             ; preds = %bb.k, %bb.l
  %.0.i22 = phi ptr [ %i.an, %bb.k ], [ %i.ap, %bb.l ]
  %i.aq = load i64, ptr %i.l, align 8, !tbaa !48
  %i.ar = and i64 %i.aq, 16384
  %.not.i24 = icmp eq i64 %i.ar, 0
  br i1 %.not.i24, label %bb.n, label %bb.m

bb.m:                                             ; preds = %BIGNUM_DIGITS.exit23
  %i.as = getelementptr i8, ptr %i.l, i64 16
  br label %BIGNUM_DIGITS.exit26

bb.n:                                             ; preds = %BIGNUM_DIGITS.exit23
  %i.at = getelementptr i8, ptr %i.l, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit26

BIGNUM_DIGITS.exit26:                             ; preds = %bb.m, %bb.n
  %.0.i25 = phi ptr [ %i.as, %bb.m ], [ %i.au, %bb.n ]
  tail call fastcc void @bary_mul_toom3(ptr noundef %.0.i20, i64 noundef %i.s, ptr noundef %.0.i22, i64 noundef %.0.i, ptr noundef %.0.i25, i64 noundef %.0.i17, ptr noundef null, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.a, ptr %i.c, align 8, !tbaa !53
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #23, !srcloc !122
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.aw = load volatile i64, ptr %i.av, align 8, !tbaa !46 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.b, ptr %i.d, align 8, !tbaa !53
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #23, !srcloc !123
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.ay = load volatile i64, ptr %i.ax, align 8, !tbaa !46 ; 0 uses
  ret i64 %i.x
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bary_mul_toom3(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 1, 0) %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !46
  %i.c = icmp eq ptr %2, %4
  %i.d = icmp eq i64 %3, %5
  %i.e = and i1 %i.c, %i.d                        ; 2 uses
  %i.f = add i64 %5, 2                            ; 19 uses
  %i.g = udiv i64 %i.f, 3                         ; 117 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 46 uses
  %i.i = mul i64 %i.h, 6
  %i.j = shl nuw i64 %i.g, 1                      ; 117 uses
  %i.k = add nuw i64 %i.j, 2                      ; 8 uses
  %i.l = or disjoint i64 %i.j, 1                  ; 30 uses
  %reass.add2022 = add i64 %i.k, %i.j
  %reass.add = add i64 %reass.add2022, %i.l
  %reass.mul2023 = shl i64 %reass.add, 1
  %i.m = add i64 %i.k, %i.i
  %i.n = add i64 %i.m, %i.l
  %i.o = add i64 %i.n, %reass.mul2023             ; 3 uses
  %i.p = icmp ult i64 %7, %i.o
  br i1 %i.p, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.q = mul i64 %i.o, 3                          ; 3 uses
  %i.r = lshr i64 %i.q, 1                         ; 5 uses
  %i.s = icmp ult i64 %i.q, 512
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = shl nuw nsw i64 %i.r, 2
  %i.u = alloca i8, i64 %i.t, align 16
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.v = icmp slt i64 %i.q, 0
  br i1 %i.v, label %bb.e, label %rb_alloc_tmp_buffer2.exit, !prof !54

bb.e:                                             ; preds = %bb.d
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 256, 0) %i.r, i64 noundef 4) #25
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.d
  %i.w = shl nuw i64 %i.r, 2                      ; 2 uses
  %i.x = add i64 %i.w, 4
  %i.y = lshr i64 %i.x, 3
  %i.z = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.b, i64 noundef %i.w, i64 noundef %i.y) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %rb_alloc_tmp_buffer2.exit, %bb.a
  %.0560 = phi ptr [ %6, %bb.a ], [ %i.u, %bb.c ], [ %i.z, %rb_alloc_tmp_buffer2.exit ] ; 57 uses
  %.0559 = phi i64 [ %7, %bb.a ], [ %i.r, %bb.c ], [ %i.r, %rb_alloc_tmp_buffer2.exit ]
  %.05602856 = ptrtoaddr ptr %.0560 to i64        ; 9 uses
  %.idx1993 = shl i64 %i.h, 2                     ; 4 uses
  %i.aa = getelementptr i8, ptr %.0560, i64 %.idx1993 ; 23 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 %.idx1993 ; 49 uses
  %i.ac = getelementptr [4 x i8], ptr %i.ab, i64 %i.h ; 33 uses
  %i.ad = getelementptr [4 x i8], ptr %i.ac, i64 %i.h ; 31 uses
  %i.ae = getelementptr [4 x i8], ptr %i.ad, i64 %i.h ; 61 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %i.h ; 7 uses
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %i.j ; 14 uses
  %i.ah = getelementptr [4 x i8], ptr %i.ag, i64 %i.k ; 23 uses
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %i.k ; 8 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ai, i64 %i.k ; 9 uses
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %i.j ; 34 uses
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %i.l ; 57 uses
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %i.l ; 42 uses
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.l ; 8 uses
  %i.ao = sub i64 %.0559, %i.o                    ; 5 uses
  %i.ap = mul i64 %i.g, 6
  %i.aq = or disjoint i64 %i.ap, 1                ; 4 uses
  %i.ar = sub i64 %3, %i.j                        ; 20 uses
  %i.as = getelementptr [4 x i8], ptr %2, i64 %i.g ; 7 uses
  %i.at = getelementptr [4 x i8], ptr %2, i64 %i.j ; 13 uses
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = sub i64 %5, %i.j
  %i.av = getelementptr [4 x i8], ptr %4, i64 %i.g
  %i.aw = getelementptr [4 x i8], ptr %4, i64 %i.j
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0557 = phi ptr [ %4, %bb.g ], [ %2, %bb.f ]   ; 9 uses
  %.0555 = phi ptr [ %i.av, %bb.g ], [ %i.as, %bb.f ] ; 6 uses
  %.0554 = phi i64 [ %i.au, %bb.g ], [ %i.ar, %bb.f ] ; 23 uses
  %.0553 = phi ptr [ %i.aw, %bb.g ], [ %i.at, %bb.f ] ; 17 uses
  %.05532964 = ptrtoaddr ptr %.0553 to i64
  %i.ax = icmp ugt i64 %i.g, %i.ar
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.064.i.i = phi i64 [ %i.ar, %bb.i ], [ %i.g, %bb.h ] ; 8 uses
  %.063.i.i = phi ptr [ %2, %bb.i ], [ %i.at, %bb.h ] ; 12 uses
  %.062.i.i = phi i64 [ %i.g, %bb.i ], [ %i.ar, %bb.h ] ; 13 uses
  %.061.i.i = phi ptr [ %i.at, %bb.i ], [ %2, %bb.h ] ; 3 uses
  %.063.i.i2857 = ptrtoaddr ptr %.063.i.i to i64
  %.not.i.i = icmp eq i64 %.064.i.i, 0
  br i1 %.not.i.i, label %.preheader72.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %xtraiter = and i64 %.064.i.i, 1
  %i.ay = icmp eq i64 %.064.i.i, 1
  br i1 %i.ay, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.064.i.i, -2
  br label %.lr.ph.i.i

.preheader72.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader72.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader72.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.05779.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ci, %.preheader72.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ch, %.preheader72.i.i.loopexit.unr-lcssa ]
  %lcmp.mod3339 = trunc i64 %.064.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod3339)
  %i.az = getelementptr [4 x i8], ptr %.061.i.i, i64 %.05779.i.i.epil.init
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !44
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i.epil.init
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !44
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %.05878.i.i.epil.init, %i.bb
  %i.bg = add nuw nsw i64 %i.bf, %i.be            ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = getelementptr [4 x i8], ptr %.0560, i64 %.05779.i.i.epil.init
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !44
  %i.bj = lshr i64 %i.bg, 32
  br label %.preheader72.i.i

.preheader72.i.i:                                 ; preds = %.lr.ph.i.i.epil.preheader, %.preheader72.i.i.loopexit.unr-lcssa, %bb.j
  %.058.lcssa.i.i = phi i64 [ 0, %bb.j ], [ %i.ch, %.preheader72.i.i.loopexit.unr-lcssa ], [ %i.bj, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.bk = icmp ult i64 %.064.i.i, %.062.i.i
  br i1 %i.bk, label %.lr.ph83.i.i, label %.lr.ph88.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.05779.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ci, %.lr.ph.i.i ] ; 5 uses
  %.05878.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ch, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.bl = getelementptr [4 x i8], ptr %.061.i.i, i64 %.05779.i.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !44
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !44
  %i.bq = zext i32 %i.bp to i64
  %i.br = add nuw nsw i64 %.05878.i.i, %i.bn
  %i.bs = add nuw nsw i64 %i.br, %i.bq            ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = getelementptr [4 x i8], ptr %.0560, i64 %.05779.i.i
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !44
  %i.bv = lshr i64 %i.bs, 32
  %i.bw = or disjoint i64 %.05779.i.i, 1          ; 3 uses
  %i.bx = getelementptr [4 x i8], ptr %.061.i.i, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !44
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.bw
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !44
  %i.cc = zext i32 %i.cb to i64
  %i.cd = add nuw nsw i64 %i.bv, %i.bz
  %i.ce = add nuw nsw i64 %i.cd, %i.cc            ; 2 uses
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = getelementptr [4 x i8], ptr %.0560, i64 %i.bw
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !44
  %i.ch = lshr i64 %i.ce, 32                      ; 3 uses
  %i.ci = add nuw nsw i64 %.05779.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader72.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !3

.preheader70.i.i:                                 ; preds = %bb.l
  %.not = icmp ugt i64 %.062.i.i, %i.g
  br i1 %.not, label %bary_add.exit, label %.lr.ph88.preheader.i.i

.lr.ph88.preheader.i.i:                           ; preds = %.preheader72.i.i, %.preheader70.i.i
  %.1.lcssa.i.i1943 = phi i64 [ %.062.i.i, %.preheader70.i.i ], [ %.064.i.i, %.preheader72.i.i ] ; 4 uses
  %.159.lcssa.i.i1942 = phi i64 [ %i.ct, %.preheader70.i.i ], [ %.058.lcssa.i.i, %.preheader72.i.i ]
  %i.cj = icmp eq i64 %.159.lcssa.i.i1942, 0
  br i1 %i.cj, label %.loopexit71.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph88.preheader.i.i
  %i.ck = getelementptr [4 x i8], ptr %.0560, i64 %.1.lcssa.i.i1943
  store i32 1, ptr %i.ck, align 4, !tbaa !44
  %i.cl = add nuw nsw i64 %.1.lcssa.i.i1943, 1
  %exitcond103.peel.not.i.i = icmp eq i64 %.1.lcssa.i.i1943, %i.g
  br i1 %exitcond103.peel.not.i.i, label %bary_add.exit, label %.loopexit71.i.i

.lr.ph83.i.i:                                     ; preds = %.preheader72.i.i, %bb.l
  %.182.i.i = phi i64 [ %i.cu, %bb.l ], [ %.064.i.i, %.preheader72.i.i ] ; 4 uses
  %.15981.i.i = phi i64 [ %i.ct, %bb.l ], [ %.058.lcssa.i.i, %.preheader72.i.i ]
  %i.cm = icmp eq i64 %.15981.i.i, 0
  br i1 %i.cm, label %.loopexit71.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph83.i.i
  %i.cn = getelementptr [4 x i8], ptr %.063.i.i, i64 %.182.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !44
  %i.cp = zext i32 %i.co to i64
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = getelementptr [4 x i8], ptr %.0560, i64 %.182.i.i
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !44
  %i.ct = lshr i64 %i.cq, 32                      ; 2 uses
  %i.cu = add i64 %.182.i.i, 1                    ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %i.cu, %.062.i.i
  br i1 %exitcond102.not.i.i, label %.preheader70.i.i, label %.lr.ph83.i.i, !llvm.loop !4

.loopexit71.i.i:                                  ; preds = %.lr.ph83.i.i, %bb.k, %.lr.ph88.preheader.i.i
  %.3.i.i = phi i64 [ %i.cl, %bb.k ], [ %.1.lcssa.i.i1943, %.lr.ph88.preheader.i.i ], [ %.182.i.i, %.lr.ph83.i.i ] ; 6 uses
  %i.cv = icmp eq ptr %.063.i.i, %.0560
  %i.cw = icmp eq i64 %.062.i.i, %i.h
  %or.cond.i.i = and i1 %i.cv, %i.cw
  br i1 %or.cond.i.i, label %bary_add.exit, label %.preheader69.i.i

.preheader69.i.i:                                 ; preds = %.loopexit71.i.i
  %i.cx = icmp ult i64 %.3.i.i, %.062.i.i
  br i1 %i.cx, label %.lr.ph91.i.i.preheader, label %.preheader.i.i

.lr.ph91.i.i.preheader:                           ; preds = %.preheader69.i.i
  %i.cy = sub nuw i64 %.062.i.i, %.3.i.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.cy, 8
  %i.cz = sub i64 %.063.i.i2857, %.05602856
  %diff.check = icmp ugt i64 %i.cz, -32
  %or.cond3194 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond3194, label %.lr.ph91.i.i.preheader3334, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph91.i.i.preheader
  %n.vec = and i64 %i.cy, -8                      ; 3 uses
  %i.da = add i64 %.3.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = add nuw i64 %.3.i.i, %index             ; 2 uses
  %i.dc = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.db ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 16
  %wide.load = load <4 x i32>, ptr %i.dc, align 4, !tbaa !44
  %wide.load2858 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !44
  %i.de = getelementptr [4 x i8], ptr %.0560, i64 %i.db ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 16
  store <4 x i32> %wide.load, ptr %i.de, align 4, !tbaa !44
  store <4 x i32> %wide.load2858, ptr %i.df, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
end_hunk_0
begin_hunk_1_@bary_mul_toom3:bb.a
  %i.bpj = add nuw nsw i64 %.05878.i.i1608, %i.bpf
  %i.bpk = add nuw nsw i64 %i.bpj, %i.bpi         ; 2 uses
  %i.bpl = trunc i64 %i.bpk to i32
  store i32 %i.bpl, ptr %i.bpg, align 4, !tbaa !44
  %i.bpm = lshr i64 %i.bpk, 32
  %i.bpn = or disjoint i64 %.05779.i.i1607, 1     ; 2 uses
  %i.bpo = getelementptr [4 x i8], ptr %i.aj, i64 %i.bpn
  %i.bpp = load i32, ptr %i.bpo, align 4, !tbaa !44
  %i.bpq = zext i32 %i.bpp to i64
  %i.bpr = getelementptr [4 x i8], ptr %i.al, i64 %i.bpn ; 2 uses
  %i.bps = load i32, ptr %i.bpr, align 4, !tbaa !44
  %i.bpt = zext i32 %i.bps to i64
  %i.bpu = add nuw nsw i64 %i.bpm, %i.bpq
  %i.bpv = add nuw nsw i64 %i.bpu, %i.bpt         ; 2 uses
  %i.bpw = trunc i64 %i.bpv to i32
  store i32 %i.bpw, ptr %i.bpr, align 4, !tbaa !44
  %i.bpx = lshr i64 %i.bpv, 32                    ; 2 uses
  %i.bpy = add nuw i64 %.05779.i.i1607, 2         ; 2 uses
  %exitcond.not.i.i1609.1 = icmp eq i64 %i.bpy, %i.j
  br i1 %exitcond.not.i.i1609.1, label %.preheader72.i.i1610, label %.lr.ph.i.i1606, !llvm.loop !3

bb.bw:                                            ; preds = %.preheader72.i.i1610
  %i.bpz = getelementptr [4 x i8], ptr %i.al, i64 %i.j ; 2 uses
  %i.bqa = load i32, ptr %i.bpz, align 4, !tbaa !44
  %i.bqb = add i32 %i.bqa, 1
  store i32 %i.bqb, ptr %i.bpz, align 4, !tbaa !44
  br label %bary_2comp.exit1600

bary_2comp.exit1600:                              ; preds = %bb.bt, %.lr.ph26.i1595, %middle.block3134, %bb.bv, %bb.bs, %._crit_edge.i.i1559, %.preheader72.i.i1610, %bb.bw, %.loopexit71.i.i1563, %bb.bu
  %.not591 = phi i1 [ true, %.preheader72.i.i1610 ], [ false, %.loopexit71.i.i1563 ], [ true, %bb.bv ], [ true, %bb.bu ], [ true, %middle.block3134 ], [ false, %bb.bs ], [ true, %bb.bw ], [ false, %._crit_edge.i.i1559 ], [ true, %.lr.ph26.i1595 ], [ true, %bb.bt ]
  %i.bqc = icmp eq i32 %.0537, %.2
  br i1 %i.bqc, label %.lr.ph.i.i1637.preheader, label %.lr.ph.i.i1688.preheader

.lr.ph.i.i1688.preheader:                         ; preds = %bary_2comp.exit1600
  %i.bqd = icmp ult i64 %i.f, 3
  br i1 %i.bqd, label %.lr.ph.i.i1688.epil, label %.lr.ph.i.i1688

.lr.ph.i.i1637.preheader:                         ; preds = %bary_2comp.exit1600
  %i.bqe = icmp ult i64 %i.f, 3
  br i1 %i.bqe, label %.lr.ph.i.i1637.epil, label %.lr.ph.i.i1637

.lr.ph.i.i1637:                                   ; preds = %.lr.ph.i.i1637.preheader, %.lr.ph.i.i1637
  %.078.i.i1638 = phi i64 [ %i.bra, %.lr.ph.i.i1637 ], [ 0, %.lr.ph.i.i1637.preheader ] ; 4 uses
  %.06277.i.i1639 = phi i64 [ %i.bqz, %.lr.ph.i.i1637 ], [ 0, %.lr.ph.i.i1637.preheader ]
  %niter3542 = phi i64 [ %niter3542.next.1, %.lr.ph.i.i1637 ], [ 0, %.lr.ph.i.i1637.preheader ]
  %i.bqf = getelementptr [4 x i8], ptr %i.ak, i64 %.078.i.i1638 ; 2 uses
  %i.bqg = load i32, ptr %i.bqf, align 4, !tbaa !44
  %i.bqh = zext i32 %i.bqg to i64
  %i.bqi = getelementptr [4 x i8], ptr %i.am, i64 %.078.i.i1638
  %i.bqj = load i32, ptr %i.bqi, align 4, !tbaa !44
  %i.bqk = zext i32 %i.bqj to i64
  %i.bql = sub nsw i64 %i.bqh, %i.bqk
  %i.bqm = add nsw i64 %i.bql, %.06277.i.i1639    ; 2 uses
  %i.bqn = trunc i64 %i.bqm to i32
  store i32 %i.bqn, ptr %i.bqf, align 4, !tbaa !44
  %i.bqo = ashr i64 %i.bqm, 32
  %i.bqp = or disjoint i64 %.078.i.i1638, 1       ; 2 uses
  %i.bqq = getelementptr [4 x i8], ptr %i.ak, i64 %i.bqp ; 2 uses
  %i.bqr = load i32, ptr %i.bqq, align 4, !tbaa !44
  %i.bqs = zext i32 %i.bqr to i64
  %i.bqt = getelementptr [4 x i8], ptr %i.am, i64 %i.bqp
  %i.bqu = load i32, ptr %i.bqt, align 4, !tbaa !44
  %i.bqv = zext i32 %i.bqu to i64
  %i.bqw = sub nsw i64 %i.bqs, %i.bqv
  %i.bqx = add nsw i64 %i.bqw, %i.bqo             ; 2 uses
  %i.bqy = trunc i64 %i.bqx to i32
  store i32 %i.bqy, ptr %i.bqq, align 4, !tbaa !44
  %i.bqz = ashr i64 %i.bqx, 32                    ; 2 uses
  %i.bra = add nuw i64 %.078.i.i1638, 2           ; 2 uses
  %niter3542.next.1 = add i64 %niter3542, 2       ; 2 uses
  %niter3542.ncmp.1 = icmp eq i64 %niter3542.next.1, %i.j
  br i1 %niter3542.ncmp.1, label %.lr.ph.i.i1637.epil, label %.lr.ph.i.i1637, !llvm.loop !5

.lr.ph.i.i1637.epil:                              ; preds = %.lr.ph.i.i1637.preheader, %.lr.ph.i.i1637
  %.078.i.i1638.epil.init = phi i64 [ 0, %.lr.ph.i.i1637.preheader ], [ %i.bra, %.lr.ph.i.i1637 ] ; 2 uses
  %.06277.i.i1639.epil.init = phi i64 [ 0, %.lr.ph.i.i1637.preheader ], [ %i.bqz, %.lr.ph.i.i1637 ]
  %i.brb = getelementptr [4 x i8], ptr %i.ak, i64 %.078.i.i1638.epil.init ; 2 uses
  %i.brc = load i32, ptr %i.brb, align 4, !tbaa !44
  %i.brd = zext i32 %i.brc to i64
  %i.bre = getelementptr [4 x i8], ptr %i.am, i64 %.078.i.i1638.epil.init
  %i.brf = load i32, ptr %i.bre, align 4, !tbaa !44
  %i.brg = zext i32 %i.brf to i64
  %i.brh = sub nsw i64 %i.brd, %i.brg
  %i.bri = add nsw i64 %i.brh, %.06277.i.i1639.epil.init ; 2 uses
  %i.brj = trunc i64 %i.bri to i32
  store i32 %i.brj, ptr %i.brb, align 4, !tbaa !44
  %i.brk = icmp ult i64 %i.bri, 4294967296
  br i1 %i.brk, label %bary_2comp.exit1682, label %.lr.ph.i1672

.lr.ph.i1672:                                     ; preds = %.lr.ph.i.i1637.epil, %bb.bx
  %.023.i1673 = phi i64 [ %i.brn, %bb.bx ], [ 0, %.lr.ph.i.i1637.epil ] ; 6 uses
  %i.brl = getelementptr [4 x i8], ptr %i.ak, i64 %.023.i1673
  %i.brm = load i32, ptr %i.brl, align 4, !tbaa !44 ; 2 uses
  %.not.i1674 = icmp eq i32 %i.brm, 0
  br i1 %.not.i1674, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.lr.ph.i1672
  %i.brn = add nuw i64 %.023.i1673, 1
  %exitcond.not.i1681 = icmp eq i64 %.023.i1673, %i.j
  br i1 %exitcond.not.i1681, label %bary_2comp.exit1682, label %.lr.ph.i1672, !llvm.loop !8

bb.by:                                            ; preds = %.lr.ph.i1672
  %i.bro = getelementptr [4 x i8], ptr %i.ak, i64 %.023.i1673
  %i.brp = sub i32 0, %i.brm
  store i32 %i.brp, ptr %i.bro, align 4, !tbaa !44
  %.124.i1675 = add i64 %.023.i1673, 1            ; 4 uses
  %.not2021 = icmp ugt i64 %.124.i1675, %i.j
  br i1 %.not2021, label %bary_2comp.exit1682, label %.lr.ph26.i1677.preheader

.lr.ph26.i1677.preheader:                         ; preds = %bb.by
  %i.brq = sub i64 %i.j, %.023.i1673              ; 3 uses
  %min.iters.check3138 = icmp ult i64 %i.brq, 8
  br i1 %min.iters.check3138, label %.lr.ph26.i1677.preheader3213, label %vector.ph3139

vector.ph3139:                                    ; preds = %.lr.ph26.i1677.preheader
  %n.vec3140 = and i64 %i.brq, -8                 ; 3 uses
  %i.brr = add i64 %.124.i1675, %n.vec3140
  %i.brs = getelementptr [4 x i8], ptr %i.ak, i64 %.124.i1675
  br label %vector.body3141

vector.body3141:                                  ; preds = %vector.body3141, %vector.ph3139
  %index3142 = phi i64 [ 0, %vector.ph3139 ], [ %index.next3145, %vector.body3141 ] ; 2 uses
  %i.brt = getelementptr [4 x i8], ptr %i.brs, i64 %index3142 ; 3 uses
  %i.bru = getelementptr i8, ptr %i.brt, i64 16   ; 2 uses
  %wide.load3143.a = load <4 x i32>, ptr %i.brt, align 4, !tbaa !44
  %wide.load3144 = load <4 x i32>, ptr %i.bru, align 4, !tbaa !44
  %i.brv = xor <4 x i32> %wide.load3143.a, splat (i32 -1)
  %i.brw = xor <4 x i32> %wide.load3144, splat (i32 -1)
  store <4 x i32> %i.brv, ptr %i.brt, align 4, !tbaa !44
  store <4 x i32> %i.brw, ptr %i.bru, align 4, !tbaa !44
  %index.next3145 = add nuw i64 %index3142, 8     ; 2 uses
  %i.brx = icmp eq i64 %index.next3145, %n.vec3140
  br i1 %i.brx, label %middle.block3146, label %vector.body3141, !llvm.loop !180

middle.block3146:                                 ; preds = %vector.body3141
  %cmp.n3147 = icmp eq i64 %i.brq, %n.vec3140
  br i1 %cmp.n3147, label %bary_2comp.exit1682, label %.lr.ph26.i1677.preheader3213

.lr.ph26.i1677.preheader3213:                     ; preds = %.lr.ph26.i1677.preheader, %middle.block3146
  %.125.i1678.ph = phi i64 [ %.124.i1675, %.lr.ph26.i1677.preheader ], [ %i.brr, %middle.block3146 ]
  br label %.lr.ph26.i1677

.lr.ph26.i1677:                                   ; preds = %.lr.ph26.i1677.preheader3213, %.lr.ph26.i1677
  %.125.i1678 = phi i64 [ %.1.i1679, %.lr.ph26.i1677 ], [ %.125.i1678.ph, %.lr.ph26.i1677.preheader3213 ] ; 3 uses
  %i.bry = getelementptr [4 x i8], ptr %i.ak, i64 %.125.i1678 ; 2 uses
  %i.brz = load i32, ptr %i.bry, align 4, !tbaa !44
  %i.bsa = xor i32 %i.brz, -1
  store i32 %i.bsa, ptr %i.bry, align 4, !tbaa !44
  %.1.i1679 = add nuw i64 %.125.i1678, 1
  %exitcond31.not.i1680 = icmp eq i64 %.125.i1678, %i.j
  br i1 %exitcond31.not.i1680, label %bary_2comp.exit1682, label %.lr.ph26.i1677, !llvm.loop !181

.lr.ph.i.i1688:                                   ; preds = %.lr.ph.i.i1688.preheader, %.lr.ph.i.i1688
  %.05779.i.i1689 = phi i64 [ %i.bsw, %.lr.ph.i.i1688 ], [ 0, %.lr.ph.i.i1688.preheader ] ; 4 uses
  %.05878.i.i1690 = phi i64 [ %i.bsv, %.lr.ph.i.i1688 ], [ 0, %.lr.ph.i.i1688.preheader ]
  %niter3535 = phi i64 [ %niter3535.next.1, %.lr.ph.i.i1688 ], [ 0, %.lr.ph.i.i1688.preheader ]
  %i.bsb = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1689 ; 2 uses
  %i.bsc = load i32, ptr %i.bsb, align 4, !tbaa !44
  %i.bsd = zext i32 %i.bsc to i64
  %i.bse = getelementptr [4 x i8], ptr %i.am, i64 %.05779.i.i1689
  %i.bsf = load i32, ptr %i.bse, align 4, !tbaa !44
  %i.bsg = zext i32 %i.bsf to i64
  %i.bsh = add nuw nsw i64 %.05878.i.i1690, %i.bsd
  %i.bsi = add nuw nsw i64 %i.bsh, %i.bsg         ; 2 uses
  %i.bsj = trunc i64 %i.bsi to i32
  store i32 %i.bsj, ptr %i.bsb, align 4, !tbaa !44
  %i.bsk = lshr i64 %i.bsi, 32
  %i.bsl = or disjoint i64 %.05779.i.i1689, 1     ; 2 uses
  %i.bsm = getelementptr [4 x i8], ptr %i.ak, i64 %i.bsl ; 2 uses
  %i.bsn = load i32, ptr %i.bsm, align 4, !tbaa !44
  %i.bso = zext i32 %i.bsn to i64
  %i.bsp = getelementptr [4 x i8], ptr %i.am, i64 %i.bsl
  %i.bsq = load i32, ptr %i.bsp, align 4, !tbaa !44
  %i.bsr = zext i32 %i.bsq to i64
  %i.bss = add nuw nsw i64 %i.bsk, %i.bso
  %i.bst = add nuw nsw i64 %i.bss, %i.bsr         ; 2 uses
  %i.bsu = trunc i64 %i.bst to i32
  store i32 %i.bsu, ptr %i.bsm, align 4, !tbaa !44
  %i.bsv = lshr i64 %i.bst, 32                    ; 2 uses
  %i.bsw = add nuw i64 %.05779.i.i1689, 2         ; 2 uses
  %niter3535.next.1 = add i64 %niter3535, 2       ; 2 uses
  %niter3535.ncmp.1 = icmp eq i64 %niter3535.next.1, %i.j
  br i1 %niter3535.ncmp.1, label %.lr.ph.i.i1688.epil, label %.lr.ph.i.i1688, !llvm.loop !3

.lr.ph.i.i1688.epil:                              ; preds = %.lr.ph.i.i1688.preheader, %.lr.ph.i.i1688
  %.05779.i.i1689.epil.init = phi i64 [ 0, %.lr.ph.i.i1688.preheader ], [ %i.bsw, %.lr.ph.i.i1688 ] ; 2 uses
  %.05878.i.i1690.epil.init = phi i64 [ 0, %.lr.ph.i.i1688.preheader ], [ %i.bsv, %.lr.ph.i.i1688 ]
  %i.bsx = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1689.epil.init ; 2 uses
  %i.bsy = load i32, ptr %i.bsx, align 4, !tbaa !44
  %i.bsz = getelementptr [4 x i8], ptr %i.am, i64 %.05779.i.i1689.epil.init
  %i.bta = load i32, ptr %i.bsz, align 4, !tbaa !44
  %i.btb = trunc nuw nsw i64 %.05878.i.i1690.epil.init to i32
  %i.btc = add i32 %i.bsy, %i.btb
  %i.btd = add i32 %i.btc, %i.bta
  store i32 %i.btd, ptr %i.bsx, align 4, !tbaa !44
  br label %bary_2comp.exit1682

bary_2comp.exit1682:                              ; preds = %bb.bx, %.lr.ph26.i1677, %.lr.ph.i.i1688.epil, %middle.block3146, %.lr.ph.i.i1637.epil, %bb.by
  %.1538 = phi i32 [ %.0537, %.lr.ph.i.i1637.epil ], [ %.not587, %middle.block3146 ], [ %.0537, %.lr.ph.i.i1688.epil ], [ %.not587, %bb.by ], [ %.not587, %.lr.ph26.i1677 ], [ %.not587, %bb.bx ]
  %i.bte = icmp ugt i64 %i.f, 6917529027641081855
  br i1 %i.bte, label %bb.bz, label %ruby_nonempty_memcpy.exit, !prof !54

bb.bz:                                            ; preds = %bary_2comp.exit1682
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.j) #25
  unreachable

ruby_nonempty_memcpy.exit:                        ; preds = %bary_2comp.exit1682
  br i1 %.not97.i.i, label %.lr.ph.preheader, label %rbimpl_size_mul_or_raise.exit1719

.lr.ph.preheader:                                 ; preds = %ruby_nonempty_memcpy.exit
  %8 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  %.idx2527 = shl nuw nsw i64 %i.g, 4
  br label %ruby_nonempty_memcpy.exit1722

rbimpl_size_mul_or_raise.exit1719:                ; preds = %ruby_nonempty_memcpy.exit
  %9 = shl i64 %i.g, 3                            ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0560, ptr noundef nonnull readonly align 1 %i.af, i64 noundef range(i64 1, 0) %9, i1 noundef false) #23
  %10 = getelementptr [4 x i8], ptr %.0560, i64 %i.j ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 %9, i1 false), !tbaa !44
  %.idx = shl i64 %i.g, 4                         ; 2 uses
  %i.btf = getelementptr i8, ptr %.0560, i64 %.idx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.btf, ptr noundef nonnull readonly align 1 %i.aj, i64 noundef range(i64 1, 0) %9, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit1722

ruby_nonempty_memcpy.exit1722:                    ; preds = %.lr.ph.preheader, %rbimpl_size_mul_or_raise.exit1719
  %11 = phi i64 [ %.idx2527, %.lr.ph.preheader ], [ %.idx, %rbimpl_size_mul_or_raise.exit1719 ]
  %12 = phi ptr [ %8, %.lr.ph.preheader ], [ %10, %rbimpl_size_mul_or_raise.exit1719 ] ; 3 uses
  %13 = getelementptr i8, ptr %.0560, i64 %11
  %i.btg = getelementptr [4 x i8], ptr %13, i64 %i.j
  store i32 0, ptr %i.btg, align 4, !tbaa !44
  %.not590 = icmp eq i32 %.1538, 0
  %i.bth = getelementptr [4 x i8], ptr %.0560, i64 %i.g ; 21 uses
  %i.bti = sub i64 %i.aq, %i.g                    ; 16 uses
  br i1 %.not590, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %ruby_nonempty_memcpy.exit1722
  %i.btj = icmp ugt i64 %i.bti, %i.l
  br i1 %i.btj, label %.lr.ph.i.i1728.preheader, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not.i.i1727 = icmp eq i64 %i.bti, 0
  br i1 %.not.i.i1727, label %.preheader72.i.i1732, label %.lr.ph.i.i1728.preheader

.lr.ph.i.i1728.preheader:                         ; preds = %bb.ca, %bb.cb
  %.061.i.i17262541 = phi ptr [ %i.bth, %bb.cb ], [ %i.ak, %bb.ca ] ; 3 uses
  %.062.i.i17252539.a = phi i64 [ %i.l, %bb.cb ], [ %i.bti, %bb.ca ] ; 2 uses
  %.063.i.i17242537.a = phi ptr [ %i.ak, %bb.cb ], [ %i.bth, %bb.ca ] ; 5 uses
  %.064.i.i17232535.a = phi i64 [ %i.bti, %bb.cb ], [ %i.l, %bb.ca ] ; 6 uses
  %xtraiter3543 = and i64 %.064.i.i17232535.a, 1
  %i.btk = icmp eq i64 %.064.i.i17232535.a, 1
  br i1 %i.btk, label %.lr.ph.i.i1728.epil.preheader, label %.lr.ph.i.i1728.preheader.new

.lr.ph.i.i1728.preheader.new:                     ; preds = %.lr.ph.i.i1728.preheader
  %unroll_iter3548 = and i64 %.064.i.i17232535.a, -2
  br label %.lr.ph.i.i1728

.preheader72.i.i1732.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i1728
  %lcmp.mod3545.not = icmp eq i64 %xtraiter3543, 0
  br i1 %lcmp.mod3545.not, label %.preheader72.i.i1732, label %.lr.ph.i.i1728.epil.preheader

.lr.ph.i.i1728.epil.preheader:                    ; preds = %.preheader72.i.i1732.loopexit.unr-lcssa, %.lr.ph.i.i1728.preheader
  %.05779.i.i1729.epil.init = phi i64 [ 0, %.lr.ph.i.i1728.preheader ], [ %i.buu, %.preheader72.i.i1732.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i1730.epil.init = phi i64 [ 0, %.lr.ph.i.i1728.preheader ], [ %i.but, %.preheader72.i.i1732.loopexit.unr-lcssa ]
  %lcmp.mod3547 = trunc i64 %.064.i.i17232535.a to i1
  call void @llvm.assume(i1 %lcmp.mod3547)
  %i.btl = getelementptr [4 x i8], ptr %.061.i.i17262541, i64 %.05779.i.i1729.epil.init
  %i.btm = load i32, ptr %i.btl, align 4, !tbaa !44
  %i.btn = zext i32 %i.btm to i64
  %i.bto = getelementptr [4 x i8], ptr %.063.i.i17242537.a, i64 %.05779.i.i1729.epil.init
  %i.btp = load i32, ptr %i.bto, align 4, !tbaa !44
  %i.btq = zext i32 %i.btp to i64
  %i.btr = add nuw nsw i64 %.05878.i.i1730.epil.init, %i.btn
  %i.bts = add nuw nsw i64 %i.btr, %i.btq         ; 2 uses
  %i.btt = trunc i64 %i.bts to i32
  %i.btu = getelementptr [4 x i8], ptr %i.bth, i64 %.05779.i.i1729.epil.init
  store i32 %i.btt, ptr %i.btu, align 4, !tbaa !44
  %i.btv = lshr i64 %i.bts, 32
  br label %.preheader72.i.i1732

.preheader72.i.i1732:                             ; preds = %.lr.ph.i.i1728.epil.preheader, %.preheader72.i.i1732.loopexit.unr-lcssa, %bb.cb
  %.062.i.i17252540 = phi i64 [ %i.l, %bb.cb ], [ %.062.i.i17252539.a, %.preheader72.i.i1732.loopexit.unr-lcssa ], [ %.062.i.i17252539.a, %.lr.ph.i.i1728.epil.preheader ] ; 12 uses
  %.063.i.i17242538 = phi ptr [ %i.ak, %bb.cb ], [ %.063.i.i17242537.a, %.preheader72.i.i1732.loopexit.unr-lcssa ], [ %.063.i.i17242537.a, %.lr.ph.i.i1728.epil.preheader ] ; 9 uses
  %.064.i.i17232536 = phi i64 [ 0, %bb.cb ], [ %.064.i.i17232535.a, %.preheader72.i.i1732.loopexit.unr-lcssa ], [ %.064.i.i17232535.a, %.lr.ph.i.i1728.epil.preheader ] ; 3 uses
  %.058.lcssa.i.i1733 = phi i64 [ 0, %bb.cb ], [ %i.but, %.preheader72.i.i1732.loopexit.unr-lcssa ], [ %i.btv, %.lr.ph.i.i1728.epil.preheader ] ; 2 uses
  %.063.i.i172425383150 = ptrtoaddr ptr %.063.i.i17242538 to i64
  %i.btw = icmp ult i64 %.064.i.i17232536, %.062.i.i17252540
  br i1 %i.btw, label %.lr.ph83.i.i1753, label %.preheader70.i.i1734

.lr.ph.i.i1728:                                   ; preds = %.lr.ph.i.i1728, %.lr.ph.i.i1728.preheader.new
  %.05779.i.i1729 = phi i64 [ 0, %.lr.ph.i.i1728.preheader.new ], [ %i.buu, %.lr.ph.i.i1728 ] ; 5 uses
  %.05878.i.i1730 = phi i64 [ 0, %.lr.ph.i.i1728.preheader.new ], [ %i.but, %.lr.ph.i.i1728 ]
  %niter3549 = phi i64 [ 0, %.lr.ph.i.i1728.preheader.new ], [ %niter3549.next.1, %.lr.ph.i.i1728 ]
  %i.btx = getelementptr [4 x i8], ptr %.061.i.i17262541, i64 %.05779.i.i1729
  %i.bty = load i32, ptr %i.btx, align 4, !tbaa !44
  %i.btz = zext i32 %i.bty to i64
  %i.bua = getelementptr [4 x i8], ptr %.063.i.i17242537.a, i64 %.05779.i.i1729
  %i.bub = load i32, ptr %i.bua, align 4, !tbaa !44
  %i.buc = zext i32 %i.bub to i64
  %i.bud = add nuw nsw i64 %.05878.i.i1730, %i.btz
  %i.bue = add nuw nsw i64 %i.bud, %i.buc         ; 2 uses
  %i.buf = trunc i64 %i.bue to i32
  %i.bug = getelementptr [4 x i8], ptr %i.bth, i64 %.05779.i.i1729
  store i32 %i.buf, ptr %i.bug, align 4, !tbaa !44
  %i.buh = lshr i64 %i.bue, 32
  %i.bui = or disjoint i64 %.05779.i.i1729, 1     ; 3 uses
  %i.buj = getelementptr [4 x i8], ptr %.061.i.i17262541, i64 %i.bui
  %i.buk = load i32, ptr %i.buj, align 4, !tbaa !44
  %i.bul = zext i32 %i.buk to i64
  %i.bum = getelementptr [4 x i8], ptr %.063.i.i17242537.a, i64 %i.bui
  %i.bun = load i32, ptr %i.bum, align 4, !tbaa !44
  %i.buo = zext i32 %i.bun to i64
  %i.bup = add nuw nsw i64 %i.buh, %i.bul
  %i.buq = add nuw nsw i64 %i.bup, %i.buo         ; 2 uses
  %i.bur = trunc i64 %i.buq to i32
  %i.bus = getelementptr [4 x i8], ptr %i.bth, i64 %i.bui
  store i32 %i.bur, ptr %i.bus, align 4, !tbaa !44
  %i.but = lshr i64 %i.buq, 32                    ; 3 uses
  %i.buu = add nuw i64 %.05779.i.i1729, 2         ; 2 uses
  %niter3549.next.1 = add i64 %niter3549, 2       ; 2 uses
  %niter3549.ncmp.1 = icmp eq i64 %niter3549.next.1, %unroll_iter3548
  br i1 %niter3549.ncmp.1, label %.preheader72.i.i1732.loopexit.unr-lcssa, label %.lr.ph.i.i1728, !llvm.loop !3

.preheader70.i.i1734:                             ; preds = %bb.cd, %.preheader72.i.i1732
  %.159.lcssa.i.i1735 = phi i64 [ %.058.lcssa.i.i1733, %.preheader72.i.i1732 ], [ %i.bvg, %bb.cd ]
  %.1.lcssa.i.i1736 = phi i64 [ %.064.i.i17232536, %.preheader72.i.i1732 ], [ %.062.i.i17252540, %bb.cd ] ; 4 uses
  %i.buv = icmp ult i64 %.1.lcssa.i.i1736, %i.bti
  br i1 %i.buv, label %.lr.ph88.preheader.i.i1740, label %bary_add.exit1757

.lr.ph88.preheader.i.i1740:                       ; preds = %.preheader70.i.i1734
  %i.buw = icmp eq i64 %.159.lcssa.i.i1735, 0
  br i1 %i.buw, label %.loopexit71.i.i1742, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph88.preheader.i.i1740
  %i.bux = getelementptr [4 x i8], ptr %i.bth, i64 %.1.lcssa.i.i1736
  store i32 1, ptr %i.bux, align 4, !tbaa !44
  %i.buy = add nuw i64 %.1.lcssa.i.i1736, 1       ; 2 uses
  %exitcond103.peel.not.i.i1741 = icmp eq i64 %i.buy, %i.bti
  br i1 %exitcond103.peel.not.i.i1741, label %bary_add.exit1757, label %.loopexit71.i.i1742

.lr.ph83.i.i1753:                                 ; preds = %.preheader72.i.i1732, %bb.cd
  %.182.i.i1754 = phi i64 [ %i.bvh, %bb.cd ], [ %.064.i.i17232536, %.preheader72.i.i1732 ] ; 4 uses
  %.15981.i.i1755 = phi i64 [ %i.bvg, %bb.cd ], [ %.058.lcssa.i.i1733, %.preheader72.i.i1732 ]
  %i.buz = icmp eq i64 %.15981.i.i1755, 0
  br i1 %i.buz, label %.loopexit71.i.i1742, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph83.i.i1753
  %i.bva = getelementptr [4 x i8], ptr %.063.i.i17242538, i64 %.182.i.i1754
  %i.bvb = load i32, ptr %i.bva, align 4, !tbaa !44
  %i.bvc = zext i32 %i.bvb to i64
  %i.bvd = add nuw nsw i64 %i.bvc, 1              ; 2 uses
  %i.bve = trunc i64 %i.bvd to i32
  %i.bvf = getelementptr [4 x i8], ptr %i.bth, i64 %.182.i.i1754
  store i32 %i.bve, ptr %i.bvf, align 4, !tbaa !44
  %i.bvg = lshr i64 %i.bvd, 32                    ; 2 uses
  %i.bvh = add i64 %.182.i.i1754, 1               ; 2 uses
  %exitcond102.not.i.i1756 = icmp eq i64 %i.bvh, %.062.i.i17252540
  br i1 %exitcond102.not.i.i1756, label %.preheader70.i.i1734, label %.lr.ph83.i.i1753, !llvm.loop !4

.loopexit71.i.i1742:                              ; preds = %.lr.ph83.i.i1753, %bb.cc, %.lr.ph88.preheader.i.i1740
  %.3.i.i1743 = phi i64 [ %i.buy, %bb.cc ], [ %.1.lcssa.i.i1736, %.lr.ph88.preheader.i.i1740 ], [ %.182.i.i1754, %.lr.ph83.i.i1753 ] ; 7 uses
  %i.bvi = icmp eq ptr %.063.i.i17242538, %i.bth
  %i.bvj = icmp eq i64 %.062.i.i17252540, %i.bti
  %or.cond.i.i1744 = and i1 %i.bvi, %i.bvj
  br i1 %or.cond.i.i1744, label %bary_add.exit1757, label %.preheader69.i.i1745

.preheader69.i.i1745:                             ; preds = %.loopexit71.i.i1742
  %i.bvk = icmp ult i64 %.3.i.i1743, %.062.i.i17252540
  br i1 %i.bvk, label %.lr.ph91.i.i1750.preheader, label %.preheader.i.i1746

.lr.ph91.i.i1750.preheader:                       ; preds = %.preheader69.i.i1745
  %i.bvl = sub nuw i64 %.062.i.i17252540, %.3.i.i1743 ; 3 uses
  %min.iters.check3153 = icmp ult i64 %i.bvl, 16
  br i1 %min.iters.check3153, label %.lr.ph91.i.i1750.preheader3209, label %vector.memcheck3149

vector.memcheck3149:                              ; preds = %.lr.ph91.i.i1750.preheader
  %i.bvm = shl nuw i64 %i.g, 2
  %i.bvn = add i64 %i.bvm, %.05602856
  %i.bvo = sub i64 %.063.i.i172425383150, %i.bvn
  %diff.check3151 = icmp ugt i64 %i.bvo, -32
  br i1 %diff.check3151, label %.lr.ph91.i.i1750.preheader3209, label %vector.ph3154

vector.ph3154:                                    ; preds = %vector.memcheck3149
  %n.vec3155 = and i64 %i.bvl, -8                 ; 3 uses
  %i.bvp = add i64 %.3.i.i1743, %n.vec3155
  br label %vector.body3156

vector.body3156:                                  ; preds = %vector.body3156, %vector.ph3154
  %index3157 = phi i64 [ 0, %vector.ph3154 ], [ %index.next3160, %vector.body3156 ] ; 2 uses
  %i.bvq = add nuw i64 %.3.i.i1743, %index3157    ; 2 uses
  %i.bvr = getelementptr [4 x i8], ptr %.063.i.i17242538, i64 %i.bvq ; 2 uses
  %i.bvs = getelementptr i8, ptr %i.bvr, i64 16
  %wide.load3158.a = load <4 x i32>, ptr %i.bvr, align 4, !tbaa !44
  %wide.load3159 = load <4 x i32>, ptr %i.bvs, align 4, !tbaa !44
  %i.bvt = getelementptr [4 x i8], ptr %i.bth, i64 %i.bvq ; 2 uses
  %i.bvu = getelementptr i8, ptr %i.bvt, i64 16
  store <4 x i32> %wide.load3158.a, ptr %i.bvt, align 4, !tbaa !44
  store <4 x i32> %wide.load3159, ptr %i.bvu, align 4, !tbaa !44
  %index.next3160 = add nuw i64 %index3157, 8     ; 2 uses
  %i.bvv = icmp eq i64 %index.next3160, %n.vec3155
  br i1 %i.bvv, label %middle.block3161, label %vector.body3156, !llvm.loop !182

middle.block3161:                                 ; preds = %vector.body3156
  %cmp.n3162 = icmp eq i64 %i.bvl, %n.vec3155
  br i1 %cmp.n3162, label %.preheader.i.i1746, label %.lr.ph91.i.i1750.preheader3209

.lr.ph91.i.i1750.preheader3209:                   ; preds = %vector.memcheck3149, %.lr.ph91.i.i1750.preheader, %middle.block3161
  %.490.i.i1751.ph = phi i64 [ %.3.i.i1743, %vector.memcheck3149 ], [ %.3.i.i1743, %.lr.ph91.i.i1750.preheader ], [ %i.bvp, %middle.block3161 ] ; 4 uses
  %i.bvw = sub i64 %.062.i.i17252540, %.490.i.i1751.ph
  %xtraiter3550 = and i64 %i.bvw, 3               ; 2 uses
  %lcmp.mod3551.not = icmp eq i64 %xtraiter3550, 0
  br i1 %lcmp.mod3551.not, label %.lr.ph91.i.i1750.prol.loopexit, label %.lr.ph91.i.i1750.prol

.lr.ph91.i.i1750.prol:                            ; preds = %.lr.ph91.i.i1750.preheader3209, %.lr.ph91.i.i1750.prol
  %.490.i.i1751.prol = phi i64 [ %i.bwa, %.lr.ph91.i.i1750.prol ], [ %.490.i.i1751.ph, %.lr.ph91.i.i1750.preheader3209 ] ; 3 uses
  %prol.iter3552 = phi i64 [ %prol.iter3552.next, %.lr.ph91.i.i1750.prol ], [ 0, %.lr.ph91.i.i1750.preheader3209 ]
  %i.bvx = getelementptr [4 x i8], ptr %.063.i.i17242538, i64 %.490.i.i1751.prol
  %i.bvy = load i32, ptr %i.bvx, align 4, !tbaa !44
  %i.bvz = getelementptr [4 x i8], ptr %i.bth, i64 %.490.i.i1751.prol
  store i32 %i.bvy, ptr %i.bvz, align 4, !tbaa !44
  %i.bwa = add nuw i64 %.490.i.i1751.prol, 1      ; 2 uses
  %prol.iter3552.next = add i64 %prol.iter3552, 1 ; 2 uses
  %prol.iter3552.cmp.not = icmp eq i64 %prol.iter3552.next, %xtraiter3550
  br i1 %prol.iter3552.cmp.not, label %.lr.ph91.i.i1750.prol.loopexit, label %.lr.ph91.i.i1750.prol, !llvm.loop !183

.lr.ph91.i.i1750.prol.loopexit:                   ; preds = %.lr.ph91.i.i1750.prol, %.lr.ph91.i.i1750.preheader3209
  %.490.i.i1751.unr = phi i64 [ %.490.i.i1751.ph, %.lr.ph91.i.i1750.preheader3209 ], [ %i.bwa, %.lr.ph91.i.i1750.prol ]
  %i.bwb = sub i64 %.490.i.i1751.ph, %.062.i.i17252540
  %i.bwc = icmp ugt i64 %i.bwb, -4
  br i1 %i.bwc, label %.preheader.i.i1746, label %.lr.ph91.i.i1750

.preheader.i.i1746:                               ; preds = %.lr.ph91.i.i1750.prol.loopexit, %.lr.ph91.i.i1750, %middle.block3161, %.preheader69.i.i1745
  %.4.lcssa.i.i1747 = phi i64 [ %.3.i.i1743, %.preheader69.i.i1745 ], [ %.062.i.i17252540, %middle.block3161 ], [ %.062.i.i17252540, %.lr.ph91.i.i1750 ], [ %.062.i.i17252540, %.lr.ph91.i.i1750.prol.loopexit ] ; 3 uses
  %i.bwd = icmp ult i64 %.4.lcssa.i.i1747, %i.bti
  br i1 %i.bwd, label %.lr.ph94.preheader.i.i1748, label %bary_add.exit1757

.lr.ph94.preheader.i.i1748:                       ; preds = %.preheader.i.i1746
  %i.bwe = shl i64 %.4.lcssa.i.i1747, 2
  %scevgep.i.i1749 = getelementptr i8, ptr %i.bth, i64 %i.bwe
  %i.bwf = sub nuw i64 %i.bti, %.4.lcssa.i.i1747
  %i.bwg = shl i64 %i.bwf, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i1749, i8 0, i64 %i.bwg, i1 false), !tbaa !44
  br label %bary_add.exit1757

.lr.ph91.i.i1750:                                 ; preds = %.lr.ph91.i.i1750.prol.loopexit, %.lr.ph91.i.i1750
  %.490.i.i1751 = phi i64 [ %i.bww, %.lr.ph91.i.i1750 ], [ %.490.i.i1751.unr, %.lr.ph91.i.i1750.prol.loopexit ] ; 6 uses
  %i.bwh = getelementptr [4 x i8], ptr %.063.i.i17242538, i64 %.490.i.i1751
  %i.bwi = load i32, ptr %i.bwh, align 4, !tbaa !44
  %i.bwj = getelementptr [4 x i8], ptr %i.bth, i64 %.490.i.i1751
  store i32 %i.bwi, ptr %i.bwj, align 4, !tbaa !44
  %i.bwk = add nuw i64 %.490.i.i1751, 1           ; 2 uses
  %i.bwl = getelementptr [4 x i8], ptr %.063.i.i17242538, i64 %i.bwk
  %i.bwm = load i32, ptr %i.bwl, align 4, !tbaa !44
  %i.bwn = getelementptr [4 x i8], ptr %i.bth, i64 %i.bwk
  store i32 %i.bwm, ptr %i.bwn, align 4, !tbaa !44
  %i.bwo = add nuw i64 %.490.i.i1751, 2           ; 2 uses
  %i.bwp = getelementptr [4 x i8], ptr %.063.i.i17242538, i64 %i.bwo
  %i.bwq = load i32, ptr %i.bwp, align 4, !tbaa !44
  %i.bwr = getelementptr [4 x i8], ptr %i.bth, i64 %i.bwo
  store i32 %i.bwq, ptr %i.bwr, align 4, !tbaa !44
  %i.bws = add nuw i64 %.490.i.i1751, 3           ; 2 uses
  %i.bwt = getelementptr [4 x i8], ptr %.063.i.i17242538, i64 %i.bws
  %i.bwu = load i32, ptr %i.bwt, align 4, !tbaa !44
  %i.bwv = getelementptr [4 x i8], ptr %i.bth, i64 %i.bws
  store i32 %i.bwu, ptr %i.bwv, align 4, !tbaa !44
  %i.bww = add nuw i64 %.490.i.i1751, 4           ; 2 uses
  %exitcond106.not.i.i1752.3 = icmp eq i64 %i.bww, %.062.i.i17252540
  br i1 %exitcond106.not.i.i1752.3, label %.preheader.i.i1746, label %.lr.ph91.i.i1750, !llvm.loop !184

bb.ce:                                            ; preds = %ruby_nonempty_memcpy.exit1722
  %i.bwx = call i64 @llvm.umin.i64(i64 %i.bti, i64 %i.l) ; 3 uses
  %.not97.i.i1758 = icmp eq i64 %i.bti, 0
  br i1 %.not97.i.i1758, label %._crit_edge.i.i1763, label %.lr.ph.i.i1759.preheader

.lr.ph.i.i1759.preheader:                         ; preds = %bb.ce
  %i.bwy = mul i64 %i.g, 5
  %i.bwz = add i64 %i.bwy, 1
  %umin = call i64 @llvm.umin.i64(i64 %i.bwz, i64 %i.l) ; 4 uses
  %xtraiter3553 = and i64 %umin, 1
  %i.bxa = icmp eq i64 %umin, 1
  br i1 %i.bxa, label %.lr.ph.i.i1759.epil.preheader, label %.lr.ph.i.i1759.preheader.new

.lr.ph.i.i1759.preheader.new:                     ; preds = %.lr.ph.i.i1759.preheader
  %unroll_iter3558 = and i64 %umin, 9223372036854775806
  br label %.lr.ph.i.i1759

.lr.ph.i.i1759:                                   ; preds = %.lr.ph.i.i1759, %.lr.ph.i.i1759.preheader.new
  %.078.i.i1760 = phi i64 [ 0, %.lr.ph.i.i1759.preheader.new ], [ %i.bxw, %.lr.ph.i.i1759 ] ; 4 uses
  %.06277.i.i1761 = phi i64 [ 0, %.lr.ph.i.i1759.preheader.new ], [ %i.bxv, %.lr.ph.i.i1759 ]
  %niter3559 = phi i64 [ 0, %.lr.ph.i.i1759.preheader.new ], [ %niter3559.next.1, %.lr.ph.i.i1759 ]
  %i.bxb = getelementptr [4 x i8], ptr %i.bth, i64 %.078.i.i1760 ; 2 uses
  %i.bxc = load i32, ptr %i.bxb, align 4, !tbaa !44
  %i.bxd = zext i32 %i.bxc to i64
  %i.bxe = getelementptr [4 x i8], ptr %i.ak, i64 %.078.i.i1760
  %i.bxf = load i32, ptr %i.bxe, align 4, !tbaa !44
  %i.bxg = zext i32 %i.bxf to i64
  %i.bxh = sub nsw i64 %i.bxd, %i.bxg
  %i.bxi = add nsw i64 %i.bxh, %.06277.i.i1761    ; 2 uses
  %i.bxj = trunc i64 %i.bxi to i32
  store i32 %i.bxj, ptr %i.bxb, align 4, !tbaa !44
  %i.bxk = ashr i64 %i.bxi, 32
  %i.bxl = or disjoint i64 %.078.i.i1760, 1       ; 2 uses
  %i.bxm = getelementptr [4 x i8], ptr %i.bth, i64 %i.bxl ; 2 uses
  %i.bxn = load i32, ptr %i.bxm, align 4, !tbaa !44
  %i.bxo = zext i32 %i.bxn to i64
  %i.bxp = getelementptr [4 x i8], ptr %i.ak, i64 %i.bxl
  %i.bxq = load i32, ptr %i.bxp, align 4, !tbaa !44
  %i.bxr = zext i32 %i.bxq to i64
  %i.bxs = sub nsw i64 %i.bxo, %i.bxr
  %i.bxt = add nsw i64 %i.bxs, %i.bxk             ; 2 uses
  %i.bxu = trunc i64 %i.bxt to i32
  store i32 %i.bxu, ptr %i.bxm, align 4, !tbaa !44
  %i.bxv = ashr i64 %i.bxt, 32                    ; 3 uses
  %i.bxw = add nuw i64 %.078.i.i1760, 2           ; 2 uses
  %niter3559.next.1 = add i64 %niter3559, 2       ; 2 uses
  %niter3559.ncmp.1 = icmp eq i64 %niter3559.next.1, %unroll_iter3558
  br i1 %niter3559.ncmp.1, label %._crit_edge.i.i1763.loopexit.unr-lcssa, label %.lr.ph.i.i1759, !llvm.loop !5

._crit_edge.i.i1763.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i1759
  %lcmp.mod3555.not = icmp eq i64 %xtraiter3553, 0
  br i1 %lcmp.mod3555.not, label %._crit_edge.i.i1763, label %.lr.ph.i.i1759.epil.preheader

.lr.ph.i.i1759.epil.preheader:                    ; preds = %._crit_edge.i.i1763.loopexit.unr-lcssa, %.lr.ph.i.i1759.preheader
  %.078.i.i1760.epil.init = phi i64 [ 0, %.lr.ph.i.i1759.preheader ], [ %i.bxw, %._crit_edge.i.i1763.loopexit.unr-lcssa ] ; 2 uses
  %.06277.i.i1761.epil.init = phi i64 [ 0, %.lr.ph.i.i1759.preheader ], [ %i.bxv, %._crit_edge.i.i1763.loopexit.unr-lcssa ]
  %lcmp.mod3557 = trunc i64 %umin to i1
  call void @llvm.assume(i1 %lcmp.mod3557)
  %i.bxx = getelementptr [4 x i8], ptr %i.bth, i64 %.078.i.i1760.epil.init ; 2 uses
  %i.bxy = load i32, ptr %i.bxx, align 4, !tbaa !44
  %i.bxz = zext i32 %i.bxy to i64
  %i.bya = getelementptr [4 x i8], ptr %i.ak, i64 %.078.i.i1760.epil.init
  %i.byb = load i32, ptr %i.bya, align 4, !tbaa !44
  %i.byc = zext i32 %i.byb to i64
  %i.byd = sub nsw i64 %i.bxz, %i.byc
  %i.bye = add nsw i64 %i.byd, %.06277.i.i1761.epil.init ; 2 uses
  %i.byf = trunc i64 %i.bye to i32
  store i32 %i.byf, ptr %i.bxx, align 4, !tbaa !44
  %i.byg = ashr i64 %i.bye, 32
  br label %._crit_edge.i.i1763

._crit_edge.i.i1763:                              ; preds = %.lr.ph.i.i1759.epil.preheader, %._crit_edge.i.i1763.loopexit.unr-lcssa, %bb.ce
  %.062.lcssa.i.i1764 = phi i64 [ 0, %bb.ce ], [ %i.bxv, %._crit_edge.i.i1763.loopexit.unr-lcssa ], [ %i.byg, %.lr.ph.i.i1759.epil.preheader ] ; 3 uses
  %.not.i.i1765.not = icmp ult i64 %i.j, %i.bti
  br i1 %.not.i.i1765.not, label %.preheader72.i.i1766, label %.lr.ph87.i.i1789

.preheader72.i.i1766:                             ; preds = %._crit_edge.i.i1763
  %i.byh = icmp ult i64 %i.l, %i.bti
  br i1 %i.byh, label %.lr.ph82.i.i1785, label %.loopexit71.i.i1767

.lr.ph82.i.i1785:                                 ; preds = %.preheader72.i.i1766, %bb.cf
  %.181.i.i1786 = phi i64 [ %i.byp, %bb.cf ], [ %i.bwx, %.preheader72.i.i1766 ] ; 2 uses
  %.16380.i.i1787 = phi i64 [ %i.byo, %bb.cf ], [ %.062.lcssa.i.i1764, %.preheader72.i.i1766 ]
  %i.byi = icmp eq i64 %.16380.i.i1787, 0
  br i1 %i.byi, label %bary_add.exit1757, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph82.i.i1785
  %i.byj = getelementptr [4 x i8], ptr %i.bth, i64 %.181.i.i1786 ; 2 uses
  %i.byk = load i32, ptr %i.byj, align 4, !tbaa !44
  %i.byl = zext i32 %i.byk to i64
  %i.bym = add nsw i64 %i.byl, -1                 ; 2 uses
  %i.byn = trunc i64 %i.bym to i32
  store i32 %i.byn, ptr %i.byj, align 4, !tbaa !44
  %i.byo = ashr i64 %i.bym, 32
  %i.byp = add i64 %.181.i.i1786, 1               ; 2 uses
  %exitcond107.not.i.i1788 = icmp eq i64 %i.byp, %i.bti
  br i1 %exitcond107.not.i.i1788, label %bary_add.exit1757, label %.lr.ph82.i.i1785, !llvm.loop !6

.lr.ph87.i.i1789:                                 ; preds = %._crit_edge.i.i1763, %.lr.ph87.i.i1789
  %.286.i.i1790 = phi i64 [ %i.byx, %.lr.ph87.i.i1789 ], [ %i.bwx, %._crit_edge.i.i1763 ] ; 4 uses
  %.26485.i.i1791 = phi i64 [ %i.byw, %.lr.ph87.i.i1789 ], [ %.062.lcssa.i.i1764, %._crit_edge.i.i1763 ]
  %i.byq = getelementptr [4 x i8], ptr %i.ak, i64 %.286.i.i1790
  %i.byr = load i32, ptr %i.byq, align 4, !tbaa !44
  %i.bys = zext i32 %i.byr to i64
  %i.byt = sub nsw i64 %.26485.i.i1791, %i.bys    ; 2 uses
  %i.byu = trunc i64 %i.byt to i32
  %i.byv = getelementptr [4 x i8], ptr %i.bth, i64 %.286.i.i1790
  store i32 %i.byu, ptr %i.byv, align 4, !tbaa !44
  %i.byw = ashr i64 %i.byt, 32                    ; 2 uses
  %i.byx = add nuw i64 %.286.i.i1790, 1
  %exitcond108.not.i.i1792 = icmp eq i64 %.286.i.i1790, %i.j
  br i1 %exitcond108.not.i.i1792, label %.loopexit71.i.i1767, label %.lr.ph87.i.i1789, !llvm.loop !7

.loopexit71.i.i1767:                              ; preds = %.lr.ph87.i.i1789, %.preheader72.i.i1766
  %.365.i.i1768 = phi i64 [ %.062.lcssa.i.i1764, %.preheader72.i.i1766 ], [ %i.byw, %.lr.ph87.i.i1789 ]
  %.3.i.i1769 = phi i64 [ %i.bwx, %.preheader72.i.i1766 ], [ %i.l, %.lr.ph87.i.i1789 ] ; 3 uses
  %i.byy = icmp ne i64 %.365.i.i1768, 0
  %i.byz = icmp ult i64 %.3.i.i1769, %i.bti
  %or.cond = and i1 %i.byy, %i.byz
  br i1 %or.cond, label %.lr.ph91.preheader.i.i1772, label %bary_add.exit1757

.lr.ph91.preheader.i.i1772:                       ; preds = %.loopexit71.i.i1767
  %i.bza = shl i64 %.3.i.i1769, 2
  %scevgep.i.i1773 = getelementptr i8, ptr %i.bth, i64 %i.bza
  %i.bzb = sub nuw i64 %i.bti, %.3.i.i1769
  %i.bzc = shl i64 %i.bzb, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i1773, i8 -1, i64 %i.bzc, i1 false), !tbaa !44
  br label %bary_add.exit1757

bary_add.exit1757:                                ; preds = %bb.cf, %.lr.ph82.i.i1785, %.preheader70.i.i1734, %bb.cc, %.lr.ph91.preheader.i.i1772, %.loopexit71.i.i1767, %.lr.ph94.preheader.i.i1748, %.preheader.i.i1746, %.loopexit71.i.i1742
  %i.bzd = sub i64 %i.aq, %i.j                    ; 14 uses
  br i1 %.not591, label %bb.cl, label %bb.cg

bb.cg:                                            ; preds = %bary_add.exit1757
  %i.bze = icmp ugt i64 %i.bzd, %i.l
  br i1 %i.bze, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.064.i.i1794 = phi i64 [ %i.l, %bb.ch ], [ %i.bzd, %bb.cg ] ; 7 uses
  %.063.i.i1795 = phi ptr [ %12, %bb.ch ], [ %i.al, %bb.cg ] ; 12 uses
  %.062.i.i1796 = phi i64 [ %i.bzd, %bb.ch ], [ %i.l, %bb.cg ] ; 9 uses
  %.061.i.i1797 = phi ptr [ %i.al, %bb.ch ], [ %12, %bb.cg ] ; 3 uses
  %.063.i.i17953165 = ptrtoaddr ptr %.063.i.i1795 to i64
  %xtraiter3562 = and i64 %.064.i.i1794, 1
  %i.bzf = icmp eq i64 %.064.i.i1794, 1
  br i1 %i.bzf, label %.lr.ph.i.i1799.epil.preheader, label %.new3561

.new3561:                                         ; preds = %bb.ci
  %unroll_iter3567 = and i64 %.064.i.i1794, -2
  %14 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  %15 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  br label %.lr.ph.i.i1799

.preheader72.i.i1803.unr-lcssa:                   ; preds = %.lr.ph.i.i1799
  %lcmp.mod3564.not = icmp eq i64 %xtraiter3562, 0
  br i1 %lcmp.mod3564.not, label %.preheader72.i.i1803, label %.lr.ph.i.i1799.epil.preheader

.lr.ph.i.i1799.epil.preheader:                    ; preds = %.preheader72.i.i1803.unr-lcssa, %bb.ci
  %.05779.i.i1800.epil.init = phi i64 [ 0, %bb.ci ], [ %i.cap, %.preheader72.i.i1803.unr-lcssa ] ; 3 uses
  %.05878.i.i1801.epil.init = phi i64 [ 0, %bb.ci ], [ %i.cao, %.preheader72.i.i1803.unr-lcssa ]
  %lcmp.mod3566 = trunc i64 %.064.i.i1794 to i1
  call void @llvm.assume(i1 %lcmp.mod3566)
  %16 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  %i.bzg = getelementptr [4 x i8], ptr %.061.i.i1797, i64 %.05779.i.i1800.epil.init
  %i.bzh = load i32, ptr %i.bzg, align 4, !tbaa !44
  %i.bzi = zext i32 %i.bzh to i64
  %i.bzj = getelementptr [4 x i8], ptr %.063.i.i1795, i64 %.05779.i.i1800.epil.init
  %i.bzk = load i32, ptr %i.bzj, align 4, !tbaa !44
  %i.bzl = zext i32 %i.bzk to i64
  %i.bzm = add nuw nsw i64 %.05878.i.i1801.epil.init, %i.bzi
  %i.bzn = add nuw nsw i64 %i.bzm, %i.bzl         ; 2 uses
  %i.bzo = trunc i64 %i.bzn to i32
  %i.bzp = getelementptr [4 x i8], ptr %16, i64 %.05779.i.i1800.epil.init
  store i32 %i.bzo, ptr %i.bzp, align 4, !tbaa !44
  %i.bzq = lshr i64 %i.bzn, 32
  br label %.preheader72.i.i1803

.preheader72.i.i1803:                             ; preds = %.preheader72.i.i1803.unr-lcssa, %.lr.ph.i.i1799.epil.preheader
  %.lcssa3206 = phi i64 [ %i.cao, %.preheader72.i.i1803.unr-lcssa ], [ %i.bzq, %.lr.ph.i.i1799.epil.preheader ] ; 2 uses
  %i.bzr = icmp ult i64 %.064.i.i1794, %.062.i.i1796
  br i1 %i.bzr, label %.lr.ph83.i.i1824.preheader, label %.preheader70.i.i1805

.lr.ph83.i.i1824.preheader:                       ; preds = %.preheader72.i.i1803
  %17 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  br label %.lr.ph83.i.i1824

.lr.ph.i.i1799:                                   ; preds = %.lr.ph.i.i1799, %.new3561
  %.05779.i.i1800 = phi i64 [ 0, %.new3561 ], [ %i.cap, %.lr.ph.i.i1799 ] ; 5 uses
  %.05878.i.i1801 = phi i64 [ 0, %.new3561 ], [ %i.cao, %.lr.ph.i.i1799 ]
  %niter3568 = phi i64 [ 0, %.new3561 ], [ %niter3568.next.1, %.lr.ph.i.i1799 ]
  %i.bzs = getelementptr [4 x i8], ptr %.061.i.i1797, i64 %.05779.i.i1800
  %i.bzt = load i32, ptr %i.bzs, align 4, !tbaa !44
  %i.bzu = zext i32 %i.bzt to i64
  %i.bzv = getelementptr [4 x i8], ptr %.063.i.i1795, i64 %.05779.i.i1800
  %i.bzw = load i32, ptr %i.bzv, align 4, !tbaa !44
  %i.bzx = zext i32 %i.bzw to i64
  %i.bzy = add nuw nsw i64 %.05878.i.i1801, %i.bzu
  %i.bzz = add nuw nsw i64 %i.bzy, %i.bzx         ; 2 uses
  %i.caa = trunc i64 %i.bzz to i32
  %i.cab = getelementptr [4 x i8], ptr %14, i64 %.05779.i.i1800
  store i32 %i.caa, ptr %i.cab, align 4, !tbaa !44
  %i.cac = lshr i64 %i.bzz, 32
  %i.cad = or disjoint i64 %.05779.i.i1800, 1     ; 3 uses
  %i.cae = getelementptr [4 x i8], ptr %.061.i.i1797, i64 %i.cad
  %i.caf = load i32, ptr %i.cae, align 4, !tbaa !44
  %i.cag = zext i32 %i.caf to i64
  %i.cah = getelementptr [4 x i8], ptr %.063.i.i1795, i64 %i.cad
  %i.cai = load i32, ptr %i.cah, align 4, !tbaa !44
  %i.caj = zext i32 %i.cai to i64
  %i.cak = add nuw nsw i64 %i.cac, %i.cag
  %i.cal = add nuw nsw i64 %i.cak, %i.caj         ; 2 uses
  %i.cam = trunc i64 %i.cal to i32
  %i.can = getelementptr [4 x i8], ptr %15, i64 %i.cad
  store i32 %i.cam, ptr %i.can, align 4, !tbaa !44
  %i.cao = lshr i64 %i.cal, 32                    ; 3 uses
  %i.cap = add nuw i64 %.05779.i.i1800, 2         ; 2 uses
  %niter3568.next.1 = add i64 %niter3568, 2       ; 2 uses
  %niter3568.ncmp.1 = icmp eq i64 %niter3568.next.1, %unroll_iter3567
  br i1 %niter3568.ncmp.1, label %.preheader72.i.i1803.unr-lcssa, label %.lr.ph.i.i1799, !llvm.loop !3

.preheader70.i.i1805:                             ; preds = %bb.ck, %.preheader72.i.i1803
  %.159.lcssa.i.i1806 = phi i64 [ %.lcssa3206, %.preheader72.i.i1803 ], [ %i.cbb, %bb.ck ]
  %.1.lcssa.i.i1807 = phi i64 [ %.064.i.i1794, %.preheader72.i.i1803 ], [ %.062.i.i1796, %bb.ck ] ; 4 uses
  %i.caq = icmp ult i64 %.1.lcssa.i.i1807, %i.bzd
  br i1 %i.caq, label %.lr.ph88.preheader.i.i1811, label %bary_add.exit1828

.lr.ph88.preheader.i.i1811:                       ; preds = %.preheader70.i.i1805
  %i.car = icmp eq i64 %.159.lcssa.i.i1806, 0
  br i1 %i.car, label %.loopexit71.i.i1813, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph88.preheader.i.i1811
  %18 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  %i.cas = getelementptr [4 x i8], ptr %18, i64 %.1.lcssa.i.i1807
  store i32 1, ptr %i.cas, align 4, !tbaa !44
  %i.cat = add nuw i64 %.1.lcssa.i.i1807, 1       ; 2 uses
  %exitcond103.peel.not.i.i1812 = icmp eq i64 %i.cat, %i.bzd
  br i1 %exitcond103.peel.not.i.i1812, label %bary_add.exit1828, label %.loopexit71.i.i1813

.lr.ph83.i.i1824:                                 ; preds = %.lr.ph83.i.i1824.preheader, %bb.ck
  %.182.i.i1825 = phi i64 [ %i.cbc, %bb.ck ], [ %.064.i.i1794, %.lr.ph83.i.i1824.preheader ] ; 4 uses
  %.15981.i.i1826 = phi i64 [ %i.cbb, %bb.ck ], [ %.lcssa3206, %.lr.ph83.i.i1824.preheader ]
  %i.cau = icmp eq i64 %.15981.i.i1826, 0
  br i1 %i.cau, label %.loopexit71.i.i1813, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph83.i.i1824
  %i.cav = getelementptr [4 x i8], ptr %.063.i.i1795, i64 %.182.i.i1825
  %i.caw = load i32, ptr %i.cav, align 4, !tbaa !44
  %i.cax = zext i32 %i.caw to i64
  %i.cay = add nuw nsw i64 %i.cax, 1              ; 2 uses
  %i.caz = trunc i64 %i.cay to i32
  %i.cba = getelementptr [4 x i8], ptr %17, i64 %.182.i.i1825
  store i32 %i.caz, ptr %i.cba, align 4, !tbaa !44
  %i.cbb = lshr i64 %i.cay, 32                    ; 2 uses
  %i.cbc = add i64 %.182.i.i1825, 1               ; 2 uses
  %exitcond102.not.i.i1827 = icmp eq i64 %i.cbc, %.062.i.i1796
  br i1 %exitcond102.not.i.i1827, label %.preheader70.i.i1805, label %.lr.ph83.i.i1824, !llvm.loop !4

.loopexit71.i.i1813:                              ; preds = %.lr.ph83.i.i1824, %bb.cj, %.lr.ph88.preheader.i.i1811
  %.3.i.i1814 = phi i64 [ %i.cat, %bb.cj ], [ %.1.lcssa.i.i1807, %.lr.ph88.preheader.i.i1811 ], [ %.182.i.i1825, %.lr.ph83.i.i1824 ] ; 7 uses
  %i.cbd = icmp eq ptr %.063.i.i1795, %12
  %i.cbe = icmp eq i64 %.062.i.i1796, %i.bzd
  %or.cond.i.i1815 = and i1 %i.cbd, %i.cbe
  br i1 %or.cond.i.i1815, label %bary_add.exit1828, label %.preheader69.i.i1816

.preheader69.i.i1816:                             ; preds = %.loopexit71.i.i1813
  %i.cbf = icmp ult i64 %.3.i.i1814, %.062.i.i1796
  br i1 %i.cbf, label %.lr.ph91.i.i1821.preheader, label %.preheader.i.i1817

.lr.ph91.i.i1821.preheader:                       ; preds = %.preheader69.i.i1816
  %i.cbg = shl nuw i64 %i.g, 2
  %i.cbh = or disjoint i64 %i.cbg, 1
  %i.cbi = call i64 @llvm.umax.i64(i64 %i.cbh, i64 %i.l) ; 3 uses
  %i.cbj = sub i64 %i.cbi, %.3.i.i1814            ; 3 uses
  %min.iters.check3168 = icmp ult i64 %i.cbj, 16
  br i1 %min.iters.check3168, label %.lr.ph91.i.i1821.preheader3203, label %vector.memcheck3164

vector.memcheck3164:                              ; preds = %.lr.ph91.i.i1821.preheader
  %i.cbk = shl i64 %i.g, 3
  %i.cbl = add i64 %i.cbk, %.05602856
  %i.cbm = sub i64 %.063.i.i17953165, %i.cbl
  %diff.check3166 = icmp ugt i64 %i.cbm, -32
  br i1 %diff.check3166, label %.lr.ph91.i.i1821.preheader3203, label %vector.ph3169

vector.ph3169:                                    ; preds = %vector.memcheck3164
  %n.vec3170 = and i64 %i.cbj, -8                 ; 3 uses
  %i.cbn = add i64 %.3.i.i1814, %n.vec3170
  %19 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  br label %vector.body3171

vector.body3171:                                  ; preds = %vector.body3171, %vector.ph3169
  %index3172 = phi i64 [ 0, %vector.ph3169 ], [ %index.next3175, %vector.body3171 ] ; 2 uses
  %i.cbo = add nuw i64 %.3.i.i1814, %index3172    ; 2 uses
  %i.cbp = getelementptr [4 x i8], ptr %.063.i.i1795, i64 %i.cbo ; 2 uses
  %i.cbq = getelementptr i8, ptr %i.cbp, i64 16
  %wide.load3173.a = load <4 x i32>, ptr %i.cbp, align 4, !tbaa !44
  %wide.load3174 = load <4 x i32>, ptr %i.cbq, align 4, !tbaa !44
  %i.cbr = getelementptr [4 x i8], ptr %19, i64 %i.cbo ; 2 uses
  %i.cbs = getelementptr i8, ptr %i.cbr, i64 16
  store <4 x i32> %wide.load3173.a, ptr %i.cbr, align 4, !tbaa !44
  store <4 x i32> %wide.load3174, ptr %i.cbs, align 4, !tbaa !44
  %index.next3175 = add nuw i64 %index3172, 8     ; 2 uses
  %i.cbt = icmp eq i64 %index.next3175, %n.vec3170
  br i1 %i.cbt, label %middle.block3176, label %vector.body3171, !llvm.loop !185

middle.block3176:                                 ; preds = %vector.body3171
  %cmp.n3177 = icmp eq i64 %i.cbj, %n.vec3170
  br i1 %cmp.n3177, label %.preheader.i.i1817, label %.lr.ph91.i.i1821.preheader3203

.lr.ph91.i.i1821.preheader3203:                   ; preds = %vector.memcheck3164, %.lr.ph91.i.i1821.preheader, %middle.block3176
  %.490.i.i1822.ph = phi i64 [ %.3.i.i1814, %vector.memcheck3164 ], [ %.3.i.i1814, %.lr.ph91.i.i1821.preheader ], [ %i.cbn, %middle.block3176 ] ; 4 uses
  %i.cbu = sub i64 %i.cbi, %.490.i.i1822.ph
  %xtraiter3569 = and i64 %i.cbu, 3               ; 2 uses
  %lcmp.mod3570.not = icmp eq i64 %xtraiter3569, 0
  br i1 %lcmp.mod3570.not, label %.lr.ph91.i.i1821.prol.loopexit, label %.lr.ph91.i.i1821.prol.preheader

.lr.ph91.i.i1821.prol.preheader:                  ; preds = %.lr.ph91.i.i1821.preheader3203
  %20 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  br label %.lr.ph91.i.i1821.prol

.lr.ph91.i.i1821.prol:                            ; preds = %.lr.ph91.i.i1821.prol, %.lr.ph91.i.i1821.prol.preheader
  %.490.i.i1822.prol = phi i64 [ %i.cby, %.lr.ph91.i.i1821.prol ], [ %.490.i.i1822.ph, %.lr.ph91.i.i1821.prol.preheader ] ; 3 uses
  %prol.iter3571 = phi i64 [ %prol.iter3571.next, %.lr.ph91.i.i1821.prol ], [ 0, %.lr.ph91.i.i1821.prol.preheader ]
  %i.cbv = getelementptr [4 x i8], ptr %.063.i.i1795, i64 %.490.i.i1822.prol
  %i.cbw = load i32, ptr %i.cbv, align 4, !tbaa !44
  %i.cbx = getelementptr [4 x i8], ptr %20, i64 %.490.i.i1822.prol
  store i32 %i.cbw, ptr %i.cbx, align 4, !tbaa !44
  %i.cby = add nuw i64 %.490.i.i1822.prol, 1      ; 2 uses
  %prol.iter3571.next = add i64 %prol.iter3571, 1 ; 2 uses
  %prol.iter3571.cmp.not = icmp eq i64 %prol.iter3571.next, %xtraiter3569
  br i1 %prol.iter3571.cmp.not, label %.lr.ph91.i.i1821.prol.loopexit, label %.lr.ph91.i.i1821.prol, !llvm.loop !186

.lr.ph91.i.i1821.prol.loopexit:                   ; preds = %.lr.ph91.i.i1821.prol, %.lr.ph91.i.i1821.preheader3203
  %.490.i.i1822.unr = phi i64 [ %.490.i.i1822.ph, %.lr.ph91.i.i1821.preheader3203 ], [ %i.cby, %.lr.ph91.i.i1821.prol ]
  %i.cbz = sub i64 %.490.i.i1822.ph, %i.cbi
  %i.cca = icmp ugt i64 %i.cbz, -4
  br i1 %i.cca, label %.preheader.i.i1817, label %.lr.ph91.i.i1821.preheader3202.new

.lr.ph91.i.i1821.preheader3202.new:               ; preds = %.lr.ph91.i.i1821.prol.loopexit
  %21 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  %22 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  %23 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  %24 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  br label %.lr.ph91.i.i1821

.preheader.i.i1817:                               ; preds = %.lr.ph91.i.i1821.prol.loopexit, %.lr.ph91.i.i1821, %middle.block3176, %.preheader69.i.i1816
  %.4.lcssa.i.i1818 = phi i64 [ %.3.i.i1814, %.preheader69.i.i1816 ], [ %.062.i.i1796, %middle.block3176 ], [ %.062.i.i1796, %.lr.ph91.i.i1821 ], [ %.062.i.i1796, %.lr.ph91.i.i1821.prol.loopexit ] ; 3 uses
  %i.ccb = icmp ult i64 %.4.lcssa.i.i1818, %i.bzd
  br i1 %i.ccb, label %.lr.ph94.preheader.i.i1819, label %bary_add.exit1828

.lr.ph94.preheader.i.i1819:                       ; preds = %.preheader.i.i1817
  %25 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  %i.ccc = shl i64 %.4.lcssa.i.i1818, 2
  %scevgep.i.i1820 = getelementptr i8, ptr %25, i64 %i.ccc
  %i.ccd = sub nuw i64 %i.bzd, %.4.lcssa.i.i1818
  %i.cce = shl i64 %i.ccd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i1820, i8 0, i64 %i.cce, i1 false), !tbaa !44
  br label %bary_add.exit1828

.lr.ph91.i.i1821:                                 ; preds = %.lr.ph91.i.i1821, %.lr.ph91.i.i1821.preheader3202.new
  %.490.i.i1822 = phi i64 [ %.490.i.i1822.unr, %.lr.ph91.i.i1821.preheader3202.new ], [ %i.ccu, %.lr.ph91.i.i1821 ] ; 6 uses
  %i.ccf = getelementptr [4 x i8], ptr %.063.i.i1795, i64 %.490.i.i1822
  %i.ccg = load i32, ptr %i.ccf, align 4, !tbaa !44
  %i.cch = getelementptr [4 x i8], ptr %21, i64 %.490.i.i1822
  store i32 %i.ccg, ptr %i.cch, align 4, !tbaa !44
  %i.cci = add nuw i64 %.490.i.i1822, 1           ; 2 uses
  %i.ccj = getelementptr [4 x i8], ptr %.063.i.i1795, i64 %i.cci
  %i.cck = load i32, ptr %i.ccj, align 4, !tbaa !44
  %i.ccl = getelementptr [4 x i8], ptr %22, i64 %i.cci
  store i32 %i.cck, ptr %i.ccl, align 4, !tbaa !44
  %i.ccm = add nuw i64 %.490.i.i1822, 2           ; 2 uses
  %i.ccn = getelementptr [4 x i8], ptr %.063.i.i1795, i64 %i.ccm
  %i.cco = load i32, ptr %i.ccn, align 4, !tbaa !44
  %i.ccp = getelementptr [4 x i8], ptr %23, i64 %i.ccm
  store i32 %i.cco, ptr %i.ccp, align 4, !tbaa !44
  %i.ccq = add nuw i64 %.490.i.i1822, 3           ; 2 uses
  %i.ccr = getelementptr [4 x i8], ptr %.063.i.i1795, i64 %i.ccq
  %i.ccs = load i32, ptr %i.ccr, align 4, !tbaa !44
  %i.cct = getelementptr [4 x i8], ptr %24, i64 %i.ccq
  store i32 %i.ccs, ptr %i.cct, align 4, !tbaa !44
  %i.ccu = add nuw i64 %.490.i.i1822, 4           ; 2 uses
  %exitcond106.not.i.i1823.3 = icmp eq i64 %i.ccu, %.062.i.i1796
  br i1 %exitcond106.not.i.i1823.3, label %.preheader.i.i1817, label %.lr.ph91.i.i1821, !llvm.loop !187

bb.cl:                                            ; preds = %bary_add.exit1757
  %i.ccv = call i64 @llvm.umin.i64(i64 %i.bzd, i64 %i.l) ; 8 uses
  %i.ccw = icmp eq i64 %i.ccv, 1
  br i1 %i.ccw, label %.lr.ph.i.i1830.epil, label %.new3573

.new3573:                                         ; preds = %bb.cl
  %26 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  %27 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  %i.ccx = add nsw i64 %i.ccv, -3
  br label %.lr.ph.i.i1830

.lr.ph.i.i1830:                                   ; preds = %.lr.ph.i.i1830, %.new3573
  %.078.i.i1831 = phi i64 [ 0, %.new3573 ], [ %i.cdt, %.lr.ph.i.i1830 ] ; 4 uses
  %.06277.i.i1832 = phi i64 [ 0, %.new3573 ], [ %i.cds, %.lr.ph.i.i1830 ]
  %niter3580 = phi i64 [ 0, %.new3573 ], [ %niter3580.next.1, %.lr.ph.i.i1830 ] ; 2 uses
  %i.ccy = getelementptr [4 x i8], ptr %26, i64 %.078.i.i1831 ; 2 uses
  %i.ccz = load i32, ptr %i.ccy, align 4, !tbaa !44
  %i.cda = zext i32 %i.ccz to i64
  %i.cdb = getelementptr [4 x i8], ptr %i.al, i64 %.078.i.i1831
  %i.cdc = load i32, ptr %i.cdb, align 4, !tbaa !44
  %i.cdd = zext i32 %i.cdc to i64
  %i.cde = sub nsw i64 %i.cda, %i.cdd
  %i.cdf = add nsw i64 %i.cde, %.06277.i.i1832    ; 2 uses
  %i.cdg = trunc i64 %i.cdf to i32
  store i32 %i.cdg, ptr %i.ccy, align 4, !tbaa !44
  %i.cdh = ashr i64 %i.cdf, 32
  %i.cdi = or disjoint i64 %.078.i.i1831, 1       ; 2 uses
  %i.cdj = getelementptr [4 x i8], ptr %27, i64 %i.cdi ; 2 uses
  %i.cdk = load i32, ptr %i.cdj, align 4, !tbaa !44
  %i.cdl = zext i32 %i.cdk to i64
  %i.cdm = getelementptr [4 x i8], ptr %i.al, i64 %i.cdi
  %i.cdn = load i32, ptr %i.cdm, align 4, !tbaa !44
  %i.cdo = zext i32 %i.cdn to i64
  %i.cdp = sub nsw i64 %i.cdl, %i.cdo
  %i.cdq = add nsw i64 %i.cdp, %i.cdh             ; 2 uses
  %i.cdr = trunc i64 %i.cdq to i32
  store i32 %i.cdr, ptr %i.cdj, align 4, !tbaa !44
  %i.cds = ashr i64 %i.cdq, 32                    ; 2 uses
  %i.cdt = add nuw i64 %.078.i.i1831, 2           ; 2 uses
  %niter3580.next.1 = add i64 %niter3580, 2
  %niter3580.ncmp.1 = icmp eq i64 %niter3580, %i.ccx
  br i1 %niter3580.ncmp.1, label %.lr.ph.i.i1830.epil, label %.lr.ph.i.i1830, !llvm.loop !5

.lr.ph.i.i1830.epil:                              ; preds = %bb.cl, %.lr.ph.i.i1830
  %.078.i.i1831.epil.init = phi i64 [ 0, %bb.cl ], [ %i.cdt, %.lr.ph.i.i1830 ] ; 2 uses
  %.06277.i.i1832.epil.init = phi i64 [ 0, %bb.cl ], [ %i.cds, %.lr.ph.i.i1830 ]
  %28 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  %i.cdu = getelementptr [4 x i8], ptr %28, i64 %.078.i.i1831.epil.init ; 2 uses
  %i.cdv = load i32, ptr %i.cdu, align 4, !tbaa !44
  %i.cdw = zext i32 %i.cdv to i64
  %i.cdx = getelementptr [4 x i8], ptr %i.al, i64 %.078.i.i1831.epil.init
  %i.cdy = load i32, ptr %i.cdx, align 4, !tbaa !44
  %i.cdz = zext i32 %i.cdy to i64
  %i.cea = sub nsw i64 %i.cdw, %i.cdz
  %i.ceb = add nsw i64 %i.cea, %.06277.i.i1832.epil.init ; 2 uses
  %i.cec = trunc i64 %i.ceb to i32
  store i32 %i.cec, ptr %i.cdu, align 4, !tbaa !44
  %i.ced = ashr i64 %i.ceb, 32                    ; 4 uses
  %.not.i.i1836.not = icmp ult i64 %i.j, %i.bzd
  br i1 %.not.i.i1836.not, label %.preheader72.i.i1837, label %.lr.ph87.i.i1860.preheader

.lr.ph87.i.i1860.preheader:                       ; preds = %.lr.ph.i.i1830.epil
  %i.cee = or disjoint i64 %i.j, 1
  %i.cef = sub nuw nsw i64 %i.cee, %i.ccv
  %i.ceg = sub nuw nsw i64 %i.j, %i.ccv
  %xtraiter3581 = and i64 %i.cef, 2               ; 2 uses
  %lcmp.mod3582.not = icmp eq i64 %xtraiter3581, 0
  br i1 %lcmp.mod3582.not, label %.lr.ph87.i.i1860.prol.loopexit, label %.lr.ph87.i.i1860.prol.preheader

.lr.ph87.i.i1860.prol.preheader:                  ; preds = %.lr.ph87.i.i1860.preheader
  %29 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  br label %.lr.ph87.i.i1860.prol

.lr.ph87.i.i1860.prol:                            ; preds = %.lr.ph87.i.i1860.prol, %.lr.ph87.i.i1860.prol.preheader
  %.286.i.i1861.prol = phi i64 [ %i.ceo, %.lr.ph87.i.i1860.prol ], [ %i.ccv, %.lr.ph87.i.i1860.prol.preheader ] ; 3 uses
  %.26485.i.i1862.prol = phi i64 [ %i.cen, %.lr.ph87.i.i1860.prol ], [ %i.ced, %.lr.ph87.i.i1860.prol.preheader ]
  %prol.iter3583 = phi i64 [ %prol.iter3583.next, %.lr.ph87.i.i1860.prol ], [ 0, %.lr.ph87.i.i1860.prol.preheader ]
  %i.ceh = getelementptr [4 x i8], ptr %i.al, i64 %.286.i.i1861.prol
  %i.cei = load i32, ptr %i.ceh, align 4, !tbaa !44
  %i.cej = zext i32 %i.cei to i64
  %i.cek = sub nsw i64 %.26485.i.i1862.prol, %i.cej ; 2 uses
  %i.cel = trunc i64 %i.cek to i32
  %i.cem = getelementptr [4 x i8], ptr %29, i64 %.286.i.i1861.prol
  store i32 %i.cel, ptr %i.cem, align 4, !tbaa !44
  %i.cen = ashr i64 %i.cek, 32                    ; 3 uses
  %i.ceo = add nuw i64 %.286.i.i1861.prol, 1      ; 2 uses
  %prol.iter3583.next = add i64 %prol.iter3583, 1 ; 2 uses
  %prol.iter3583.cmp.not = icmp eq i64 %prol.iter3583.next, %xtraiter3581
  br i1 %prol.iter3583.cmp.not, label %.lr.ph87.i.i1860.prol.loopexit, label %.lr.ph87.i.i1860.prol, !llvm.loop !188

.lr.ph87.i.i1860.prol.loopexit:                   ; preds = %.lr.ph87.i.i1860.prol, %.lr.ph87.i.i1860.preheader
  %.lcssa3201.unr = phi i64 [ poison, %.lr.ph87.i.i1860.preheader ], [ %i.cen, %.lr.ph87.i.i1860.prol ]
  %.286.i.i1861.unr = phi i64 [ %i.ccv, %.lr.ph87.i.i1860.preheader ], [ %i.ceo, %.lr.ph87.i.i1860.prol ]
  %.26485.i.i1862.unr = phi i64 [ %i.ced, %.lr.ph87.i.i1860.preheader ], [ %i.cen, %.lr.ph87.i.i1860.prol ]
  %i.cep = icmp ult i64 %i.ceg, 3
  br i1 %i.cep, label %.loopexit71.i.i1838, label %.lr.ph87.i.i1860.preheader.new

.lr.ph87.i.i1860.preheader.new:                   ; preds = %.lr.ph87.i.i1860.prol.loopexit
  %30 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  %31 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  %32 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  %33 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  br label %.lr.ph87.i.i1860

.preheader72.i.i1837:                             ; preds = %.lr.ph.i.i1830.epil
  %i.ceq = icmp ult i64 %i.l, %i.bzd
  br i1 %i.ceq, label %.lr.ph82.i.i1856.preheader, label %.loopexit71.i.i1838

.lr.ph82.i.i1856.preheader:                       ; preds = %.preheader72.i.i1837
  %34 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  br label %.lr.ph82.i.i1856

.lr.ph82.i.i1856:                                 ; preds = %.lr.ph82.i.i1856.preheader, %bb.cm
  %.181.i.i1857 = phi i64 [ %i.cey, %bb.cm ], [ %i.ccv, %.lr.ph82.i.i1856.preheader ] ; 2 uses
  %.16380.i.i1858 = phi i64 [ %i.cex, %bb.cm ], [ %i.ced, %.lr.ph82.i.i1856.preheader ]
  %i.cer = icmp eq i64 %.16380.i.i1858, 0
  br i1 %i.cer, label %bary_add.exit1828, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph82.i.i1856
  %i.ces = getelementptr [4 x i8], ptr %34, i64 %.181.i.i1857 ; 2 uses
  %i.cet = load i32, ptr %i.ces, align 4, !tbaa !44
  %i.ceu = zext i32 %i.cet to i64
  %i.cev = add nsw i64 %i.ceu, -1                 ; 2 uses
  %i.cew = trunc i64 %i.cev to i32
  store i32 %i.cew, ptr %i.ces, align 4, !tbaa !44
  %i.cex = ashr i64 %i.cev, 32
  %i.cey = add i64 %.181.i.i1857, 1               ; 2 uses
  %exitcond107.not.i.i1859 = icmp eq i64 %i.cey, %i.bzd
  br i1 %exitcond107.not.i.i1859, label %bary_add.exit1828, label %.lr.ph82.i.i1856, !llvm.loop !6

.lr.ph87.i.i1860:                                 ; preds = %.lr.ph87.i.i1860, %.lr.ph87.i.i1860.preheader.new
  %.286.i.i1861 = phi i64 [ %.286.i.i1861.unr, %.lr.ph87.i.i1860.preheader.new ], [ %i.cge, %.lr.ph87.i.i1860 ] ; 6 uses
  %.26485.i.i1862 = phi i64 [ %.26485.i.i1862.unr, %.lr.ph87.i.i1860.preheader.new ], [ %i.cgd, %.lr.ph87.i.i1860 ]
  %i.cez = getelementptr [4 x i8], ptr %i.al, i64 %.286.i.i1861
  %i.cfa = load i32, ptr %i.cez, align 4, !tbaa !44
  %i.cfb = zext i32 %i.cfa to i64
  %i.cfc = sub nsw i64 %.26485.i.i1862, %i.cfb    ; 2 uses
  %i.cfd = trunc i64 %i.cfc to i32
  %i.cfe = getelementptr [4 x i8], ptr %30, i64 %.286.i.i1861
  store i32 %i.cfd, ptr %i.cfe, align 4, !tbaa !44
  %i.cff = ashr i64 %i.cfc, 32
  %i.cfg = add nuw i64 %.286.i.i1861, 1           ; 2 uses
  %i.cfh = getelementptr [4 x i8], ptr %i.al, i64 %i.cfg
  %i.cfi = load i32, ptr %i.cfh, align 4, !tbaa !44
  %i.cfj = zext i32 %i.cfi to i64
  %i.cfk = sub nsw i64 %i.cff, %i.cfj             ; 2 uses
  %i.cfl = trunc i64 %i.cfk to i32
  %i.cfm = getelementptr [4 x i8], ptr %31, i64 %i.cfg
  store i32 %i.cfl, ptr %i.cfm, align 4, !tbaa !44
  %i.cfn = ashr i64 %i.cfk, 32
  %i.cfo = add nuw i64 %.286.i.i1861, 2           ; 2 uses
  %i.cfp = getelementptr [4 x i8], ptr %i.al, i64 %i.cfo
  %i.cfq = load i32, ptr %i.cfp, align 4, !tbaa !44
  %i.cfr = zext i32 %i.cfq to i64
  %i.cfs = sub nsw i64 %i.cfn, %i.cfr             ; 2 uses
  %i.cft = trunc i64 %i.cfs to i32
  %i.cfu = getelementptr [4 x i8], ptr %32, i64 %i.cfo
  store i32 %i.cft, ptr %i.cfu, align 4, !tbaa !44
  %i.cfv = ashr i64 %i.cfs, 32
  %i.cfw = add nuw i64 %.286.i.i1861, 3           ; 3 uses
  %i.cfx = getelementptr [4 x i8], ptr %i.al, i64 %i.cfw
  %i.cfy = load i32, ptr %i.cfx, align 4, !tbaa !44
  %i.cfz = zext i32 %i.cfy to i64
  %i.cga = sub nsw i64 %i.cfv, %i.cfz             ; 2 uses
  %i.cgb = trunc i64 %i.cga to i32
  %i.cgc = getelementptr [4 x i8], ptr %33, i64 %i.cfw
  store i32 %i.cgb, ptr %i.cgc, align 4, !tbaa !44
  %i.cgd = ashr i64 %i.cga, 32                    ; 2 uses
  %i.cge = add nuw i64 %.286.i.i1861, 4
  %exitcond108.not.i.i1863.3 = icmp eq i64 %i.cfw, %i.j
  br i1 %exitcond108.not.i.i1863.3, label %.loopexit71.i.i1838, label %.lr.ph87.i.i1860, !llvm.loop !7

.loopexit71.i.i1838:                              ; preds = %.lr.ph87.i.i1860.prol.loopexit, %.lr.ph87.i.i1860, %.preheader72.i.i1837
  %.365.i.i1839 = phi i64 [ %i.ced, %.preheader72.i.i1837 ], [ %.lcssa3201.unr, %.lr.ph87.i.i1860.prol.loopexit ], [ %i.cgd, %.lr.ph87.i.i1860 ]
  %.3.i.i1840 = phi i64 [ %i.ccv, %.preheader72.i.i1837 ], [ %i.l, %.lr.ph87.i.i1860 ], [ %i.l, %.lr.ph87.i.i1860.prol.loopexit ] ; 3 uses
  %i.cgf = icmp ne i64 %.365.i.i1839, 0
  %i.cgg = icmp ult i64 %.3.i.i1840, %i.bzd
  %or.cond1986 = and i1 %i.cgf, %i.cgg
  br i1 %or.cond1986, label %.lr.ph91.preheader.i.i1843, label %bary_add.exit1828

.lr.ph91.preheader.i.i1843:                       ; preds = %.loopexit71.i.i1838
  %35 = getelementptr [4 x i8], ptr %.0560, i64 %i.j
  %i.cgh = shl i64 %.3.i.i1840, 2
  %scevgep.i.i1844 = getelementptr i8, ptr %35, i64 %i.cgh
  %i.cgi = sub nuw i64 %i.bzd, %.3.i.i1840
  %i.cgj = shl i64 %i.cgi, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i1844, i8 -1, i64 %i.cgj, i1 false), !tbaa !44
  br label %bary_add.exit1828

bary_add.exit1828:                                ; preds = %bb.cm, %.lr.ph82.i.i1856, %.preheader70.i.i1805, %bb.cj, %.lr.ph91.preheader.i.i1843, %.loopexit71.i.i1838, %.lr.ph94.preheader.i.i1819, %.preheader.i.i1817, %.loopexit71.i.i1813
  %i.cgk = mul nuw i64 %i.g, 3                    ; 3 uses
  %i.cgl = getelementptr [4 x i8], ptr %.0560, i64 %i.cgk ; 21 uses
  %i.cgm = sub i64 %i.aq, %i.cgk                  ; 16 uses
  br i1 %.not592, label %bb.cr, label %bb.cn

bb.cn:                                            ; preds = %bary_add.exit1828
  %i.cgn = icmp ugt i64 %i.cgm, %i.l
  br i1 %i.cgn, label %.lr.ph.i.i1870.preheader, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.not.i.i1869 = icmp eq i64 %i.cgm, 0
  br i1 %.not.i.i1869, label %.preheader72.i.i1874, label %.lr.ph.i.i1870.preheader

.lr.ph.i.i1870.preheader:                         ; preds = %bb.cn, %bb.co
  %.061.i.i18682560 = phi ptr [ %i.cgl, %bb.co ], [ %i.am, %bb.cn ] ; 3 uses
  %.062.i.i18672558.a = phi i64 [ %i.l, %bb.co ], [ %i.cgm, %bb.cn ] ; 2 uses
  %.063.i.i18662556.a = phi ptr [ %i.am, %bb.co ], [ %i.cgl, %bb.cn ] ; 5 uses
  %.064.i.i18652554.a = phi i64 [ %i.cgm, %bb.co ], [ %i.l, %bb.cn ] ; 6 uses
  %xtraiter3584 = and i64 %.064.i.i18652554.a, 1
  %i.cgo = icmp eq i64 %.064.i.i18652554.a, 1
  br i1 %i.cgo, label %.lr.ph.i.i1870.epil.preheader, label %.lr.ph.i.i1870.preheader.new

.lr.ph.i.i1870.preheader.new:                     ; preds = %.lr.ph.i.i1870.preheader
  %unroll_iter3589 = and i64 %.064.i.i18652554.a, -2
  br label %.lr.ph.i.i1870

.preheader72.i.i1874.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i1870
  %lcmp.mod3586.not = icmp eq i64 %xtraiter3584, 0
  br i1 %lcmp.mod3586.not, label %.preheader72.i.i1874, label %.lr.ph.i.i1870.epil.preheader

.lr.ph.i.i1870.epil.preheader:                    ; preds = %.preheader72.i.i1874.loopexit.unr-lcssa, %.lr.ph.i.i1870.preheader
  %.05779.i.i1871.epil.init = phi i64 [ 0, %.lr.ph.i.i1870.preheader ], [ %i.chy, %.preheader72.i.i1874.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i1872.epil.init = phi i64 [ 0, %.lr.ph.i.i1870.preheader ], [ %i.chx, %.preheader72.i.i1874.loopexit.unr-lcssa ]
  %lcmp.mod3588 = trunc i64 %.064.i.i18652554.a to i1
  call void @llvm.assume(i1 %lcmp.mod3588)
  %i.cgp = getelementptr [4 x i8], ptr %.061.i.i18682560, i64 %.05779.i.i1871.epil.init
  %i.cgq = load i32, ptr %i.cgp, align 4, !tbaa !44
  %i.cgr = zext i32 %i.cgq to i64
  %i.cgs = getelementptr [4 x i8], ptr %.063.i.i18662556.a, i64 %.05779.i.i1871.epil.init
  %i.cgt = load i32, ptr %i.cgs, align 4, !tbaa !44
  %i.cgu = zext i32 %i.cgt to i64
  %i.cgv = add nuw nsw i64 %.05878.i.i1872.epil.init, %i.cgr
  %i.cgw = add nuw nsw i64 %i.cgv, %i.cgu         ; 2 uses
  %i.cgx = trunc i64 %i.cgw to i32
  %i.cgy = getelementptr [4 x i8], ptr %i.cgl, i64 %.05779.i.i1871.epil.init
  store i32 %i.cgx, ptr %i.cgy, align 4, !tbaa !44
  %i.cgz = lshr i64 %i.cgw, 32
  br label %.preheader72.i.i1874

.preheader72.i.i1874:                             ; preds = %.lr.ph.i.i1870.epil.preheader, %.preheader72.i.i1874.loopexit.unr-lcssa, %bb.co
  %.062.i.i18672559 = phi i64 [ %i.l, %bb.co ], [ %.062.i.i18672558.a, %.preheader72.i.i1874.loopexit.unr-lcssa ], [ %.062.i.i18672558.a, %.lr.ph.i.i1870.epil.preheader ] ; 12 uses
  %.063.i.i18662557 = phi ptr [ %i.am, %bb.co ], [ %.063.i.i18662556.a, %.preheader72.i.i1874.loopexit.unr-lcssa ], [ %.063.i.i18662556.a, %.lr.ph.i.i1870.epil.preheader ] ; 9 uses
  %.064.i.i18652555 = phi i64 [ 0, %bb.co ], [ %.064.i.i18652554.a, %.preheader72.i.i1874.loopexit.unr-lcssa ], [ %.064.i.i18652554.a, %.lr.ph.i.i1870.epil.preheader ] ; 3 uses
  %.058.lcssa.i.i1875 = phi i64 [ 0, %bb.co ], [ %i.chx, %.preheader72.i.i1874.loopexit.unr-lcssa ], [ %i.cgz, %.lr.ph.i.i1870.epil.preheader ] ; 2 uses
  %.063.i.i186625573180 = ptrtoaddr ptr %.063.i.i18662557 to i64
  %i.cha = icmp ult i64 %.064.i.i18652555, %.062.i.i18672559
  br i1 %i.cha, label %.lr.ph83.i.i1895, label %.preheader70.i.i1876

.lr.ph.i.i1870:                                   ; preds = %.lr.ph.i.i1870, %.lr.ph.i.i1870.preheader.new
  %.05779.i.i1871 = phi i64 [ 0, %.lr.ph.i.i1870.preheader.new ], [ %i.chy, %.lr.ph.i.i1870 ] ; 5 uses
  %.05878.i.i1872 = phi i64 [ 0, %.lr.ph.i.i1870.preheader.new ], [ %i.chx, %.lr.ph.i.i1870 ]
  %niter3590 = phi i64 [ 0, %.lr.ph.i.i1870.preheader.new ], [ %niter3590.next.1, %.lr.ph.i.i1870 ]
  %i.chb = getelementptr [4 x i8], ptr %.061.i.i18682560, i64 %.05779.i.i1871
  %i.chc = load i32, ptr %i.chb, align 4, !tbaa !44
  %i.chd = zext i32 %i.chc to i64
  %i.che = getelementptr [4 x i8], ptr %.063.i.i18662556.a, i64 %.05779.i.i1871
  %i.chf = load i32, ptr %i.che, align 4, !tbaa !44
  %i.chg = zext i32 %i.chf to i64
  %i.chh = add nuw nsw i64 %.05878.i.i1872, %i.chd
  %i.chi = add nuw nsw i64 %i.chh, %i.chg         ; 2 uses
  %i.chj = trunc i64 %i.chi to i32
  %i.chk = getelementptr [4 x i8], ptr %i.cgl, i64 %.05779.i.i1871
  store i32 %i.chj, ptr %i.chk, align 4, !tbaa !44
  %i.chl = lshr i64 %i.chi, 32
  %i.chm = or disjoint i64 %.05779.i.i1871, 1     ; 3 uses
  %i.chn = getelementptr [4 x i8], ptr %.061.i.i18682560, i64 %i.chm
  %i.cho = load i32, ptr %i.chn, align 4, !tbaa !44
  %i.chp = zext i32 %i.cho to i64
  %i.chq = getelementptr [4 x i8], ptr %.063.i.i18662556.a, i64 %i.chm
  %i.chr = load i32, ptr %i.chq, align 4, !tbaa !44
  %i.chs = zext i32 %i.chr to i64
  %i.cht = add nuw nsw i64 %i.chl, %i.chp
  %i.chu = add nuw nsw i64 %i.cht, %i.chs         ; 2 uses
  %i.chv = trunc i64 %i.chu to i32
  %i.chw = getelementptr [4 x i8], ptr %i.cgl, i64 %i.chm
  store i32 %i.chv, ptr %i.chw, align 4, !tbaa !44
  %i.chx = lshr i64 %i.chu, 32                    ; 3 uses
  %i.chy = add nuw i64 %.05779.i.i1871, 2         ; 2 uses
  %niter3590.next.1 = add i64 %niter3590, 2       ; 2 uses
  %niter3590.ncmp.1 = icmp eq i64 %niter3590.next.1, %unroll_iter3589
  br i1 %niter3590.ncmp.1, label %.preheader72.i.i1874.loopexit.unr-lcssa, label %.lr.ph.i.i1870, !llvm.loop !3

.preheader70.i.i1876:                             ; preds = %bb.cq, %.preheader72.i.i1874
  %.159.lcssa.i.i1877 = phi i64 [ %.058.lcssa.i.i1875, %.preheader72.i.i1874 ], [ %i.cik, %bb.cq ]
  %.1.lcssa.i.i1878 = phi i64 [ %.064.i.i18652555, %.preheader72.i.i1874 ], [ %.062.i.i18672559, %bb.cq ] ; 4 uses
  %i.chz = icmp ult i64 %.1.lcssa.i.i1878, %i.cgm
  br i1 %i.chz, label %.lr.ph88.preheader.i.i1882, label %bary_add.exit1899.preheader

.lr.ph88.preheader.i.i1882:                       ; preds = %.preheader70.i.i1876
  %i.cia = icmp eq i64 %.159.lcssa.i.i1877, 0
  br i1 %i.cia, label %.loopexit71.i.i1884, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph88.preheader.i.i1882
  %i.cib = getelementptr [4 x i8], ptr %i.cgl, i64 %.1.lcssa.i.i1878
  store i32 1, ptr %i.cib, align 4, !tbaa !44
  %i.cic = add nuw i64 %.1.lcssa.i.i1878, 1       ; 2 uses
  %exitcond103.peel.not.i.i1883 = icmp eq i64 %i.cic, %i.cgm
  br i1 %exitcond103.peel.not.i.i1883, label %bary_add.exit1899.preheader, label %.loopexit71.i.i1884

.lr.ph83.i.i1895:                                 ; preds = %.preheader72.i.i1874, %bb.cq
  %.182.i.i1896 = phi i64 [ %i.cil, %bb.cq ], [ %.064.i.i18652555, %.preheader72.i.i1874 ] ; 4 uses
  %.15981.i.i1897 = phi i64 [ %i.cik, %bb.cq ], [ %.058.lcssa.i.i1875, %.preheader72.i.i1874 ]
  %i.cid = icmp eq i64 %.15981.i.i1897, 0
  br i1 %i.cid, label %.loopexit71.i.i1884, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph83.i.i1895
  %i.cie = getelementptr [4 x i8], ptr %.063.i.i18662557, i64 %.182.i.i1896
  %i.cif = load i32, ptr %i.cie, align 4, !tbaa !44
  %i.cig = zext i32 %i.cif to i64
  %i.cih = add nuw nsw i64 %i.cig, 1              ; 2 uses
  %i.cii = trunc i64 %i.cih to i32
  %i.cij = getelementptr [4 x i8], ptr %i.cgl, i64 %.182.i.i1896
  store i32 %i.cii, ptr %i.cij, align 4, !tbaa !44
  %i.cik = lshr i64 %i.cih, 32                    ; 2 uses
  %i.cil = add i64 %.182.i.i1896, 1               ; 2 uses
  %exitcond102.not.i.i1898 = icmp eq i64 %i.cil, %.062.i.i18672559
  br i1 %exitcond102.not.i.i1898, label %.preheader70.i.i1876, label %.lr.ph83.i.i1895, !llvm.loop !4

.loopexit71.i.i1884:                              ; preds = %.lr.ph83.i.i1895, %bb.cp, %.lr.ph88.preheader.i.i1882
  %.3.i.i1885 = phi i64 [ %i.cic, %bb.cp ], [ %.1.lcssa.i.i1878, %.lr.ph88.preheader.i.i1882 ], [ %.182.i.i1896, %.lr.ph83.i.i1895 ] ; 7 uses
  %i.cim = icmp eq ptr %.063.i.i18662557, %i.cgl
  %i.cin = icmp eq i64 %.062.i.i18672559, %i.cgm
  %or.cond.i.i1886 = and i1 %i.cim, %i.cin
  br i1 %or.cond.i.i1886, label %bary_add.exit1899.preheader, label %.preheader69.i.i1887

.preheader69.i.i1887:                             ; preds = %.loopexit71.i.i1884
  %i.cio = icmp ult i64 %.3.i.i1885, %.062.i.i18672559
  br i1 %i.cio, label %.lr.ph91.i.i1892.preheader, label %.preheader.i.i1888

.lr.ph91.i.i1892.preheader:                       ; preds = %.preheader69.i.i1887
  %i.cip = sub nuw i64 %.062.i.i18672559, %.3.i.i1885 ; 3 uses
  %min.iters.check3183 = icmp ult i64 %i.cip, 16
  br i1 %min.iters.check3183, label %.lr.ph91.i.i1892.preheader3197, label %vector.memcheck3179

vector.memcheck3179:                              ; preds = %.lr.ph91.i.i1892.preheader
  %i.ciq = mul i64 %i.g, 12
  %i.cir = add i64 %i.ciq, %.05602856
  %i.cis = sub i64 %.063.i.i186625573180, %i.cir
  %diff.check3181 = icmp ugt i64 %i.cis, -32
  br i1 %diff.check3181, label %.lr.ph91.i.i1892.preheader3197, label %vector.ph3184

vector.ph3184:                                    ; preds = %vector.memcheck3179
  %n.vec3185 = and i64 %i.cip, -8                 ; 3 uses
  %i.cit = add i64 %.3.i.i1885, %n.vec3185
  br label %vector.body3186

vector.body3186:                                  ; preds = %vector.body3186, %vector.ph3184
  %index3187 = phi i64 [ 0, %vector.ph3184 ], [ %index.next3190, %vector.body3186 ] ; 2 uses
  %i.ciu = add nuw i64 %.3.i.i1885, %index3187    ; 2 uses
  %i.civ = getelementptr [4 x i8], ptr %.063.i.i18662557, i64 %i.ciu ; 2 uses
  %i.ciw = getelementptr i8, ptr %i.civ, i64 16
  %wide.load3188.a = load <4 x i32>, ptr %i.civ, align 4, !tbaa !44
  %wide.load3189 = load <4 x i32>, ptr %i.ciw, align 4, !tbaa !44
  %i.cix = getelementptr [4 x i8], ptr %i.cgl, i64 %i.ciu ; 2 uses
  %i.ciy = getelementptr i8, ptr %i.cix, i64 16
  store <4 x i32> %wide.load3188.a, ptr %i.cix, align 4, !tbaa !44
  store <4 x i32> %wide.load3189, ptr %i.ciy, align 4, !tbaa !44
  %index.next3190 = add nuw i64 %index3187, 8     ; 2 uses
  %i.ciz = icmp eq i64 %index.next3190, %n.vec3185
  br i1 %i.ciz, label %middle.block3191, label %vector.body3186, !llvm.loop !189

middle.block3191:                                 ; preds = %vector.body3186
  %cmp.n3192 = icmp eq i64 %i.cip, %n.vec3185
  br i1 %cmp.n3192, label %.preheader.i.i1888, label %.lr.ph91.i.i1892.preheader3197

.lr.ph91.i.i1892.preheader3197:                   ; preds = %vector.memcheck3179, %.lr.ph91.i.i1892.preheader, %middle.block3191
  %.490.i.i1893.ph = phi i64 [ %.3.i.i1885, %vector.memcheck3179 ], [ %.3.i.i1885, %.lr.ph91.i.i1892.preheader ], [ %i.cit, %middle.block3191 ] ; 4 uses
  %i.cja = sub i64 %.062.i.i18672559, %.490.i.i1893.ph
  %xtraiter3591 = and i64 %i.cja, 3               ; 2 uses
  %lcmp.mod3592.not = icmp eq i64 %xtraiter3591, 0
  br i1 %lcmp.mod3592.not, label %.lr.ph91.i.i1892.prol.loopexit, label %.lr.ph91.i.i1892.prol

.lr.ph91.i.i1892.prol:                            ; preds = %.lr.ph91.i.i1892.preheader3197, %.lr.ph91.i.i1892.prol
  %.490.i.i1893.prol = phi i64 [ %i.cje, %.lr.ph91.i.i1892.prol ], [ %.490.i.i1893.ph, %.lr.ph91.i.i1892.preheader3197 ] ; 3 uses
  %prol.iter3593 = phi i64 [ %prol.iter3593.next, %.lr.ph91.i.i1892.prol ], [ 0, %.lr.ph91.i.i1892.preheader3197 ]
  %i.cjb = getelementptr [4 x i8], ptr %.063.i.i18662557, i64 %.490.i.i1893.prol
  %i.cjc = load i32, ptr %i.cjb, align 4, !tbaa !44
  %i.cjd = getelementptr [4 x i8], ptr %i.cgl, i64 %.490.i.i1893.prol
  store i32 %i.cjc, ptr %i.cjd, align 4, !tbaa !44
  %i.cje = add nuw i64 %.490.i.i1893.prol, 1      ; 2 uses
  %prol.iter3593.next = add i64 %prol.iter3593, 1 ; 2 uses
  %prol.iter3593.cmp.not = icmp eq i64 %prol.iter3593.next, %xtraiter3591
  br i1 %prol.iter3593.cmp.not, label %.lr.ph91.i.i1892.prol.loopexit, label %.lr.ph91.i.i1892.prol, !llvm.loop !190

end_hunk_1
