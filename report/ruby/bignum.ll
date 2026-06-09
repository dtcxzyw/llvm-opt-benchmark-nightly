inline.NumInlined: 999
inline.NumDeleted: 129
begin_hunk_0_@bary_mul_karatsuba:bb.a
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !7
  %i.agb = zext i32 %i.aga to i64
  %i.agc = mul nuw i64 %i.agb, %i.aey
  %i.agd = add nuw i64 %i.agc, %.132.i429         ; 2 uses
  %.not.i428.1 = icmp eq i64 %i.agd, 0
  br i1 %.not.i428.1, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i425.1
  %i.age = getelementptr [4 x i8], ptr %i.aet, i64 %i.afy ; 2 uses
  %i.agf = load i32, ptr %i.age, align 4, !tbaa !7
  %i.agg = zext i32 %i.agf to i64
  %i.agh = add nuw i64 %i.agd, %i.agg             ; 2 uses
  %i.agi = trunc i64 %i.agh to i32
  store i32 %i.agi, ptr %i.age, align 4, !tbaa !7
  %i.agj = lshr i64 %i.agh, 32
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.lr.ph.i425.1
  %.132.i429.1 = phi i64 [ %i.agj, %bb.ba ], [ 0, %.lr.ph.i425.1 ] ; 3 uses
  %i.agk = add nuw i64 %.03036.i426, 2            ; 2 uses
  %niter886.next.1 = add i64 %niter886, 2         ; 2 uses
  %niter886.ncmp.1 = icmp eq i64 %niter886.next.1, %unroll_iter885
  br i1 %niter886.ncmp.1, label %.preheader.i431.unr-lcssa, label %.lr.ph.i425, !llvm.loop !16

.lr.ph41.i433:                                    ; preds = %.preheader.i431, %.lr.ph41.i433
  %.140.i434 = phi i64 [ %i.agr, %.lr.ph41.i433 ], [ %.0, %.preheader.i431 ] ; 2 uses
  %.239.i435 = phi i64 [ %i.agq, %.lr.ph41.i433 ], [ %.132.i429.lcssa, %.preheader.i431 ]
  %i.agl = getelementptr [4 x i8], ptr %i.aet, i64 %.140.i434 ; 2 uses
  %i.agm = load i32, ptr %i.agl, align 4, !tbaa !7
  %i.agn = zext i32 %i.agm to i64
  %i.ago = add nuw nsw i64 %.239.i435, %i.agn     ; 2 uses
  %i.agp = trunc i64 %i.ago to i32
  store i32 %i.agp, ptr %i.agl, align 4, !tbaa !7
  %i.agq = lshr i64 %i.ago, 32                    ; 2 uses
  %i.agr = add nuw i64 %.140.i434, 1              ; 2 uses
  %i.ags = icmp uge i64 %i.agr, %i.aeu
  %i.agt = icmp eq i64 %i.agq, 0
  %or.cond.i436 = select i1 %i.ags, i1 true, i1 %i.agt
  br i1 %or.cond.i436, label %bary_muladd_1xN.exit423, label %.lr.ph41.i433, !llvm.loop !18

bary_muladd_1xN.exit423:                          ; preds = %.lr.ph41.i416, %.lr.ph41.i433, %bb.ax, %.preheader.i431, %.preheader.i414, %bb.aw, %bary_muladd_1xN.exit, %bb.av
  %i.agu = load i64, ptr %i.aa, align 8, !tbaa !11
  %.not217 = icmp eq i64 %i.agu, 0
  br i1 %.not217, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bary_muladd_1xN.exit423
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.aa) #23
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bary_muladd_1xN.exit423
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
  %.0533 = phi i64 [ %7, %bb.a ], [ %i.r, %rb_alloc_tmp_buffer2.exit ], [ %i.r, %bb.c ]
  %.0532 = phi ptr [ %6, %bb.a ], [ %i.z, %rb_alloc_tmp_buffer2.exit ], [ %i.u, %bb.c ] ; 33 uses
  %.05322856 = ptrtoaddr ptr %.0532 to i64        ; 9 uses
  %.idx1993 = shl i64 %i.h, 2                     ; 4 uses
  %i.aa = getelementptr i8, ptr %.0532, i64 %.idx1993 ; 23 uses
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
  %i.ao = sub i64 %.0533, %i.o                    ; 5 uses
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
  %.0546 = phi ptr [ %i.aw, %bb.g ], [ %i.at, %bb.f ] ; 17 uses
  %.0543 = phi i64 [ %i.au, %bb.g ], [ %i.ar, %bb.f ] ; 23 uses
  %.0542 = phi ptr [ %i.av, %bb.g ], [ %i.as, %bb.f ] ; 6 uses
  %.0537 = phi ptr [ %4, %bb.g ], [ %2, %bb.f ]   ; 9 uses
  %.05462972 = ptrtoaddr ptr %.0546 to i64
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
  %lcmp.mod3365 = trunc i64 %.064.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod3365)
  %i.az = getelementptr [4 x i8], ptr %.061.i.i, i64 %.05779.i.i.epil.init
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i.epil.init
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !7
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %.05878.i.i.epil.init, %i.bb
  %i.bg = add nuw nsw i64 %i.bf, %i.be            ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = getelementptr [4 x i8], ptr %.0532, i64 %.05779.i.i.epil.init
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
  %i.bu = getelementptr [4 x i8], ptr %.0532, i64 %.05779.i.i
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
  %i.cg = getelementptr [4 x i8], ptr %.0532, i64 %i.bw
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
  %.1.lcssa.i.i1944 = phi i64 [ %.062.i.i, %.preheader70.i.i ], [ %.064.i.i, %.preheader72.i.i ] ; 4 uses
  %.159.lcssa.i.i1943 = phi i64 [ %i.ct, %.preheader70.i.i ], [ %.058.lcssa.i.i, %.preheader72.i.i ]
  %i.cj = icmp eq i64 %.159.lcssa.i.i1943, 0
  br i1 %i.cj, label %.loopexit71.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph88.preheader.i.i
  %i.ck = getelementptr [4 x i8], ptr %.0532, i64 %.1.lcssa.i.i1944
  store i32 1, ptr %i.ck, align 4, !tbaa !7
  %i.cl = add nuw nsw i64 %.1.lcssa.i.i1944, 1
  %exitcond103.peel.not.i.i = icmp eq i64 %.1.lcssa.i.i1944, %i.g
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
  %i.cs = getelementptr [4 x i8], ptr %.0532, i64 %.182.i.i
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !7
  %i.ct = lshr i64 %i.cq, 32                      ; 2 uses
  %i.cu = add i64 %.182.i.i, 1                    ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %i.cu, %.062.i.i
  br i1 %exitcond102.not.i.i, label %.preheader70.i.i, label %.lr.ph83.i.i, !llvm.loop !36

.loopexit71.i.i:                                  ; preds = %.lr.ph83.i.i, %bb.k, %.lr.ph88.preheader.i.i
  %.3.i.i = phi i64 [ %i.cl, %bb.k ], [ %.1.lcssa.i.i1944, %.lr.ph88.preheader.i.i ], [ %.182.i.i, %.lr.ph83.i.i ] ; 6 uses
end_hunk_0
begin_hunk_1_@bary_mul_toom3:bb.a
  %xtraiter3380 = and i64 %i.ln, 1
  %i.lo = icmp eq i64 %i.ln, 1
  br i1 %i.lo, label %.lr.ph.i.i682.epil.preheader, label %.lr.ph.i.i682.preheader.new

.lr.ph.i.i682.preheader.new:                      ; preds = %.lr.ph.i.i682.preheader
  %unroll_iter3384 = and i64 %i.ln, 9223372036854775806
  br label %.lr.ph.i.i682

.lr.ph.i.i682:                                    ; preds = %.lr.ph.i.i682, %.lr.ph.i.i682.preheader.new
  %.06278.i.i683 = phi i64 [ 0, %.lr.ph.i.i682.preheader.new ], [ %i.mm, %.lr.ph.i.i682 ] ; 5 uses
  %.06377.i.i684 = phi i64 [ 0, %.lr.ph.i.i682.preheader.new ], [ %i.ml, %.lr.ph.i.i682 ]
  %niter3385 = phi i64 [ 0, %.lr.ph.i.i682.preheader.new ], [ %niter3385.next.1, %.lr.ph.i.i682 ]
  %i.lp = getelementptr [4 x i8], ptr %i.at, i64 %.06278.i.i683
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !7
  %i.lr = zext i32 %i.lq to i64
  %i.ls = getelementptr [4 x i8], ptr %i.aa, i64 %.06278.i.i683
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !7
  %i.lu = zext i32 %i.lt to i64
  %i.lv = sub nsw i64 %i.lr, %i.lu
  %i.lw = add nsw i64 %i.lv, %.06377.i.i684       ; 2 uses
  %i.lx = trunc i64 %i.lw to i32
  %i.ly = getelementptr [4 x i8], ptr %i.ab, i64 %.06278.i.i683
  store i32 %i.lx, ptr %i.ly, align 4, !tbaa !7
  %i.lz = ashr i64 %i.lw, 32
  %i.ma = or disjoint i64 %.06278.i.i683, 1       ; 3 uses
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
  %i.mm = add nuw i64 %.06278.i.i683, 2           ; 2 uses
  %niter3385.next.1 = add i64 %niter3385, 2       ; 2 uses
  %niter3385.ncmp.1 = icmp eq i64 %niter3385.next.1, %unroll_iter3384
  br i1 %niter3385.ncmp.1, label %._crit_edge.i.i686.loopexit.unr-lcssa, label %.lr.ph.i.i682, !llvm.loop !48

._crit_edge.i.i686.loopexit.unr-lcssa:            ; preds = %.lr.ph.i.i682
  %lcmp.mod3381.not = icmp eq i64 %xtraiter3380, 0
  br i1 %lcmp.mod3381.not, label %._crit_edge.i.i686, label %.lr.ph.i.i682.epil.preheader

.lr.ph.i.i682.epil.preheader:                     ; preds = %._crit_edge.i.i686.loopexit.unr-lcssa, %.lr.ph.i.i682.preheader
  %.06278.i.i683.epil.init = phi i64 [ 0, %.lr.ph.i.i682.preheader ], [ %i.mm, %._crit_edge.i.i686.loopexit.unr-lcssa ] ; 3 uses
  %.06377.i.i684.epil.init = phi i64 [ 0, %.lr.ph.i.i682.preheader ], [ %i.ml, %._crit_edge.i.i686.loopexit.unr-lcssa ]
  %lcmp.mod3383 = trunc i64 %i.ln to i1
  call void @llvm.assume(i1 %lcmp.mod3383)
  %i.mn = getelementptr [4 x i8], ptr %i.at, i64 %.06278.i.i683.epil.init
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !7
  %i.mp = zext i32 %i.mo to i64
  %i.mq = getelementptr [4 x i8], ptr %i.aa, i64 %.06278.i.i683.epil.init
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !7
  %i.ms = zext i32 %i.mr to i64
  %i.mt = sub nsw i64 %i.mp, %i.ms
  %i.mu = add nsw i64 %i.mt, %.06377.i.i684.epil.init ; 2 uses
  %i.mv = trunc i64 %i.mu to i32
  %i.mw = getelementptr [4 x i8], ptr %i.ab, i64 %.06278.i.i683.epil.init
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !7
  %i.mx = ashr i64 %i.mu, 32
  br label %._crit_edge.i.i686

._crit_edge.i.i686:                               ; preds = %.lr.ph.i.i682.epil.preheader, %._crit_edge.i.i686.loopexit.unr-lcssa, %bb.t
  %.063.lcssa.i.i687 = phi i64 [ 0, %bb.t ], [ %i.ml, %._crit_edge.i.i686.loopexit.unr-lcssa ], [ %i.mx, %.lr.ph.i.i682.epil.preheader ] ; 4 uses
  %.not.i.i688.not = icmp ult i64 %i.g, %i.ar
  br i1 %.not.i.i688.not, label %.preheader72.i.i689, label %.lr.ph87.i.i.preheader

.lr.ph87.i.i.preheader:                           ; preds = %._crit_edge.i.i686
  %i.my = add nuw nsw i64 %i.g, 1
  %i.mz = sub nuw nsw i64 %i.my, %i.ln
  %i.na = sub nuw nsw i64 %i.g, %i.ln
  %xtraiter3386 = and i64 %i.mz, 3                ; 2 uses
  %lcmp.mod3387.not = icmp eq i64 %xtraiter3386, 0
  br i1 %lcmp.mod3387.not, label %.lr.ph87.i.i.prol.loopexit, label %.lr.ph87.i.i.prol

.lr.ph87.i.i.prol:                                ; preds = %.lr.ph87.i.i.preheader, %.lr.ph87.i.i.prol
  %.286.i.i.prol = phi i64 [ %i.ni, %.lr.ph87.i.i.prol ], [ %i.ln, %.lr.ph87.i.i.preheader ] ; 3 uses
  %.26585.i.i.prol = phi i64 [ %i.nh, %.lr.ph87.i.i.prol ], [ %.063.lcssa.i.i687, %.lr.ph87.i.i.preheader ]
  %prol.iter3388 = phi i64 [ %prol.iter3388.next, %.lr.ph87.i.i.prol ], [ 0, %.lr.ph87.i.i.preheader ]
  %i.nb = getelementptr [4 x i8], ptr %i.aa, i64 %.286.i.i.prol
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !7
  %i.nd = zext i32 %i.nc to i64
  %i.ne = sub nsw i64 %.26585.i.i.prol, %i.nd     ; 2 uses
  %i.nf = trunc i64 %i.ne to i32
  %i.ng = getelementptr [4 x i8], ptr %i.ab, i64 %.286.i.i.prol
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !7
  %i.nh = ashr i64 %i.ne, 32                      ; 3 uses
  %i.ni = add nuw i64 %.286.i.i.prol, 1           ; 2 uses
  %prol.iter3388.next = add i64 %prol.iter3388, 1 ; 2 uses
  %prol.iter3388.cmp.not = icmp eq i64 %prol.iter3388.next, %xtraiter3386
  br i1 %prol.iter3388.cmp.not, label %.lr.ph87.i.i.prol.loopexit, label %.lr.ph87.i.i.prol, !llvm.loop !83

.lr.ph87.i.i.prol.loopexit:                       ; preds = %.lr.ph87.i.i.prol, %.lr.ph87.i.i.preheader
  %.lcssa3351.unr = phi i64 [ poison, %.lr.ph87.i.i.preheader ], [ %i.nh, %.lr.ph87.i.i.prol ]
  %.286.i.i.unr = phi i64 [ %i.ln, %.lr.ph87.i.i.preheader ], [ %i.ni, %.lr.ph87.i.i.prol ]
  %.26585.i.i.unr = phi i64 [ %.063.lcssa.i.i687, %.lr.ph87.i.i.preheader ], [ %i.nh, %.lr.ph87.i.i.prol ]
  %i.nj = icmp samesign ult i64 %i.na, 3
  br i1 %i.nj, label %.loopexit71.i.i690, label %.lr.ph87.i.i

.preheader72.i.i689:                              ; preds = %._crit_edge.i.i686
  %i.nk = icmp ult i64 %i.h, %i.ar
  br i1 %i.nk, label %.lr.ph82.i.i707, label %.loopexit71.i.i690

.lr.ph82.i.i707:                                  ; preds = %.preheader72.i.i689, %bb.u
  %.181.i.i708 = phi i64 [ %i.nt, %bb.u ], [ %i.ln, %.preheader72.i.i689 ] ; 4 uses
  %.16480.i.i709 = phi i64 [ %i.ns, %bb.u ], [ %.063.lcssa.i.i687, %.preheader72.i.i689 ]
  %i.nl = icmp eq i64 %.16480.i.i709, 0
  br i1 %i.nl, label %.loopexit74.i.i696, label %bb.u

bb.u:                                             ; preds = %.lr.ph82.i.i707
  %i.nm = getelementptr [4 x i8], ptr %i.at, i64 %.181.i.i708
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !7
  %i.no = zext i32 %i.nn to i64
  %i.np = add nsw i64 %i.no, -1                   ; 2 uses
  %i.nq = trunc i64 %i.np to i32
  %i.nr = getelementptr [4 x i8], ptr %i.ab, i64 %.181.i.i708
  store i32 %i.nq, ptr %i.nr, align 4, !tbaa !7
  %i.ns = ashr i64 %i.np, 32                      ; 2 uses
  %i.nt = add i64 %.181.i.i708, 1                 ; 2 uses
  %exitcond107.not.i.i710 = icmp eq i64 %i.nt, %i.ar
  br i1 %exitcond107.not.i.i710, label %.loopexit71.i.i690, label %.lr.ph82.i.i707, !llvm.loop !50

.lr.ph87.i.i:                                     ; preds = %.lr.ph87.i.i.prol.loopexit, %.lr.ph87.i.i
  %.286.i.i = phi i64 [ %i.oz, %.lr.ph87.i.i ], [ %.286.i.i.unr, %.lr.ph87.i.i.prol.loopexit ] ; 6 uses
  %.26585.i.i = phi i64 [ %i.oy, %.lr.ph87.i.i ], [ %.26585.i.i.unr, %.lr.ph87.i.i.prol.loopexit ]
  %i.nu = getelementptr [4 x i8], ptr %i.aa, i64 %.286.i.i
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !7
  %i.nw = zext i32 %i.nv to i64
  %i.nx = sub nsw i64 %.26585.i.i, %i.nw          ; 2 uses
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
  br i1 %exitcond108.not.i.i.3, label %.loopexit71.i.i690, label %.lr.ph87.i.i, !llvm.loop !51

.loopexit71.i.i690:                               ; preds = %.lr.ph87.i.i.prol.loopexit, %.lr.ph87.i.i, %bb.u, %.preheader72.i.i689
  %.366.i.i = phi i64 [ %.063.lcssa.i.i687, %.preheader72.i.i689 ], [ %i.ns, %bb.u ], [ %.lcssa3351.unr, %.lr.ph87.i.i.prol.loopexit ], [ %i.oy, %.lr.ph87.i.i ]
  %.3.i.i691 = phi i64 [ %i.ln, %.preheader72.i.i689 ], [ %i.ar, %bb.u ], [ %i.h, %.lr.ph87.i.i ], [ %i.h, %.lr.ph87.i.i.prol.loopexit ] ; 4 uses
  %i.pa = icmp eq i64 %.366.i.i, 0
  br i1 %i.pa, label %.loopexit74.i.i696, label %.preheader68.i.i692

.preheader68.i.i692:                              ; preds = %.loopexit71.i.i690
  %.not1994 = icmp ugt i64 %.3.i.i691, %i.g
  br i1 %.not1994, label %.lr.ph.i712.preheader, label %.lr.ph91.preheader.i.i694

.lr.ph.i712.preheader:                            ; preds = %.lr.ph91.preheader.i.i694, %.preheader68.i.i692
  br label %.lr.ph.i712

.lr.ph91.preheader.i.i694:                        ; preds = %.preheader68.i.i692
  %i.pb = shl i64 %.3.i.i691, 2
  %scevgep.i.i695 = getelementptr i8, ptr %i.ab, i64 %i.pb
  %i.pc = sub nuw nsw i64 %i.h, %.3.i.i691
  %i.pd = shl i64 %i.pc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i695, i8 -1, i64 %i.pd, i1 false), !tbaa !7
  br label %.lr.ph.i712.preheader

.loopexit74.i.i696:                               ; preds = %.lr.ph82.i.i707, %.loopexit71.i.i690
  %.5.i.i697 = phi i64 [ %.3.i.i691, %.loopexit71.i.i690 ], [ %.181.i.i708, %.lr.ph82.i.i707 ] ; 7 uses
  %i.pe = icmp eq ptr %i.at, %i.ab
  %i.pf = icmp eq i64 %i.ar, %i.h
  %or.cond.i.i698 = and i1 %i.pf, %i.pe
  br i1 %or.cond.i.i698, label %.critedge597, label %.preheader67.i.i699

.preheader67.i.i699:                              ; preds = %.loopexit74.i.i696
  %i.pg = icmp ult i64 %.5.i.i697, %i.ar
  br i1 %i.pg, label %.lr.ph93.i.i704.preheader, label %.preheader.i.i700

.lr.ph93.i.i704.preheader:                        ; preds = %.preheader67.i.i699
  %i.ph = add i64 %.5.i.i697, %i.j
  %i.pi = sub i64 %3, %i.ph                       ; 3 uses
  %min.iters.check2888 = icmp ult i64 %i.pi, 8
  br i1 %min.iters.check2888, label %.lr.ph93.i.i704.preheader3341, label %vector.memcheck2885

vector.memcheck2885:                              ; preds = %.lr.ph93.i.i704.preheader
  %i.pj = add i64 %.05322856, 8
  %i.pk = sub i64 %i.pj, %i.a
  %diff.check2886 = icmp ult i64 %i.pk, 32
  br i1 %diff.check2886, label %.lr.ph93.i.i704.preheader3341, label %vector.ph2889

vector.ph2889:                                    ; preds = %vector.memcheck2885
  %n.vec2891 = and i64 %i.pi, -8                  ; 3 uses
  %i.pl = add i64 %.5.i.i697, %n.vec2891
  br label %vector.body2892

vector.body2892:                                  ; preds = %vector.body2892, %vector.ph2889
  %index2893 = phi i64 [ 0, %vector.ph2889 ], [ %index.next2896, %vector.body2892 ] ; 2 uses
  %i.pm = add i64 %.5.i.i697, %index2893          ; 2 uses
  %i.pn = getelementptr [4 x i8], ptr %i.at, i64 %i.pm ; 2 uses
  %i.po = getelementptr i8, ptr %i.pn, i64 16
  %wide.load2894 = load <4 x i32>, ptr %i.pn, align 4, !tbaa !7
  %wide.load2895 = load <4 x i32>, ptr %i.po, align 4, !tbaa !7
  %i.pp = getelementptr [4 x i8], ptr %i.ab, i64 %i.pm ; 2 uses
  %i.pq = getelementptr i8, ptr %i.pp, i64 16
  store <4 x i32> %wide.load2894, ptr %i.pp, align 4, !tbaa !7
  store <4 x i32> %wide.load2895, ptr %i.pq, align 4, !tbaa !7
  %index.next2896 = add nuw i64 %index2893, 8     ; 2 uses
  %i.pr = icmp eq i64 %index.next2896, %n.vec2891
  br i1 %i.pr, label %middle.block2897, label %vector.body2892, !llvm.loop !84

middle.block2897:                                 ; preds = %vector.body2892
  %cmp.n2898 = icmp eq i64 %i.pi, %n.vec2891
  br i1 %cmp.n2898, label %.preheader.i.i700, label %.lr.ph93.i.i704.preheader3341

.lr.ph93.i.i704.preheader3341:                    ; preds = %vector.memcheck2885, %.lr.ph93.i.i704.preheader, %middle.block2897
  %.692.i.i705.ph = phi i64 [ %.5.i.i697, %vector.memcheck2885 ], [ %.5.i.i697, %.lr.ph93.i.i704.preheader ], [ %i.pl, %middle.block2897 ]
  br label %.lr.ph93.i.i704

.preheader.i.i700:                                ; preds = %.lr.ph93.i.i704, %middle.block2897, %.preheader67.i.i699
  %.6.lcssa.i.i701 = phi i64 [ %.5.i.i697, %.preheader67.i.i699 ], [ %i.ar, %middle.block2897 ], [ %i.ar, %.lr.ph93.i.i704 ] ; 2 uses
  %.not1996 = icmp ugt i64 %.6.lcssa.i.i701, %i.g
  br i1 %.not1996, label %.critedge597, label %.critedge597.sink.split

.lr.ph93.i.i704:                                  ; preds = %.lr.ph93.i.i704.preheader3341, %.lr.ph93.i.i704
  %.692.i.i705 = phi i64 [ %i.pv, %.lr.ph93.i.i704 ], [ %.692.i.i705.ph, %.lr.ph93.i.i704.preheader3341 ] ; 3 uses
  %i.ps = getelementptr [4 x i8], ptr %i.at, i64 %.692.i.i705
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !7
  %i.pu = getelementptr [4 x i8], ptr %i.ab, i64 %.692.i.i705
  store i32 %i.pt, ptr %i.pu, align 4, !tbaa !7
  %i.pv = add nuw i64 %.692.i.i705, 1             ; 2 uses
  %exitcond111.not.i.i706 = icmp eq i64 %i.pv, %i.ar
  br i1 %exitcond111.not.i.i706, label %.preheader.i.i700, label %.lr.ph93.i.i704, !llvm.loop !85

.lr.ph.i712:                                      ; preds = %.lr.ph.i712.preheader, %bb.v
  %.023.i713 = phi i64 [ %i.py, %bb.v ], [ 0, %.lr.ph.i712.preheader ] ; 9 uses
  %i.pw = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i713
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !7  ; 2 uses
  %.not.i714 = icmp eq i32 %i.px, 0
  br i1 %.not.i714, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i712
  %i.py = add nuw nsw i64 %.023.i713, 1
  %exitcond.not.i721 = icmp eq i64 %.023.i713, %i.g
  br i1 %exitcond.not.i721, label %bary_2comp.exit722.preheader, label %.lr.ph.i712, !llvm.loop !55

bb.w:                                             ; preds = %.lr.ph.i712
  %i.pz = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i713
  %i.qa = sub i32 0, %i.px
  store i32 %i.qa, ptr %i.pz, align 4, !tbaa !7
  %.not1995.not = icmp samesign ult i64 %.023.i713, %i.g
  br i1 %.not1995.not, label %.lr.ph26.i717.preheader, label %bary_2comp.exit722.preheader

.lr.ph26.i717.preheader:                          ; preds = %bb.w
  %i.qb = sub nuw nsw i64 %i.g, %.023.i713        ; 3 uses
  %min.iters.check2873 = icmp samesign ult i64 %i.qb, 8
  br i1 %min.iters.check2873, label %.lr.ph26.i717.preheader3343, label %vector.ph2874

vector.ph2874:                                    ; preds = %.lr.ph26.i717.preheader
  %n.vec2876 = and i64 %i.qb, 9223372036854775800 ; 3 uses
  %i.qc = add nuw i64 %.023.i713, %n.vec2876
  %i.qd = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i713
  br label %vector.body2877

vector.body2877:                                  ; preds = %vector.body2877, %vector.ph2874
  %index2878 = phi i64 [ 0, %vector.ph2874 ], [ %index.next2881, %vector.body2877 ] ; 2 uses
  %i.qe = getelementptr [4 x i8], ptr %i.qd, i64 %index2878 ; 2 uses
  %i.qf = getelementptr i8, ptr %i.qe, i64 4      ; 2 uses
  %i.qg = getelementptr i8, ptr %i.qe, i64 20     ; 2 uses
  %wide.load2879 = load <4 x i32>, ptr %i.qf, align 4, !tbaa !7
  %wide.load2880 = load <4 x i32>, ptr %i.qg, align 4, !tbaa !7
  %i.qh = xor <4 x i32> %wide.load2879, splat (i32 -1)
  %i.qi = xor <4 x i32> %wide.load2880, splat (i32 -1)
  store <4 x i32> %i.qh, ptr %i.qf, align 4, !tbaa !7
  store <4 x i32> %i.qi, ptr %i.qg, align 4, !tbaa !7
  %index.next2881 = add nuw i64 %index2878, 8     ; 2 uses
  %i.qj = icmp eq i64 %index.next2881, %n.vec2876
  br i1 %i.qj, label %middle.block2882, label %vector.body2877, !llvm.loop !86

middle.block2882:                                 ; preds = %vector.body2877
  %cmp.n2883 = icmp eq i64 %i.qb, %n.vec2876
  br i1 %cmp.n2883, label %bary_2comp.exit722.preheader, label %.lr.ph26.i717.preheader3343

.lr.ph26.i717.preheader3343:                      ; preds = %.lr.ph26.i717.preheader, %middle.block2882
  %.125.i718.in.ph = phi i64 [ %.023.i713, %.lr.ph26.i717.preheader ], [ %i.qc, %middle.block2882 ]
  br label %.lr.ph26.i717

.lr.ph26.i717:                                    ; preds = %.lr.ph26.i717.preheader3343, %.lr.ph26.i717
  %.125.i718.in = phi i64 [ %.125.i718, %.lr.ph26.i717 ], [ %.125.i718.in.ph, %.lr.ph26.i717.preheader3343 ]
  %.125.i718 = add nuw i64 %.125.i718.in, 1       ; 3 uses
  %i.qk = getelementptr [4 x i8], ptr %i.ab, i64 %.125.i718 ; 2 uses
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !7
  %i.qm = xor i32 %i.ql, -1
  store i32 %i.qm, ptr %i.qk, align 4, !tbaa !7
  %exitcond31.not.i720 = icmp eq i64 %.125.i718, %i.g
  br i1 %exitcond31.not.i720, label %bary_2comp.exit722.preheader, label %.lr.ph26.i717, !llvm.loop !87

bary_2comp.exit722.preheader:                     ; preds = %bb.v, %.lr.ph26.i717, %middle.block2882, %bb.w
  %xtraiter3389 = and i64 %i.h, 3                 ; 3 uses
  %i.qn = icmp ult i64 %i.f, 9
  br i1 %i.qn, label %bary_2comp.exit722.epil.preheader, label %bary_2comp.exit722.preheader.new

bary_2comp.exit722.preheader.new:                 ; preds = %bary_2comp.exit722.preheader
  %unroll_iter3392 = and i64 %i.h, 9223372036854775804
  br label %bary_2comp.exit722

bary_2comp.exit722:                               ; preds = %bary_2comp.exit722, %bary_2comp.exit722.preheader.new
  %.015.i = phi i32 [ 0, %bary_2comp.exit722.preheader.new ], [ %i.rb, %bary_2comp.exit722 ]
  %.01013.i = phi ptr [ %i.ab, %bary_2comp.exit722.preheader.new ], [ %i.qy, %bary_2comp.exit722 ] ; 6 uses
  %niter3393 = phi i64 [ 0, %bary_2comp.exit722.preheader.new ], [ %niter3393.next.3, %bary_2comp.exit722 ]
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
  %niter3393.next.3 = add i64 %niter3393, 4       ; 2 uses
  %niter3393.ncmp.3 = icmp eq i64 %niter3393.next.3, %unroll_iter3392
  br i1 %niter3393.ncmp.3, label %bary_small_lshift.exit.unr-lcssa, label %bary_2comp.exit722, !llvm.loop !88

bary_small_lshift.exit.unr-lcssa:                 ; preds = %bary_2comp.exit722
  %lcmp.mod3390.not = icmp eq i64 %xtraiter3389, 0
  br i1 %lcmp.mod3390.not, label %bary_small_lshift.exit, label %bary_2comp.exit722.epil.preheader

bary_2comp.exit722.epil.preheader:                ; preds = %bary_small_lshift.exit.unr-lcssa, %bary_2comp.exit722.preheader
  %.015.i.epil.init = phi i32 [ 0, %bary_2comp.exit722.preheader ], [ %i.rb, %bary_small_lshift.exit.unr-lcssa ]
  %.01013.i.epil.init = phi ptr [ %i.ab, %bary_2comp.exit722.preheader ], [ %i.qy, %bary_small_lshift.exit.unr-lcssa ]
  %lcmp.mod3391 = icmp ne i64 %xtraiter3389, 0
  call void @llvm.assume(i1 %lcmp.mod3391)
  br label %bary_2comp.exit722.epil

bary_2comp.exit722.epil:                          ; preds = %bary_2comp.exit722.epil, %bary_2comp.exit722.epil.preheader
  %.015.i.epil = phi i32 [ %i.rg, %bary_2comp.exit722.epil ], [ %.015.i.epil.init, %bary_2comp.exit722.epil.preheader ]
  %.01013.i.epil = phi ptr [ %i.rc, %bary_2comp.exit722.epil ], [ %.01013.i.epil.init, %bary_2comp.exit722.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bary_2comp.exit722.epil ], [ 0, %bary_2comp.exit722.epil.preheader ]
  %i.rc = getelementptr i8, ptr %.01013.i.epil, i64 4
  %i.rd = load i32, ptr %.01013.i.epil, align 4, !tbaa !7 ; 2 uses
  %i.re = shl i32 %i.rd, 1
  %i.rf = or disjoint i32 %i.re, %.015.i.epil
  store i32 %i.rf, ptr %.01013.i.epil, align 4, !tbaa !7
  %i.rg = lshr i32 %i.rd, 31
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3389
  br i1 %epil.iter.cmp.not, label %bary_small_lshift.exit, label %bary_2comp.exit722.epil, !llvm.loop !89

bary_small_lshift.exit:                           ; preds = %bary_2comp.exit722.epil, %bary_small_lshift.exit.unr-lcssa
  br i1 %.not97.i.i, label %bary_add.exit760, label %.lr.ph.i.i731.preheader

.lr.ph.i.i731.preheader:                          ; preds = %bary_small_lshift.exit
  %xtraiter3394 = and i64 %i.g, 1
  %.off3625 = add i64 %5, -1
  %i.rh = icmp ult i64 %.off3625, 3
  br i1 %i.rh, label %.lr.ph.i.i731.epil.preheader, label %.lr.ph.i.i731.preheader.new

.lr.ph.i.i731.preheader.new:                      ; preds = %.lr.ph.i.i731.preheader
  %unroll_iter3399 = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i.i731

.preheader72.i.i735.unr-lcssa:                    ; preds = %.lr.ph.i.i731
  %lcmp.mod3396.not = icmp eq i64 %xtraiter3394, 0
  br i1 %lcmp.mod3396.not, label %.preheader72.i.i735, label %.lr.ph.i.i731.epil.preheader

.lr.ph.i.i731.epil.preheader:                     ; preds = %.preheader72.i.i735.unr-lcssa, %.lr.ph.i.i731.preheader
  %.05779.i.i732.epil.init = phi i64 [ 0, %.lr.ph.i.i731.preheader ], [ %i.so, %.preheader72.i.i735.unr-lcssa ] ; 2 uses
  %.05878.i.i733.epil.init = phi i64 [ 0, %.lr.ph.i.i731.preheader ], [ %i.sn, %.preheader72.i.i735.unr-lcssa ]
  %lcmp.mod3398 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod3398)
  %i.ri = getelementptr [4 x i8], ptr %2, i64 %.05779.i.i732.epil.init
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !7
end_hunk_1
begin_hunk_2_@bary_mul_toom3:bb.a
  %i.axd = xor <4 x i32> %wide.load3037, splat (i32 -1)
  store <4 x i32> %i.axc, ptr %i.axa, align 4, !tbaa !7
  store <4 x i32> %i.axd, ptr %i.axb, align 4, !tbaa !7
  %index.next3038 = add nuw i64 %index3035, 8     ; 2 uses
  %i.axe = icmp eq i64 %index.next3038, %n.vec3033
  br i1 %i.axe, label %middle.block3039, label %vector.body3034, !llvm.loop !114

middle.block3039:                                 ; preds = %vector.body3034
  %cmp.n3040 = icmp eq i64 %i.awx, %n.vec3033
  br i1 %cmp.n3040, label %bary_2comp.exit1244, label %.lr.ph26.i1239.preheader3284

.lr.ph26.i1239.preheader3284:                     ; preds = %.lr.ph26.i1239.preheader, %middle.block3039
  %.125.i1240.ph = phi i64 [ %.124.i1237, %.lr.ph26.i1239.preheader ], [ %i.awy, %middle.block3039 ]
  br label %.lr.ph26.i1239

.lr.ph26.i1239:                                   ; preds = %.lr.ph26.i1239.preheader3284, %.lr.ph26.i1239
  %.125.i1240 = phi i64 [ %.1.i1241, %.lr.ph26.i1239 ], [ %.125.i1240.ph, %.lr.ph26.i1239.preheader3284 ] ; 3 uses
  %i.axf = getelementptr [4 x i8], ptr %i.ak, i64 %.125.i1240 ; 2 uses
  %i.axg = load i32, ptr %i.axf, align 4, !tbaa !7
  %i.axh = xor i32 %i.axg, -1
  store i32 %i.axh, ptr %i.axf, align 4, !tbaa !7
  %.1.i1241 = add nuw i64 %.125.i1240, 1
  %exitcond31.not.i1242 = icmp eq i64 %.125.i1240, %i.j
  br i1 %exitcond31.not.i1242, label %bary_2comp.exit1244, label %.lr.ph26.i1239, !llvm.loop !115

.lr.ph.i.i1250:                                   ; preds = %.lr.ph.i.i1250.preheader, %.lr.ph.i.i1250
  %.05779.i.i1251 = phi i64 [ %i.ayf, %.lr.ph.i.i1250 ], [ 0, %.lr.ph.i.i1250.preheader ] ; 5 uses
  %.05878.i.i1252 = phi i64 [ %i.aye, %.lr.ph.i.i1250 ], [ 0, %.lr.ph.i.i1250.preheader ]
  %niter3516 = phi i64 [ %niter3516.next.1, %.lr.ph.i.i1250 ], [ 0, %.lr.ph.i.i1250.preheader ]
  %i.axi = getelementptr [4 x i8], ptr %i.ag, i64 %.05779.i.i1251
  %i.axj = load i32, ptr %i.axi, align 4, !tbaa !7
  %i.axk = zext i32 %i.axj to i64
  %i.axl = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i1251
  %i.axm = load i32, ptr %i.axl, align 4, !tbaa !7
  %i.axn = zext i32 %i.axm to i64
  %i.axo = add nuw nsw i64 %.05878.i.i1252, %i.axk
  %i.axp = add nuw nsw i64 %i.axo, %i.axn         ; 2 uses
  %i.axq = trunc i64 %i.axp to i32
  %i.axr = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1251
  store i32 %i.axq, ptr %i.axr, align 4, !tbaa !7
  %i.axs = lshr i64 %i.axp, 32
  %i.axt = or disjoint i64 %.05779.i.i1251, 1     ; 3 uses
  %i.axu = getelementptr [4 x i8], ptr %i.ag, i64 %i.axt
  %i.axv = load i32, ptr %i.axu, align 4, !tbaa !7
  %i.axw = zext i32 %i.axv to i64
  %i.axx = getelementptr [4 x i8], ptr %i.ah, i64 %i.axt
  %i.axy = load i32, ptr %i.axx, align 4, !tbaa !7
  %i.axz = zext i32 %i.axy to i64
  %i.aya = add nuw nsw i64 %i.axs, %i.axw
  %i.ayb = add nuw nsw i64 %i.aya, %i.axz         ; 2 uses
  %i.ayc = trunc i64 %i.ayb to i32
  %i.ayd = getelementptr [4 x i8], ptr %i.ak, i64 %i.axt
  store i32 %i.ayc, ptr %i.ayd, align 4, !tbaa !7
  %i.aye = lshr i64 %i.ayb, 32                    ; 2 uses
  %i.ayf = add nuw i64 %.05779.i.i1251, 2         ; 2 uses
  %niter3516.next.1 = add i64 %niter3516, 2       ; 2 uses
  %niter3516.ncmp.1 = icmp eq i64 %niter3516.next.1, %i.j
  br i1 %niter3516.ncmp.1, label %.lr.ph.i.i1250.epil, label %.lr.ph.i.i1250, !llvm.loop !34

.lr.ph.i.i1250.epil:                              ; preds = %.lr.ph.i.i1250.preheader, %.lr.ph.i.i1250
  %.05779.i.i1251.epil.init = phi i64 [ 0, %.lr.ph.i.i1250.preheader ], [ %i.ayf, %.lr.ph.i.i1250 ] ; 3 uses
  %.05878.i.i1252.epil.init = phi i64 [ 0, %.lr.ph.i.i1250.preheader ], [ %i.aye, %.lr.ph.i.i1250 ]
  %i.ayg = getelementptr [4 x i8], ptr %i.ag, i64 %.05779.i.i1251.epil.init
  %i.ayh = load i32, ptr %i.ayg, align 4, !tbaa !7
  %i.ayi = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i1251.epil.init
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !7
  %i.ayk = trunc nuw nsw i64 %.05878.i.i1252.epil.init to i32
  %i.ayl = add i32 %i.ayh, %i.ayk
  %i.aym = add i32 %i.ayl, %i.ayj
  %i.ayn = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1251.epil.init
  store i32 %i.aym, ptr %i.ayn, align 4, !tbaa !7
  br label %bary_2comp.exit1244

bary_2comp.exit1244:                              ; preds = %bb.ba, %.lr.ph26.i1239, %.lr.ph.i.i1250.epil, %middle.block3039, %.lr.ph.i.i1199.epil, %bb.bb
  %.not587 = phi i32 [ 0, %.lr.ph.i.i1199.epil ], [ 1, %middle.block3039 ], [ 0, %.lr.ph.i.i1250.epil ], [ 1, %bb.bb ], [ 1, %.lr.ph26.i1239 ], [ 1, %bb.ba ] ; 4 uses
  %.0544 = phi i32 [ 1, %.lr.ph.i.i1199.epil ], [ 0, %middle.block3039 ], [ 1, %.lr.ph.i.i1250.epil ], [ 0, %bb.bb ], [ 0, %.lr.ph26.i1239 ], [ 0, %bb.ba ] ; 5 uses
  %min.iters.check3043 = icmp ult i64 %i.f, 12
  br i1 %min.iters.check3043, label %scalar.ph3042.preheader, label %vector.ph3044

vector.ph3044:                                    ; preds = %bary_2comp.exit1244
  %n.vec3046 = and i64 %i.j, -8                   ; 2 uses
  br label %vector.body3047

vector.body3047:                                  ; preds = %vector.body3047, %vector.ph3044
  %index3048 = phi i64 [ 0, %vector.ph3044 ], [ %index.next3054, %vector.body3047 ] ; 2 uses
  %vector.recur = phi <4 x i64> [ <i64 poison, i64 poison, i64 poison, i64 0>, %vector.ph3044 ], [ %i.ayt, %vector.body3047 ]
  %i.ayo = xor i64 %index3048, -1
  %i.ayp = getelementptr [4 x i8], ptr %i.al, i64 %i.ayo ; 2 uses
  %i.ayq = getelementptr i8, ptr %i.ayp, i64 -12  ; 2 uses
  %i.ayr = getelementptr i8, ptr %i.ayp, i64 -28  ; 2 uses
  %wide.load3049 = load <4 x i32>, ptr %i.ayq, align 4, !tbaa !7
  %wide.load3050 = load <4 x i32>, ptr %i.ayr, align 4, !tbaa !7
  %reverse = shufflevector <4 x i32> %wide.load3049, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse3051 = shufflevector <4 x i32> %wide.load3050, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ays = zext <4 x i32> %reverse to <4 x i64>   ; 3 uses
  %i.ayt = zext <4 x i32> %reverse3051 to <4 x i64> ; 4 uses
  %i.ayu = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.ays, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ayv = shufflevector <4 x i64> %i.ays, <4 x i64> %i.ayt, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ayw = shl nuw <4 x i64> %i.ayu, splat (i64 32)
  %i.ayx = shl nuw <4 x i64> %i.ayv, splat (i64 32)
  %i.ayy = or disjoint <4 x i64> %i.ayw, %i.ays
  %i.ayz = or disjoint <4 x i64> %i.ayx, %i.ayt
  %i.aza = lshr <4 x i64> %i.ayy, splat (i64 1)
  %i.azb = lshr <4 x i64> %i.ayz, splat (i64 1)
  %i.azc = trunc <4 x i64> %i.aza to <4 x i32>
  %i.azd = trunc <4 x i64> %i.azb to <4 x i32>
  %reverse3052 = shufflevector <4 x i32> %i.azc, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse3053 = shufflevector <4 x i32> %i.azd, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse3052, ptr %i.ayq, align 4, !tbaa !7
  store <4 x i32> %reverse3053, ptr %i.ayr, align 4, !tbaa !7
  %index.next3054 = add nuw i64 %index3048, 8     ; 2 uses
  %i.aze = icmp eq i64 %index.next3054, %n.vec3046
  br i1 %i.aze, label %middle.block3055, label %vector.body3047, !llvm.loop !116

middle.block3055:                                 ; preds = %vector.body3047
  %vector.recur.extract = extractelement <4 x i64> %i.ayt, i64 3
  br label %scalar.ph3042.preheader

scalar.ph3042.preheader:                          ; preds = %middle.block3055, %bary_2comp.exit1244
  %.017.i1282.ph = phi i64 [ 0, %bary_2comp.exit1244 ], [ %n.vec3046, %middle.block3055 ]
  %.014.in16.i.ph = phi i64 [ 0, %bary_2comp.exit1244 ], [ %vector.recur.extract, %middle.block3055 ]
  br label %scalar.ph3042

scalar.ph3042:                                    ; preds = %scalar.ph3042.preheader, %scalar.ph3042
  %.017.i1282 = phi i64 [ %i.azm, %scalar.ph3042 ], [ %.017.i1282.ph, %scalar.ph3042.preheader ] ; 3 uses
  %.014.in16.i = phi i64 [ %i.azi, %scalar.ph3042 ], [ %.014.in16.i.ph, %scalar.ph3042.preheader ]
  %.014.i = shl nuw i64 %.014.in16.i, 32
  %i.azf = xor i64 %.017.i1282, -1
  %i.azg = getelementptr [4 x i8], ptr %i.al, i64 %i.azf ; 2 uses
  %i.azh = load i32, ptr %i.azg, align 4, !tbaa !7
  %i.azi = zext i32 %i.azh to i64                 ; 2 uses
  %i.azj = or disjoint i64 %.014.i, %i.azi
  %i.azk = lshr i64 %i.azj, 1
  %i.azl = trunc i64 %i.azk to i32
  store i32 %i.azl, ptr %i.azg, align 4, !tbaa !7
  %i.azm = add nuw i64 %.017.i1282, 1
  %exitcond.not.i1283 = icmp eq i64 %.017.i1282, %i.j
  br i1 %exitcond.not.i1283, label %bary_small_rshift.exit, label %scalar.ph3042, !llvm.loop !117

bary_small_rshift.exit:                           ; preds = %scalar.ph3042
  br i1 %i.aro, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bary_small_rshift.exit
  br i1 %.not97.i.i, label %.loopexit74.i.i1300, label %.lr.ph.i.i1285

.lr.ph.i.i1285:                                   ; preds = %bb.bc, %.lr.ph.i.i1285
  %.06278.i.i1286 = phi i64 [ %i.bak, %.lr.ph.i.i1285 ], [ 0, %bb.bc ] ; 5 uses
  %.06377.i.i1287 = phi i64 [ %i.baj, %.lr.ph.i.i1285 ], [ 0, %bb.bc ]
  %i.azn = getelementptr [4 x i8], ptr %i.ah, i64 %.06278.i.i1286
  %i.azo = load i32, ptr %i.azn, align 4, !tbaa !7
  %i.azp = zext i32 %i.azo to i64
  %i.azq = getelementptr [4 x i8], ptr %i.af, i64 %.06278.i.i1286
  %i.azr = load i32, ptr %i.azq, align 4, !tbaa !7
  %i.azs = zext i32 %i.azr to i64
  %i.azt = sub nsw i64 %i.azp, %i.azs
  %i.azu = add nsw i64 %i.azt, %.06377.i.i1287    ; 2 uses
  %i.azv = trunc i64 %i.azu to i32
  %i.azw = getelementptr [4 x i8], ptr %i.al, i64 %.06278.i.i1286
  store i32 %i.azv, ptr %i.azw, align 4, !tbaa !7
  %i.azx = ashr i64 %i.azu, 32
  %i.azy = or disjoint i64 %.06278.i.i1286, 1     ; 3 uses
  %i.azz = getelementptr [4 x i8], ptr %i.ah, i64 %i.azy
  %i.baa = load i32, ptr %i.azz, align 4, !tbaa !7
  %i.bab = zext i32 %i.baa to i64
  %i.bac = getelementptr [4 x i8], ptr %i.af, i64 %i.azy
  %i.bad = load i32, ptr %i.bac, align 4, !tbaa !7
  %i.bae = zext i32 %i.bad to i64
  %i.baf = sub nsw i64 %i.bab, %i.bae
  %i.bag = add nsw i64 %i.baf, %i.azx             ; 2 uses
  %i.bah = trunc i64 %i.bag to i32
  %i.bai = getelementptr [4 x i8], ptr %i.al, i64 %i.azy
  store i32 %i.bah, ptr %i.bai, align 4, !tbaa !7
  %i.baj = ashr i64 %i.bag, 32                    ; 2 uses
  %i.bak = add nuw i64 %.06278.i.i1286, 2         ; 2 uses
  %exitcond.not.i.i1288.1 = icmp eq i64 %i.bak, %i.j
  br i1 %exitcond.not.i.i1288.1, label %._crit_edge.i.i1289, label %.lr.ph.i.i1285, !llvm.loop !48

._crit_edge.i.i1289:                              ; preds = %.lr.ph.i.i1285
  %i.bal = icmp eq i64 %i.baj, 0
  br i1 %i.bal, label %.loopexit74.i.i1300, label %.loopexit71.i.i1293

.loopexit71.i.i1293:                              ; preds = %._crit_edge.i.i1289
  %i.bam = getelementptr [4 x i8], ptr %i.ah, i64 %i.j
  %i.ban = load i32, ptr %i.bam, align 4, !tbaa !7
  %i.bao = zext i32 %i.ban to i64
  %i.bap = add nsw i64 %i.bao, -1                 ; 2 uses
  %i.baq = trunc i64 %i.bap to i32
  %i.bar = getelementptr [4 x i8], ptr %i.al, i64 %i.j
  store i32 %i.baq, ptr %i.bar, align 4, !tbaa !7
  %i.bas = icmp ult i64 %i.bap, 4294967296
  br i1 %i.bas, label %.loopexit74.i.i1300, label %.lr.ph.i1320

.loopexit74.i.i1300:                              ; preds = %bb.bc, %._crit_edge.i.i1289, %.loopexit71.i.i1293
  %.5.i.i1301 = phi i64 [ %i.l, %.loopexit71.i.i1293 ], [ %i.j, %._crit_edge.i.i1289 ], [ %i.j, %bb.bc ] ; 5 uses
  %i.bat = icmp ne ptr %i.ah, %i.al
  %i.bau = icmp ule i64 %.5.i.i1301, %i.j
  %or.cond1990 = and i1 %i.bat, %i.bau
  br i1 %or.cond1990, label %.lr.ph93.i.i1308.preheader, label %bary_2comp.exit1330

.lr.ph93.i.i1308.preheader:                       ; preds = %.loopexit74.i.i1300
  %8 = or disjoint i64 %i.j, 1
  %9 = sub nuw i64 %8, %.5.i.i1301                ; 3 uses
  %min.iters.check3074 = icmp ult i64 %9, 8
  %.mask = and i64 %i.g, 576460752303423487
  %diff.check3072 = icmp eq i64 %.mask, 0
  %or.cond3220 = or i1 %min.iters.check3074, %diff.check3072
  br i1 %or.cond3220, label %.lr.ph93.i.i1308.preheader3275, label %vector.ph3075

vector.ph3075:                                    ; preds = %.lr.ph93.i.i1308.preheader
  %n.vec3077 = and i64 %9, -8                     ; 3 uses
  %i.bav = add i64 %.5.i.i1301, %n.vec3077
  br label %vector.body3078

vector.body3078:                                  ; preds = %vector.body3078, %vector.ph3075
  %index3079 = phi i64 [ 0, %vector.ph3075 ], [ %index.next3082, %vector.body3078 ] ; 2 uses
  %i.baw = add i64 %.5.i.i1301, %index3079        ; 2 uses
  %i.bax = getelementptr [4 x i8], ptr %i.ah, i64 %i.baw ; 2 uses
  %i.bay = getelementptr i8, ptr %i.bax, i64 16
  %wide.load3080 = load <4 x i32>, ptr %i.bax, align 4, !tbaa !7
  %wide.load3081 = load <4 x i32>, ptr %i.bay, align 4, !tbaa !7
  %i.baz = getelementptr [4 x i8], ptr %i.al, i64 %i.baw ; 2 uses
  %i.bba = getelementptr i8, ptr %i.baz, i64 16
  store <4 x i32> %wide.load3080, ptr %i.baz, align 4, !tbaa !7
  store <4 x i32> %wide.load3081, ptr %i.bba, align 4, !tbaa !7
  %index.next3082 = add nuw i64 %index3079, 8     ; 2 uses
  %i.bbb = icmp eq i64 %index.next3082, %n.vec3077
  br i1 %i.bbb, label %middle.block3083, label %vector.body3078, !llvm.loop !118

middle.block3083:                                 ; preds = %vector.body3078
  %cmp.n3084 = icmp eq i64 %9, %n.vec3077
  br i1 %cmp.n3084, label %bary_2comp.exit1330, label %.lr.ph93.i.i1308.preheader3275

.lr.ph93.i.i1308.preheader3275:                   ; preds = %.lr.ph93.i.i1308.preheader, %middle.block3083
  %.692.i.i1309.ph = phi i64 [ %.5.i.i1301, %.lr.ph93.i.i1308.preheader ], [ %i.bav, %middle.block3083 ] ; 4 uses
  %i.bbc = or disjoint i64 %i.j, 1
  %i.bbd = sub i64 %i.bbc, %.692.i.i1309.ph
  %i.bbe = sub i64 %i.j, %.692.i.i1309.ph
  %xtraiter3524 = and i64 %i.bbd, 3               ; 2 uses
  %lcmp.mod3525.not = icmp eq i64 %xtraiter3524, 0
  br i1 %lcmp.mod3525.not, label %.lr.ph93.i.i1308.prol.loopexit, label %.lr.ph93.i.i1308.prol

.lr.ph93.i.i1308.prol:                            ; preds = %.lr.ph93.i.i1308.preheader3275, %.lr.ph93.i.i1308.prol
  %.692.i.i1309.prol = phi i64 [ %i.bbi, %.lr.ph93.i.i1308.prol ], [ %.692.i.i1309.ph, %.lr.ph93.i.i1308.preheader3275 ] ; 3 uses
  %prol.iter3526 = phi i64 [ %prol.iter3526.next, %.lr.ph93.i.i1308.prol ], [ 0, %.lr.ph93.i.i1308.preheader3275 ]
  %i.bbf = getelementptr [4 x i8], ptr %i.ah, i64 %.692.i.i1309.prol
  %i.bbg = load i32, ptr %i.bbf, align 4, !tbaa !7
  %i.bbh = getelementptr [4 x i8], ptr %i.al, i64 %.692.i.i1309.prol
  store i32 %i.bbg, ptr %i.bbh, align 4, !tbaa !7
  %i.bbi = add nuw i64 %.692.i.i1309.prol, 1      ; 2 uses
  %prol.iter3526.next = add i64 %prol.iter3526, 1 ; 2 uses
  %prol.iter3526.cmp.not = icmp eq i64 %prol.iter3526.next, %xtraiter3524
  br i1 %prol.iter3526.cmp.not, label %.lr.ph93.i.i1308.prol.loopexit, label %.lr.ph93.i.i1308.prol, !llvm.loop !119

.lr.ph93.i.i1308.prol.loopexit:                   ; preds = %.lr.ph93.i.i1308.prol, %.lr.ph93.i.i1308.preheader3275
  %.692.i.i1309.unr = phi i64 [ %.692.i.i1309.ph, %.lr.ph93.i.i1308.preheader3275 ], [ %i.bbi, %.lr.ph93.i.i1308.prol ]
  %i.bbj = icmp ult i64 %i.bbe, 3
  br i1 %i.bbj, label %bary_2comp.exit1330, label %.lr.ph93.i.i1308

.lr.ph93.i.i1308:                                 ; preds = %.lr.ph93.i.i1308.prol.loopexit, %.lr.ph93.i.i1308
  %.692.i.i1309 = phi i64 [ %i.bbz, %.lr.ph93.i.i1308 ], [ %.692.i.i1309.unr, %.lr.ph93.i.i1308.prol.loopexit ] ; 6 uses
  %i.bbk = getelementptr [4 x i8], ptr %i.ah, i64 %.692.i.i1309
  %i.bbl = load i32, ptr %i.bbk, align 4, !tbaa !7
  %i.bbm = getelementptr [4 x i8], ptr %i.al, i64 %.692.i.i1309
  store i32 %i.bbl, ptr %i.bbm, align 4, !tbaa !7
  %i.bbn = add nuw i64 %.692.i.i1309, 1           ; 2 uses
  %i.bbo = getelementptr [4 x i8], ptr %i.ah, i64 %i.bbn
  %i.bbp = load i32, ptr %i.bbo, align 4, !tbaa !7
  %i.bbq = getelementptr [4 x i8], ptr %i.al, i64 %i.bbn
  store i32 %i.bbp, ptr %i.bbq, align 4, !tbaa !7
  %i.bbr = add nuw i64 %.692.i.i1309, 2           ; 2 uses
  %i.bbs = getelementptr [4 x i8], ptr %i.ah, i64 %i.bbr
  %i.bbt = load i32, ptr %i.bbs, align 4, !tbaa !7
  %i.bbu = getelementptr [4 x i8], ptr %i.al, i64 %i.bbr
  store i32 %i.bbt, ptr %i.bbu, align 4, !tbaa !7
  %i.bbv = add nuw i64 %.692.i.i1309, 3           ; 3 uses
  %i.bbw = getelementptr [4 x i8], ptr %i.ah, i64 %i.bbv
  %i.bbx = load i32, ptr %i.bbw, align 4, !tbaa !7
  %i.bby = getelementptr [4 x i8], ptr %i.al, i64 %i.bbv
  store i32 %i.bbx, ptr %i.bby, align 4, !tbaa !7
  %i.bbz = add nuw i64 %.692.i.i1309, 4
  %exitcond111.not.i.i1310.3 = icmp eq i64 %i.bbv, %i.j
  br i1 %exitcond111.not.i.i1310.3, label %bary_2comp.exit1330, label %.lr.ph93.i.i1308, !llvm.loop !120

.lr.ph.i1320:                                     ; preds = %.loopexit71.i.i1293, %bb.bd
  %.023.i1321 = phi i64 [ %i.bcc, %bb.bd ], [ 0, %.loopexit71.i.i1293 ] ; 6 uses
  %i.bca = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1321
  %i.bcb = load i32, ptr %i.bca, align 4, !tbaa !7 ; 2 uses
  %.not.i1322 = icmp eq i32 %i.bcb, 0
  br i1 %.not.i1322, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph.i1320
  %i.bcc = add nuw i64 %.023.i1321, 1
  %exitcond.not.i1329 = icmp eq i64 %.023.i1321, %i.j
  br i1 %exitcond.not.i1329, label %bary_2comp.exit1330.thr_comm, label %.lr.ph.i1320, !llvm.loop !55

bb.be:                                            ; preds = %.lr.ph.i1320
  %i.bcd = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1321
  %i.bce = sub i32 0, %i.bcb
  store i32 %i.bce, ptr %i.bcd, align 4, !tbaa !7
  %.124.i1323 = add i64 %.023.i1321, 1            ; 4 uses
  %.not2016 = icmp ugt i64 %.124.i1323, %i.j
  br i1 %.not2016, label %bary_2comp.exit1330.thr_comm, label %.lr.ph26.i1325.preheader

.lr.ph26.i1325.preheader:                         ; preds = %bb.be
  %i.bcf = sub i64 %i.j, %.023.i1321              ; 3 uses
  %min.iters.check3059 = icmp ult i64 %i.bcf, 8
  br i1 %min.iters.check3059, label %.lr.ph26.i1325.preheader3276, label %vector.ph3060

vector.ph3060:                                    ; preds = %.lr.ph26.i1325.preheader
  %n.vec3062 = and i64 %i.bcf, -8                 ; 3 uses
  %i.bcg = add i64 %.124.i1323, %n.vec3062
  %i.bch = getelementptr [4 x i8], ptr %i.al, i64 %.124.i1323
  br label %vector.body3063

vector.body3063:                                  ; preds = %vector.body3063, %vector.ph3060
  %index3064 = phi i64 [ 0, %vector.ph3060 ], [ %index.next3067, %vector.body3063 ] ; 2 uses
  %i.bci = getelementptr [4 x i8], ptr %i.bch, i64 %index3064 ; 3 uses
  %i.bcj = getelementptr i8, ptr %i.bci, i64 16   ; 2 uses
  %wide.load3065 = load <4 x i32>, ptr %i.bci, align 4, !tbaa !7
  %wide.load3066 = load <4 x i32>, ptr %i.bcj, align 4, !tbaa !7
  %i.bck = xor <4 x i32> %wide.load3065, splat (i32 -1)
  %i.bcl = xor <4 x i32> %wide.load3066, splat (i32 -1)
  store <4 x i32> %i.bck, ptr %i.bci, align 4, !tbaa !7
  store <4 x i32> %i.bcl, ptr %i.bcj, align 4, !tbaa !7
  %index.next3067 = add nuw i64 %index3064, 8     ; 2 uses
  %i.bcm = icmp eq i64 %index.next3067, %n.vec3062
  br i1 %i.bcm, label %middle.block3068, label %vector.body3063, !llvm.loop !121

middle.block3068:                                 ; preds = %vector.body3063
  %cmp.n3069 = icmp eq i64 %i.bcf, %n.vec3062
  br i1 %cmp.n3069, label %bary_2comp.exit1330.thr_comm, label %.lr.ph26.i1325.preheader3276

.lr.ph26.i1325.preheader3276:                     ; preds = %.lr.ph26.i1325.preheader, %middle.block3068
  %.125.i1326.ph = phi i64 [ %.124.i1323, %.lr.ph26.i1325.preheader ], [ %i.bcg, %middle.block3068 ]
  br label %.lr.ph26.i1325

.lr.ph26.i1325:                                   ; preds = %.lr.ph26.i1325.preheader3276, %.lr.ph26.i1325
  %.125.i1326 = phi i64 [ %.1.i1327, %.lr.ph26.i1325 ], [ %.125.i1326.ph, %.lr.ph26.i1325.preheader3276 ] ; 3 uses
  %i.bcn = getelementptr [4 x i8], ptr %i.al, i64 %.125.i1326 ; 2 uses
  %i.bco = load i32, ptr %i.bcn, align 4, !tbaa !7
  %i.bcp = xor i32 %i.bco, -1
  store i32 %i.bcp, ptr %i.bcn, align 4, !tbaa !7
  %.1.i1327 = add nuw i64 %.125.i1326, 1
  %exitcond31.not.i1328 = icmp eq i64 %.125.i1326, %i.j
  br i1 %exitcond31.not.i1328, label %bary_2comp.exit1330.thr_comm, label %.lr.ph26.i1325, !llvm.loop !122

bb.bf:                                            ; preds = %bary_small_rshift.exit
  br i1 %.not97.i.i, label %.loopexit71.i.i1350, label %.lr.ph.i.i1336

.preheader72.i.i1340:                             ; preds = %.lr.ph.i.i1336
  %i.bcq = icmp eq i64 %i.bdn, 0
  br i1 %i.bcq, label %.loopexit71.i.i1350, label %bary_2comp.exit1330.thr_comm.loopexit2229

.lr.ph.i.i1336:                                   ; preds = %bb.bf, %.lr.ph.i.i1336
  %.05779.i.i1337 = phi i64 [ %i.bdo, %.lr.ph.i.i1336 ], [ 0, %bb.bf ] ; 5 uses
  %.05878.i.i1338 = phi i64 [ %i.bdn, %.lr.ph.i.i1336 ], [ 0, %bb.bf ]
  %i.bcr = getelementptr [4 x i8], ptr %i.af, i64 %.05779.i.i1337
  %i.bcs = load i32, ptr %i.bcr, align 4, !tbaa !7
  %i.bct = zext i32 %i.bcs to i64
  %i.bcu = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i1337
  %i.bcv = load i32, ptr %i.bcu, align 4, !tbaa !7
  %i.bcw = zext i32 %i.bcv to i64
  %i.bcx = add nuw nsw i64 %.05878.i.i1338, %i.bct
  %i.bcy = add nuw nsw i64 %i.bcx, %i.bcw         ; 2 uses
  %i.bcz = trunc i64 %i.bcy to i32
  %i.bda = getelementptr [4 x i8], ptr %i.al, i64 %.05779.i.i1337
  store i32 %i.bcz, ptr %i.bda, align 4, !tbaa !7
  %i.bdb = lshr i64 %i.bcy, 32
  %i.bdc = or disjoint i64 %.05779.i.i1337, 1     ; 3 uses
  %i.bdd = getelementptr [4 x i8], ptr %i.af, i64 %i.bdc
  %i.bde = load i32, ptr %i.bdd, align 4, !tbaa !7
  %i.bdf = zext i32 %i.bde to i64
  %i.bdg = getelementptr [4 x i8], ptr %i.ah, i64 %i.bdc
  %i.bdh = load i32, ptr %i.bdg, align 4, !tbaa !7
  %i.bdi = zext i32 %i.bdh to i64
  %i.bdj = add nuw nsw i64 %i.bdb, %i.bdf
  %i.bdk = add nuw nsw i64 %i.bdj, %i.bdi         ; 2 uses
  %i.bdl = trunc i64 %i.bdk to i32
  %i.bdm = getelementptr [4 x i8], ptr %i.al, i64 %i.bdc
  store i32 %i.bdl, ptr %i.bdm, align 4, !tbaa !7
  %i.bdn = lshr i64 %i.bdk, 32                    ; 2 uses
  %i.bdo = add nuw i64 %.05779.i.i1337, 2         ; 2 uses
  %exitcond.not.i.i1339.1 = icmp eq i64 %i.bdo, %i.j
  br i1 %exitcond.not.i.i1339.1, label %.preheader72.i.i1340, label %.lr.ph.i.i1336, !llvm.loop !34

bary_2comp.exit1330.thr_comm.loopexit2229:        ; preds = %.preheader72.i.i1340
  %i.bdp = getelementptr [4 x i8], ptr %i.ah, i64 %i.j
  %i.bdq = load i32, ptr %i.bdp, align 4, !tbaa !7
  %i.bdr = add i32 %i.bdq, 1
  br label %bary_2comp.exit1330.thr_comm.sink.split

.loopexit71.i.i1350:                              ; preds = %bb.bf, %.preheader72.i.i1340
  %i.bds = icmp eq ptr %i.ah, %i.al
  br i1 %i.bds, label %bary_2comp.exit1330.thr_comm, label %.preheader.i.i1354

.preheader.i.i1354:                               ; preds = %.loopexit71.i.i1350
  %i.bdt = getelementptr [4 x i8], ptr %i.ah, i64 %i.j
  %i.bdu = load i32, ptr %i.bdt, align 4, !tbaa !7
  br label %bary_2comp.exit1330.thr_comm.sink.split

bary_2comp.exit1330.thr_comm.sink.split:          ; preds = %bary_2comp.exit1330.thr_comm.loopexit2229, %.preheader.i.i1354
  %.sink = phi i32 [ %i.bdu, %.preheader.i.i1354 ], [ %i.bdr, %bary_2comp.exit1330.thr_comm.loopexit2229 ]
  %i.bdv = getelementptr [4 x i8], ptr %i.al, i64 %i.j
  store i32 %.sink, ptr %i.bdv, align 4, !tbaa !7
  br label %bary_2comp.exit1330.thr_comm

bary_2comp.exit1330.thr_comm:                     ; preds = %bb.bd, %.lr.ph26.i1325, %middle.block3068, %bary_2comp.exit1330.thr_comm.sink.split, %.loopexit71.i.i1350, %bb.be
  br i1 %.0536.shrunk, label %bb.bj, label %bb.bg

bary_2comp.exit1330:                              ; preds = %.lr.ph93.i.i1308.prol.loopexit, %.lr.ph93.i.i1308, %middle.block3083, %.loopexit74.i.i1300
  br i1 %.0536.shrunk, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bary_2comp.exit1330.thr_comm, %bary_2comp.exit1330
  %.05391976 = phi i32 [ 0, %bary_2comp.exit1330.thr_comm ], [ 1, %bary_2comp.exit1330 ] ; 3 uses
  %.0539.shrunk1972 = phi i1 [ false, %bary_2comp.exit1330.thr_comm ], [ true, %bary_2comp.exit1330 ] ; 3 uses
  %i.bdw = icmp ult i64 %i.f, 3
  br i1 %i.bdw, label %.lr.ph.i.i1367.epil, label %.lr.ph.i.i1367

.lr.ph.i.i1367:                                   ; preds = %bb.bg, %.lr.ph.i.i1367
  %.06278.i.i1368 = phi i64 [ %i.bes, %.lr.ph.i.i1367 ], [ 0, %bb.bg ] ; 4 uses
  %.06377.i.i1369 = phi i64 [ %i.ber, %.lr.ph.i.i1367 ], [ 0, %bb.bg ]
  %niter3540 = phi i64 [ %niter3540.next.1, %.lr.ph.i.i1367 ], [ 0, %bb.bg ]
  %i.bdx = getelementptr [4 x i8], ptr %i.al, i64 %.06278.i.i1368
  %i.bdy = load i32, ptr %i.bdx, align 4, !tbaa !7
  %i.bdz = zext i32 %i.bdy to i64
  %i.bea = getelementptr [4 x i8], ptr %i.am, i64 %.06278.i.i1368 ; 2 uses
  %i.beb = load i32, ptr %i.bea, align 4, !tbaa !7
  %i.bec = zext i32 %i.beb to i64
  %i.bed = sub nsw i64 %i.bdz, %i.bec
  %i.bee = add nsw i64 %i.bed, %.06377.i.i1369    ; 2 uses
end_hunk_2
