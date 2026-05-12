inline.NumInlined: 19
inline.NumDeleted: 7
begin_hunk_0_@aesni_cbc_hmac_sha1_tls1_multiblock_encrypt:bb.a

._crit_edge340.loopexit.peel.begin.i:             ; preds = %bb.i
  %i.gr = icmp eq i64 %i.fv, %i.fu
  %i.gs = select i1 %i.gr, i32 %.0303.i, i32 %.0302.i ; 7 uses
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.fv ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !64
end_hunk_0
begin_hunk_1_@aesni_cbc_hmac_sha1_tls1_multiblock_encrypt:bb.a
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 732 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 733 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 734 ; 2 uses
  %invariant.op = sub i32 36, %.1308.i
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph351.split.i
end_hunk_1
begin_hunk_2_@aesni_cbc_hmac_sha1_tls1_multiblock_encrypt:bb.a
  %.0300349.i = phi ptr [ %i.b, %.lr.ph351.split.i ], [ %scevgep392.i, %bb.k ] ; 7 uses
  %.0309347.i = phi i64 [ 0, %.lr.ph351.split.i ], [ %i.lb, %bb.k ]
  %i.jb = icmp eq i64 %indvars.iv393.i, %i.fu
  %i.jc = select i1 %i.jb, i32 %.0303.i, i32 %.0302.i ; 5 uses
  %i.jd = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv393.i ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !60
end_hunk_2
begin_hunk_3_@aesni_cbc_hmac_sha1_tls1_multiblock_encrypt:bb.a
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !5
  %i.kg = getelementptr i8, ptr %i.jm, i64 20
  %6 = add i32 %i.jc, 4
  %i.kh = and i32 %6, 15                          ; 2 uses
  %i.ki = trunc nuw nsw i32 %i.kh to i8
  %7 = xor i8 %i.ki, 15
  %8 = sub i32 11, %i.jc
  %9 = and i32 %8, 15
  %i.kj = zext nneg i32 %9 to i64                 ; 2 uses
  %i.kk = add nuw nsw i64 %i.kj, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.kg, i8 %7, i64 %i.kk, i1 false), !tbaa !10
  %scevgep.i = getelementptr i8, ptr %.0300349.i, i64 21
  %i.kl = getelementptr i8, ptr %scevgep.i, i64 %i.jl
  %scevgep392.i = getelementptr i8, ptr %i.kl, i64 %i.kj ; 7 uses
  %10 = sub i32 %i.jc, %i.kh                      ; 3 uses
  %.reass.i.reass.reass = add i32 %10, %invariant.op
  %i.km = lshr i32 %.reass.i.reass.reass, 4
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store i32 %i.km, ptr %i.kn, align 8, !tbaa !68
  %i.ko = add i32 %10, 52                         ; 2 uses
  %i.kp = load i8, ptr %i.iy, align 4, !tbaa !10
  store i8 %i.kp, ptr %.0300349.i, align 1, !tbaa !10
  %i.kq = load i8, ptr %i.iz, align 1, !tbaa !10
end_hunk_3
begin_hunk_4_@aesni_cbc_hmac_sha1_tls1_multiblock_encrypt:bb.a
  %i.kx = trunc i32 %i.ko to i8
  %i.ky = getelementptr inbounds nuw i8, ptr %.0300349.i, i64 4
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !10
  %i.kz = add i32 %10, 57
  %i.la = zext i32 %i.kz to i64
  %i.lb = add i64 %.0309347.i, %i.la              ; 2 uses
  %indvars.iv.next394.i = add nuw nsw i64 %indvars.iv393.i, 1 ; 2 uses
end_hunk_4
begin_hunk_5_@aesni_cbc_hmac_sha1_tls1_multiblock_encrypt:bb.a
  %i.me = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  store i32 %i.md, ptr %i.me, align 4, !tbaa !5
  %i.mf = getelementptr i8, ptr %i.ll, i64 20
  %11 = add i32 %i.gs, 4
  %i.mg = and i32 %11, 15                         ; 2 uses
  %i.mh = trunc nuw nsw i32 %i.mg to i8
  %12 = xor i8 %i.mh, 15
  %13 = sub i32 11, %i.gs
  %14 = and i32 %13, 15
  %narrow.i = add nuw nsw i32 %14, 1
  %i.mi = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.mf, i8 %12, i64 %i.mi, i1 false), !tbaa !10
  %15 = sub i32 %i.gs, %i.mg                      ; 3 uses
  %reass.sub.peel.i = add i32 %15, 36
  %i.mj = sub i32 %reass.sub.peel.i, %.1308.i
  %i.mk = lshr i32 %i.mj, 4
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  store i32 %i.mk, ptr %i.ml, align 8, !tbaa !68
  %i.mm = add i32 %15, 52                         ; 2 uses
  %i.mn = load i8, ptr %i.iy, align 4, !tbaa !10
  store i8 %i.mn, ptr %scevgep392.i, align 1, !tbaa !10
  %i.mo = load i8, ptr %i.iz, align 1, !tbaa !10
end_hunk_5
begin_hunk_6_@aesni_cbc_hmac_sha1_tls1_multiblock_encrypt:bb.a
  %i.mv = trunc i32 %i.mm to i8
  %i.mw = getelementptr inbounds nuw i8, ptr %scevgep392.i, i64 4
  store i8 %i.mv, ptr %i.mw, align 1, !tbaa !10
  %i.mx = add i32 %15, 57
  %i.my = zext i32 %i.mx to i64
  %i.mz = add i64 %i.lb, %i.my
  br label %._crit_edge352.i
end_hunk_6
