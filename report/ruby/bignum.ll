Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/bignum?download=true
inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 154
loop-unroll.NumUnrolled: 182
begin_hunk_0_@bary_mul_karatsuba:bb.a
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !7
  %i.agb = zext i32 %i.aga to i64
  %i.agc = mul nuw i64 %i.agb, %i.aey
  %i.agd = add nuw i64 %i.agc, %.131.i424         ; 2 uses
  %.not.i423.1 = icmp eq i64 %i.agd, 0
  br i1 %.not.i423.1, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i420.1
  %i.age = getelementptr [4 x i8], ptr %i.aet, i64 %i.afy ; 2 uses
  %i.agf = load i32, ptr %i.age, align 4, !tbaa !7
  %i.agg = zext i32 %i.agf to i64
  %i.agh = add nuw i64 %i.agd, %i.agg             ; 2 uses
  %i.agi = trunc i64 %i.agh to i32
  store i32 %i.agi, ptr %i.age, align 4, !tbaa !7
  %i.agj = lshr i64 %i.agh, 32
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.lr.ph.i420.1
  %.131.i424.1 = phi i64 [ %i.agj, %bb.ba ], [ 0, %.lr.ph.i420.1 ] ; 3 uses
  %i.agk = add nuw i64 %.036.i421, 2              ; 2 uses
  %niter874.next.1 = add nuw i64 %niter874, 2     ; 2 uses
  %niter874.ncmp.1 = icmp eq i64 %niter874.next.1, %unroll_iter873
  br i1 %niter874.ncmp.1, label %.preheader.i426.unr-lcssa, label %.lr.ph.i420, !llvm.loop !16

.lr.ph41.i428:                                    ; preds = %.preheader.i426, %.lr.ph41.i428
  %.140.i429 = phi i64 [ %i.agr, %.lr.ph41.i428 ], [ %.0197, %.preheader.i426 ] ; 2 uses
  %.239.i430 = phi i64 [ %i.agq, %.lr.ph41.i428 ], [ %.131.i424.lcssa, %.preheader.i426 ]
  %i.agl = getelementptr [4 x i8], ptr %i.aet, i64 %.140.i429 ; 2 uses
  %i.agm = load i32, ptr %i.agl, align 4, !tbaa !7
  %i.agn = zext i32 %i.agm to i64
  %i.ago = add nuw nsw i64 %.239.i430, %i.agn     ; 2 uses
  %i.agp = trunc i64 %i.ago to i32
  store i32 %i.agp, ptr %i.agl, align 4, !tbaa !7
  %i.agq = lshr i64 %i.ago, 32                    ; 2 uses
  %i.agr = add nuw i64 %.140.i429, 1              ; 2 uses
  %i.ags = icmp uge i64 %i.agr, %i.aeu
  %i.agt = icmp eq i64 %i.agq, 0
  %or.cond.i431 = select i1 %i.ags, i1 true, i1 %i.agt
  br i1 %or.cond.i431, label %bary_muladd_1xN.exit418, label %.lr.ph41.i428, !llvm.loop !18

bary_muladd_1xN.exit418:                          ; preds = %.lr.ph41.i411, %.lr.ph41.i428, %bb.ax, %.preheader.i426, %.preheader.i409, %bb.aw, %bary_muladd_1xN.exit, %bb.av
  %i.agu = load i64, ptr %i.aa, align 8, !tbaa !11
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
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  store i64 %1, ptr %i.b, align 8, !tbaa !11
  %i.e = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13   ; 3 uses
  %i.g = and i64 %i.f, 16384
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.j = lshr i64 %i.f, 15
  %i.k = and i64 %i.j, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.k, %bb.c ], [ %i.i, %bb.b ] ; 4 uses
  %i.l = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13   ; 3 uses
  %i.n = and i64 %i.m, 16384
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  %i.o = getelementptr i8, ptr %i.l, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit18

bb.e:                                             ; preds = %BIGNUM_LEN.exit
  %i.q = lshr i64 %i.m, 15
  %i.r = and i64 %i.q, 511
  br label %BIGNUM_LEN.exit18

BIGNUM_LEN.exit18:                                ; preds = %bb.d, %bb.e
  %.0.i17 = phi i64 [ %i.r, %bb.e ], [ %i.p, %bb.d ] ; 5 uses
  %i.s = add i64 %.0.i17, %.0.i                   ; 2 uses
  %i.t = load i64, ptr @rb_cInteger, align 8, !tbaa !11
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
  %i.ae = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ae, ptr noundef nonnull @.str.1) #25
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.af = inttoptr i64 %i.x to ptr                ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !13
  %i.ah = and i64 %i.ag, 16384
  %.not.i19 = icmp eq i64 %i.ah, 0
  br i1 %.not.i19, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %i.af, i64 16
  br label %BIGNUM_DIGITS.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr i8, ptr %i.af, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.i, %bb.j
  %.0.i20 = phi ptr [ %i.ai, %bb.i ], [ %i.ak, %bb.j ]
  %i.al = load i64, ptr %i.e, align 8, !tbaa !13
  %i.am = and i64 %i.al, 16384
  %.not.i21 = icmp eq i64 %i.am, 0
  br i1 %.not.i21, label %bb.l, label %bb.k

bb.k:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.an = getelementptr i8, ptr %i.e, i64 16
  br label %BIGNUM_DIGITS.exit23

bb.l:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.ao = getelementptr i8, ptr %i.e, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit23

BIGNUM_DIGITS.exit23:                             ; preds = %bb.k, %bb.l
  %.0.i22 = phi ptr [ %i.an, %bb.k ], [ %i.ap, %bb.l ]
  %i.aq = load i64, ptr %i.l, align 8, !tbaa !13
  %i.ar = and i64 %i.aq, 16384
  %.not.i24 = icmp eq i64 %i.ar, 0
  br i1 %.not.i24, label %bb.n, label %bb.m

bb.m:                                             ; preds = %BIGNUM_DIGITS.exit23
  %i.as = getelementptr i8, ptr %i.l, i64 16
  br label %BIGNUM_DIGITS.exit26

bb.n:                                             ; preds = %BIGNUM_DIGITS.exit23
  %i.at = getelementptr i8, ptr %i.l, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit26

BIGNUM_DIGITS.exit26:                             ; preds = %bb.m, %bb.n
  %.0.i25 = phi ptr [ %i.as, %bb.m ], [ %i.au, %bb.n ]
  tail call fastcc void @bary_mul_toom3(ptr noundef %.0.i20, i64 noundef %i.s, ptr noundef %.0.i22, i64 noundef %.0.i, ptr noundef %.0.i25, i64 noundef %.0.i17, ptr noundef null, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #23, !srcloc !73
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.aw = load volatile i64, ptr %i.av, align 8, !tbaa !11 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.b, ptr %i.d, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #23, !srcloc !74
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.ay = load volatile i64, ptr %i.ax, align 8, !tbaa !11 ; 0 uses
  ret i64 %i.x
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bary_mul_toom3(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 1, 0) %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !11
  %i.c = icmp eq ptr %2, %4
  %i.d = icmp eq i64 %3, %5
  %i.e = and i1 %i.c, %i.d                        ; 2 uses
  %i.f = add i64 %5, 2                            ; 19 uses
  %i.g = udiv i64 %i.f, 3                         ; 116 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 46 uses
  %i.i = mul i64 %i.h, 6
  %i.j = shl nuw i64 %i.g, 1                      ; 94 uses
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
  br i1 %i.v, label %bb.e, label %rb_alloc_tmp_buffer2.exit, !prof !32

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
  %.0560 = phi ptr [ %6, %bb.a ], [ %i.u, %bb.c ], [ %i.z, %rb_alloc_tmp_buffer2.exit ] ; 33 uses
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
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i.epil.init
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !7
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %.05878.i.i.epil.init, %i.bb
  %i.bg = add nuw nsw i64 %i.bf, %i.be            ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = getelementptr [4 x i8], ptr %.0560, i64 %.05779.i.i.epil.init
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !7
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
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = zext i32 %i.bp to i64
  %i.br = add nuw nsw i64 %.05878.i.i, %i.bn
  %i.bs = add nuw nsw i64 %i.br, %i.bq            ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = getelementptr [4 x i8], ptr %.0560, i64 %.05779.i.i
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !7
  %i.bv = lshr i64 %i.bs, 32
  %i.bw = or disjoint i64 %.05779.i.i, 1          ; 3 uses
  %i.bx = getelementptr [4 x i8], ptr %.061.i.i, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.bw
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !7
  %i.cc = zext i32 %i.cb to i64
  %i.cd = add nuw nsw i64 %i.bv, %i.bz
  %i.ce = add nuw nsw i64 %i.cd, %i.cc            ; 2 uses
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = getelementptr [4 x i8], ptr %.0560, i64 %i.bw
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !7
  %i.ch = lshr i64 %i.ce, 32                      ; 3 uses
  %i.ci = add nuw nsw i64 %.05779.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader72.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !34

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
  store i32 1, ptr %i.ck, align 4, !tbaa !7
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
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !7
  %i.cp = zext i32 %i.co to i64
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = getelementptr [4 x i8], ptr %.0560, i64 %.182.i.i
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !7
  %i.ct = lshr i64 %i.cq, 32                      ; 2 uses
  %i.cu = add i64 %.182.i.i, 1                    ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %i.cu, %.062.i.i
  br i1 %exitcond102.not.i.i, label %.preheader70.i.i, label %.lr.ph83.i.i, !llvm.loop !36

.loopexit71.i.i:                                  ; preds = %.lr.ph83.i.i, %bb.k, %.lr.ph88.preheader.i.i
  %.3.i.i = phi i64 [ %i.cl, %bb.k ], [ %.1.lcssa.i.i1943, %.lr.ph88.preheader.i.i ], [ %.182.i.i, %.lr.ph83.i.i ] ; 6 uses
end_hunk_0
begin_hunk_1_@bary_mul_toom3:bb.a
  %xtraiter3354 = and i64 %i.ln, 1
  %i.lo = icmp eq i64 %i.ln, 1
  br i1 %i.lo, label %.lr.ph.i.i681.epil.preheader, label %.lr.ph.i.i681.preheader.new

.lr.ph.i.i681.preheader.new:                      ; preds = %.lr.ph.i.i681.preheader
  %unroll_iter3358 = and i64 %i.ln, 9223372036854775806
  br label %.lr.ph.i.i681

.lr.ph.i.i681:                                    ; preds = %.lr.ph.i.i681, %.lr.ph.i.i681.preheader.new
  %.078.i.i682 = phi i64 [ 0, %.lr.ph.i.i681.preheader.new ], [ %i.mm, %.lr.ph.i.i681 ] ; 5 uses
  %.06277.i.i683 = phi i64 [ 0, %.lr.ph.i.i681.preheader.new ], [ %i.ml, %.lr.ph.i.i681 ]
  %niter3359 = phi i64 [ 0, %.lr.ph.i.i681.preheader.new ], [ %niter3359.next.1, %.lr.ph.i.i681 ]
  %i.lp = getelementptr [4 x i8], ptr %i.at, i64 %.078.i.i682
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !7
  %i.lr = zext i32 %i.lq to i64
  %i.ls = getelementptr [4 x i8], ptr %i.aa, i64 %.078.i.i682
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !7
  %i.lu = zext i32 %i.lt to i64
  %i.lv = sub nsw i64 %i.lr, %i.lu
  %i.lw = add nsw i64 %i.lv, %.06277.i.i683       ; 2 uses
  %i.lx = trunc i64 %i.lw to i32
  %i.ly = getelementptr [4 x i8], ptr %i.ab, i64 %.078.i.i682
  store i32 %i.lx, ptr %i.ly, align 4, !tbaa !7
  %i.lz = ashr i64 %i.lw, 32
  %i.ma = or disjoint i64 %.078.i.i682, 1         ; 3 uses
  %i.mb = getelementptr [4 x i8], ptr %i.at, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !7
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr [4 x i8], ptr %i.aa, i64 %i.ma
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !7
  %i.mg = zext i32 %i.mf to i64
  %i.mh = sub nsw i64 %i.md, %i.mg
  %i.mi = add nsw i64 %i.mh, %i.lz                ; 2 uses
  %i.mj = trunc i64 %i.mi to i32
  %i.mk = getelementptr [4 x i8], ptr %i.ab, i64 %i.ma
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !7
  %i.ml = ashr i64 %i.mi, 32                      ; 3 uses
  %i.mm = add nuw nsw i64 %.078.i.i682, 2         ; 2 uses
  %niter3359.next.1 = add i64 %niter3359, 2       ; 2 uses
  %niter3359.ncmp.1 = icmp eq i64 %niter3359.next.1, %unroll_iter3358
  br i1 %niter3359.ncmp.1, label %._crit_edge.i.i685.loopexit.unr-lcssa, label %.lr.ph.i.i681, !llvm.loop !48

._crit_edge.i.i685.loopexit.unr-lcssa:            ; preds = %.lr.ph.i.i681
  %lcmp.mod3355.not = icmp eq i64 %xtraiter3354, 0
  br i1 %lcmp.mod3355.not, label %._crit_edge.i.i685, label %.lr.ph.i.i681.epil.preheader

.lr.ph.i.i681.epil.preheader:                     ; preds = %._crit_edge.i.i685.loopexit.unr-lcssa, %.lr.ph.i.i681.preheader
  %.078.i.i682.epil.init = phi i64 [ 0, %.lr.ph.i.i681.preheader ], [ %i.mm, %._crit_edge.i.i685.loopexit.unr-lcssa ] ; 3 uses
  %.06277.i.i683.epil.init = phi i64 [ 0, %.lr.ph.i.i681.preheader ], [ %i.ml, %._crit_edge.i.i685.loopexit.unr-lcssa ]
  %lcmp.mod3357 = trunc i64 %i.ln to i1
  call void @llvm.assume(i1 %lcmp.mod3357)
  %i.mn = getelementptr [4 x i8], ptr %i.at, i64 %.078.i.i682.epil.init
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !7
  %i.mp = zext i32 %i.mo to i64
  %i.mq = getelementptr [4 x i8], ptr %i.aa, i64 %.078.i.i682.epil.init
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !7
  %i.ms = zext i32 %i.mr to i64
  %i.mt = sub nsw i64 %i.mp, %i.ms
  %i.mu = add nsw i64 %i.mt, %.06277.i.i683.epil.init ; 2 uses
  %i.mv = trunc i64 %i.mu to i32
  %i.mw = getelementptr [4 x i8], ptr %i.ab, i64 %.078.i.i682.epil.init
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !7
  %i.mx = ashr i64 %i.mu, 32
  br label %._crit_edge.i.i685

._crit_edge.i.i685:                               ; preds = %.lr.ph.i.i681.epil.preheader, %._crit_edge.i.i685.loopexit.unr-lcssa, %bb.s
  %.062.lcssa.i.i686 = phi i64 [ 0, %bb.s ], [ %i.ml, %._crit_edge.i.i685.loopexit.unr-lcssa ], [ %i.mx, %.lr.ph.i.i681.epil.preheader ] ; 4 uses
  %.not.i.i687.not = icmp ult i64 %i.g, %i.ar
  br i1 %.not.i.i687.not, label %.preheader72.i.i688, label %.lr.ph87.i.i.preheader

.lr.ph87.i.i.preheader:                           ; preds = %._crit_edge.i.i685
  %i.my = add nuw nsw i64 %i.g, 1
  %i.mz = sub nuw nsw i64 %i.my, %i.ln
  %i.na = sub nuw nsw i64 %i.g, %i.ln
  %xtraiter3360 = and i64 %i.mz, 3                ; 2 uses
  %lcmp.mod3361.not = icmp eq i64 %xtraiter3360, 0
  br i1 %lcmp.mod3361.not, label %.lr.ph87.i.i.prol.loopexit, label %.lr.ph87.i.i.prol

.lr.ph87.i.i.prol:                                ; preds = %.lr.ph87.i.i.preheader, %.lr.ph87.i.i.prol
  %.286.i.i.prol = phi i64 [ %i.ni, %.lr.ph87.i.i.prol ], [ %i.ln, %.lr.ph87.i.i.preheader ] ; 3 uses
  %.26485.i.i.prol = phi i64 [ %i.nh, %.lr.ph87.i.i.prol ], [ %.062.lcssa.i.i686, %.lr.ph87.i.i.preheader ]
  %prol.iter3362 = phi i64 [ %prol.iter3362.next, %.lr.ph87.i.i.prol ], [ 0, %.lr.ph87.i.i.preheader ]
  %i.nb = getelementptr [4 x i8], ptr %i.aa, i64 %.286.i.i.prol
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !7
  %i.nd = zext i32 %i.nc to i64
  %i.ne = sub nsw i64 %.26485.i.i.prol, %i.nd     ; 2 uses
  %i.nf = trunc i64 %i.ne to i32
  %i.ng = getelementptr [4 x i8], ptr %i.ab, i64 %.286.i.i.prol
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !7
  %i.nh = ashr i64 %i.ne, 32                      ; 3 uses
  %i.ni = add nuw i64 %.286.i.i.prol, 1           ; 2 uses
  %prol.iter3362.next = add i64 %prol.iter3362, 1 ; 2 uses
  %prol.iter3362.cmp.not = icmp eq i64 %prol.iter3362.next, %xtraiter3360
  br i1 %prol.iter3362.cmp.not, label %.lr.ph87.i.i.prol.loopexit, label %.lr.ph87.i.i.prol, !llvm.loop !83

.lr.ph87.i.i.prol.loopexit:                       ; preds = %.lr.ph87.i.i.prol, %.lr.ph87.i.i.preheader
  %.lcssa3325.unr = phi i64 [ poison, %.lr.ph87.i.i.preheader ], [ %i.nh, %.lr.ph87.i.i.prol ]
  %.286.i.i.unr = phi i64 [ %i.ln, %.lr.ph87.i.i.preheader ], [ %i.ni, %.lr.ph87.i.i.prol ]
  %.26485.i.i.unr = phi i64 [ %.062.lcssa.i.i686, %.lr.ph87.i.i.preheader ], [ %i.nh, %.lr.ph87.i.i.prol ]
  %i.nj = icmp samesign ult i64 %i.na, 3
  br i1 %i.nj, label %.loopexit71.i.i689, label %.lr.ph87.i.i

.preheader72.i.i688:                              ; preds = %._crit_edge.i.i685
  %i.nk = icmp ult i64 %i.h, %i.ar
  br i1 %i.nk, label %.lr.ph82.i.i706, label %.loopexit71.i.i689

.lr.ph82.i.i706:                                  ; preds = %.preheader72.i.i688, %bb.t
  %.181.i.i707 = phi i64 [ %i.nt, %bb.t ], [ %i.ln, %.preheader72.i.i688 ] ; 4 uses
  %.16380.i.i708 = phi i64 [ %i.ns, %bb.t ], [ %.062.lcssa.i.i686, %.preheader72.i.i688 ]
  %i.nl = icmp eq i64 %.16380.i.i708, 0
  br i1 %i.nl, label %.loopexit74.i.i695, label %bb.t

bb.t:                                             ; preds = %.lr.ph82.i.i706
  %i.nm = getelementptr [4 x i8], ptr %i.at, i64 %.181.i.i707
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !7
  %i.no = zext i32 %i.nn to i64
  %i.np = add nsw i64 %i.no, -1                   ; 2 uses
  %i.nq = trunc i64 %i.np to i32
  %i.nr = getelementptr [4 x i8], ptr %i.ab, i64 %.181.i.i707
  store i32 %i.nq, ptr %i.nr, align 4, !tbaa !7
  %i.ns = ashr i64 %i.np, 32                      ; 2 uses
  %i.nt = add i64 %.181.i.i707, 1                 ; 2 uses
  %exitcond107.not.i.i709 = icmp eq i64 %i.nt, %i.ar
  br i1 %exitcond107.not.i.i709, label %.loopexit71.i.i689, label %.lr.ph82.i.i706, !llvm.loop !50

.lr.ph87.i.i:                                     ; preds = %.lr.ph87.i.i.prol.loopexit, %.lr.ph87.i.i
  %.286.i.i = phi i64 [ %i.oz, %.lr.ph87.i.i ], [ %.286.i.i.unr, %.lr.ph87.i.i.prol.loopexit ] ; 6 uses
  %.26485.i.i = phi i64 [ %i.oy, %.lr.ph87.i.i ], [ %.26485.i.i.unr, %.lr.ph87.i.i.prol.loopexit ]
  %i.nu = getelementptr [4 x i8], ptr %i.aa, i64 %.286.i.i
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !7
  %i.nw = zext i32 %i.nv to i64
  %i.nx = sub nsw i64 %.26485.i.i, %i.nw          ; 2 uses
  %i.ny = trunc i64 %i.nx to i32
  %i.nz = getelementptr [4 x i8], ptr %i.ab, i64 %.286.i.i
  store i32 %i.ny, ptr %i.nz, align 4, !tbaa !7
  %i.oa = ashr i64 %i.nx, 32
  %i.ob = add nuw i64 %.286.i.i, 1                ; 2 uses
  %i.oc = getelementptr [4 x i8], ptr %i.aa, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !7
  %i.oe = zext i32 %i.od to i64
  %i.of = sub nsw i64 %i.oa, %i.oe                ; 2 uses
  %i.og = trunc i64 %i.of to i32
  %i.oh = getelementptr [4 x i8], ptr %i.ab, i64 %i.ob
  store i32 %i.og, ptr %i.oh, align 4, !tbaa !7
  %i.oi = ashr i64 %i.of, 32
  %i.oj = add nuw i64 %.286.i.i, 2                ; 2 uses
  %i.ok = getelementptr [4 x i8], ptr %i.aa, i64 %i.oj
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !7
  %i.om = zext i32 %i.ol to i64
  %i.on = sub nsw i64 %i.oi, %i.om                ; 2 uses
  %i.oo = trunc i64 %i.on to i32
  %i.op = getelementptr [4 x i8], ptr %i.ab, i64 %i.oj
  store i32 %i.oo, ptr %i.op, align 4, !tbaa !7
  %i.oq = ashr i64 %i.on, 32
  %i.or = add nuw i64 %.286.i.i, 3                ; 3 uses
  %i.os = getelementptr [4 x i8], ptr %i.aa, i64 %i.or
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !7
  %i.ou = zext i32 %i.ot to i64
  %i.ov = sub nsw i64 %i.oq, %i.ou                ; 2 uses
  %i.ow = trunc i64 %i.ov to i32
  %i.ox = getelementptr [4 x i8], ptr %i.ab, i64 %i.or
  store i32 %i.ow, ptr %i.ox, align 4, !tbaa !7
  %i.oy = ashr i64 %i.ov, 32                      ; 2 uses
  %i.oz = add nuw i64 %.286.i.i, 4
  %exitcond108.not.i.i.3 = icmp eq i64 %i.or, %i.g
  br i1 %exitcond108.not.i.i.3, label %.loopexit71.i.i689, label %.lr.ph87.i.i, !llvm.loop !51

.loopexit71.i.i689:                               ; preds = %.lr.ph87.i.i.prol.loopexit, %.lr.ph87.i.i, %bb.t, %.preheader72.i.i688
  %.365.i.i = phi i64 [ %.062.lcssa.i.i686, %.preheader72.i.i688 ], [ %i.ns, %bb.t ], [ %.lcssa3325.unr, %.lr.ph87.i.i.prol.loopexit ], [ %i.oy, %.lr.ph87.i.i ]
  %.3.i.i690 = phi i64 [ %i.ln, %.preheader72.i.i688 ], [ %i.ar, %bb.t ], [ %i.h, %.lr.ph87.i.i ], [ %i.h, %.lr.ph87.i.i.prol.loopexit ] ; 4 uses
  %i.pa = icmp eq i64 %.365.i.i, 0
  br i1 %i.pa, label %.loopexit74.i.i695, label %.preheader68.i.i691

.preheader68.i.i691:                              ; preds = %.loopexit71.i.i689
  %.not1994 = icmp ugt i64 %.3.i.i690, %i.g
  br i1 %.not1994, label %.lr.ph.i711.preheader, label %.lr.ph91.preheader.i.i693

.lr.ph.i711.preheader:                            ; preds = %.lr.ph91.preheader.i.i693, %.preheader68.i.i691
  br label %.lr.ph.i711

.lr.ph91.preheader.i.i693:                        ; preds = %.preheader68.i.i691
  %i.pb = shl i64 %.3.i.i690, 2
  %scevgep.i.i694 = getelementptr i8, ptr %i.ab, i64 %i.pb
  %i.pc = sub nuw nsw i64 %i.h, %.3.i.i690
  %i.pd = shl i64 %i.pc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i694, i8 -1, i64 %i.pd, i1 false), !tbaa !7
  br label %.lr.ph.i711.preheader

.loopexit74.i.i695:                               ; preds = %.lr.ph82.i.i706, %.loopexit71.i.i689
  %.5.i.i696 = phi i64 [ %.3.i.i690, %.loopexit71.i.i689 ], [ %.181.i.i707, %.lr.ph82.i.i706 ] ; 7 uses
  %i.pe = icmp eq ptr %i.at, %i.ab
  %i.pf = icmp eq i64 %i.ar, %i.h
  %or.cond.i.i697 = and i1 %i.pf, %i.pe
  br i1 %or.cond.i.i697, label %.critedge597, label %.preheader67.i.i698

.preheader67.i.i698:                              ; preds = %.loopexit74.i.i695
  %i.pg = icmp ult i64 %.5.i.i696, %i.ar
  br i1 %i.pg, label %.lr.ph93.i.i703.preheader, label %.preheader.i.i699

.lr.ph93.i.i703.preheader:                        ; preds = %.preheader67.i.i698
  %i.ph = add i64 %.5.i.i696, %i.j
  %i.pi = sub i64 %3, %i.ph                       ; 3 uses
  %min.iters.check2886 = icmp ult i64 %i.pi, 12
  br i1 %min.iters.check2886, label %.lr.ph93.i.i703.preheader3315, label %vector.memcheck2883

vector.memcheck2883:                              ; preds = %.lr.ph93.i.i703.preheader
  %i.pj = sub i64 %.05602856, %i.a
  %i.pk = add i64 %i.pj, 7
  %diff.check2884 = icmp ult i64 %i.pk, 31
  br i1 %diff.check2884, label %.lr.ph93.i.i703.preheader3315, label %vector.ph2887

vector.ph2887:                                    ; preds = %vector.memcheck2883
  %n.vec2888 = and i64 %i.pi, -8                  ; 3 uses
  %i.pl = add i64 %.5.i.i696, %n.vec2888
  br label %vector.body2889

vector.body2889:                                  ; preds = %vector.body2889, %vector.ph2887
  %index2890 = phi i64 [ 0, %vector.ph2887 ], [ %index.next2893, %vector.body2889 ] ; 2 uses
  %i.pm = add nuw i64 %.5.i.i696, %index2890      ; 2 uses
  %i.pn = getelementptr [4 x i8], ptr %i.at, i64 %i.pm ; 2 uses
  %i.po = getelementptr i8, ptr %i.pn, i64 16
  %wide.load2891 = load <4 x i32>, ptr %i.pn, align 4, !tbaa !7
  %wide.load2892 = load <4 x i32>, ptr %i.po, align 4, !tbaa !7
  %i.pp = getelementptr [4 x i8], ptr %i.ab, i64 %i.pm ; 2 uses
  %i.pq = getelementptr i8, ptr %i.pp, i64 16
  store <4 x i32> %wide.load2891, ptr %i.pp, align 4, !tbaa !7
  store <4 x i32> %wide.load2892, ptr %i.pq, align 4, !tbaa !7
  %index.next2893 = add nuw i64 %index2890, 8     ; 2 uses
  %i.pr = icmp eq i64 %index.next2893, %n.vec2888
  br i1 %i.pr, label %middle.block2894, label %vector.body2889, !llvm.loop !84

middle.block2894:                                 ; preds = %vector.body2889
  %cmp.n2895 = icmp eq i64 %i.pi, %n.vec2888
  br i1 %cmp.n2895, label %.preheader.i.i699, label %.lr.ph93.i.i703.preheader3315

.lr.ph93.i.i703.preheader3315:                    ; preds = %vector.memcheck2883, %.lr.ph93.i.i703.preheader, %middle.block2894
  %.692.i.i704.ph = phi i64 [ %.5.i.i696, %vector.memcheck2883 ], [ %.5.i.i696, %.lr.ph93.i.i703.preheader ], [ %i.pl, %middle.block2894 ]
  br label %.lr.ph93.i.i703

.preheader.i.i699:                                ; preds = %.lr.ph93.i.i703, %middle.block2894, %.preheader67.i.i698
  %.6.lcssa.i.i700 = phi i64 [ %.5.i.i696, %.preheader67.i.i698 ], [ %i.ar, %middle.block2894 ], [ %i.ar, %.lr.ph93.i.i703 ] ; 2 uses
  %.not1996 = icmp ugt i64 %.6.lcssa.i.i700, %i.g
  br i1 %.not1996, label %.critedge597, label %.critedge597.sink.split

.lr.ph93.i.i703:                                  ; preds = %.lr.ph93.i.i703.preheader3315, %.lr.ph93.i.i703
  %.692.i.i704 = phi i64 [ %i.pv, %.lr.ph93.i.i703 ], [ %.692.i.i704.ph, %.lr.ph93.i.i703.preheader3315 ] ; 3 uses
  %i.ps = getelementptr [4 x i8], ptr %i.at, i64 %.692.i.i704
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !7
  %i.pu = getelementptr [4 x i8], ptr %i.ab, i64 %.692.i.i704
  store i32 %i.pt, ptr %i.pu, align 4, !tbaa !7
  %i.pv = add nuw i64 %.692.i.i704, 1             ; 2 uses
  %exitcond111.not.i.i705 = icmp eq i64 %i.pv, %i.ar
  br i1 %exitcond111.not.i.i705, label %.preheader.i.i699, label %.lr.ph93.i.i703, !llvm.loop !85

.lr.ph.i711:                                      ; preds = %.lr.ph.i711.preheader, %bb.u
  %.023.i712 = phi i64 [ %i.py, %bb.u ], [ 0, %.lr.ph.i711.preheader ] ; 9 uses
  %i.pw = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i712
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !7  ; 2 uses
  %.not.i713 = icmp eq i32 %i.px, 0
  br i1 %.not.i713, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i711
  %i.py = add nuw nsw i64 %.023.i712, 1
  %exitcond.not.i720 = icmp eq i64 %.023.i712, %i.g
  br i1 %exitcond.not.i720, label %bary_2comp.exit721.preheader, label %.lr.ph.i711, !llvm.loop !55

bb.v:                                             ; preds = %.lr.ph.i711
  %i.pz = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i712
  %i.qa = sub i32 0, %i.px
  store i32 %i.qa, ptr %i.pz, align 4, !tbaa !7
  %.not1995.not = icmp samesign ult i64 %.023.i712, %i.g
  br i1 %.not1995.not, label %.lr.ph26.i716.preheader, label %bary_2comp.exit721.preheader

.lr.ph26.i716.preheader:                          ; preds = %bb.v
  %i.qb = sub nuw nsw i64 %i.g, %.023.i712        ; 3 uses
  %min.iters.check2872 = icmp samesign ult i64 %i.qb, 8
  br i1 %min.iters.check2872, label %.lr.ph26.i716.preheader3317, label %vector.ph2873

vector.ph2873:                                    ; preds = %.lr.ph26.i716.preheader
  %n.vec2874 = and i64 %i.qb, 9223372036854775800 ; 3 uses
  %i.qc = add nuw i64 %.023.i712, %n.vec2874
  %i.qd = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i712
  br label %vector.body2875

vector.body2875:                                  ; preds = %vector.body2875, %vector.ph2873
  %index2876 = phi i64 [ 0, %vector.ph2873 ], [ %index.next2879, %vector.body2875 ] ; 2 uses
  %i.qe = getelementptr [4 x i8], ptr %i.qd, i64 %index2876 ; 2 uses
  %i.qf = getelementptr i8, ptr %i.qe, i64 4      ; 2 uses
  %i.qg = getelementptr i8, ptr %i.qe, i64 20     ; 2 uses
  %wide.load2877 = load <4 x i32>, ptr %i.qf, align 4, !tbaa !7
  %wide.load2878 = load <4 x i32>, ptr %i.qg, align 4, !tbaa !7
  %i.qh = xor <4 x i32> %wide.load2877, splat (i32 -1)
  %i.qi = xor <4 x i32> %wide.load2878, splat (i32 -1)
  store <4 x i32> %i.qh, ptr %i.qf, align 4, !tbaa !7
  store <4 x i32> %i.qi, ptr %i.qg, align 4, !tbaa !7
  %index.next2879 = add nuw i64 %index2876, 8     ; 2 uses
  %i.qj = icmp eq i64 %index.next2879, %n.vec2874
  br i1 %i.qj, label %middle.block2880, label %vector.body2875, !llvm.loop !86

middle.block2880:                                 ; preds = %vector.body2875
  %cmp.n2881 = icmp eq i64 %i.qb, %n.vec2874
  br i1 %cmp.n2881, label %bary_2comp.exit721.preheader, label %.lr.ph26.i716.preheader3317

.lr.ph26.i716.preheader3317:                      ; preds = %.lr.ph26.i716.preheader, %middle.block2880
  %.125.i717.in.ph = phi i64 [ %.023.i712, %.lr.ph26.i716.preheader ], [ %i.qc, %middle.block2880 ]
  br label %.lr.ph26.i716

.lr.ph26.i716:                                    ; preds = %.lr.ph26.i716.preheader3317, %.lr.ph26.i716
  %.125.i717.in = phi i64 [ %.125.i717, %.lr.ph26.i716 ], [ %.125.i717.in.ph, %.lr.ph26.i716.preheader3317 ]
  %.125.i717 = add nuw i64 %.125.i717.in, 1       ; 3 uses
  %i.qk = getelementptr [4 x i8], ptr %i.ab, i64 %.125.i717 ; 2 uses
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !7
  %i.qm = xor i32 %i.ql, -1
  store i32 %i.qm, ptr %i.qk, align 4, !tbaa !7
  %exitcond31.not.i719 = icmp eq i64 %.125.i717, %i.g
  br i1 %exitcond31.not.i719, label %bary_2comp.exit721.preheader, label %.lr.ph26.i716, !llvm.loop !87

bary_2comp.exit721.preheader:                     ; preds = %bb.u, %.lr.ph26.i716, %middle.block2880, %bb.v
  %xtraiter3363 = and i64 %i.h, 3                 ; 3 uses
  %i.qn = icmp ult i64 %i.f, 9
  br i1 %i.qn, label %bary_2comp.exit721.epil.preheader, label %bary_2comp.exit721.preheader.new

bary_2comp.exit721.preheader.new:                 ; preds = %bary_2comp.exit721.preheader
  %unroll_iter3366 = and i64 %i.h, 9223372036854775804
  br label %bary_2comp.exit721

bary_2comp.exit721:                               ; preds = %bary_2comp.exit721, %bary_2comp.exit721.preheader.new
  %.015.i = phi i32 [ 0, %bary_2comp.exit721.preheader.new ], [ %i.rb, %bary_2comp.exit721 ]
  %.01013.i = phi ptr [ %i.ab, %bary_2comp.exit721.preheader.new ], [ %i.qy, %bary_2comp.exit721 ] ; 6 uses
  %niter3367 = phi i64 [ 0, %bary_2comp.exit721.preheader.new ], [ %niter3367.next.3, %bary_2comp.exit721 ]
  %i.qo = getelementptr i8, ptr %.01013.i, i64 4  ; 2 uses
  %i.qp = load i32, ptr %.01013.i, align 4, !tbaa !7 ; 2 uses
  %i.qq = shl i32 %i.qp, 1
  %i.qr = or disjoint i32 %i.qq, %.015.i
  store i32 %i.qr, ptr %.01013.i, align 4, !tbaa !7
  %i.qs = getelementptr i8, ptr %.01013.i, i64 8  ; 2 uses
  %i.qt = load i32, ptr %i.qo, align 4, !tbaa !7  ; 2 uses
  %i.qu = call i32 @llvm.fshl.i32(i32 %i.qt, i32 %i.qp, i32 1)
  store i32 %i.qu, ptr %i.qo, align 4, !tbaa !7
  %i.qv = getelementptr i8, ptr %.01013.i, i64 12 ; 2 uses
  %i.qw = load i32, ptr %i.qs, align 4, !tbaa !7  ; 2 uses
  %i.qx = call i32 @llvm.fshl.i32(i32 %i.qw, i32 %i.qt, i32 1)
  store i32 %i.qx, ptr %i.qs, align 4, !tbaa !7
  %i.qy = getelementptr i8, ptr %.01013.i, i64 16 ; 2 uses
  %i.qz = load i32, ptr %i.qv, align 4, !tbaa !7  ; 2 uses
  %i.ra = call i32 @llvm.fshl.i32(i32 %i.qz, i32 %i.qw, i32 1)
  store i32 %i.ra, ptr %i.qv, align 4, !tbaa !7
  %i.rb = lshr i32 %i.qz, 31                      ; 2 uses
  %niter3367.next.3 = add i64 %niter3367, 4       ; 2 uses
  %niter3367.ncmp.3 = icmp eq i64 %niter3367.next.3, %unroll_iter3366
  br i1 %niter3367.ncmp.3, label %bary_small_lshift.exit.unr-lcssa, label %bary_2comp.exit721, !llvm.loop !88

bary_small_lshift.exit.unr-lcssa:                 ; preds = %bary_2comp.exit721
  %lcmp.mod3364.not = icmp eq i64 %xtraiter3363, 0
  br i1 %lcmp.mod3364.not, label %bary_small_lshift.exit, label %bary_2comp.exit721.epil.preheader

bary_2comp.exit721.epil.preheader:                ; preds = %bary_small_lshift.exit.unr-lcssa, %bary_2comp.exit721.preheader
  %.015.i.epil.init = phi i32 [ 0, %bary_2comp.exit721.preheader ], [ %i.rb, %bary_small_lshift.exit.unr-lcssa ]
  %.01013.i.epil.init = phi ptr [ %i.ab, %bary_2comp.exit721.preheader ], [ %i.qy, %bary_small_lshift.exit.unr-lcssa ]
  %lcmp.mod3365 = icmp ne i64 %xtraiter3363, 0
  call void @llvm.assume(i1 %lcmp.mod3365)
  br label %bary_2comp.exit721.epil

bary_2comp.exit721.epil:                          ; preds = %bary_2comp.exit721.epil, %bary_2comp.exit721.epil.preheader
  %.015.i.epil = phi i32 [ %i.rg, %bary_2comp.exit721.epil ], [ %.015.i.epil.init, %bary_2comp.exit721.epil.preheader ]
  %.01013.i.epil = phi ptr [ %i.rc, %bary_2comp.exit721.epil ], [ %.01013.i.epil.init, %bary_2comp.exit721.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bary_2comp.exit721.epil ], [ 0, %bary_2comp.exit721.epil.preheader ]
  %i.rc = getelementptr i8, ptr %.01013.i.epil, i64 4
  %i.rd = load i32, ptr %.01013.i.epil, align 4, !tbaa !7 ; 2 uses
  %i.re = shl i32 %i.rd, 1
  %i.rf = or disjoint i32 %i.re, %.015.i.epil
  store i32 %i.rf, ptr %.01013.i.epil, align 4, !tbaa !7
  %i.rg = lshr i32 %i.rd, 31
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3363
  br i1 %epil.iter.cmp.not, label %bary_small_lshift.exit, label %bary_2comp.exit721.epil, !llvm.loop !89

bary_small_lshift.exit:                           ; preds = %bary_2comp.exit721.epil, %bary_small_lshift.exit.unr-lcssa
  br i1 %.not97.i.i, label %bary_add.exit759, label %.lr.ph.i.i730.preheader

.lr.ph.i.i730.preheader:                          ; preds = %bary_small_lshift.exit
  %xtraiter3368 = and i64 %i.g, 1
  %.off3603 = add i64 %5, -1
  %i.rh = icmp ult i64 %.off3603, 3
  br i1 %i.rh, label %.lr.ph.i.i730.epil.preheader, label %.lr.ph.i.i730.preheader.new

.lr.ph.i.i730.preheader.new:                      ; preds = %.lr.ph.i.i730.preheader
  %unroll_iter3373 = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i.i730

.preheader72.i.i734.unr-lcssa:                    ; preds = %.lr.ph.i.i730
  %lcmp.mod3370.not = icmp eq i64 %xtraiter3368, 0
  br i1 %lcmp.mod3370.not, label %.preheader72.i.i734, label %.lr.ph.i.i730.epil.preheader

.lr.ph.i.i730.epil.preheader:                     ; preds = %.preheader72.i.i734.unr-lcssa, %.lr.ph.i.i730.preheader
  %.05779.i.i731.epil.init = phi i64 [ 0, %.lr.ph.i.i730.preheader ], [ %i.so, %.preheader72.i.i734.unr-lcssa ] ; 2 uses
  %.05878.i.i732.epil.init = phi i64 [ 0, %.lr.ph.i.i730.preheader ], [ %i.sn, %.preheader72.i.i734.unr-lcssa ]
  %lcmp.mod3372 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod3372)
  %i.ri = getelementptr [4 x i8], ptr %2, i64 %.05779.i.i731.epil.init
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !7
end_hunk_1
