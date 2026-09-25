Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/zstd_opt?download=true
inline.NumInlined: 270
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0_@ZSTD_rescaleFreqs:bb.a
  %i.gh = add <4 x i32> %wide.load.8, %i.gd
  %i.gi = add <4 x i32> %wide.load199.8, %i.ge
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fb, i64 288
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fb, i64 304
  %wide.load.9 = load <4 x i32>, ptr %i.gj, align 4, !tbaa !44
  %wide.load199.9 = load <4 x i32>, ptr %i.gk, align 4, !tbaa !44
  %i.gl = add <4 x i32> %wide.load.9, %i.gh
  %i.gm = add <4 x i32> %wide.load199.9, %i.gi
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fb, i64 320
  %i.go = getelementptr inbounds nuw i8, ptr %i.fb, i64 336
  %wide.load.10 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !44
  %wide.load199.10 = load <4 x i32>, ptr %i.go, align 4, !tbaa !44
  %i.gp = add <4 x i32> %wide.load.10, %i.gl
  %i.gq = add <4 x i32> %wide.load199.10, %i.gm
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fb, i64 352
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fb, i64 368
  %wide.load.11 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !44
  %wide.load199.11 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !44
  %i.gt = add <4 x i32> %wide.load.11, %i.gp
  %i.gu = add <4 x i32> %wide.load199.11, %i.gq
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fb, i64 384
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fb, i64 400
  %wide.load.12 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !44
  %wide.load199.12 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !44
  %i.gx = add <4 x i32> %wide.load.12, %i.gt
  %i.gy = add <4 x i32> %wide.load199.12, %i.gu
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fb, i64 416
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fb, i64 432
  %wide.load.13 = load <4 x i32>, ptr %i.gz, align 4, !tbaa !44
  %wide.load199.13 = load <4 x i32>, ptr %i.ha, align 4, !tbaa !44
  %i.hb = add <4 x i32> %wide.load.13, %i.gx
  %i.hc = add <4 x i32> %wide.load199.13, %i.gy
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fb, i64 448
  %i.he = getelementptr inbounds nuw i8, ptr %i.fb, i64 464
  %wide.load.14 = load <4 x i32>, ptr %i.hd, align 4, !tbaa !44
  %wide.load199.14 = load <4 x i32>, ptr %i.he, align 4, !tbaa !44
  %i.hf = add <4 x i32> %wide.load.14, %i.hb
  %i.hg = add <4 x i32> %wide.load199.14, %i.hc
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fb, i64 480
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fb, i64 496
  %wide.load.15 = load <4 x i32>, ptr %i.hh, align 4, !tbaa !44
  %wide.load199.15 = load <4 x i32>, ptr %i.hi, align 4, !tbaa !44
  %i.hj = add <4 x i32> %wide.load.15, %i.hf
  %i.hk = add <4 x i32> %wide.load199.15, %i.hg
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fb, i64 512
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fb, i64 528
  %wide.load.16 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !44
  %wide.load199.16 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !44
  %i.hn = add <4 x i32> %wide.load.16, %i.hj
  %i.ho = add <4 x i32> %wide.load199.16, %i.hk
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fb, i64 544
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fb, i64 560
  %wide.load.17 = load <4 x i32>, ptr %i.hp, align 4, !tbaa !44
  %wide.load199.17 = load <4 x i32>, ptr %i.hq, align 4, !tbaa !44
  %i.hr = add <4 x i32> %wide.load.17, %i.hn
  %i.hs = add <4 x i32> %wide.load199.17, %i.ho
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fb, i64 576
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fb, i64 592
  %wide.load.18 = load <4 x i32>, ptr %i.ht, align 4, !tbaa !44
  %wide.load199.18 = load <4 x i32>, ptr %i.hu, align 4, !tbaa !44
  %i.hv = add <4 x i32> %wide.load.18, %i.hr
  %i.hw = add <4 x i32> %wide.load199.18, %i.hs
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fb, i64 608
  %i.hy = getelementptr inbounds nuw i8, ptr %i.fb, i64 624
  %wide.load.19 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !44
  %wide.load199.19 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !44
  %i.hz = add <4 x i32> %wide.load.19, %i.hv
  %i.ia = add <4 x i32> %wide.load199.19, %i.hw
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fb, i64 640
  %i.ic = getelementptr inbounds nuw i8, ptr %i.fb, i64 656
  %wide.load.20 = load <4 x i32>, ptr %i.ib, align 4, !tbaa !44
  %wide.load199.20 = load <4 x i32>, ptr %i.ic, align 4, !tbaa !44
  %i.id = add <4 x i32> %wide.load.20, %i.hz
  %i.ie = add <4 x i32> %wide.load199.20, %i.ia
  %i.if = getelementptr inbounds nuw i8, ptr %i.fb, i64 672
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fb, i64 688
  %wide.load.21 = load <4 x i32>, ptr %i.if, align 4, !tbaa !44
  %wide.load199.21 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !44
  %i.ih = add <4 x i32> %wide.load.21, %i.id
  %i.ii = add <4 x i32> %wide.load199.21, %i.ie
  %i.ij = getelementptr inbounds nuw i8, ptr %i.fb, i64 704
  %i.ik = getelementptr inbounds nuw i8, ptr %i.fb, i64 720
  %wide.load.22 = load <4 x i32>, ptr %i.ij, align 4, !tbaa !44
  %wide.load199.22 = load <4 x i32>, ptr %i.ik, align 4, !tbaa !44
  %i.il = add <4 x i32> %wide.load.22, %i.ih
  %i.im = add <4 x i32> %wide.load199.22, %i.ii
  %i.in = getelementptr inbounds nuw i8, ptr %i.fb, i64 736
  %i.io = getelementptr inbounds nuw i8, ptr %i.fb, i64 752
  %wide.load.23 = load <4 x i32>, ptr %i.in, align 4, !tbaa !44
  %wide.load199.23 = load <4 x i32>, ptr %i.io, align 4, !tbaa !44
  %i.ip = add <4 x i32> %wide.load.23, %i.il
  %i.iq = add <4 x i32> %wide.load199.23, %i.im
  %i.ir = getelementptr inbounds nuw i8, ptr %i.fb, i64 768
  %i.is = getelementptr inbounds nuw i8, ptr %i.fb, i64 784
  %wide.load.24 = load <4 x i32>, ptr %i.ir, align 4, !tbaa !44
  %wide.load199.24 = load <4 x i32>, ptr %i.is, align 4, !tbaa !44
  %i.it = add <4 x i32> %wide.load.24, %i.ip
  %i.iu = add <4 x i32> %wide.load199.24, %i.iq
  %i.iv = getelementptr inbounds nuw i8, ptr %i.fb, i64 800
  %i.iw = getelementptr inbounds nuw i8, ptr %i.fb, i64 816
  %wide.load.25 = load <4 x i32>, ptr %i.iv, align 4, !tbaa !44
  %wide.load199.25 = load <4 x i32>, ptr %i.iw, align 4, !tbaa !44
  %i.ix = add <4 x i32> %wide.load.25, %i.it
  %i.iy = add <4 x i32> %wide.load199.25, %i.iu
  %i.iz = getelementptr inbounds nuw i8, ptr %i.fb, i64 832
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fb, i64 848
  %wide.load.26 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !44
  %wide.load199.26 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !44
  %i.jb = add <4 x i32> %wide.load.26, %i.ix
  %i.jc = add <4 x i32> %wide.load199.26, %i.iy
  %i.jd = getelementptr inbounds nuw i8, ptr %i.fb, i64 864
  %i.je = getelementptr inbounds nuw i8, ptr %i.fb, i64 880
  %wide.load.27 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !44
  %wide.load199.27 = load <4 x i32>, ptr %i.je, align 4, !tbaa !44
  %i.jf = add <4 x i32> %wide.load.27, %i.jb
  %i.jg = add <4 x i32> %wide.load199.27, %i.jc
  %i.jh = getelementptr inbounds nuw i8, ptr %i.fb, i64 896
  %i.ji = getelementptr inbounds nuw i8, ptr %i.fb, i64 912
  %wide.load.28 = load <4 x i32>, ptr %i.jh, align 4, !tbaa !44
  %wide.load199.28 = load <4 x i32>, ptr %i.ji, align 4, !tbaa !44
  %i.jj = add <4 x i32> %wide.load.28, %i.jf
  %i.jk = add <4 x i32> %wide.load199.28, %i.jg
  %i.jl = getelementptr inbounds nuw i8, ptr %i.fb, i64 928
  %i.jm = getelementptr inbounds nuw i8, ptr %i.fb, i64 944
  %wide.load.29 = load <4 x i32>, ptr %i.jl, align 4, !tbaa !44
  %wide.load199.29 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !44
  %i.jn = add <4 x i32> %wide.load.29, %i.jj
  %i.jo = add <4 x i32> %wide.load199.29, %i.jk
  %i.jp = getelementptr inbounds nuw i8, ptr %i.fb, i64 960
  %i.jq = getelementptr inbounds nuw i8, ptr %i.fb, i64 976
  %wide.load.30 = load <4 x i32>, ptr %i.jp, align 4, !tbaa !44
  %wide.load199.30 = load <4 x i32>, ptr %i.jq, align 4, !tbaa !44
  %i.jr = add <4 x i32> %wide.load.30, %i.jn
  %i.js = add <4 x i32> %wide.load199.30, %i.jo
  %i.jt = getelementptr inbounds nuw i8, ptr %i.fb, i64 992
  %i.ju = getelementptr inbounds nuw i8, ptr %i.fb, i64 1008
  %wide.load.31 = load <4 x i32>, ptr %i.jt, align 4, !tbaa !44
  %wide.load199.31 = load <4 x i32>, ptr %i.ju, align 4, !tbaa !44
  %i.jv = add <4 x i32> %wide.load.31, %i.jr
  %i.jw = add <4 x i32> %wide.load199.31, %i.js
  %bin.rdx = add <4 x i32> %i.jw, %i.jv
  %i.jx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  %i.jy = icmp ult i32 %i.jx, 8192
  br i1 %i.jy, label %ZSTD_scaleStats.exit, label %vector.ph200

vector.ph200:                                     ; preds = %vector.ph
  %i.jz = lshr i32 %i.jx, 12
  %i.ka = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.jz, i1 true)
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
  %wide.load205 = load <4 x i32>, ptr %i.kc, align 4, !tbaa !44
  %wide.load206 = load <4 x i32>, ptr %i.kd, align 4, !tbaa !44
  %i.ke = lshr <4 x i32> %wide.load205, %broadcast.splat
  %i.kf = lshr <4 x i32> %wide.load206, %broadcast.splat
  %i.kg = add nuw <4 x i32> %i.ke, splat (i32 1)  ; 2 uses
  %i.kh = add nuw <4 x i32> %i.kf, splat (i32 1)  ; 2 uses
  %i.ki = add <4 x i32> %i.kg, %vec.phi203
  %i.kj = add <4 x i32> %i.kh, %vec.phi204
  store <4 x i32> %i.kg, ptr %i.kc, align 4, !tbaa !44
  store <4 x i32> %i.kh, ptr %i.kd, align 4, !tbaa !44
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %index202 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 32 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 48 ; 2 uses
  %wide.load205.1 = load <4 x i32>, ptr %i.kl, align 4, !tbaa !44
  %wide.load206.1 = load <4 x i32>, ptr %i.km, align 4, !tbaa !44
  %i.kn = lshr <4 x i32> %wide.load205.1, %broadcast.splat
  %i.ko = lshr <4 x i32> %wide.load206.1, %broadcast.splat
  %i.kp = add nuw <4 x i32> %i.kn, splat (i32 1)  ; 2 uses
  %i.kq = add nuw <4 x i32> %i.ko, splat (i32 1)  ; 2 uses
  %i.kr = add <4 x i32> %i.kp, %i.ki              ; 2 uses
  %i.ks = add <4 x i32> %i.kq, %i.kj              ; 2 uses
  store <4 x i32> %i.kp, ptr %i.kl, align 4, !tbaa !44
  store <4 x i32> %i.kq, ptr %i.km, align 4, !tbaa !44
  %index.next207.1 = add nuw nsw i64 %index202, 16 ; 2 uses
  %i.kt = icmp eq i64 %index.next207.1, 256
  br i1 %i.kt, label %ZSTD_scaleStats.exit.loopexit, label %vector.body201, !llvm.loop !140

ZSTD_scaleStats.exit.loopexit:                    ; preds = %vector.body201
  %bin.rdx209 = add <4 x i32> %i.ks, %i.kr
  %i.ku = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx209)
  br label %ZSTD_scaleStats.exit

ZSTD_scaleStats.exit:                             ; preds = %ZSTD_scaleStats.exit.loopexit, %vector.ph
  %.0.i = phi i32 [ %i.jx, %vector.ph ], [ %i.ku, %ZSTD_scaleStats.exit.loopexit ]
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.0.i, ptr %i.kv, align 8, !tbaa !78
  br label %sum_u32.exit.i102

sum_u32.exit.i102:                                ; preds = %ZSTD_scaleStats.exit, %bb.o
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !60 ; 11 uses
  %4 = load <32 x i32>, ptr %i.kx, align 4, !tbaa !44 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.kx, i64 128 ; 3 uses
  %6 = load <4 x i32>, ptr %5, align 4, !tbaa !44
  %7 = shufflevector <32 x i32> %4, <32 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op237 = add <4 x i32> %7, %6
  %8 = shufflevector <4 x i32> %rdx.op237, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %9 = shufflevector <32 x i32> %8, <32 x i32> %4, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ky = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %9) ; 3 uses
  %i.kz = icmp ult i32 %i.ky, 4096
  br i1 %i.kz, label %ZSTD_scaleStats.exit109, label %.split.i.i103

.split.i.i103:                                    ; preds = %sum_u32.exit.i102
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 16 ; 2 uses
  %i.lb = load <4 x i32>, ptr %i.la, align 4, !tbaa !44
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 112 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kx, i64 96 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kx, i64 80
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kx, i64 64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kx, i64 48
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %i.li = lshr i32 %i.ky, 11
  %i.lj = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.li, i1 true)
  %i.lk = xor i32 %i.lj, 31                       ; 2 uses
  %i.ll = load <4 x i32>, ptr %i.kx, align 4, !tbaa !44
  %i.lm = load <4 x i32>, ptr %i.ld, align 4, !tbaa !44
  %i.ln = load <4 x i32>, ptr %i.lc, align 4, !tbaa !44
  %10 = shufflevector <4 x i32> %i.ln, <4 x i32> %i.lm, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %11 = shufflevector <32 x i32> %4, <32 x i32> %10, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %12 = shufflevector <4 x i32> %i.ll, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = shufflevector <32 x i32> %12, <32 x i32> %11, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %14 = shufflevector <4 x i32> %i.lb, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <32 x i32> %13, <32 x i32> %14, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 33, i32 34, i32 35, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %16 = insertelement <32 x i32> poison, i32 %i.lk, i64 0
  %17 = shufflevector <32 x i32> %16, <32 x i32> poison, <32 x i32> zeroinitializer
  %18 = lshr <32 x i32> %15, %17
  %19 = add nuw <32 x i32> %18, splat (i32 1)     ; 9 uses
  %i.lo = shufflevector <32 x i32> %19, <32 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  store <4 x i32> %i.lo, ptr %i.kx, align 4, !tbaa !44
  %i.lp = shufflevector <32 x i32> %19, <32 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.lp, ptr %i.la, align 4, !tbaa !44
  %i.lq = shufflevector <32 x i32> %19, <32 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.lq, ptr %i.lh, align 4, !tbaa !44
  %i.lr = shufflevector <32 x i32> %19, <32 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.lr, ptr %i.lg, align 4, !tbaa !44
  %i.ls = shufflevector <32 x i32> %19, <32 x i32> poison, <4 x i32> <i32 16, i32 17, i32 18, i32 19>
  store <4 x i32> %i.ls, ptr %i.lf, align 4, !tbaa !44
  %i.lt = shufflevector <32 x i32> %19, <32 x i32> poison, <4 x i32> <i32 20, i32 21, i32 22, i32 23>
  store <4 x i32> %i.lt, ptr %i.le, align 4, !tbaa !44
  %i.lu = shufflevector <32 x i32> %19, <32 x i32> poison, <4 x i32> <i32 24, i32 25, i32 26, i32 27>
  store <4 x i32> %i.lu, ptr %i.ld, align 4, !tbaa !44
  %i.lv = shufflevector <32 x i32> %19, <32 x i32> poison, <4 x i32> <i32 28, i32 29, i32 30, i32 31>
  store <4 x i32> %i.lv, ptr %i.lc, align 4, !tbaa !44
  %20 = load <4 x i32>, ptr %5, align 4, !tbaa !44
  %21 = insertelement <4 x i32> poison, i32 %i.lk, i64 0
  %22 = shufflevector <4 x i32> %21, <4 x i32> poison, <4 x i32> zeroinitializer
  %23 = lshr <4 x i32> %20, %22
  %24 = add nuw <4 x i32> %23, splat (i32 1)      ; 2 uses
  %rdx.op238 = add <4 x i32> %i.lo, %24
  %25 = shufflevector <4 x i32> %rdx.op238, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %26 = shufflevector <32 x i32> %25, <32 x i32> %19, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %27 = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %26)
  store <4 x i32> %24, ptr %5, align 4, !tbaa !44
  br label %ZSTD_scaleStats.exit109

ZSTD_scaleStats.exit109:                          ; preds = %.split.i.i103, %sum_u32.exit.i102
  %.0.i108 = phi i32 [ %i.ky, %sum_u32.exit.i102 ], [ %27, %.split.i.i103 ]
  store i32 %.0.i108, ptr %i.d, align 4, !tbaa !79
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !70 ; 21 uses
  %28 = load <32 x i32>, ptr %i.lx, align 4, !tbaa !44 ; 2 uses
  %29 = getelementptr inbounds nuw i8, ptr %i.lx, i64 128
  %30 = load <20 x i32>, ptr %29, align 4, !tbaa !44
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 208
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !44
  %31 = shufflevector <20 x i32> %30, <20 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %32 = add <32 x i32> %28, %31
  %33 = shufflevector <32 x i32> %32, <32 x i32> %28, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ma = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %33)
  %op.rdx236 = add i32 %i.ma, %i.lz               ; 3 uses
  %i.mb = icmp ult i32 %op.rdx236, 4096
  br i1 %i.mb, label %ZSTD_scaleStats.exit120, label %vector.ph210

vector.ph210:                                     ; preds = %ZSTD_scaleStats.exit109
  %i.mc = lshr i32 %op.rdx236, 11
  %i.md = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.mc, i1 true)
  %i.me = xor i32 %i.md, 31                       ; 6 uses
  %broadcast.splatinsert211 = insertelement <4 x i32> poison, i32 %i.me, i64 0
  %broadcast.splat212 = shufflevector <4 x i32> %broadcast.splatinsert211, <4 x i32> poison, <4 x i32> zeroinitializer ; 12 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lx, i64 16 ; 2 uses
  %wide.load217 = load <4 x i32>, ptr %i.lx, align 4, !tbaa !44
  %wide.load218 = load <4 x i32>, ptr %i.mf, align 4, !tbaa !44
  %i.mg = lshr <4 x i32> %wide.load217, %broadcast.splat212
  %i.mh = lshr <4 x i32> %wide.load218, %broadcast.splat212
  %i.mi = add nuw <4 x i32> %i.mg, splat (i32 1)  ; 2 uses
  %i.mj = add nuw <4 x i32> %i.mh, splat (i32 1)  ; 2 uses
  store <4 x i32> %i.mi, ptr %i.lx, align 4, !tbaa !44
  store <4 x i32> %i.mj, ptr %i.mf, align 4, !tbaa !44
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lx, i64 32 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lx, i64 48 ; 2 uses
  %wide.load217.1 = load <4 x i32>, ptr %i.mk, align 4, !tbaa !44
  %wide.load218.1 = load <4 x i32>, ptr %i.ml, align 4, !tbaa !44
  %i.mm = lshr <4 x i32> %wide.load217.1, %broadcast.splat212
  %i.mn = lshr <4 x i32> %wide.load218.1, %broadcast.splat212
  %i.mo = add nuw <4 x i32> %i.mm, splat (i32 1)  ; 2 uses
  %i.mp = add nuw <4 x i32> %i.mn, splat (i32 1)  ; 2 uses
  store <4 x i32> %i.mo, ptr %i.mk, align 4, !tbaa !44
  store <4 x i32> %i.mp, ptr %i.ml, align 4, !tbaa !44
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lx, i64 64 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lx, i64 80 ; 2 uses
  %wide.load217.2 = load <4 x i32>, ptr %i.mq, align 4, !tbaa !44
  %wide.load218.2 = load <4 x i32>, ptr %i.mr, align 4, !tbaa !44
  %i.ms = lshr <4 x i32> %wide.load217.2, %broadcast.splat212
  %i.mt = lshr <4 x i32> %wide.load218.2, %broadcast.splat212
  %i.mu = add nuw <4 x i32> %i.ms, splat (i32 1)  ; 2 uses
  %i.mv = add nuw <4 x i32> %i.mt, splat (i32 1)  ; 2 uses
  store <4 x i32> %i.mu, ptr %i.mq, align 4, !tbaa !44
  store <4 x i32> %i.mv, ptr %i.mr, align 4, !tbaa !44
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lx, i64 96 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.lx, i64 112 ; 2 uses
  %wide.load217.3 = load <4 x i32>, ptr %i.mw, align 4, !tbaa !44
  %wide.load218.3 = load <4 x i32>, ptr %i.mx, align 4, !tbaa !44
  %i.my = lshr <4 x i32> %wide.load217.3, %broadcast.splat212
  %i.mz = lshr <4 x i32> %wide.load218.3, %broadcast.splat212
  %i.na = add nuw <4 x i32> %i.my, splat (i32 1)  ; 2 uses
  %i.nb = add nuw <4 x i32> %i.mz, splat (i32 1)  ; 2 uses
  store <4 x i32> %i.na, ptr %i.mw, align 4, !tbaa !44
  store <4 x i32> %i.nb, ptr %i.mx, align 4, !tbaa !44
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lx, i64 128 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lx, i64 144 ; 2 uses
  %wide.load217.4 = load <4 x i32>, ptr %i.nc, align 4, !tbaa !44
  %wide.load218.4 = load <4 x i32>, ptr %i.nd, align 4, !tbaa !44
  %i.ne = lshr <4 x i32> %wide.load217.4, %broadcast.splat212
  %i.nf = lshr <4 x i32> %wide.load218.4, %broadcast.splat212
  %i.ng = add nuw <4 x i32> %i.ne, splat (i32 1)  ; 2 uses
  %i.nh = add nuw <4 x i32> %i.nf, splat (i32 1)  ; 2 uses
  store <4 x i32> %i.ng, ptr %i.nc, align 4, !tbaa !44
  store <4 x i32> %i.nh, ptr %i.nd, align 4, !tbaa !44
  %i.ni = getelementptr inbounds nuw i8, ptr %i.lx, i64 160 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.lx, i64 176 ; 2 uses
  %wide.load217.5 = load <4 x i32>, ptr %i.ni, align 4, !tbaa !44
  %wide.load218.5 = load <4 x i32>, ptr %i.nj, align 4, !tbaa !44
  %i.nk = lshr <4 x i32> %wide.load217.5, %broadcast.splat212
  %i.nl = lshr <4 x i32> %wide.load218.5, %broadcast.splat212
  %i.nm = add nuw <4 x i32> %i.nk, splat (i32 1)  ; 2 uses
  %i.nn = add nuw <4 x i32> %i.nl, splat (i32 1)  ; 2 uses
  store <4 x i32> %i.nm, ptr %i.ni, align 4, !tbaa !44
  store <4 x i32> %i.nn, ptr %i.nj, align 4, !tbaa !44
  %i.no = add <4 x i32> %i.mp, %i.mj
  %i.np = add <4 x i32> %i.mv, %i.no
  %i.nq = add <4 x i32> %i.nb, %i.np
  %i.nr = add <4 x i32> %i.nh, %i.nq
  %i.ns = add <4 x i32> %i.nn, %i.nr
  %i.nt = add <4 x i32> %i.mo, %i.mi
  %i.nu = add <4 x i32> %i.mu, %i.nt
  %i.nv = add <4 x i32> %i.na, %i.nu
  %i.nw = add <4 x i32> %i.ng, %i.nv
  %i.nx = add <4 x i32> %i.nm, %i.nw
  %bin.rdx221 = add <4 x i32> %i.ns, %i.nx
  %i.ny = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx221)
  %i.nz = getelementptr inbounds nuw i8, ptr %i.lx, i64 192 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !44
  %i.ob = lshr i32 %i.oa, %i.me
  %i.oc = add nuw i32 %i.ob, 1                    ; 2 uses
  %i.od = add i32 %i.oc, %i.ny
  store i32 %i.oc, ptr %i.nz, align 4, !tbaa !44
  %i.oe = getelementptr inbounds nuw i8, ptr %i.lx, i64 196 ; 2 uses
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !44
  %i.og = lshr i32 %i.of, %i.me
  %i.oh = add nuw i32 %i.og, 1                    ; 2 uses
  %i.oi = add i32 %i.oh, %i.od
  store i32 %i.oh, ptr %i.oe, align 4, !tbaa !44
  %i.oj = getelementptr inbounds nuw i8, ptr %i.lx, i64 200 ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !44
  %i.ol = lshr i32 %i.ok, %i.me
  %i.om = add nuw i32 %i.ol, 1                    ; 2 uses
  %i.on = add i32 %i.om, %i.oi
  store i32 %i.om, ptr %i.oj, align 4, !tbaa !44
  %i.oo = getelementptr inbounds nuw i8, ptr %i.lx, i64 204 ; 2 uses
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !44
  %i.oq = lshr i32 %i.op, %i.me
  %i.or = add nuw i32 %i.oq, 1                    ; 2 uses
  %i.os = add i32 %i.or, %i.on
  store i32 %i.or, ptr %i.oo, align 4, !tbaa !44
  %i.ot = getelementptr inbounds nuw i8, ptr %i.lx, i64 208 ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !44
  %i.ov = lshr i32 %i.ou, %i.me
  %i.ow = add nuw i32 %i.ov, 1                    ; 2 uses
  %i.ox = add i32 %i.ow, %i.os
  store i32 %i.ow, ptr %i.ot, align 4, !tbaa !44
  br label %ZSTD_scaleStats.exit120

ZSTD_scaleStats.exit120:                          ; preds = %vector.ph210, %ZSTD_scaleStats.exit109
  %.0.i119 = phi i32 [ %op.rdx236, %ZSTD_scaleStats.exit109 ], [ %i.ox, %vector.ph210 ]
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.0.i119, ptr %i.oy, align 8, !tbaa !81
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !68 ; 16 uses
  %i.pb = load <32 x i32>, ptr %i.pa, align 4, !tbaa !44 ; 5 uses
  %i.pc = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.pb) ; 3 uses
  %i.pd = icmp ult i32 %i.pc, 4096
  br i1 %i.pd, label %.loopexit.sink.split, label %.split.i.i125

.split.i.i125:                                    ; preds = %ZSTD_scaleStats.exit120
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 4 ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !44
  %i.pg = load <9 x i32>, ptr %i.pa, align 4, !tbaa !44
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pa, i64 124 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pa, i64 120 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pa, i64 116 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pa, i64 112
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pa, i64 104
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pa, i64 100
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pa, i64 88
  %i.po = getelementptr inbounds nuw i8, ptr %i.pa, i64 72
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pa, i64 56
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pa, i64 40
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pt = lshr i32 %i.pc, 11
  %i.pu = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.pt, i1 true)
  %i.pv = xor i32 %i.pu, 31                       ; 5 uses
  %i.pw = lshr i32 %i.pf, %i.pv
  %i.px = add nuw i32 %i.pw, 1                    ; 2 uses
  store i32 %i.px, ptr %i.pe, align 4, !tbaa !44
  %i.py = load <4 x i32>, ptr %i.pm, align 4, !tbaa !44
  %i.pz = shufflevector <32 x i32> %i.pb, <32 x i32> poison, <4 x i32> <i32 21, i32 22, i32 23, i32 24>
  %i.qa = shufflevector <4 x i32> %i.py, <4 x i32> %i.pz, <28 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.qb = shufflevector <32 x i32> %i.pb, <32 x i32> poison, <28 x i32> <i32 17, i32 18, i32 19, i32 20, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qc = shufflevector <28 x i32> %i.qa, <28 x i32> %i.qb, <28 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.qd = shufflevector <32 x i32> %i.pb, <32 x i32> poison, <28 x i32> <i32 13, i32 14, i32 15, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qe = shufflevector <28 x i32> %i.qc, <28 x i32> %i.qd, <28 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.qf = shufflevector <9 x i32> %i.pg, <9 x i32> poison, <28 x i32> <i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qg = shufflevector <28 x i32> %i.qf, <28 x i32> %i.qe, <28 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %i.qh = shufflevector <32 x i32> %i.pb, <32 x i32> poison, <28 x i32> <i32 9, i32 10, i32 11, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qi = shufflevector <28 x i32> %i.qg, <28 x i32> %i.qh, <28 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 28, i32 29, i32 30, i32 31, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.qj = insertelement <28 x i32> poison, i32 %i.pv, i64 0
  %i.qk = shufflevector <28 x i32> %i.qj, <28 x i32> poison, <28 x i32> zeroinitializer
  %i.ql = lshr <28 x i32> %i.qi, %i.qk
  %i.qm = add nuw <28 x i32> %i.ql, splat (i32 1) ; 10 uses
  %i.qn = extractelement <28 x i32> %i.qm, i64 0
  store i32 %i.qn, ptr %i.pa, align 4, !tbaa !44
  %i.qo = shufflevector <28 x i32> %i.qm, <28 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  store <4 x i32> %i.qo, ptr %i.ps, align 4, !tbaa !44
  %i.qp = shufflevector <28 x i32> %i.qm, <28 x i32> poison, <4 x i32> <i32 5, i32 6, i32 7, i32 8>
  store <4 x i32> %i.qp, ptr %i.pr, align 4, !tbaa !44
  %i.qq = shufflevector <28 x i32> %i.qm, <28 x i32> poison, <4 x i32> <i32 9, i32 10, i32 11, i32 12>
  store <4 x i32> %i.qq, ptr %i.pq, align 4, !tbaa !44
  %i.qr = shufflevector <28 x i32> %i.qm, <28 x i32> poison, <4 x i32> <i32 13, i32 14, i32 15, i32 16>
  store <4 x i32> %i.qr, ptr %i.pp, align 4, !tbaa !44
  %i.qs = shufflevector <28 x i32> %i.qm, <28 x i32> poison, <4 x i32> <i32 17, i32 18, i32 19, i32 20>
  store <4 x i32> %i.qs, ptr %i.po, align 4, !tbaa !44
  %i.qt = shufflevector <28 x i32> %i.qm, <28 x i32> poison, <4 x i32> <i32 21, i32 22, i32 23, i32 24>
  store <4 x i32> %i.qt, ptr %i.pn, align 4, !tbaa !44
  %i.qu = shufflevector <28 x i32> %i.qm, <28 x i32> poison, <2 x i32> <i32 25, i32 26>
  store <2 x i32> %i.qu, ptr %i.pl, align 4, !tbaa !44
  %i.qv = extractelement <28 x i32> %i.qm, i64 27
  store i32 %i.qv, ptr %i.pk, align 4, !tbaa !44
  %i.qw = load i32, ptr %i.pj, align 4, !tbaa !44
  %i.qx = lshr i32 %i.qw, %i.pv
  %i.qy = add nuw i32 %i.qx, 1                    ; 2 uses
  store i32 %i.qy, ptr %i.pj, align 4, !tbaa !44
  %i.qz = load i32, ptr %i.pi, align 4, !tbaa !44
  %i.ra = lshr i32 %i.qz, %i.pv
  %i.rb = add nuw i32 %i.ra, 1                    ; 2 uses
  store i32 %i.rb, ptr %i.pi, align 4, !tbaa !44
  %i.rc = load i32, ptr %i.ph, align 4, !tbaa !44
  %i.rd = lshr i32 %i.rc, %i.pv
  %i.re = add nuw i32 %i.rd, 1                    ; 2 uses
  %i.rf = tail call i32 @llvm.vector.reduce.add.v28i32(<28 x i32> %i.qm)
  %op.rdx = add i32 %i.rf, %i.px
  %op.rdx233 = add i32 %i.qy, %i.rb
  %op.rdx234 = add i32 %op.rdx, %op.rdx233
  %op.rdx235 = add i32 %op.rdx234, %i.re
  store i32 %i.re, ptr %i.ph, align 4, !tbaa !44
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %ZSTD_scaleStats.exit120, %.split.i.i125, %sum_u32.exit
  %.sink = phi i32 [ 53, %sum_u32.exit ], [ %i.pc, %ZSTD_scaleStats.exit120 ], [ %op.rdx235, %.split.i.i125 ] ; 2 uses
end_hunk_0
begin_hunk_1_@ZSTD_btGetAllMatches_dictMatchState_6:bb.a
  %i.lq = icmp eq ptr %i.lp, %4
  %i.lr = or i1 %i.lo, %i.lq
  br i1 %i.lr, label %.thread63.thread, label %bb.bz

.thread63.thread:                                 ; preds = %bb.by
  store i32 0, ptr %.0426.i116, align 4, !tbaa !44
  store i32 0, ptr %.0430.i115, align 4, !tbaa !44
  br label %.thread75

bb.bz:                                            ; preds = %bb.by, %ZSTD_count.exit49
  %.2417.i = phi i32 [ %.1416.i, %bb.by ], [ %.0415.i117, %ZSTD_count.exit49 ] ; 3 uses
  %.10409.i = phi i32 [ %i.ln, %bb.by ], [ %.9408.i118, %ZSTD_count.exit49 ] ; 3 uses
  %.10.i = phi i64 [ %i.lc, %bb.by ], [ %.9.i120, %ZSTD_count.exit49 ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.lc
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !61
  %i.lu = getelementptr inbounds nuw i8, ptr %3, i64 %i.lc
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !61
  %i.lw = icmp ult i8 %i.lt, %i.lv
  %.not467.i = icmp ugt i32 %.0446.i112, %i.aq    ; 2 uses
  br i1 %i.lw, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  store i32 %.0446.i112, ptr %.0430.i115, align 4, !tbaa !44
  br i1 %.not467.i, label %bb.cb, label %.thread63

bb.cb:                                            ; preds = %bb.ca
  %i.lx = getelementptr inbounds nuw i8, ptr %i.jv, i64 4 ; 2 uses
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bz
  store i32 %.0446.i112, ptr %.0426.i116, align 4, !tbaa !44
  br i1 %.not467.i, label %bb.cd, label %.thread63

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.1447.in.i = phi ptr [ %i.lx, %bb.cb ], [ %i.jv, %bb.cc ]
  %.1441.i = phi i64 [ %i.lc, %bb.cb ], [ %.0440.i113, %bb.cc ]
  %.1435.i = phi i64 [ %.0434.i114, %bb.cb ], [ %i.lc, %bb.cc ]
  %.1431.i = phi ptr [ %i.lx, %bb.cb ], [ %.0430.i115, %bb.cc ] ; 2 uses
  %.1427.i = phi ptr [ %.0426.i116, %bb.cb ], [ %i.jv, %bb.cc ] ; 2 uses
  %.1447.i = load i32, ptr %.1447.in.i, align 4, !tbaa !44 ; 2 uses
  %i.ly = add i32 %.0394.i119, -1                 ; 3 uses
  %i.lz = icmp ne i32 %i.ly, 0
  %i.ma = icmp uge i32 %.1447.i, %i.ba
  %i.mb = select i1 %i.lz, i1 %i.ma, i1 false
  br i1 %i.mb, label %bb.bm, label %.thread63, !llvm.loop !14

.thread63:                                        ; preds = %bb.cd, %bb.cc, %bb.ca
  %.0394.i.lcssa = phi i32 [ %.0394.i119, %bb.ca ], [ %i.ly, %bb.cd ], [ %.0394.i119, %bb.cc ] ; 2 uses
  %.3433.i = phi ptr [ %i.a, %bb.ca ], [ %.1431.i, %bb.cd ], [ %.0430.i115, %bb.cc ]
  %.3429.i = phi ptr [ %.0426.i116, %bb.ca ], [ %.1427.i, %bb.cd ], [ %i.a, %bb.cc ]
  store i32 0, ptr %.3429.i, align 4, !tbaa !44
  store i32 0, ptr %.3433.i, align 4, !tbaa !44
  %.not = icmp eq i32 %.0394.i.lcssa, 0
  br i1 %.not, label %.thread75, label %bb.ce

bb.ce:                                            ; preds = %.thread63.thread207, %.thread63
  %.12.i218 = phi i64 [ %.0387.i.lcssa, %.thread63.thread207 ], [ %.10.i, %.thread63 ]
  %.12411.i217 = phi i32 [ %.0399.i.lcssa, %.thread63.thread207 ], [ %.10409.i, %.thread63 ] ; 2 uses
  %.4419.i216 = phi i32 [ %i.bg, %.thread63.thread207 ], [ %.2417.i, %.thread63 ] ; 2 uses
  %.0394.i.lcssa215 = phi i32 [ %i.bj, %.thread63.thread207 ], [ %.0394.i.lcssa, %.thread63 ]
  %i.mc = sub i32 64, %i.bx
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = lshr i64 %i.aa, %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !99
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.me
  %i.mi = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !101
  %.0370.i142 = load i32, ptr %i.mh, align 4, !tbaa !44 ; 2 uses
  %i.mk = icmp ugt i32 %.0370.i142, %i.bu
  br i1 %i.mk, label %.lr.ph150, label %.thread75

.lr.ph150:                                        ; preds = %bb.ce
  %i.ml = and i64 %i.br, 4294967295
  %i.mm = zext i32 %i.bv to i64
  %invariant.gep159 = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.mm
  %i.mn = add i32 %.pre-phi174, 3
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph150, %bb.ci
  %.0370.i149 = phi i32 [ %.0370.i142, %.lr.ph150 ], [ %.0370.i, %bb.ci ] ; 4 uses
  %.13.i148 = phi i64 [ %.12.i218, %.lr.ph150 ], [ %.14.i, %bb.ci ] ; 2 uses
  %.4398.i147 = phi i32 [ %.0394.i.lcssa215, %.lr.ph150 ], [ %i.nv, %bb.ci ]
  %.13412.i146 = phi i32 [ %.12411.i217, %.lr.ph150 ], [ %.14413.i, %bb.ci ] ; 3 uses
  %.5420.i145 = phi i32 [ %.4419.i216, %.lr.ph150 ], [ %.7422.i, %bb.ci ] ; 3 uses
  %.3437.i144 = phi i64 [ 0, %.lr.ph150 ], [ %.4438.i, %bb.ci ] ; 2 uses
  %.3443.i143 = phi i64 [ 0, %.lr.ph150 ], [ %.4444.i, %bb.ci ] ; 2 uses
  %i.mo = and i32 %.0370.i149, %i.cb
  %i.mp = shl nuw i32 %i.mo, 1
  %i.mq = zext i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.mq
  %i.ms = tail call i64 @llvm.umin.i64(i64 %.3443.i143, i64 %.3437.i144) ; 3 uses
  %i.mt = zext i32 %.0370.i149 to i64             ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.mt ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %3, i64 %i.ms
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.ms
  %i.mx = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.mv, ptr noundef nonnull %i.mw, ptr noundef %4, ptr noundef %i.bo, ptr noundef %i.ap)
  %i.my = add i64 %i.mx, %i.ms                    ; 11 uses
  %i.mz = add i64 %i.my, %i.mt
  %.not468.i = icmp ult i64 %i.mz, %i.ml
  %gep160 = getelementptr inbounds nuw i8, ptr %invariant.gep159, i64 %i.mt
  %.0.i8 = select i1 %.not468.i, ptr %i.mu, ptr %gep160
  %i.na = icmp ugt i64 %i.my, %.13.i148
  br i1 %i.na, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.nb = add i32 %.0370.i149, %i.bv              ; 3 uses
  %i.nc = sub i32 %.5420.i145, %i.nb
  %i.nd = zext i32 %i.nc to i64
  %i.ne = icmp ugt i64 %i.my, %i.nd
  %i.nf = trunc i64 %i.my to i32                  ; 2 uses
  %i.ng = add i32 %i.nb, %i.nf
  %.6421.i = select i1 %i.ne, i32 %i.ng, i32 %.5420.i145 ; 2 uses
  %i.nh = sub i32 %i.mn, %i.nb
  %i.ni = zext i32 %.13412.i146 to i64
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ni ; 2 uses
  store i32 %i.nh, ptr %i.nj, align 4, !tbaa !65
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  store i32 %i.nf, ptr %i.nk, align 4, !tbaa !64
  %i.nl = add i32 %.13412.i146, 1                 ; 2 uses
  %i.nm = icmp ugt i64 %i.my, 4096
  %i.nn = getelementptr inbounds nuw i8, ptr %3, i64 %i.my
  %i.no = icmp eq ptr %i.nn, %4
  %i.np = or i1 %i.nm, %i.no
  br i1 %i.np, label %.thread75, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.7422.i = phi i32 [ %.6421.i, %bb.cg ], [ %.5420.i145, %bb.cf ] ; 3 uses
  %.14413.i = phi i32 [ %i.nl, %bb.cg ], [ %.13412.i146, %bb.cf ] ; 3 uses
  %.14.i = phi i64 [ %i.my, %bb.cg ], [ %.13.i148, %bb.cf ]
  %.not469.i = icmp ugt i32 %.0370.i149, %i.cf
  br i1 %.not469.i, label %bb.ci, label %.thread75

bb.ci:                                            ; preds = %bb.ch
  %i.nq = getelementptr inbounds nuw i8, ptr %.0.i8, i64 %i.my
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !61
  %i.ns = getelementptr inbounds nuw i8, ptr %3, i64 %i.my
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !61
  %i.nu = icmp ult i8 %i.nr, %i.nt                ; 3 uses
  %.4444.i = select i1 %i.nu, i64 %i.my, i64 %.3443.i143
  %.4438.i = select i1 %i.nu, i64 %.3437.i144, i64 %i.my
  %.1.in.i.idx = select i1 %i.nu, i64 4, i64 0
  %.1.in.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 %.1.in.i.idx
  %i.nv = add i32 %.4398.i147, -1                 ; 2 uses
  %.0370.i = load i32, ptr %.1.in.i, align 4, !tbaa !44 ; 2 uses
  %i.nw = icmp ne i32 %i.nv, 0
  %i.nx = icmp ugt i32 %.0370.i, %i.bu
  %i.ny = select i1 %i.nw, i1 %i.nx, i1 false
  br i1 %i.ny, label %bb.cf, label %.thread75, !llvm.loop !16

.thread75:                                        ; preds = %bb.ci, %bb.cg, %bb.ch, %bb.ce, %.thread63.thread, %.thread63
  %.10425.i = phi i32 [ %.2417.i, %.thread63 ], [ %.1416.i, %.thread63.thread ], [ %.4419.i216, %bb.ce ], [ %.7422.i, %bb.ci ], [ %.6421.i, %bb.cg ], [ %.7422.i, %bb.ch ]
  %.17.i = phi i32 [ %.10409.i, %.thread63 ], [ %i.ln, %.thread63.thread ], [ %.12411.i217, %bb.ce ], [ %.14413.i, %bb.ci ], [ %i.nl, %bb.cg ], [ %.14413.i, %bb.ch ]
  %i.nz = add i32 %.10425.i, -8
  store i32 %i.nz, ptr %i.d, align 4, !tbaa !39
  br label %ZSTD_insertBtAndGetAllMatches.exit

ZSTD_insertBtAndGetAllMatches.exit:               ; preds = %bb.v, %bb.aq, %bb.bl, %.thread75
  %.6.i = phi i32 [ %.17.i, %.thread75 ], [ 1, %bb.v ], [ %i.hc, %bb.aq ], [ %i.jk, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %ZSTD_btGetAllMatches_internal.exit

ZSTD_btGetAllMatches_internal.exit:               ; preds = %bb.a, %ZSTD_insertBtAndGetAllMatches.exit
  %.0.i = phi i32 [ %.6.i, %ZSTD_insertBtAndGetAllMatches.exit ], [ 0, %bb.a ]
  ret i32 %.0.i
}

declare i32 @HUF_getNbBitsFromCTable(ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @HIST_count_simple(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @ZSTD_resetSeqStore(ptr noundef) local_unnamed_addr #8

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

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!17, !18, !19, !20, !21}
!llvm.ident = !{!22}
!llvm.errno.tbaa = !{!27}

!0 = distinct !{!0, !40}
!1 = distinct !{null}
!2 = distinct !{!2, !40}
!3 = distinct !{!3, !40}
!4 = distinct !{!4, !40}
!5 = distinct !{!5, !40}
!6 = distinct !{!6, !40}
!7 = distinct !{!7, !40}
!8 = distinct !{!8, !40}
!9 = distinct !{!9, !40}
!10 = distinct !{!10, !40}
!11 = distinct !{!11, !40}
!12 = distinct !{!12, !40}
!13 = distinct !{!13, !40}
!14 = distinct !{!14, !40}
!15 = distinct !{!15, !40}
!16 = distinct !{!16, !40}
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 8, !"PIC Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!22 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !{!"omnipotent char", !23, i64 0}
!25 = !{!"int", !24, i64 0}
!26 = !{!"__libc_errno", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!"any pointer", !24, i64 0}
!29 = !{!"p1 omnipotent char", !28, i64 0}
!30 = !{!"", !29, i64 0, !29, i64 8, !29, i64 16, !25, i64 24, !25, i64 28, !25, i64 32}
!31 = !{!"long", !24, i64 0}
!32 = !{!"p1 int", !28, i64 0}
!33 = !{!"", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !28, i64 32, !28, i64 40, !25, i64 48, !25, i64 52, !25, i64 56, !25, i64 60, !25, i64 64, !25, i64 68, !25, i64 72, !25, i64 76, !25, i64 80, !28, i64 88, !25, i64 96}
!34 = !{!"p1 _ZTS17ZSTD_MatchState_t", !28, i64 0}
!35 = !{!"", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20, !25, i64 24}
!36 = !{!"ZSTD_MatchState_t", !30, i64 0, !25, i64 40, !25, i64 44, !25, i64 48, !25, i64 52, !29, i64 56, !24, i64 64, !31, i64 96, !25, i64 104, !32, i64 112, !32, i64 120, !32, i64 128, !25, i64 136, !25, i64 140, !33, i64 144, !34, i64 248, !35, i64 256, !28, i64 288, !25, i64 296, !25, i64 300}
!37 = !{!36, !25, i64 272}
!38 = !{!36, !29, i64 8}
!39 = !{!36, !25, i64 44}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!36, !25, i64 24}
!42 = !{!28, !28, i64 0}
!43 = !{!35, !25, i64 20}
!44 = !{!25, !25, i64 0}
!45 = !{!33, !28, i64 40}
!46 = !{!33, !28, i64 32}
!47 = !{!36, !28, i64 288}
!48 = !{!31, !31, i64 0}
!49 = !{i64 0, i64 8, !42, i64 8, i64 8, !48, i64 16, i64 8, !48, i64 24, i64 8, !48, i64 32, i64 8, !48}
!50 = !{!"", !28, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32}
!51 = !{!"", !50, i64 0, !25, i64 40, !25, i64 44, !25, i64 48}
!52 = !{!51, !25, i64 48}
!53 = !{!51, !25, i64 40}
!54 = !{!51, !25, i64 44}
!55 = !{!"", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !24, i64 16}
!56 = !{!55, !25, i64 8}
!57 = !{!55, !25, i64 12}
!58 = !{!33, !25, i64 80}
!59 = !{!33, !25, i64 68}
!60 = !{!33, !32, i64 8}
!61 = !{!24, !24, i64 0}
!62 = !{!55, !25, i64 0}
!63 = !{!"", !25, i64 0, !25, i64 4}
!64 = !{!63, !25, i64 4}
!65 = !{!63, !25, i64 0}
!66 = !{!55, !25, i64 4}
!67 = !{!33, !25, i64 76}
!68 = !{!33, !32, i64 24}
!69 = !{!33, !25, i64 72}
!70 = !{!33, !32, i64 16}
!71 = !{!33, !25, i64 96}
!72 = !{!33, !25, i64 64}
!73 = !{!33, !32, i64 0}
!74 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!75 = !{i64 0, i64 4, !44, i64 4, i64 4, !44, i64 8, i64 4, !44, i64 12, i64 4, !44, i64 16, i64 12, !61}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !{i64 0, i64 12, !61}
!78 = !{!33, !25, i64 48}
!79 = !{!33, !25, i64 52}
!80 = !{!33, !25, i64 60}
!81 = !{!33, !25, i64 56}
!82 = !{!"p1 _ZTS8SeqDef_s", !28, i64 0}
!83 = !{!"", !82, i64 0, !82, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !31, i64 56, !31, i64 64, !25, i64 72, !25, i64 76}
!84 = !{!83, !29, i64 24}
!85 = !{!"llvm.loop.isvectorized", i32 1}
!86 = !{!"llvm.loop.unroll.runtime.disable"}
!87 = !{!"branch_weights", i32 8, i32 24}
!88 = !{!83, !82, i64 8}
!89 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!90 = !{!83, !25, i64 72}
!91 = !{!83, !82, i64 0}
!92 = !{!83, !25, i64 76}
!93 = !{!"short", !24, i64 0}
!94 = !{!"SeqDef_s", !25, i64 0, !93, i64 4, !93, i64 6}
!95 = !{!94, !93, i64 4}
!96 = !{!94, !25, i64 0}
!97 = !{!94, !93, i64 6}
!98 = !{!36, !25, i64 28}
!99 = !{!36, !32, i64 112}
!100 = !{!35, !25, i64 8}
!101 = !{!36, !32, i64 128}
!102 = !{!35, !25, i64 4}
!103 = !{!36, !29, i64 16}
!104 = !{!35, !25, i64 0}
!105 = !{!36, !25, i64 40}
!106 = !{!35, !25, i64 12}
!107 = !{!93, !93, i64 0}
!108 = !{!51, !31, i64 24}
!109 = !{!51, !31, i64 8}
!110 = !{!50, !31, i64 8}
!111 = !{!50, !31, i64 16}
!112 = !{!36, !32, i64 120}
!113 = !{!36, !25, i64 48}
!114 = !{!36, !34, i64 248}
!115 = !{!36, !29, i64 0}
!116 = distinct !{!116, !76}
!117 = distinct !{!117, !76}
!118 = distinct !{!118, !76}
!119 = distinct !{!119, !40, !85, !86}
!120 = distinct !{!120, !40, !85, !86}
!121 = distinct !{!121, !76}
!122 = distinct !{!122, !40, !85}
!123 = distinct !{!123, !76}
!124 = distinct !{!124, !76}
!125 = distinct !{!125, !76}
!126 = distinct !{!126, !40, !85, !86}
!127 = distinct !{!127, !40, !85, !86}
!128 = distinct !{!128, !76}
!129 = distinct !{!129, !40, !85}
!130 = !{!"branch_weights", i32 2000, i32 2002}
!131 = !{!"branch_weights", i32 2146410443, i32 1073205}
!132 = !{!36, !25, i64 196}
!133 = distinct !{!133, !40}
!134 = !{!51, !28, i64 0}
!135 = !{!51, !31, i64 16}
!136 = distinct !{!136, !40}
!137 = distinct !{!137, !40}
!138 = distinct !{!138, !40}
!139 = distinct !{!139, !40, !85, !86}
!140 = distinct !{!140, !40, !85, !86}
!141 = !{!33, !28, i64 88}
!142 = !{!"", !24, i64 0, !25, i64 2056}
!143 = !{!"", !24, i64 0, !24, i64 772, !24, i64 2224, !25, i64 3540, !25, i64 3544, !25, i64 3548}
!144 = !{!"", !142, i64 0, !143, i64 2064}
!145 = !{!144, !25, i64 2056}
!146 = !{!50, !28, i64 0}
!147 = distinct !{!147, !76}
!148 = distinct !{!148, !76}
!149 = distinct !{!149, !76}
end_hunk_1
