Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/aes?download=true
inline.NumInlined: 97
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 70
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@wc_AesGcmDecrypt:bb.a
  %i.he = xor i8 %i.hd, %i.hb
  %i.hf = getelementptr inbounds nuw i8, ptr %.0137.i, i64 9
  store i8 %i.he, ptr %i.ha, align 1, !tbaa !21
  %i.hg = load i8, ptr %i.aj, align 1, !tbaa !21
  %i.hh = getelementptr inbounds nuw i8, ptr %.042134.i, i64 10
  %i.hi = load i8, ptr %i.hc, align 1, !tbaa !21
  %i.hj = xor i8 %i.hi, %i.hg
  %i.hk = getelementptr inbounds nuw i8, ptr %.0137.i, i64 10
  store i8 %i.hj, ptr %i.hf, align 1, !tbaa !21
  %i.hl = load i8, ptr %i.ak, align 2, !tbaa !21
  %i.hm = getelementptr inbounds nuw i8, ptr %.042134.i, i64 11
  %i.hn = load i8, ptr %i.hh, align 1, !tbaa !21
  %i.ho = xor i8 %i.hn, %i.hl
  %i.hp = getelementptr inbounds nuw i8, ptr %.0137.i, i64 11
  store i8 %i.ho, ptr %i.hk, align 1, !tbaa !21
  %i.hq = load i8, ptr %i.al, align 1, !tbaa !21
  %i.hr = getelementptr inbounds nuw i8, ptr %.042134.i, i64 12
  %i.hs = load i8, ptr %i.hm, align 1, !tbaa !21
  %i.ht = xor i8 %i.hs, %i.hq
  %i.hu = getelementptr inbounds nuw i8, ptr %.0137.i, i64 12
  store i8 %i.ht, ptr %i.hp, align 1, !tbaa !21
  %i.hv = load i8, ptr %i.am, align 4, !tbaa !21
  %i.hw = getelementptr inbounds nuw i8, ptr %.042134.i, i64 13
  %i.hx = load i8, ptr %i.hr, align 1, !tbaa !21
  %i.hy = xor i8 %i.hx, %i.hv
  %i.hz = getelementptr inbounds nuw i8, ptr %.0137.i, i64 13
  store i8 %i.hy, ptr %i.hu, align 1, !tbaa !21
  %i.ia = load i8, ptr %i.an, align 1, !tbaa !21
  %i.ib = getelementptr inbounds nuw i8, ptr %.042134.i, i64 14
  %i.ic = load i8, ptr %i.hw, align 1, !tbaa !21
  %i.id = xor i8 %i.ic, %i.ia
  %i.ie = getelementptr inbounds nuw i8, ptr %.0137.i, i64 14
  store i8 %i.id, ptr %i.hz, align 1, !tbaa !21
  %i.if = load i8, ptr %i.ao, align 2, !tbaa !21
  %i.ig = getelementptr inbounds nuw i8, ptr %.042134.i, i64 15
  %i.ih = load i8, ptr %i.ib, align 1, !tbaa !21
  %i.ii = xor i8 %i.ih, %i.if
  %i.ij = getelementptr inbounds nuw i8, ptr %.0137.i, i64 15
  store i8 %i.ii, ptr %i.ie, align 1, !tbaa !21
  %i.ik = load i8, ptr %i.ap, align 1, !tbaa !21
  %i.il = load i8, ptr %i.ig, align 1, !tbaa !21
  %i.im = xor i8 %i.il, %i.ik
  store i8 %i.im, ptr %i.ij, align 1, !tbaa !21
  br label %xorbufout.exit.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 1) i32 @wc_AesGcmSetExtIV(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %bb.d [
    i32 16, label %bb.c
    i32 12, label %bb.c
    i32 8, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 0, ptr %i.e, align 16, !tbaa !15
  %i.f = icmp ne i32 %2, 12
  %i.g = sext i1 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 292
  store i32 %i.g, ptr %i.h, align 4, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 %2, ptr %i.i, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.014 = phi i32 [ 0, %bb.c ], [ -173, %bb.a ], [ -173, %bb.b ]
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define i32 @wc_AesGcmSetIV(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %4, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread32, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %.thread32 [
    i32 16, label %bb.c
    i32 12, label %bb.c
    i32 8, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.c = icmp eq ptr %2, null
  %or.cond40.v = select i1 %i.c, i32 0, i32 4
  %or.cond40 = icmp eq i32 %3, %or.cond40.v
  br i1 %or.cond40, label %bb.d, label %.thread32

bb.d:                                             ; preds = %bb.c
  %i.d = icmp eq i32 %3, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  br i1 %i.d, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = zext i32 %3 to i64                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr align 1 %2, i64 %i.f, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.e
  %.pre-phi = phi i64 [ %i.f, %bb.e ], [ 0, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.pre-phi
  %i.h = sub i32 %1, %3
  %i.i = tail call i32 @wc_RNG_GenerateBlock(ptr noundef nonnull %4, ptr noundef nonnull %i.g, i32 noundef %i.h) #12 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %.thread32

bb.f:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 0, ptr %i.k, align 16, !tbaa !15
  %i.l = icmp ne i32 %1, 12
  %i.m = sext i1 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 292
  store i32 %i.m, ptr %i.n, align 4, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 %1, ptr %i.o, align 8, !tbaa !25
  br label %.thread32

.thread32:                                        ; preds = %bb.b, %bb.c, %bb.a, %bb.f, %._crit_edge
  %.134 = phi i32 [ %i.i, %._crit_edge ], [ 0, %bb.f ], [ -173, %bb.a ], [ -173, %bb.b ], [ -173, %bb.c ]
  ret i32 %.134
}

declare i32 @wc_RNG_GenerateBlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -260, 1) i32 @wc_AesGcmEncrypt_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %IncCtr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq ptr %2, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.b
  %i.d = icmp eq ptr %4, null
  %or.cond3 = or i1 %or.cond, %i.d
  br i1 %or.cond3, label %IncCtr.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
  %.old2 = icmp eq ptr %4, null
  br i1 %.old2, label %IncCtr.exit, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.f = load i32, ptr %i.e, align 8, !tbaa !25
  %.not40 = icmp eq i32 %5, %i.f
  br i1 %.not40, label %bb.f, label %IncCtr.exit

bb.f:                                             ; preds = %bb.e
  %i.g = icmp eq ptr %8, null
  %i.h = icmp ne i32 %9, 0
  %or.cond6 = and i1 %i.g, %i.h
  br i1 %or.cond6, label %IncCtr.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.j = load i32, ptr %i.i, align 16, !tbaa !15
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %i.i, align 16, !tbaa !15
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !15
  %i.o = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %i.m, align 4, !tbaa !15
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %IncCtr.exit, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.r = zext i32 %5 to i64                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %4, ptr nonnull align 16 %i.q, i64 %i.r, i1 false)
  %i.s = tail call i32 @wc_AesGcmEncrypt(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.q, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9) ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.preheader.preheader, label %IncCtr.exit

.preheader.preheader:                             ; preds = %bb.i
  %i.u = icmp sgt i32 %5, 0
  br i1 %i.u, label %.lr.ph, label %IncCtr.exit

.preheader:                                       ; preds = %.lr.ph
  %i.v = trunc nuw i64 %10 to i32
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %IncCtr.exit, !llvm.loop !1

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %indvars.iv.i46 = phi i64 [ %10, %.preheader ], [ %i.r, %.preheader.preheader ]
  %10 = add nsw i64 %indvars.iv.i46, -1           ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %10 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !21
  %i.z = add i8 %i.y, 1                           ; 2 uses
  store i8 %i.z, ptr %i.x, align 1, !tbaa !21
  %.not.i = icmp eq i8 %i.z, 0
  br i1 %.not.i, label %.preheader, label %.IncCtr.exit.loopexit_crit_edge, !llvm.loop !1

.IncCtr.exit.loopexit_crit_edge:                  ; preds = %.lr.ph
  br label %IncCtr.exit, !llvm.loop !1

IncCtr.exit:                                      ; preds = %.preheader, %.preheader.preheader, %.IncCtr.exit.loopexit_crit_edge, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.i
  %.2 = phi i32 [ -173, %bb.c ], [ %i.s, %bb.i ], [ -260, %bb.h ], [ -173, %bb.a ], [ -173, %bb.f ], [ -173, %bb.e ], [ -173, %bb.d ], [ 0, %.preheader.preheader ], [ 0, %.IncCtr.exit.loopexit_crit_edge ], [ 0, %.preheader ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define i32 @wc_Gmac(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %9 = alloca [1 x %struct.Aes], align 16         ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %2, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %wc_AesFree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %4, null
  %i.e = icmp ne i32 %5, 0
  %or.cond3 = and i1 %i.d, %i.e
  %i.f = icmp eq ptr %6, null
  %or.cond5 = or i1 %or.cond3, %i.f
  %i.g = icmp eq i32 %7, 0
  %or.cond7 = or i1 %or.cond5, %i.g
  %i.h = icmp eq ptr %8, null
  %or.cond9 = or i1 %or.cond7, %i.h
  br i1 %or.cond9, label %wc_AesFree.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(848) %9, i8 0, i64 848, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  switch i32 %1, label %wc_AesGcmSetKey.exit.thread [
    i32 32, label %bb.d
    i32 24, label %bb.d
    i32 16, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.i = call i32 @wc_AesSetKey(ptr noundef nonnull %9, ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef 0) ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %wc_AesGcmSetKey.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 304 ; 2 uses
  %i.l = call fastcc i32 @AesEncrypt_preFetchOpt(ptr noundef nonnull %9, ptr noundef %i.a, ptr noundef %i.k, ptr noundef @always_prefetch) ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %wc_AesGcmSetKey.exit.thread

wc_AesGcmSetKey.exit.thread:                      ; preds = %bb.c, %bb.d, %bb.e
  %.019.i.ph = phi i32 [ %i.l, %bb.e ], [ %i.i, %bb.d ], [ -173, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %wc_AesGcmEncrypt_ex.exit

bb.f:                                             ; preds = %bb.e
  call void @GenerateM0(ptr noundef nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  switch i32 %3, label %wc_AesGcmEncrypt_ex.exit [
    i32 16, label %bb.g
    i32 12, label %bb.g
    i32 8, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 256 ; 4 uses
  %i.o = call i32 @wc_RNG_GenerateBlock(ptr noundef nonnull %8, ptr noundef nonnull %i.n, i32 noundef %3) #12 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %wc_AesGcmEncrypt_ex.exit

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 288
  %i.r = icmp ne i32 %3, 12
  %i.s = sext i1 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 292
  store i32 %i.s, ptr %i.t, align 4, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 296
  store i32 %3, ptr %i.u, align 8, !tbaa !25
  store i32 1, ptr %i.q, align 16, !tbaa !15
  %i.v = zext nneg i32 %3 to i64                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 16 %i.n, i64 %i.v, i1 false)
  %i.w = call i32 @wc_AesGcmEncrypt(ptr noundef nonnull %9, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.n, i32 noundef %3, ptr noundef nonnull %6, i32 noundef %7, ptr noundef %4, i32 noundef %5) ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.preheader.i.preheader, label %wc_AesGcmEncrypt_ex.exit

.preheader.i.preheader:                           ; preds = %bb.h
  %i.y = icmp sgt i32 %3, 0
  br i1 %i.y, label %.lr.ph, label %wc_AesGcmEncrypt_ex.exit

.preheader.i:                                     ; preds = %.lr.ph
  %i.z = trunc nuw i64 %10 to i32
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %wc_AesGcmEncrypt_ex.exit, !llvm.loop !1

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv.i.i50 = phi i64 [ %10, %.preheader.i ], [ %i.v, %.preheader.i.preheader ]
  %10 = add nsw i64 %indvars.iv.i.i50, -1         ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 %10 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !21
  %i.ad = add i8 %i.ac, 1                         ; 2 uses
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !21
  %.not.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i, label %.preheader.i, label %.wc_AesGcmEncrypt_ex.exit.loopexit_crit_edge, !llvm.loop !1

.wc_AesGcmEncrypt_ex.exit.loopexit_crit_edge:     ; preds = %.lr.ph
  br label %wc_AesGcmEncrypt_ex.exit, !llvm.loop !1

wc_AesGcmEncrypt_ex.exit:                         ; preds = %.preheader.i, %.preheader.i.preheader, %.wc_AesGcmEncrypt_ex.exit.loopexit_crit_edge, %bb.f, %bb.g, %wc_AesGcmSetKey.exit.thread, %bb.h
  %.1 = phi i32 [ %.019.i.ph, %wc_AesGcmSetKey.exit.thread ], [ -173, %bb.f ], [ %i.w, %bb.h ], [ %i.o, %bb.g ], [ 0, %.preheader.i.preheader ], [ 0, %.wc_AesGcmEncrypt_ex.exit.loopexit_crit_edge ], [ 0, %.preheader.i ]
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(848) %9, i8 0, i64 848, i1 false), !tbaa !20
  fence seq_cst
  br label %wc_AesFree.exit

wc_AesFree.exit:                                  ; preds = %wc_AesGcmEncrypt_ex.exit, %bb.a, %bb.b
  %.031 = phi i32 [ -173, %bb.b ], [ -173, %bb.a ], [ %.1, %wc_AesGcmEncrypt_ex.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  ret i32 %.031
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -173, 1) i32 @wc_AesInit(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(848) %0, i8 0, i64 848, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 832
  store ptr %1, ptr %i.b, align 16, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: norecurse nounwind uwtable
define void @wc_AesFree(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ForceZero.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence seq_cst
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 7
  %.not19.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i, label %.lr.ph25.preheader.i, label %.lr.ph.i.preheader

.preheader16.i.split.loop.exit16:                 ; preds = %.lr.ph.i.1
  %i.d = add nsw i64 %.01320.i12, -3
  br label %.preheader16.i

.preheader16.i.split.loop.exit19:                 ; preds = %.lr.ph.i
  %i.e = add nsw i64 %.01320.i12, -2
  br label %.preheader16.i

.preheader16.i.split.loop.exit22:                 ; preds = %.lr.ph.i.preheader
  %i.f = add nsw i64 %.01320.i12, -1
  br label %.preheader16.i

.preheader16.i:                                   ; preds = %.lr.ph.i.2, %.preheader16.i.split.loop.exit22, %.preheader16.i.split.loop.exit19, %.preheader16.i.split.loop.exit16
  %.lcssa14 = phi ptr [ %i.j, %.preheader16.i.split.loop.exit19 ], [ %i.m, %.preheader16.i.split.loop.exit16 ], [ %i.u, %.preheader16.i.split.loop.exit22 ], [ %i.p, %.lr.ph.i.2 ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %.preheader16.i.split.loop.exit19 ], [ %i.d, %.preheader16.i.split.loop.exit16 ], [ %i.f, %.preheader16.i.split.loop.exit22 ], [ %i.q, %.lr.ph.i.2 ] ; 3 uses
  %i.g = icmp ugt i64 %.lcssa, 7
  br i1 %i.g, label %.lr.ph25.preheader.i, label %.preheader.i

.lr.ph25.preheader.i:                             ; preds = %bb.b, %.preheader16.i
  %.012.lcssa.i5 = phi ptr [ %.lcssa14, %.preheader16.i ], [ %0, %bb.b ] ; 2 uses
  %.013.lcssa.i4 = phi i64 [ %.lcssa, %.preheader16.i ], [ 848, %bb.b ] ; 2 uses
  %i.h = and i64 %.013.lcssa.i4, -8               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.012.lcssa.i5, i8 0, i64 %i.h, i1 false), !tbaa !20
  %scevgep.i = getelementptr i8, ptr %.012.lcssa.i5, i64 %i.h
  %i.i = and i64 %.013.lcssa.i4, 7
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %.01221.i11, i64 2 ; 3 uses
  store i8 0, ptr %i.u, align 1, !tbaa !21
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, 7
  %.not.i.1 = icmp eq i64 %i.l, 0
  br i1 %.not.i.1, label %.preheader16.i.split.loop.exit19, label %.lr.ph.i.1, !llvm.loop !2

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.01221.i11, i64 3 ; 3 uses
  store i8 0, ptr %i.j, align 1, !tbaa !21
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 7
  %.not.i.2 = icmp eq i64 %i.o, 0
  br i1 %.not.i.2, label %.preheader16.i.split.loop.exit16, label %.lr.ph.i.2, !llvm.loop !2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.p = getelementptr inbounds nuw i8, ptr %.01221.i11, i64 4 ; 3 uses
  store i8 0, ptr %i.m, align 1, !tbaa !21
  %i.q = add nsw i64 %.01320.i12, -4              ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = and i64 %i.r, 7
  %.not.i.3 = icmp eq i64 %i.s, 0
  br i1 %.not.i.3, label %.preheader16.i, label %.lr.ph.i.3, !llvm.loop !2

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %ForceZero.exit, label %.lr.ph.i.preheader, !llvm.loop !2

.lr.ph.i.preheader:                               ; preds = %bb.b, %.lr.ph.i.3
  %.01320.i12 = phi i64 [ %i.q, %.lr.ph.i.3 ], [ 848, %bb.b ] ; 4 uses
  %.01221.i11 = phi ptr [ %i.p, %.lr.ph.i.3 ], [ %0, %bb.b ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01221.i11, i64 1 ; 3 uses
  store i8 0, ptr %.01221.i11, align 1, !tbaa !21
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, 7
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %.preheader16.i.split.loop.exit22, label %.lr.ph.i, !llvm.loop !2

.preheader.i:                                     ; preds = %.lr.ph25.preheader.i, %.preheader16.i
  %.114.lcssa.i = phi i64 [ %.lcssa, %.preheader16.i ], [ %i.i, %.lr.ph25.preheader.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.lcssa14, %.preheader16.i ], [ %scevgep.i, %.lr.ph25.preheader.i ]
  %.not1528.i = icmp eq i64 %.114.lcssa.i, 0
  br i1 %.not1528.i, label %._crit_edge.i, label %.lr.ph31.preheader.i

.lr.ph31.preheader.i:                             ; preds = %.preheader.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i, i8 0, i64 %.114.lcssa.i, i1 false), !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph31.preheader.i, %.preheader.i
  fence seq_cst
  br label %ForceZero.exit

ForceZero.exit:                                   ; preds = %.lr.ph.i.3, %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define i32 @wc_GmacVerify(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %8 = alloca [1 x %struct.Aes], align 16         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %2, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %wc_AesFree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %4, null
  %i.e = icmp ne i32 %5, 0
  %or.cond3 = and i1 %i.d, %i.e
  %i.f = icmp eq ptr %6, null
  %or.cond5 = or i1 %or.cond3, %i.f
  %i.g = add i32 %7, -17
  %i.h = icmp ult i32 %i.g, -16
  %or.cond9 = or i1 %or.cond5, %i.h
  br i1 %or.cond9, label %wc_AesFree.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(848) %8, i8 0, i64 848, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  switch i32 %1, label %wc_AesGcmSetKey.exit.thread [
    i32 32, label %bb.d
    i32 24, label %bb.d
    i32 16, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.i = call i32 @wc_AesSetKey(ptr noundef nonnull %8, ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef 0) ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %wc_AesGcmSetKey.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 304 ; 2 uses
  %i.l = call fastcc i32 @AesEncrypt_preFetchOpt(ptr noundef nonnull %8, ptr noundef %i.a, ptr noundef %i.k, ptr noundef @always_prefetch) ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %wc_AesGcmSetKey.exit.thread

wc_AesGcmSetKey.exit.thread:                      ; preds = %bb.c, %bb.d, %bb.e
  %.019.i.ph = phi i32 [ %i.l, %bb.e ], [ %i.i, %bb.d ], [ -173, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.lr.ph25.preheader.i.i

bb.f:                                             ; preds = %bb.e
  call void @GenerateM0(ptr noundef nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.n = call i32 @wc_AesGcmDecrypt(ptr noundef nonnull %8, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %6, i32 noundef %7, ptr noundef %4, i32 noundef %5)
  br label %.lr.ph25.preheader.i.i

.lr.ph25.preheader.i.i:                           ; preds = %wc_AesGcmSetKey.exit.thread, %bb.f
  %.0 = phi i32 [ %i.n, %bb.f ], [ %.019.i.ph, %wc_AesGcmSetKey.exit.thread ]
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(848) %8, i8 0, i64 848, i1 false), !tbaa !20
  fence seq_cst
  br label %wc_AesFree.exit

wc_AesFree.exit:                                  ; preds = %.lr.ph25.preheader.i.i, %bb.a, %bb.b
  %.027 = phi i32 [ -173, %bb.a ], [ -173, %bb.b ], [ %.0, %.lr.ph25.preheader.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
end_hunk_0
