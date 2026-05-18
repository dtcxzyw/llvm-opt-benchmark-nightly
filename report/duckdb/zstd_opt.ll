inline.NumInlined: 262
inline.NumDeleted: 50
begin_hunk_0_@_ZN11duckdb_zstdL17ZSTD_rescaleFreqsEPNS_10optState_tEPKhmi:bb.a
  %i.gh = add <4 x i32> %wide.load.8, %i.gd
  %i.gi = add <4 x i32> %wide.load199.8, %i.ge
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fb, i64 288
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fb, i64 304
  %wide.load.9 = load <4 x i32>, ptr %i.gj, align 4, !tbaa !3
  %wide.load199.9 = load <4 x i32>, ptr %i.gk, align 4, !tbaa !3
  %i.gl = add <4 x i32> %wide.load.9, %i.gh
  %i.gm = add <4 x i32> %wide.load199.9, %i.gi
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fb, i64 320
  %i.go = getelementptr inbounds nuw i8, ptr %i.fb, i64 336
  %wide.load.10 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !3
  %wide.load199.10 = load <4 x i32>, ptr %i.go, align 4, !tbaa !3
  %i.gp = add <4 x i32> %wide.load.10, %i.gl
  %i.gq = add <4 x i32> %wide.load199.10, %i.gm
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fb, i64 352
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fb, i64 368
  %wide.load.11 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !3
  %wide.load199.11 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !3
  %i.gt = add <4 x i32> %wide.load.11, %i.gp
  %i.gu = add <4 x i32> %wide.load199.11, %i.gq
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fb, i64 384
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fb, i64 400
  %wide.load.12 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !3
  %wide.load199.12 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !3
  %i.gx = add <4 x i32> %wide.load.12, %i.gt
  %i.gy = add <4 x i32> %wide.load199.12, %i.gu
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fb, i64 416
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fb, i64 432
  %wide.load.13 = load <4 x i32>, ptr %i.gz, align 4, !tbaa !3
  %wide.load199.13 = load <4 x i32>, ptr %i.ha, align 4, !tbaa !3
  %i.hb = add <4 x i32> %wide.load.13, %i.gx
  %i.hc = add <4 x i32> %wide.load199.13, %i.gy
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fb, i64 448
  %i.he = getelementptr inbounds nuw i8, ptr %i.fb, i64 464
  %wide.load.14 = load <4 x i32>, ptr %i.hd, align 4, !tbaa !3
  %wide.load199.14 = load <4 x i32>, ptr %i.he, align 4, !tbaa !3
  %i.hf = add <4 x i32> %wide.load.14, %i.hb
  %i.hg = add <4 x i32> %wide.load199.14, %i.hc
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fb, i64 480
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fb, i64 496
  %wide.load.15 = load <4 x i32>, ptr %i.hh, align 4, !tbaa !3
  %wide.load199.15 = load <4 x i32>, ptr %i.hi, align 4, !tbaa !3
  %i.hj = add <4 x i32> %wide.load.15, %i.hf
  %i.hk = add <4 x i32> %wide.load199.15, %i.hg
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fb, i64 512
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fb, i64 528
  %wide.load.16 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !3
  %wide.load199.16 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !3
  %i.hn = add <4 x i32> %wide.load.16, %i.hj
  %i.ho = add <4 x i32> %wide.load199.16, %i.hk
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fb, i64 544
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fb, i64 560
  %wide.load.17 = load <4 x i32>, ptr %i.hp, align 4, !tbaa !3
  %wide.load199.17 = load <4 x i32>, ptr %i.hq, align 4, !tbaa !3
  %i.hr = add <4 x i32> %wide.load.17, %i.hn
  %i.hs = add <4 x i32> %wide.load199.17, %i.ho
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fb, i64 576
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fb, i64 592
  %wide.load.18 = load <4 x i32>, ptr %i.ht, align 4, !tbaa !3
  %wide.load199.18 = load <4 x i32>, ptr %i.hu, align 4, !tbaa !3
  %i.hv = add <4 x i32> %wide.load.18, %i.hr
  %i.hw = add <4 x i32> %wide.load199.18, %i.hs
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fb, i64 608
  %i.hy = getelementptr inbounds nuw i8, ptr %i.fb, i64 624
  %wide.load.19 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !3
  %wide.load199.19 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !3
  %i.hz = add <4 x i32> %wide.load.19, %i.hv
  %i.ia = add <4 x i32> %wide.load199.19, %i.hw
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fb, i64 640
  %i.ic = getelementptr inbounds nuw i8, ptr %i.fb, i64 656
  %wide.load.20 = load <4 x i32>, ptr %i.ib, align 4, !tbaa !3
  %wide.load199.20 = load <4 x i32>, ptr %i.ic, align 4, !tbaa !3
  %i.id = add <4 x i32> %wide.load.20, %i.hz
  %i.ie = add <4 x i32> %wide.load199.20, %i.ia
  %i.if = getelementptr inbounds nuw i8, ptr %i.fb, i64 672
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fb, i64 688
  %wide.load.21 = load <4 x i32>, ptr %i.if, align 4, !tbaa !3
  %wide.load199.21 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !3
  %i.ih = add <4 x i32> %wide.load.21, %i.id
  %i.ii = add <4 x i32> %wide.load199.21, %i.ie
  %i.ij = getelementptr inbounds nuw i8, ptr %i.fb, i64 704
  %i.ik = getelementptr inbounds nuw i8, ptr %i.fb, i64 720
  %wide.load.22 = load <4 x i32>, ptr %i.ij, align 4, !tbaa !3
  %wide.load199.22 = load <4 x i32>, ptr %i.ik, align 4, !tbaa !3
  %i.il = add <4 x i32> %wide.load.22, %i.ih
  %i.im = add <4 x i32> %wide.load199.22, %i.ii
  %i.in = getelementptr inbounds nuw i8, ptr %i.fb, i64 736
  %i.io = getelementptr inbounds nuw i8, ptr %i.fb, i64 752
  %wide.load.23 = load <4 x i32>, ptr %i.in, align 4, !tbaa !3
  %wide.load199.23 = load <4 x i32>, ptr %i.io, align 4, !tbaa !3
  %i.ip = add <4 x i32> %wide.load.23, %i.il
  %i.iq = add <4 x i32> %wide.load199.23, %i.im
  %i.ir = getelementptr inbounds nuw i8, ptr %i.fb, i64 768
  %i.is = getelementptr inbounds nuw i8, ptr %i.fb, i64 784
  %wide.load.24 = load <4 x i32>, ptr %i.ir, align 4, !tbaa !3
  %wide.load199.24 = load <4 x i32>, ptr %i.is, align 4, !tbaa !3
  %i.it = add <4 x i32> %wide.load.24, %i.ip
  %i.iu = add <4 x i32> %wide.load199.24, %i.iq
  %i.iv = getelementptr inbounds nuw i8, ptr %i.fb, i64 800
  %i.iw = getelementptr inbounds nuw i8, ptr %i.fb, i64 816
  %wide.load.25 = load <4 x i32>, ptr %i.iv, align 4, !tbaa !3
  %wide.load199.25 = load <4 x i32>, ptr %i.iw, align 4, !tbaa !3
  %i.ix = add <4 x i32> %wide.load.25, %i.it
  %i.iy = add <4 x i32> %wide.load199.25, %i.iu
  %i.iz = getelementptr inbounds nuw i8, ptr %i.fb, i64 832
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fb, i64 848
  %wide.load.26 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !3
  %wide.load199.26 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !3
  %i.jb = add <4 x i32> %wide.load.26, %i.ix
  %i.jc = add <4 x i32> %wide.load199.26, %i.iy
  %i.jd = getelementptr inbounds nuw i8, ptr %i.fb, i64 864
  %i.je = getelementptr inbounds nuw i8, ptr %i.fb, i64 880
  %wide.load.27 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !3
  %wide.load199.27 = load <4 x i32>, ptr %i.je, align 4, !tbaa !3
  %i.jf = add <4 x i32> %wide.load.27, %i.jb
  %i.jg = add <4 x i32> %wide.load199.27, %i.jc
  %i.jh = getelementptr inbounds nuw i8, ptr %i.fb, i64 896
  %i.ji = getelementptr inbounds nuw i8, ptr %i.fb, i64 912
  %wide.load.28 = load <4 x i32>, ptr %i.jh, align 4, !tbaa !3
  %wide.load199.28 = load <4 x i32>, ptr %i.ji, align 4, !tbaa !3
  %i.jj = add <4 x i32> %wide.load.28, %i.jf
  %i.jk = add <4 x i32> %wide.load199.28, %i.jg
  %i.jl = getelementptr inbounds nuw i8, ptr %i.fb, i64 928
  %i.jm = getelementptr inbounds nuw i8, ptr %i.fb, i64 944
  %wide.load.29 = load <4 x i32>, ptr %i.jl, align 4, !tbaa !3
  %wide.load199.29 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !3
  %i.jn = add <4 x i32> %wide.load.29, %i.jj
  %i.jo = add <4 x i32> %wide.load199.29, %i.jk
  %i.jp = getelementptr inbounds nuw i8, ptr %i.fb, i64 960
  %i.jq = getelementptr inbounds nuw i8, ptr %i.fb, i64 976
  %wide.load.30 = load <4 x i32>, ptr %i.jp, align 4, !tbaa !3
  %wide.load199.30 = load <4 x i32>, ptr %i.jq, align 4, !tbaa !3
  %i.jr = add <4 x i32> %wide.load.30, %i.jn
  %i.js = add <4 x i32> %wide.load199.30, %i.jo
  %i.jt = getelementptr inbounds nuw i8, ptr %i.fb, i64 992
  %i.ju = getelementptr inbounds nuw i8, ptr %i.fb, i64 1008
  %wide.load.31 = load <4 x i32>, ptr %i.jt, align 4, !tbaa !3
  %wide.load199.31 = load <4 x i32>, ptr %i.ju, align 4, !tbaa !3
  %i.jv = add <4 x i32> %wide.load.31, %i.jr
  %i.jw = add <4 x i32> %wide.load199.31, %i.js
  %bin.rdx = add <4 x i32> %i.jw, %i.jv
  %i.jx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  %i.jy = icmp ult i32 %i.jx, 8192
  br i1 %i.jy, label %_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit, label %vector.ph200

vector.ph200:                                     ; preds = %vector.ph
  %i.jz = lshr i32 %i.jx, 12
  %i.ka = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.jz, i1 true)
  %i.kb = xor i32 %i.ka, 31
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.kb, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph200
  %index202 = phi i64 [ 0, %vector.ph200 ], [ %index.next207.1, %vector.body201 ] ; 3 uses
  %vec.phi203 = phi <4 x i32> [ zeroinitializer, %vector.ph200 ], [ %i.kr, %vector.body201 ]
  %vec.phi204 = phi <4 x i32> [ zeroinitializer, %vector.ph200 ], [ %i.ks, %vector.body201 ]
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %index202 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16 ; 2 uses
  %wide.load205 = load <4 x i32>, ptr %i.kc, align 4, !tbaa !3
  %wide.load206 = load <4 x i32>, ptr %i.kd, align 4, !tbaa !3
  %i.ke = lshr <4 x i32> %wide.load205, %broadcast.splat
  %i.kf = lshr <4 x i32> %wide.load206, %broadcast.splat
  %i.kg = add nuw <4 x i32> %i.ke, splat (i32 1)  ; 2 uses
  %i.kh = add nuw <4 x i32> %i.kf, splat (i32 1)  ; 2 uses
  %i.ki = add <4 x i32> %i.kg, %vec.phi203
  %i.kj = add <4 x i32> %i.kh, %vec.phi204
  store <4 x i32> %i.kg, ptr %i.kc, align 4, !tbaa !3
  store <4 x i32> %i.kh, ptr %i.kd, align 4, !tbaa !3
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %index202 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 32 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 48 ; 2 uses
  %wide.load205.1 = load <4 x i32>, ptr %i.kl, align 4, !tbaa !3
  %wide.load206.1 = load <4 x i32>, ptr %i.km, align 4, !tbaa !3
  %i.kn = lshr <4 x i32> %wide.load205.1, %broadcast.splat
  %i.ko = lshr <4 x i32> %wide.load206.1, %broadcast.splat
  %i.kp = add nuw <4 x i32> %i.kn, splat (i32 1)  ; 2 uses
  %i.kq = add nuw <4 x i32> %i.ko, splat (i32 1)  ; 2 uses
  %i.kr = add <4 x i32> %i.kp, %i.ki              ; 2 uses
  %i.ks = add <4 x i32> %i.kq, %i.kj              ; 2 uses
  store <4 x i32> %i.kp, ptr %i.kl, align 4, !tbaa !3
  store <4 x i32> %i.kq, ptr %i.km, align 4, !tbaa !3
  %index.next207.1 = add nuw nsw i64 %index202, 16 ; 2 uses
  %i.kt = icmp eq i64 %index.next207.1, 256
  br i1 %i.kt, label %_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit.loopexit, label %vector.body201, !llvm.loop !139

_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit.loopexit: ; preds = %vector.body201
  %bin.rdx209 = add <4 x i32> %i.ks, %i.kr
  %i.ku = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx209)
  br label %_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit

_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit:     ; preds = %_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit.loopexit, %vector.ph
  %.0.i = phi i32 [ %i.jx, %vector.ph ], [ %i.ku, %_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit.loopexit ]
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.0.i, ptr %i.kv, align 8, !tbaa !73
  br label %_ZN11duckdb_zstdL7sum_u32EPKjm.exit.i102

_ZN11duckdb_zstdL7sum_u32EPKjm.exit.i102:         ; preds = %_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit, %bb.o
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !43 ; 11 uses
  %4 = load <36 x i32>, ptr %i.kx, align 4, !tbaa !3 ; 2 uses
  %i.ky = tail call i32 @llvm.vector.reduce.add.v36i32(<36 x i32> %4) ; 3 uses
  %i.kz = icmp ult i32 %i.ky, 4096
  br i1 %i.kz, label %_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit109, label %.split.i.i103

.split.i.i103:                                    ; preds = %_ZN11duckdb_zstdL7sum_u32EPKjm.exit.i102
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 16 ; 2 uses
  %i.lb = load <4 x i32>, ptr %i.la, align 4, !tbaa !3
  %5 = getelementptr inbounds nuw i8, ptr %i.kx, i64 128 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 112 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kx, i64 96 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kx, i64 80
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kx, i64 64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kx, i64 48
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %i.li = lshr i32 %i.ky, 11
  %i.lj = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.li, i1 true)
  %i.lk = xor i32 %i.lj, 31
  %i.ll = load <4 x i32>, ptr %i.kx, align 4, !tbaa !3
  %6 = load <4 x i32>, ptr %i.ld, align 4, !tbaa !3
  %i.lm = load <4 x i32>, ptr %i.lc, align 4, !tbaa !3
  %i.ln = load <4 x i32>, ptr %5, align 4, !tbaa !3
  %7 = shufflevector <4 x i32> %i.ln, <4 x i32> %i.lm, <36 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %8 = shufflevector <4 x i32> %6, <4 x i32> poison, <36 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %9 = shufflevector <36 x i32> %7, <36 x i32> %8, <36 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 36, i32 37, i32 38, i32 39, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35>
  %10 = shufflevector <36 x i32> %4, <36 x i32> %9, <36 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71>
  %11 = shufflevector <4 x i32> %i.ll, <4 x i32> poison, <36 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %12 = shufflevector <36 x i32> %11, <36 x i32> %10, <36 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71>
  %13 = shufflevector <4 x i32> %i.lb, <4 x i32> poison, <36 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %14 = shufflevector <36 x i32> %12, <36 x i32> %13, <36 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35>
  %15 = insertelement <36 x i32> poison, i32 %i.lk, i64 0
  %16 = shufflevector <36 x i32> %15, <36 x i32> poison, <36 x i32> zeroinitializer
  %17 = lshr <36 x i32> %14, %16
  %18 = add nuw <36 x i32> %17, splat (i32 1)     ; 10 uses
  %i.lo = shufflevector <36 x i32> %18, <36 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.lo, ptr %i.kx, align 4, !tbaa !3
  %i.lp = shufflevector <36 x i32> %18, <36 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.lp, ptr %i.la, align 4, !tbaa !3
  %i.lq = shufflevector <36 x i32> %18, <36 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.lq, ptr %i.lh, align 4, !tbaa !3
  %i.lr = shufflevector <36 x i32> %18, <36 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.lr, ptr %i.lg, align 4, !tbaa !3
  %i.ls = shufflevector <36 x i32> %18, <36 x i32> poison, <4 x i32> <i32 16, i32 17, i32 18, i32 19>
  store <4 x i32> %i.ls, ptr %i.lf, align 4, !tbaa !3
  %i.lt = shufflevector <36 x i32> %18, <36 x i32> poison, <4 x i32> <i32 20, i32 21, i32 22, i32 23>
  store <4 x i32> %i.lt, ptr %i.le, align 4, !tbaa !3
  %i.lu = shufflevector <36 x i32> %18, <36 x i32> poison, <4 x i32> <i32 24, i32 25, i32 26, i32 27>
  store <4 x i32> %i.lu, ptr %i.ld, align 4, !tbaa !3
  %i.lv = shufflevector <36 x i32> %18, <36 x i32> poison, <4 x i32> <i32 28, i32 29, i32 30, i32 31>
  store <4 x i32> %i.lv, ptr %i.lc, align 4, !tbaa !3
  %19 = tail call i32 @llvm.vector.reduce.add.v36i32(<36 x i32> %18)
  %20 = shufflevector <36 x i32> %18, <36 x i32> poison, <4 x i32> <i32 32, i32 33, i32 34, i32 35>
  store <4 x i32> %20, ptr %5, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit109

_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit109:  ; preds = %.split.i.i103, %_ZN11duckdb_zstdL7sum_u32EPKjm.exit.i102
  %.0.i108 = phi i32 [ %i.ky, %_ZN11duckdb_zstdL7sum_u32EPKjm.exit.i102 ], [ %19, %.split.i.i103 ]
  store i32 %.0.i108, ptr %i.d, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !55 ; 19 uses
  %21 = load <53 x i32>, ptr %i.lx, align 4, !tbaa !3
  %i.ly = tail call i32 @llvm.vector.reduce.add.v53i32(<53 x i32> %21) ; 3 uses
  %i.lz = icmp ult i32 %i.ly, 4096
  br i1 %i.lz, label %_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit120, label %vector.ph210

vector.ph210:                                     ; preds = %_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit109
  %i.ma = lshr i32 %i.ly, 11
  %i.mb = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ma, i1 true)
  %i.mc = xor i32 %i.mb, 31                       ; 6 uses
  %broadcast.splatinsert211 = insertelement <4 x i32> poison, i32 %i.mc, i64 0
  %broadcast.splat212 = shufflevector <4 x i32> %broadcast.splatinsert211, <4 x i32> poison, <4 x i32> zeroinitializer ; 12 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lx, i64 16 ; 2 uses
  %wide.load217 = load <4 x i32>, ptr %i.lx, align 4, !tbaa !3
  %wide.load218 = load <4 x i32>, ptr %i.md, align 4, !tbaa !3
  %i.me = lshr <4 x i32> %wide.load217, %broadcast.splat212
  %i.mf = lshr <4 x i32> %wide.load218, %broadcast.splat212
  %i.mg = add nuw <4 x i32> %i.me, splat (i32 1)  ; 2 uses
  %i.mh = add nuw <4 x i32> %i.mf, splat (i32 1)  ; 2 uses
  store <4 x i32> %i.mg, ptr %i.lx, align 4, !tbaa !3
  store <4 x i32> %i.mh, ptr %i.md, align 4, !tbaa !3
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lx, i64 32 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lx, i64 48 ; 2 uses
  %wide.load217.1 = load <4 x i32>, ptr %i.mi, align 4, !tbaa !3
  %wide.load218.1 = load <4 x i32>, ptr %i.mj, align 4, !tbaa !3
  %i.mk = lshr <4 x i32> %wide.load217.1, %broadcast.splat212
  %i.ml = lshr <4 x i32> %wide.load218.1, %broadcast.splat212
  %i.mm = add nuw <4 x i32> %i.mk, splat (i32 1)  ; 2 uses
  %i.mn = add nuw <4 x i32> %i.ml, splat (i32 1)  ; 2 uses
  store <4 x i32> %i.mm, ptr %i.mi, align 4, !tbaa !3
  store <4 x i32> %i.mn, ptr %i.mj, align 4, !tbaa !3
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lx, i64 64 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lx, i64 80 ; 2 uses
  %wide.load217.2 = load <4 x i32>, ptr %i.mo, align 4, !tbaa !3
  %wide.load218.2 = load <4 x i32>, ptr %i.mp, align 4, !tbaa !3
  %i.mq = lshr <4 x i32> %wide.load217.2, %broadcast.splat212
  %i.mr = lshr <4 x i32> %wide.load218.2, %broadcast.splat212
  %i.ms = add nuw <4 x i32> %i.mq, splat (i32 1)  ; 2 uses
  %i.mt = add nuw <4 x i32> %i.mr, splat (i32 1)  ; 2 uses
  store <4 x i32> %i.ms, ptr %i.mo, align 4, !tbaa !3
  store <4 x i32> %i.mt, ptr %i.mp, align 4, !tbaa !3
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lx, i64 96 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lx, i64 112 ; 2 uses
  %wide.load217.3 = load <4 x i32>, ptr %i.mu, align 4, !tbaa !3
  %wide.load218.3 = load <4 x i32>, ptr %i.mv, align 4, !tbaa !3
  %i.mw = lshr <4 x i32> %wide.load217.3, %broadcast.splat212
  %i.mx = lshr <4 x i32> %wide.load218.3, %broadcast.splat212
  %i.my = add nuw <4 x i32> %i.mw, splat (i32 1)  ; 2 uses
  %i.mz = add nuw <4 x i32> %i.mx, splat (i32 1)  ; 2 uses
  store <4 x i32> %i.my, ptr %i.mu, align 4, !tbaa !3
  store <4 x i32> %i.mz, ptr %i.mv, align 4, !tbaa !3
  %i.na = getelementptr inbounds nuw i8, ptr %i.lx, i64 128 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.lx, i64 144 ; 2 uses
  %wide.load217.4 = load <4 x i32>, ptr %i.na, align 4, !tbaa !3
  %wide.load218.4 = load <4 x i32>, ptr %i.nb, align 4, !tbaa !3
  %i.nc = lshr <4 x i32> %wide.load217.4, %broadcast.splat212
  %i.nd = lshr <4 x i32> %wide.load218.4, %broadcast.splat212
  %i.ne = add nuw <4 x i32> %i.nc, splat (i32 1)  ; 2 uses
  %i.nf = add nuw <4 x i32> %i.nd, splat (i32 1)  ; 2 uses
  store <4 x i32> %i.ne, ptr %i.na, align 4, !tbaa !3
  store <4 x i32> %i.nf, ptr %i.nb, align 4, !tbaa !3
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lx, i64 160 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.lx, i64 176 ; 2 uses
  %wide.load217.5 = load <4 x i32>, ptr %i.ng, align 4, !tbaa !3
  %wide.load218.5 = load <4 x i32>, ptr %i.nh, align 4, !tbaa !3
  %i.ni = lshr <4 x i32> %wide.load217.5, %broadcast.splat212
  %i.nj = lshr <4 x i32> %wide.load218.5, %broadcast.splat212
  %i.nk = add nuw <4 x i32> %i.ni, splat (i32 1)  ; 2 uses
  %i.nl = add nuw <4 x i32> %i.nj, splat (i32 1)  ; 2 uses
  store <4 x i32> %i.nk, ptr %i.ng, align 4, !tbaa !3
  store <4 x i32> %i.nl, ptr %i.nh, align 4, !tbaa !3
  %i.nm = add <4 x i32> %i.mn, %i.mh
  %i.nn = add <4 x i32> %i.mt, %i.nm
  %i.no = add <4 x i32> %i.mz, %i.nn
  %i.np = add <4 x i32> %i.nf, %i.no
  %i.nq = add <4 x i32> %i.nl, %i.np
  %i.nr = add <4 x i32> %i.mm, %i.mg
  %i.ns = add <4 x i32> %i.ms, %i.nr
  %i.nt = add <4 x i32> %i.my, %i.ns
  %i.nu = add <4 x i32> %i.ne, %i.nt
  %i.nv = add <4 x i32> %i.nk, %i.nu
  %bin.rdx221 = add <4 x i32> %i.nq, %i.nv
  %i.nw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx221)
  %i.nx = getelementptr inbounds nuw i8, ptr %i.lx, i64 192 ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !3
  %i.nz = lshr i32 %i.ny, %i.mc
  %i.oa = add nuw i32 %i.nz, 1                    ; 2 uses
  %i.ob = add i32 %i.oa, %i.nw
  store i32 %i.oa, ptr %i.nx, align 4, !tbaa !3
  %i.oc = getelementptr inbounds nuw i8, ptr %i.lx, i64 196 ; 2 uses
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !3
  %i.oe = lshr i32 %i.od, %i.mc
  %i.of = add nuw i32 %i.oe, 1                    ; 2 uses
  %i.og = add i32 %i.of, %i.ob
  store i32 %i.of, ptr %i.oc, align 4, !tbaa !3
  %i.oh = getelementptr inbounds nuw i8, ptr %i.lx, i64 200 ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !3
  %i.oj = lshr i32 %i.oi, %i.mc
  %i.ok = add nuw i32 %i.oj, 1                    ; 2 uses
  %i.ol = add i32 %i.ok, %i.og
  store i32 %i.ok, ptr %i.oh, align 4, !tbaa !3
  %i.om = getelementptr inbounds nuw i8, ptr %i.lx, i64 204 ; 2 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !3
  %i.oo = lshr i32 %i.on, %i.mc
  %i.op = add nuw i32 %i.oo, 1                    ; 2 uses
  %i.oq = add i32 %i.op, %i.ol
  store i32 %i.op, ptr %i.om, align 4, !tbaa !3
  %i.or = getelementptr inbounds nuw i8, ptr %i.lx, i64 208 ; 2 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !3
  %i.ot = lshr i32 %i.os, %i.mc
  %i.ou = add nuw i32 %i.ot, 1                    ; 2 uses
  %i.ov = add i32 %i.ou, %i.oq
  store i32 %i.ou, ptr %i.or, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit120

_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit120:  ; preds = %vector.ph210, %_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit109
  %.0.i119 = phi i32 [ %i.ly, %_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit109 ], [ %i.ov, %vector.ph210 ]
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.0.i119, ptr %i.ow, align 8, !tbaa !76
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !53 ; 16 uses
  %i.oz = load <32 x i32>, ptr %i.oy, align 4, !tbaa !3 ; 5 uses
  %i.pa = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.oz) ; 3 uses
  %i.pb = icmp ult i32 %i.pa, 4096
  br i1 %i.pb, label %.loopexit.sink.split, label %.split.i.i125

.split.i.i125:                                    ; preds = %_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit120
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 4 ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !3
  %i.pe = load <9 x i32>, ptr %i.oy, align 4, !tbaa !3
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oy, i64 124 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oy, i64 120 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oy, i64 116 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oy, i64 112
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oy, i64 104
  %i.pk = getelementptr inbounds nuw i8, ptr %i.oy, i64 100
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oy, i64 88
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oy, i64 72
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oy, i64 56
  %i.po = getelementptr inbounds nuw i8, ptr %i.oy, i64 40
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oy, i64 24
  %i.pq = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pr = lshr i32 %i.pa, 11
  %i.ps = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.pr, i1 true)
  %i.pt = xor i32 %i.ps, 31                       ; 5 uses
  %i.pu = lshr i32 %i.pd, %i.pt
  %i.pv = add nuw i32 %i.pu, 1                    ; 2 uses
  store i32 %i.pv, ptr %i.pc, align 4, !tbaa !3
  %i.pw = load <4 x i32>, ptr %i.pk, align 4, !tbaa !3
  %i.px = shufflevector <32 x i32> %i.oz, <32 x i32> poison, <4 x i32> <i32 21, i32 22, i32 23, i32 24>
  %i.py = shufflevector <4 x i32> %i.pw, <4 x i32> %i.px, <28 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.pz = shufflevector <32 x i32> %i.oz, <32 x i32> poison, <28 x i32> <i32 17, i32 18, i32 19, i32 20, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qa = shufflevector <28 x i32> %i.py, <28 x i32> %i.pz, <28 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.qb = shufflevector <32 x i32> %i.oz, <32 x i32> poison, <28 x i32> <i32 13, i32 14, i32 15, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qc = shufflevector <28 x i32> %i.qa, <28 x i32> %i.qb, <28 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.qd = shufflevector <9 x i32> %i.pe, <9 x i32> poison, <28 x i32> <i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qe = shufflevector <28 x i32> %i.qd, <28 x i32> %i.qc, <28 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %i.qf = shufflevector <32 x i32> %i.oz, <32 x i32> poison, <28 x i32> <i32 9, i32 10, i32 11, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qg = shufflevector <28 x i32> %i.qe, <28 x i32> %i.qf, <28 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 28, i32 29, i32 30, i32 31, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.qh = insertelement <28 x i32> poison, i32 %i.pt, i64 0
  %i.qi = shufflevector <28 x i32> %i.qh, <28 x i32> poison, <28 x i32> zeroinitializer
  %i.qj = lshr <28 x i32> %i.qg, %i.qi
  %i.qk = add nuw <28 x i32> %i.qj, splat (i32 1) ; 10 uses
  %i.ql = extractelement <28 x i32> %i.qk, i64 0
  store i32 %i.ql, ptr %i.oy, align 4, !tbaa !3
  %i.qm = shufflevector <28 x i32> %i.qk, <28 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  store <4 x i32> %i.qm, ptr %i.pq, align 4, !tbaa !3
  %i.qn = shufflevector <28 x i32> %i.qk, <28 x i32> poison, <4 x i32> <i32 5, i32 6, i32 7, i32 8>
  store <4 x i32> %i.qn, ptr %i.pp, align 4, !tbaa !3
  %i.qo = shufflevector <28 x i32> %i.qk, <28 x i32> poison, <4 x i32> <i32 9, i32 10, i32 11, i32 12>
  store <4 x i32> %i.qo, ptr %i.po, align 4, !tbaa !3
  %i.qp = shufflevector <28 x i32> %i.qk, <28 x i32> poison, <4 x i32> <i32 13, i32 14, i32 15, i32 16>
  store <4 x i32> %i.qp, ptr %i.pn, align 4, !tbaa !3
  %i.qq = shufflevector <28 x i32> %i.qk, <28 x i32> poison, <4 x i32> <i32 17, i32 18, i32 19, i32 20>
  store <4 x i32> %i.qq, ptr %i.pm, align 4, !tbaa !3
  %i.qr = shufflevector <28 x i32> %i.qk, <28 x i32> poison, <4 x i32> <i32 21, i32 22, i32 23, i32 24>
  store <4 x i32> %i.qr, ptr %i.pl, align 4, !tbaa !3
  %i.qs = shufflevector <28 x i32> %i.qk, <28 x i32> poison, <2 x i32> <i32 25, i32 26>
  store <2 x i32> %i.qs, ptr %i.pj, align 4, !tbaa !3
  %i.qt = extractelement <28 x i32> %i.qk, i64 27
  store i32 %i.qt, ptr %i.pi, align 4, !tbaa !3
  %i.qu = load i32, ptr %i.ph, align 4, !tbaa !3
  %i.qv = lshr i32 %i.qu, %i.pt
  %i.qw = add nuw i32 %i.qv, 1                    ; 2 uses
  store i32 %i.qw, ptr %i.ph, align 4, !tbaa !3
  %i.qx = load i32, ptr %i.pg, align 4, !tbaa !3
  %i.qy = lshr i32 %i.qx, %i.pt
  %i.qz = add nuw i32 %i.qy, 1                    ; 2 uses
  store i32 %i.qz, ptr %i.pg, align 4, !tbaa !3
  %i.ra = load i32, ptr %i.pf, align 4, !tbaa !3
  %i.rb = lshr i32 %i.ra, %i.pt
  %i.rc = add nuw i32 %i.rb, 1                    ; 2 uses
  %i.rd = tail call i32 @llvm.vector.reduce.add.v28i32(<28 x i32> %i.qk)
  %op.rdx = add i32 %i.rd, %i.pv
  %op.rdx233 = add i32 %i.qw, %i.qz
  %op.rdx234 = add i32 %op.rdx, %op.rdx233
  %op.rdx235 = add i32 %op.rdx234, %i.rc
  store i32 %i.rc, ptr %i.pf, align 4, !tbaa !3
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit120, %.split.i.i125, %_ZN11duckdb_zstdL7sum_u32EPKjm.exit
  %.sink = phi i32 [ 53, %_ZN11duckdb_zstdL7sum_u32EPKjm.exit ], [ %i.pa, %_ZN11duckdb_zstdL15ZSTD_scaleStatsEPjjj.exit120 ], [ %op.rdx235, %.split.i.i125 ] ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.sink, ptr %i.re, align 4, !tbaa !75
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.loopexit.sink.split
  %i.rf = phi i32 [ %.sink, %.loopexit.sink.split ], [ %i.do, %bb.m ] ; 2 uses
  %.val.i132 = load i32, ptr %i.b, align 8, !tbaa !57
  %.not19.i = icmp eq i32 %.val.i132, 2
  br i1 %.not19.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %.not16.i = icmp eq i32 %3, 0
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.rh = load i32, ptr %i.rg, align 8, !tbaa !73
  %i.ri = add i32 %i.rh, 1                        ; 2 uses
  %i.rj = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ri, i1 true) ; 2 uses
  br i1 %.not16.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.rk = xor i32 %i.rj, 31                       ; 2 uses
  %i.rl = shl nuw nsw i32 %i.rk, 8
  %i.rm = shl i32 %i.ri, 8
  %i.rn = lshr i32 %i.rm, %i.rk
  %i.ro = add i32 %i.rl, %i.rn
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.rp = shl nuw nsw i32 %i.rj, 8
  %i.rq = xor i32 %i.rp, 7936
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.rr = phi i32 [ %i.ro, %bb.q ], [ %i.rq, %bb.r ]
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.rr, ptr %i.rs, align 8, !tbaa !58
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit
  %.not17.i = icmp eq i32 %3, 0
  %i.rt = load i32, ptr %i.d, align 4, !tbaa !74
  %i.ru = add i32 %i.rt, 1                        ; 2 uses
  %i.rv = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ru, i1 true) ; 2 uses
  br i1 %.not17.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.rw = xor i32 %i.rv, 31                       ; 2 uses
  %i.rx = shl nuw nsw i32 %i.rw, 8
  %i.ry = shl i32 %i.ru, 8
  %i.rz = lshr i32 %i.ry, %i.rw
  %i.sa = add i32 %i.rx, %i.rz
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !76
  %i.sd = add i32 %i.sc, 1                        ; 2 uses
  %i.se = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.sd, i1 true)
  %i.sf = xor i32 %i.se, 31                       ; 2 uses
  %i.sg = shl nuw nsw i32 %i.sf, 8
  %i.sh = shl i32 %i.sd, 8
  %i.si = lshr i32 %i.sh, %i.sf
  %i.sj = add i32 %i.sg, %i.si
  %i.sk = add i32 %i.rf, 1                        ; 2 uses
  %i.sl = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.sk, i1 true)
  %i.sm = xor i32 %i.sl, 31                       ; 2 uses
  %i.sn = shl nuw nsw i32 %i.sm, 8
  %i.so = shl i32 %i.sk, 8
  %i.sp = lshr i32 %i.so, %i.sm
  %i.sq = add i32 %i.sn, %i.sp
  br label %_ZN11duckdb_zstdL18ZSTD_setBasePricesEPNS_10optState_tEi.exit

bb.v:                                             ; preds = %bb.t
  %i.sr = shl nuw nsw i32 %i.rv, 8
  %i.ss = xor i32 %i.sr, 7936
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.su = load i32, ptr %i.st, align 8, !tbaa !76
  %i.sv = add i32 %i.su, 1
  %i.sw = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.sv, i1 true)
  %i.sx = shl nuw nsw i32 %i.sw, 8
  %i.sy = xor i32 %i.sx, 7936
  %i.sz = add i32 %i.rf, 1
  %i.ta = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.sz, i1 true)
  %i.tb = shl nuw nsw i32 %i.ta, 8
  %i.tc = xor i32 %i.tb, 7936
  br label %_ZN11duckdb_zstdL18ZSTD_setBasePricesEPNS_10optState_tEi.exit

_ZN11duckdb_zstdL18ZSTD_setBasePricesEPNS_10optState_tEi.exit: ; preds = %bb.u, %bb.v
  %.sink20.i = phi i32 [ %i.ss, %bb.v ], [ %i.sa, %bb.u ]
  %.sink.i = phi i32 [ %i.sy, %bb.v ], [ %i.sj, %bb.u ]
  %i.td = phi i32 [ %i.tc, %bb.v ], [ %i.sq, %bb.u ]
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.sink20.i, ptr %i.te, align 4, !tbaa !42
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sink.i, ptr %i.tf, align 8, !tbaa !54
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.td, ptr %i.tg, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN11duckdb_zstdL33ZSTD_optLdm_processMatchCandidateEPNS_13ZSTD_optLdm_tEPNS_12ZSTD_match_tEPjjj(ptr noundef nonnull captures(none) %0, ptr noundef captures(none) %1, ptr noundef nonnull captures(none) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !120  ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN11duckdb_zstdL25ZSTD_optLdm_maybeAddMatchEPNS_12ZSTD_match_tEPjPKNS_13ZSTD_optLdm_tEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !121  ; 3 uses
  %.not = icmp ult i64 %i.e, %i.b
  br i1 %.not, label %bb.c, label %_ZN11duckdb_zstdL25ZSTD_optLdm_maybeAddMatchEPNS_12ZSTD_match_tEPjPKNS_13ZSTD_optLdm_tEj.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36   ; 4 uses
  %.not19 = icmp ult i32 %3, %i.g
  br i1 %.not19, label %bb.g, label %bb.d
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL37ZSTD_btGetAllMatches_dictMatchState_6EPNS_12ZSTD_match_tEPNS_17ZSTD_matchState_tEPjPKhS6_PKjjj:bb.a
  %i.lt = icmp eq ptr %i.ls, %4
  %i.lu = or i1 %i.lr, %i.lt
  br i1 %i.lu, label %.thread64.thread, label %bb.bz

.thread64.thread:                                 ; preds = %bb.by
  store i32 0, ptr %.0395.i117, align 4, !tbaa !3
  store i32 0, ptr %.0391.i118, align 4, !tbaa !3
  br label %.thread76

bb.bz:                                            ; preds = %bb.by, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit50
  %.10442.i = phi i64 [ %i.lf, %bb.by ], [ %.9441.i113, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit50 ] ; 2 uses
  %.10423.i = phi i32 [ %i.lq, %bb.by ], [ %.9422.i115, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit50 ] ; 3 uses
  %.2402.i = phi i32 [ %.1401.i, %bb.by ], [ %.0400.i116, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit50 ] ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.lf
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !44
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 %i.lf
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !44
  %i.lz = icmp ult i8 %i.lw, %i.ly
  %.not463.i = icmp ugt i32 %.0371.i121, %i.aq    ; 2 uses
  br i1 %i.lz, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  store i32 %.0371.i121, ptr %.0391.i118, align 4, !tbaa !3
  br i1 %.not463.i, label %bb.cb, label %.thread64

bb.cb:                                            ; preds = %bb.ca
  %i.ma = getelementptr inbounds nuw i8, ptr %i.jy, i64 4 ; 2 uses
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bz
  store i32 %.0371.i121, ptr %.0395.i117, align 4, !tbaa !3
  br i1 %.not463.i, label %bb.cd, label %.thread64

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.1396.i = phi ptr [ %.0395.i117, %bb.cb ], [ %i.jy, %bb.cc ] ; 2 uses
  %.1392.i = phi ptr [ %i.ma, %bb.cb ], [ %.0391.i118, %bb.cc ] ; 2 uses
  %.1386.i = phi i64 [ %.0385.i119, %bb.cb ], [ %i.lf, %bb.cc ]
  %.1378.i = phi i64 [ %i.lf, %bb.cb ], [ %.0377.i120, %bb.cc ]
  %.1372.in.i = phi ptr [ %i.ma, %bb.cb ], [ %i.jy, %bb.cc ]
  %.1372.i = load i32, ptr %.1372.in.i, align 4, !tbaa !3 ; 2 uses
  %i.mb = add i32 %.0427.i114, -1                 ; 3 uses
  %i.mc = icmp ne i32 %i.mb, 0
  %i.md = icmp uge i32 %.1372.i, %i.ba
  %i.me = select i1 %i.mc, i1 %i.md, i1 false
  br i1 %i.me, label %bb.bm, label %.thread64, !llvm.loop !145

.thread64:                                        ; preds = %bb.cd, %bb.cc, %bb.ca
  %.0427.i.lcssa = phi i32 [ %.0427.i114, %bb.ca ], [ %i.mb, %bb.cd ], [ %.0427.i114, %bb.cc ] ; 2 uses
  %.3398.i = phi ptr [ %.0395.i117, %bb.ca ], [ %.1396.i, %bb.cd ], [ %i.a, %bb.cc ]
  %.3394.i = phi ptr [ %i.a, %bb.ca ], [ %.1392.i, %bb.cd ], [ %.0391.i118, %bb.cc ]
  store i32 0, ptr %.3398.i, align 4, !tbaa !3
  store i32 0, ptr %.3394.i, align 4, !tbaa !3
  %.not = icmp eq i32 %.0427.i.lcssa, 0
  br i1 %.not, label %.thread76, label %bb.ce

bb.ce:                                            ; preds = %.thread64.thread208, %.thread64
  %.4404.i219 = phi i32 [ %i.bg, %.thread64.thread208 ], [ %.2402.i, %.thread64 ] ; 2 uses
  %.12.i218 = phi i32 [ %.0413.i.lcssa, %.thread64.thread208 ], [ %.10423.i, %.thread64 ] ; 2 uses
  %.12444.i217 = phi i64 [ %.0432.i.lcssa, %.thread64.thread208 ], [ %.10442.i, %.thread64 ]
  %.0427.i.lcssa216 = phi i32 [ %i.bj, %.thread64.thread208 ], [ %.0427.i.lcssa, %.thread64 ]
  %i.mf = sub i32 64, %i.bx
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = lshr i64 %i.aa, %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !110
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.mh
  %i.ml = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !112
  %.0374.i143 = load i32, ptr %i.mk, align 4, !tbaa !3 ; 2 uses
  %i.mn = icmp ugt i32 %.0374.i143, %i.bu
  br i1 %i.mn, label %.lr.ph151, label %.thread76

.lr.ph151:                                        ; preds = %bb.ce
  %i.mo = and i64 %i.br, 4294967295
  %i.mp = zext i32 %i.bv to i64
  %invariant.gep160 = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.mp
  %i.mq = add i32 %.pre-phi175, 3
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph151, %bb.ci
  %.0374.i150 = phi i32 [ %.0374.i143, %.lr.ph151 ], [ %.0374.i, %bb.ci ] ; 4 uses
  %.3380.i149 = phi i64 [ 0, %.lr.ph151 ], [ %.4381.i, %bb.ci ] ; 2 uses
  %.3388.i148 = phi i64 [ 0, %.lr.ph151 ], [ %.4389.i, %bb.ci ] ; 2 uses
  %.5405.i147 = phi i32 [ %.4404.i219, %.lr.ph151 ], [ %.7.i, %bb.ci ] ; 3 uses
  %.13.i146 = phi i32 [ %.12.i218, %.lr.ph151 ], [ %.14.i, %bb.ci ] ; 3 uses
  %.4431.i145 = phi i32 [ %.0427.i.lcssa216, %.lr.ph151 ], [ %i.ny, %bb.ci ]
  %.13445.i144 = phi i64 [ %.12444.i217, %.lr.ph151 ], [ %.14446.i, %bb.ci ] ; 2 uses
  %i.mr = and i32 %.0374.i150, %i.cb
  %i.ms = shl nuw i32 %i.mr, 1
  %i.mt = zext i32 %i.ms to i64
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.mt
  %i.mv = tail call i64 @llvm.umin.i64(i64 %.3380.i149, i64 %.3388.i148) ; 3 uses
  %i.mw = zext i32 %.0374.i150 to i64             ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.mw ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %3, i64 %i.mv
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.mv
  %i.na = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.my, ptr noundef nonnull %i.mz, ptr noundef %4, ptr noundef %i.bo, ptr noundef %i.ap)
  %i.nb = add i64 %i.na, %i.mv                    ; 11 uses
  %i.nc = add i64 %i.nb, %i.mw
  %.not464.i = icmp ult i64 %i.nc, %i.mo
  %gep161 = getelementptr inbounds nuw i8, ptr %invariant.gep160, i64 %i.mw
  %.0.i8 = select i1 %.not464.i, ptr %i.mx, ptr %gep161
  %i.nd = icmp ugt i64 %i.nb, %.13445.i144
  br i1 %i.nd, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ne = add i32 %.0374.i150, %i.bv              ; 3 uses
  %i.nf = sub i32 %.5405.i147, %i.ne
  %i.ng = zext i32 %i.nf to i64
  %i.nh = icmp ugt i64 %i.nb, %i.ng
  %i.ni = trunc i64 %i.nb to i32                  ; 2 uses
  %i.nj = add i32 %i.ne, %i.ni
  %.6406.i = select i1 %i.nh, i32 %i.nj, i32 %.5405.i147 ; 2 uses
  %i.nk = sub i32 %i.mq, %i.ne
  %i.nl = zext i32 %.13.i146 to i64
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.nl ; 2 uses
  store i32 %i.nk, ptr %i.nm, align 4, !tbaa !48
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  store i32 %i.ni, ptr %i.nn, align 4, !tbaa !46
  %i.no = add i32 %.13.i146, 1                    ; 2 uses
  %i.np = icmp ugt i64 %i.nb, 4096
  %i.nq = getelementptr inbounds nuw i8, ptr %3, i64 %i.nb
  %i.nr = icmp eq ptr %i.nq, %4
  %i.ns = or i1 %i.np, %i.nr
  br i1 %i.ns, label %.thread76, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.14446.i = phi i64 [ %i.nb, %bb.cg ], [ %.13445.i144, %bb.cf ]
  %.14.i = phi i32 [ %i.no, %bb.cg ], [ %.13.i146, %bb.cf ] ; 3 uses
  %.7.i = phi i32 [ %.6406.i, %bb.cg ], [ %.5405.i147, %bb.cf ] ; 3 uses
  %.not465.i = icmp ugt i32 %.0374.i150, %i.cf
  br i1 %.not465.i, label %bb.ci, label %.thread76

bb.ci:                                            ; preds = %bb.ch
  %i.nt = getelementptr inbounds nuw i8, ptr %.0.i8, i64 %i.nb
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !44
  %i.nv = getelementptr inbounds nuw i8, ptr %3, i64 %i.nb
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !44
  %i.nx = icmp ult i8 %i.nu, %i.nw                ; 3 uses
  %.4389.i = select i1 %i.nx, i64 %.3388.i148, i64 %i.nb
  %.4381.i = select i1 %i.nx, i64 %i.nb, i64 %.3380.i149
  %.1375.in.i.idx = select i1 %i.nx, i64 4, i64 0
  %.1375.in.i = getelementptr inbounds nuw i8, ptr %i.mu, i64 %.1375.in.i.idx
  %i.ny = add i32 %.4431.i145, -1                 ; 2 uses
  %.0374.i = load i32, ptr %.1375.in.i, align 4, !tbaa !3 ; 2 uses
  %i.nz = icmp ne i32 %i.ny, 0
  %i.oa = icmp ugt i32 %.0374.i, %i.bu
  %i.ob = select i1 %i.nz, i1 %i.oa, i1 false
  br i1 %i.ob, label %bb.cf, label %.thread76, !llvm.loop !151

.thread76:                                        ; preds = %bb.ci, %bb.cg, %bb.ch, %bb.ce, %.thread64.thread, %.thread64
  %.17.i = phi i32 [ %.10423.i, %.thread64 ], [ %i.lq, %.thread64.thread ], [ %.12.i218, %bb.ce ], [ %.14.i, %bb.ci ], [ %i.no, %bb.cg ], [ %.14.i, %bb.ch ]
  %.10.i = phi i32 [ %.2402.i, %.thread64 ], [ %.1401.i, %.thread64.thread ], [ %.4404.i219, %bb.ce ], [ %.7.i, %bb.ci ], [ %.6406.i, %bb.cg ], [ %.7.i, %bb.ch ]
  %i.oc = add i32 %.10.i, -8
  store i32 %i.oc, ptr %i.d, align 4, !tbaa !21
  br label %_ZN11duckdb_zstdL29ZSTD_insertBtAndGetAllMatchesEPNS_12ZSTD_match_tEPNS_17ZSTD_matchState_tEPjPKhS6_NS_15ZSTD_dictMode_eEPKjjjj.exit

_ZN11duckdb_zstdL29ZSTD_insertBtAndGetAllMatchesEPNS_12ZSTD_match_tEPNS_17ZSTD_matchState_tEPjPKhS6_NS_15ZSTD_dictMode_eEPKjjjj.exit: ; preds = %bb.v, %bb.aq, %bb.bl, %.thread76
  %.6.i = phi i32 [ %.17.i, %.thread76 ], [ 1, %bb.v ], [ %i.he, %bb.aq ], [ %i.jn, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN11duckdb_zstdL29ZSTD_btGetAllMatches_internalEPNS_12ZSTD_match_tEPNS_17ZSTD_matchState_tEPjPKhS6_PKjjjNS_15ZSTD_dictMode_eEj.exit

_ZN11duckdb_zstdL29ZSTD_btGetAllMatches_internalEPNS_12ZSTD_match_tEPNS_17ZSTD_matchState_tEPjPKhS6_PKjjjNS_15ZSTD_dictMode_eEj.exit: ; preds = %bb.a, %_ZN11duckdb_zstdL29ZSTD_insertBtAndGetAllMatchesEPNS_12ZSTD_match_tEPNS_17ZSTD_matchState_tEPjPKhS6_NS_15ZSTD_dictMode_eEPKjjjj.exit
  %.0.i = phi i32 [ %.6.i, %_ZN11duckdb_zstdL29ZSTD_insertBtAndGetAllMatchesEPNS_12ZSTD_match_tEPNS_17ZSTD_matchState_tEPjPKhS6_NS_15ZSTD_dictMode_eEPKjjjj.exit ], [ 0, %bb.a ]
  ret i32 %.0.i
}

declare noundef i32 @_ZN11duckdb_zstd23HUF_getNbBitsFromCTableEPKmj(ptr noundef, i32 noundef) local_unnamed_addr #8

declare noundef i32 @_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN11duckdb_zstd18ZSTD_resetSeqStoreEPNS_10seqStore_tE(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v28i32(<28 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v53i32(<53 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v36i32(<36 x i32>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 272}
!8 = !{!"_ZTSN11duckdb_zstd17ZSTD_matchState_tE", !9, i64 0, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !10, i64 56, !5, i64 64, !12, i64 96, !4, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !4, i64 136, !4, i64 140, !14, i64 144, !17, i64 248, !18, i64 256, !11, i64 288, !4, i64 296, !4, i64 300}
!9 = !{!"_ZTSN11duckdb_zstd13ZSTD_window_tE", !10, i64 0, !10, i64 8, !10, i64 16, !4, i64 24, !4, i64 28, !4, i64 32}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"p1 int", !11, i64 0}
!14 = !{!"_ZTSN11duckdb_zstd10optState_tE", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !11, i64 32, !11, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !15, i64 80, !11, i64 88, !16, i64 96}
!15 = !{!"_ZTSN11duckdb_zstd15ZSTD_OptPrice_eE", !5, i64 0}
!16 = !{!"_ZTSN11duckdb_zstd18ZSTD_paramSwitch_eE", !5, i64 0}
!17 = !{!"p1 _ZTSN11duckdb_zstd17ZSTD_matchState_tE", !11, i64 0}
!18 = !{!"_ZTSN11duckdb_zstd26ZSTD_compressionParametersE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !19, i64 24}
!19 = !{!"_ZTSN11duckdb_zstd13ZSTD_strategyE", !5, i64 0}
!20 = !{!8, !10, i64 8}
!21 = !{!8, !4, i64 44}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!8, !4, i64 24}
!25 = !{!11, !11, i64 0}
!26 = !{!18, !4, i64 20}
!27 = !{!14, !11, i64 40}
!28 = !{!14, !11, i64 32}
!29 = !{!8, !11, i64 288}
!30 = !{i64 0, i64 8, !25, i64 8, i64 8, !31, i64 16, i64 8, !31, i64 24, i64 8, !31, i64 32, i64 8, !31}
!31 = !{!12, !12, i64 0}
!32 = !{!33, !4, i64 48}
!33 = !{!"_ZTSN11duckdb_zstd13ZSTD_optLdm_tE", !34, i64 0, !4, i64 40, !4, i64 44, !4, i64 48}
!34 = !{!"_ZTSN11duckdb_zstd13rawSeqStore_tE", !11, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!35 = !{!33, !4, i64 40}
!36 = !{!33, !4, i64 44}
!37 = distinct !{null}
!38 = !{!39, !4, i64 8}
!39 = !{!"_ZTSN11duckdb_zstd14ZSTD_optimal_tE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !5, i64 16}
!40 = !{!39, !4, i64 12}
!41 = !{!14, !15, i64 80}
!42 = !{!14, !4, i64 68}
!43 = !{!14, !13, i64 8}
!44 = !{!5, !5, i64 0}
!45 = !{!39, !4, i64 0}
!46 = !{!47, !4, i64 4}
!47 = !{!"_ZTSN11duckdb_zstd12ZSTD_match_tE", !4, i64 0, !4, i64 4}
!48 = !{!47, !4, i64 0}
!49 = distinct !{!49, !23}
!50 = !{!39, !4, i64 4}
!51 = distinct !{!51, !23}
!52 = !{!14, !4, i64 76}
!53 = !{!14, !13, i64 24}
!54 = !{!14, !4, i64 72}
!55 = !{!14, !13, i64 16}
!56 = distinct !{!56, !23}
!57 = !{!14, !16, i64 96}
!58 = !{!14, !4, i64 64}
!59 = !{!14, !13, i64 0}
!60 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!61 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 12, !44}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = distinct !{!64, !23}
!65 = distinct !{!65, !23}
!66 = distinct !{!66, !63}
!67 = distinct !{!67, !23}
!68 = distinct !{!68, !23}
!69 = !{i64 0, i64 12, !44}
!70 = distinct !{!70, !23}
!71 = distinct !{!71, !23}
!72 = distinct !{!72, !63}
!73 = !{!14, !4, i64 48}
!74 = !{!14, !4, i64 52}
!75 = !{!14, !4, i64 60}
!76 = !{!14, !4, i64 56}
!77 = !{!78, !10, i64 24}
!78 = !{!"_ZTSN11duckdb_zstd10seqStore_tE", !79, i64 0, !79, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !12, i64 56, !12, i64 64, !80, i64 72, !4, i64 76}
!79 = !{!"p1 _ZTSN11duckdb_zstd8seqDef_sE", !11, i64 0}
!80 = !{!"_ZTSN11duckdb_zstd21ZSTD_longLengthType_eE", !5, i64 0}
!81 = distinct !{!81, !23}
!82 = distinct !{!82, !23, !83, !84}
!83 = !{!"llvm.loop.isvectorized", i32 1}
!84 = !{!"llvm.loop.unroll.runtime.disable"}
!85 = !{!"branch_weights", i32 4, i32 28}
!86 = distinct !{!86, !23, !83, !84}
!87 = distinct !{!87, !63}
!88 = distinct !{!88, !23, !83}
!89 = !{!78, !79, i64 8}
!90 = !{!78, !80, i64 72}
!91 = !{!78, !79, i64 0}
!92 = !{!78, !4, i64 76}
!93 = !{!94, !95, i64 4}
!94 = !{!"_ZTSN11duckdb_zstd8seqDef_sE", !4, i64 0, !95, i64 4, !95, i64 6}
!95 = !{!"short", !5, i64 0}
!96 = !{!94, !4, i64 0}
!97 = !{!94, !95, i64 6}
!98 = distinct !{!98, !23}
!99 = !{!"branch_weights", i32 2000, i32 2002}
!100 = !{!"branch_weights", i32 2146410443, i32 1073205}
!101 = distinct !{!101, !63}
!102 = distinct !{!102, !63}
!103 = distinct !{!103, !63}
!104 = distinct !{!104, !23, !83, !84}
!105 = distinct !{!105, !23, !83, !84}
!106 = distinct !{!106, !63}
!107 = distinct !{!107, !23, !83}
!108 = !{!8, !4, i64 196}
!109 = !{!8, !4, i64 28}
!110 = !{!8, !13, i64 112}
!111 = !{!18, !4, i64 8}
!112 = !{!8, !13, i64 128}
!113 = !{!18, !4, i64 4}
!114 = !{!8, !10, i64 16}
!115 = !{!18, !4, i64 0}
!116 = !{!8, !4, i64 40}
!117 = !{!18, !4, i64 12}
!118 = !{!95, !95, i64 0}
!119 = distinct !{!119, !23}
!120 = !{!33, !12, i64 24}
!121 = !{!33, !12, i64 8}
!122 = !{!33, !11, i64 0}
!123 = !{!33, !12, i64 16}
!124 = !{!34, !12, i64 8}
!125 = !{!34, !12, i64 16}
!126 = !{!14, !11, i64 88}
!127 = !{!128, !130, i64 2056}
!128 = !{!"_ZTSN11duckdb_zstd21ZSTD_entropyCTables_tE", !129, i64 0, !131, i64 2064}
!129 = !{!"_ZTSN11duckdb_zstd17ZSTD_hufCTables_tE", !5, i64 0, !130, i64 2056}
!130 = !{!"_ZTSN11duckdb_zstd10HUF_repeatE", !5, i64 0}
!131 = !{!"_ZTSN11duckdb_zstd17ZSTD_fseCTables_tE", !5, i64 0, !5, i64 772, !5, i64 2224, !132, i64 3540, !132, i64 3544, !132, i64 3548}
!132 = !{!"_ZTSN11duckdb_zstd10FSE_repeatE", !5, i64 0}
!133 = distinct !{!133, !23}
!134 = !{!135, !4, i64 4}
!135 = !{!"_ZTSN11duckdb_zstd30FSE_symbolCompressionTransformE", !4, i64 0, !4, i64 4}
!136 = distinct !{!136, !23}
!137 = distinct !{!137, !23}
!138 = distinct !{!138, !23, !83, !84}
!139 = distinct !{!139, !23, !83, !84}
!140 = !{!34, !11, i64 0}
!141 = !{!8, !13, i64 120}
!142 = !{!8, !4, i64 48}
!143 = distinct !{!143, !63}
!144 = distinct !{!144, !23}
!145 = distinct !{!145, !23}
!146 = distinct !{!146, !23}
!147 = distinct !{!147, !63}
!148 = !{!8, !17, i64 248}
!149 = !{!8, !10, i64 0}
!150 = distinct !{!150, !63}
!151 = distinct !{!151, !23}
end_hunk_1
