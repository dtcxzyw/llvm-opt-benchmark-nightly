Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/cast?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@CAST_set_key:bb.a
  %i.vs = lshr i32 %i.vq, 8
  %i.vt = and i32 %i.vs, 255                      ; 2 uses
  %i.vu = lshr i32 %i.vq, 16
  %i.vv = and i32 %i.vu, 255                      ; 2 uses
  %i.vw = lshr i32 %i.vq, 24
  %i.vx = zext nneg i32 %i.vt to i64
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.vx
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !9  ; 2 uses
  %i.wa = zext nneg i32 %i.vv to i64
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.wa
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !9  ; 2 uses
  %i.wd = zext nneg i32 %i.vr to i64              ; 2 uses
  %i.we = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.wd
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !9
  %i.wg = zext nneg i32 %i.vw to i64              ; 3 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.wg
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !9
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.or
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !9
  %i.wl = xor i32 %i.wf, %i.wi
  %i.wm = xor i32 %i.wl, %i.wk
  %i.wn = xor i32 %i.wm, %i.qy
  %i.wo = xor i32 %i.wn, %i.vz
  %i.wp = xor i32 %i.wo, %i.wc                    ; 5 uses
  %i.wq = and i32 %i.wp, 255
  %i.wr = lshr i32 %i.wp, 8
  %i.ws = and i32 %i.wr, 255                      ; 2 uses
  %i.wt = lshr i32 %i.wp, 16
  %i.wu = and i32 %i.wt, 255                      ; 2 uses
  %i.wv = lshr i32 %i.wp, 24                      ; 2 uses
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.wg
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !9
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.va
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !9
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.vd
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !9
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.uk
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !9
  %i.xe = xor i32 %i.wx, %i.wz
  %i.xf = xor i32 %i.xe, %i.xb
  %i.xg = xor i32 %i.xf, %i.xd
  %i.xh = xor i32 %i.xg, %i.wc
  %i.xi = getelementptr inbounds nuw i8, ptr %.0193, i64 48
  store i32 %i.xh, ptr %i.xi, align 4, !tbaa !9
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.wd
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !9
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.va
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !9
  %i.xn = xor i32 %i.xk, %i.xm
  %i.xo = xor i32 %i.xn, %i.vi
  %i.xp = xor i32 %i.xo, %i.vl
  %i.xq = xor i32 %i.xp, %i.vz
  %i.xr = getelementptr inbounds nuw i8, ptr %.0193, i64 52
  store i32 %i.xq, ptr %i.xr, align 4, !tbaa !9
  %i.xs = zext nneg i32 %i.wv to i64
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.xs
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !9
  %i.xv = zext nneg i32 %i.wu to i64              ; 2 uses
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.xv
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !9
  %i.xy = xor i32 %i.xx, %i.xu
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.uk
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !9
  %i.yb = xor i32 %i.xy, %i.ya
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.ue
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !9
  %i.ye = xor i32 %i.yb, %i.yd
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.wg
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !9  ; 2 uses
  %i.yh = xor i32 %i.ye, %i.yg
  %i.yi = getelementptr inbounds nuw i8, ptr %.0193, i64 56
  store i32 %i.yh, ptr %i.yi, align 4, !tbaa !9
  %i.yj = zext nneg i32 %i.ws to i64
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.yj
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !9
  %i.ym = zext nneg i32 %i.wq to i64
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.ym
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !9  ; 2 uses
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.ub
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !9
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.xv
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !9
  %i.yt = xor i32 %i.yl, %i.yq
  %i.yu = xor i32 %i.yt, %i.ys
  %i.yv = xor i32 %i.yu, %i.yo
  %i.yw = xor i32 %i.yv, %i.uj
  %i.yx = getelementptr inbounds nuw i8, ptr %.0193, i64 60
  store i32 %i.yw, ptr %i.yx, align 4, !tbaa !9
  %.not = icmp eq ptr %.0193, %i.b
  %i.yy = getelementptr inbounds nuw i8, ptr %.0193, i64 64
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.yz = load <18 x i32>, ptr %i.b, align 16, !tbaa !9
  %i.za = shufflevector <18 x i32> %i.yz, <18 x i32> poison, <4 x i32> <i32 0, i32 1, i32 16, i32 17>
  %i.zb = and <4 x i32> %i.za, <i32 -1, i32 -1, i32 31, i32 31>
  %i.zc = xor <4 x i32> %i.zb, <i32 0, i32 0, i32 16, i32 16>
  %i.zd = shufflevector <4 x i32> %i.zc, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.zd, ptr %0, align 4, !tbaa !9
  %i.ze = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.zg = load <18 x i32>, ptr %i.ze, align 8, !tbaa !9
  %i.zh = shufflevector <18 x i32> %i.zg, <18 x i32> poison, <4 x i32> <i32 0, i32 1, i32 16, i32 17>
  %i.zi = and <4 x i32> %i.zh, <i32 -1, i32 -1, i32 31, i32 31>
  %i.zj = xor <4 x i32> %i.zi, <i32 0, i32 0, i32 16, i32 16>
  %i.zk = shufflevector <4 x i32> %i.zj, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.zk, ptr %i.zf, align 4, !tbaa !9
  %i.zl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.zn = load <18 x i32>, ptr %i.zl, align 16, !tbaa !9
  %i.zo = shufflevector <18 x i32> %i.zn, <18 x i32> poison, <4 x i32> <i32 0, i32 1, i32 16, i32 17>
  %i.zp = and <4 x i32> %i.zo, <i32 -1, i32 -1, i32 31, i32 31>
  %i.zq = xor <4 x i32> %i.zp, <i32 0, i32 0, i32 16, i32 16>
  %i.zr = shufflevector <4 x i32> %i.zq, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.zr, ptr %i.zm, align 4, !tbaa !9
  %i.zs = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.zu = load <18 x i32>, ptr %i.zs, align 8, !tbaa !9
  %i.zv = shufflevector <18 x i32> %i.zu, <18 x i32> poison, <4 x i32> <i32 0, i32 1, i32 16, i32 17>
  %i.zw = and <4 x i32> %i.zv, <i32 -1, i32 -1, i32 31, i32 31>
  %i.zx = xor <4 x i32> %i.zw, <i32 0, i32 0, i32 16, i32 16>
  %i.zy = shufflevector <4 x i32> %i.zx, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.zy, ptr %i.zt, align 4, !tbaa !9
  %i.zz = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aab = load <18 x i32>, ptr %i.zz, align 16, !tbaa !9
  %i.aac = shufflevector <18 x i32> %i.aab, <18 x i32> poison, <4 x i32> <i32 0, i32 1, i32 16, i32 17>
  %i.aad = and <4 x i32> %i.aac, <i32 -1, i32 -1, i32 31, i32 31>
  %i.aae = xor <4 x i32> %i.aad, <i32 0, i32 0, i32 16, i32 16>
  %i.aaf = shufflevector <4 x i32> %i.aae, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.aaf, ptr %i.aaa, align 4, !tbaa !9
  %i.aag = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aai = load <18 x i32>, ptr %i.aag, align 8, !tbaa !9
  %i.aaj = shufflevector <18 x i32> %i.aai, <18 x i32> poison, <4 x i32> <i32 0, i32 1, i32 16, i32 17>
  %i.aak = and <4 x i32> %i.aaj, <i32 -1, i32 -1, i32 31, i32 31>
  %i.aal = xor <4 x i32> %i.aak, <i32 0, i32 0, i32 16, i32 16>
  %i.aam = shufflevector <4 x i32> %i.aal, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.aam, ptr %i.aah, align 4, !tbaa !9
  %i.aan = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aap = load <18 x i32>, ptr %i.aan, align 16, !tbaa !9
  %i.aaq = shufflevector <18 x i32> %i.aap, <18 x i32> poison, <4 x i32> <i32 0, i32 1, i32 16, i32 17>
  %i.aar = and <4 x i32> %i.aaq, <i32 -1, i32 -1, i32 31, i32 31>
  %i.aas = xor <4 x i32> %i.aar, <i32 0, i32 0, i32 16, i32 16>
  %i.aat = shufflevector <4 x i32> %i.aas, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.aat, ptr %i.aao, align 4, !tbaa !9
  %i.aau = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aaw = load <18 x i32>, ptr %i.aau, align 8, !tbaa !9
  %i.aax = shufflevector <18 x i32> %i.aaw, <18 x i32> poison, <4 x i32> <i32 0, i32 1, i32 16, i32 17>
  %i.aay = and <4 x i32> %i.aax, <i32 -1, i32 -1, i32 31, i32 31>
  %i.aaz = xor <4 x i32> %i.aay, <i32 0, i32 0, i32 16, i32 16>
  %i.aba = shufflevector <4 x i32> %i.aaz, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.aba, ptr %i.aav, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @EVP_cast5_ecb() local_unnamed_addr #5 {
bb.a:
  ret ptr @cast5_ecb
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @EVP_cast5_cbc() local_unnamed_addr #5 {
bb.a:
  ret ptr @cast5_cbc
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @cast_init_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23
  %i.e = zext i32 %i.d to i64
  tail call void @CAST_set_key(ptr noundef %i.b, i64 noundef %i.e, ptr noundef %1)
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @cast_ecb_cipher(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #6 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = icmp ugt i64 %3, 7
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %CAST_ecb_encrypt.exit
  %.012 = phi i64 [ %3, %.lr.ph ], [ %i.ah, %CAST_ecb_encrypt.exit ]
  %.0811 = phi ptr [ %2, %.lr.ph ], [ %i.af, %CAST_ecb_encrypt.exit ] ; 3 uses
  %.0910 = phi ptr [ %1, %.lr.ph ], [ %i.ag, %CAST_ecb_encrypt.exit ] ; 9 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %4 = load i32, ptr %.0811, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %i.h = getelementptr inbounds nuw i8, ptr %.0811, i64 4
  store i32 %5, ptr %i.a, align 4, !tbaa !9
  %6 = load i32, ptr %i.h, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  store i32 %7, ptr %i.f, align 4, !tbaa !9
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @CAST_encrypt(ptr noundef nonnull %i.a, ptr noundef readonly %i.c)
  br label %CAST_ecb_encrypt.exit

bb.d:                                             ; preds = %bb.b
  call void @CAST_decrypt(ptr noundef nonnull %i.a, ptr noundef readonly %i.c)
  br label %CAST_ecb_encrypt.exit

CAST_ecb_encrypt.exit:                            ; preds = %bb.c, %bb.d
  %i.i = load i32, ptr %i.a, align 4, !tbaa !9    ; 4 uses
  %i.j = lshr i32 %i.i, 24
  %i.k = trunc nuw i32 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.0910, i64 1
  store i8 %i.k, ptr %.0910, align 1, !tbaa !8
  %i.m = lshr i32 %i.i, 16
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %.0910, i64 2
  store i8 %i.n, ptr %i.l, align 1, !tbaa !8
  %i.p = lshr i32 %i.i, 8
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %.0910, i64 3
  store i8 %i.q, ptr %i.o, align 1, !tbaa !8
  %i.s = trunc i32 %i.i to i8
  %i.t = getelementptr inbounds nuw i8, ptr %.0910, i64 4
  store i8 %i.s, ptr %i.r, align 1, !tbaa !8
  %i.u = load i32, ptr %i.f, align 4, !tbaa !9    ; 4 uses
  %i.v = lshr i32 %i.u, 24
  %i.w = trunc nuw i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %.0910, i64 5
  store i8 %i.w, ptr %i.t, align 1, !tbaa !8
  %i.y = lshr i32 %i.u, 16
  %i.z = trunc i32 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910, i64 6
  store i8 %i.z, ptr %i.x, align 1, !tbaa !8
  %i.ab = lshr i32 %i.u, 8
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910, i64 7
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !8
  %i.ae = trunc i32 %i.u to i8
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.af = getelementptr inbounds nuw i8, ptr %.0811, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910, i64 8
  %i.ah = add i64 %.012, -8                       ; 2 uses
  %i.ai = icmp ugt i64 %i.ah, 7
  br i1 %i.ai, label %bb.b, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %CAST_ecb_encrypt.exit, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @cast_cbc_cipher(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17
  tail call void @CAST_cbc_encrypt(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef %i.b, ptr noundef nonnull %i.c, i32 noundef %i.e)
  ret i32 1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"cast_key_st", !4, i64 0, !5, i64 128}
!11 = !{!10, !5, i64 128}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTS13evp_cipher_st", !13, i64 0}
!15 = !{!"evp_cipher_ctx_st", !14, i64 0, !13, i64 8, !13, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !4, i64 36, !4, i64 52, !4, i64 68, !5, i64 100, !5, i64 104, !5, i64 108, !4, i64 112, !5, i64 144}
!16 = !{!15, !13, i64 16}
!17 = !{!15, !5, i64 28}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12, !21, !22}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!15, !5, i64 24}
!24 = distinct !{!24, !12}
end_hunk_0
