Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/blocksort?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 14
begin_hunk_0_@BZ2_blockSort:bb.a
  %i.jb = trunc nuw nsw i64 %indvars.iv508.i to i32
  store i32 %i.jb, ptr %i.ja, align 4, !tbaa !10
  %i.jc = add nsw i64 %indvars.iv508.i, -1        ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !13
  %i.jf = zext i8 %i.je to i16
  %i.jg = tail call i16 @llvm.fshl.i16(i16 %i.jf, i16 %i.iu, i16 8) ; 2 uses
  %i.jh = zext i16 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.jh ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !10
  %i.jk = add i32 %i.jj, -1                       ; 2 uses
  store i32 %i.jk, ptr %i.ji, align 4, !tbaa !10
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.jl
  %i.jn = trunc nuw nsw i64 %i.jc to i32
  store i32 %i.jn, ptr %i.jm, align 4, !tbaa !10
  %i.jo = add nsw i64 %indvars.iv508.i, -2        ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !13
  %i.jr = zext i8 %i.jq to i16
  %i.js = tail call i16 @llvm.fshl.i16(i16 %i.jr, i16 %i.jg, i16 8) ; 2 uses
  %i.jt = zext i16 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.jt ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !10
  %i.jw = add i32 %i.jv, -1                       ; 2 uses
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !10
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.jx
  %i.jz = trunc nuw nsw i64 %i.jo to i32
  store i32 %i.jz, ptr %i.jy, align 4, !tbaa !10
  %i.ka = add nsw i64 %indvars.iv508.i, -3        ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !13
  %i.kd = zext i8 %i.kc to i16
  %i.ke = tail call i16 @llvm.fshl.i16(i16 %i.kd, i16 %i.js, i16 8) ; 3 uses
  %i.kf = zext i16 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.kf ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !10
  %i.ki = add i32 %i.kh, -1                       ; 2 uses
  store i32 %i.ki, ptr %i.kg, align 4, !tbaa !10
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.kj
  %i.kl = trunc nuw nsw i64 %i.ka to i32
  store i32 %i.kl, ptr %i.kk, align 4, !tbaa !10
  %indvars.iv.next509.i = add nsw i64 %indvars.iv508.i, -4 ; 2 uses
  %i.km = icmp samesign ugt i64 %indvars.iv508.i, 6
  br i1 %i.km, label %.lr.ph406.i, label %.preheader333.i, !llvm.loop !22

.preheader332.i:                                  ; preds = %.lr.ph411.i, %.preheader333.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.e, i8 0, i64 256, i1 false), !tbaa !13
  %i.kn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.d, align 16, !tbaa !10
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %i.kn, align 16, !tbaa !10
  %i.ko = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.kp = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr %i.ko, align 16, !tbaa !10
  store <4 x i32> <i32 12, i32 13, i32 14, i32 15>, ptr %i.kp, align 16, !tbaa !10
  %i.kq = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.kr = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store <4 x i32> <i32 16, i32 17, i32 18, i32 19>, ptr %i.kq, align 16, !tbaa !10
  store <4 x i32> <i32 20, i32 21, i32 22, i32 23>, ptr %i.kr, align 16, !tbaa !10
  %i.ks = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.kt = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store <4 x i32> <i32 24, i32 25, i32 26, i32 27>, ptr %i.ks, align 16, !tbaa !10
  store <4 x i32> <i32 28, i32 29, i32 30, i32 31>, ptr %i.kt, align 16, !tbaa !10
  %i.ku = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.kv = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store <4 x i32> <i32 32, i32 33, i32 34, i32 35>, ptr %i.ku, align 16, !tbaa !10
  store <4 x i32> <i32 36, i32 37, i32 38, i32 39>, ptr %i.kv, align 16, !tbaa !10
  %i.kw = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.kx = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store <4 x i32> <i32 40, i32 41, i32 42, i32 43>, ptr %i.kw, align 16, !tbaa !10
  store <4 x i32> <i32 44, i32 45, i32 46, i32 47>, ptr %i.kx, align 16, !tbaa !10
  %i.ky = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.kz = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  store <4 x i32> <i32 48, i32 49, i32 50, i32 51>, ptr %i.ky, align 16, !tbaa !10
  store <4 x i32> <i32 52, i32 53, i32 54, i32 55>, ptr %i.kz, align 16, !tbaa !10
  %i.la = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.lb = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  store <4 x i32> <i32 56, i32 57, i32 58, i32 59>, ptr %i.la, align 16, !tbaa !10
  store <4 x i32> <i32 60, i32 61, i32 62, i32 63>, ptr %i.lb, align 16, !tbaa !10
  %i.lc = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.ld = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store <4 x i32> <i32 64, i32 65, i32 66, i32 67>, ptr %i.lc, align 16, !tbaa !10
  store <4 x i32> <i32 68, i32 69, i32 70, i32 71>, ptr %i.ld, align 16, !tbaa !10
  %i.le = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.lf = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  store <4 x i32> <i32 72, i32 73, i32 74, i32 75>, ptr %i.le, align 16, !tbaa !10
  store <4 x i32> <i32 76, i32 77, i32 78, i32 79>, ptr %i.lf, align 16, !tbaa !10
  %i.lg = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.lh = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  store <4 x i32> <i32 80, i32 81, i32 82, i32 83>, ptr %i.lg, align 16, !tbaa !10
  store <4 x i32> <i32 84, i32 85, i32 86, i32 87>, ptr %i.lh, align 16, !tbaa !10
  %i.li = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %i.lj = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  store <4 x i32> <i32 88, i32 89, i32 90, i32 91>, ptr %i.li, align 16, !tbaa !10
  store <4 x i32> <i32 92, i32 93, i32 94, i32 95>, ptr %i.lj, align 16, !tbaa !10
  %i.lk = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %i.ll = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  store <4 x i32> <i32 96, i32 97, i32 98, i32 99>, ptr %i.lk, align 16, !tbaa !10
  store <4 x i32> <i32 100, i32 101, i32 102, i32 103>, ptr %i.ll, align 16, !tbaa !10
  %i.lm = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %i.ln = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  store <4 x i32> <i32 104, i32 105, i32 106, i32 107>, ptr %i.lm, align 16, !tbaa !10
  store <4 x i32> <i32 108, i32 109, i32 110, i32 111>, ptr %i.ln, align 16, !tbaa !10
  %i.lo = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.lp = getelementptr inbounds nuw i8, ptr %i.d, i64 464
  store <4 x i32> <i32 112, i32 113, i32 114, i32 115>, ptr %i.lo, align 16, !tbaa !10
  store <4 x i32> <i32 116, i32 117, i32 118, i32 119>, ptr %i.lp, align 16, !tbaa !10
  %i.lq = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.lr = getelementptr inbounds nuw i8, ptr %i.d, i64 496
  store <4 x i32> <i32 120, i32 121, i32 122, i32 123>, ptr %i.lq, align 16, !tbaa !10
  store <4 x i32> <i32 124, i32 125, i32 126, i32 127>, ptr %i.lr, align 16, !tbaa !10
  %i.ls = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  %i.lt = getelementptr inbounds nuw i8, ptr %i.d, i64 528
  store <4 x i32> <i32 128, i32 129, i32 130, i32 131>, ptr %i.ls, align 16, !tbaa !10
  store <4 x i32> <i32 132, i32 133, i32 134, i32 135>, ptr %i.lt, align 16, !tbaa !10
  %i.lu = getelementptr inbounds nuw i8, ptr %i.d, i64 544
  %i.lv = getelementptr inbounds nuw i8, ptr %i.d, i64 560
  store <4 x i32> <i32 136, i32 137, i32 138, i32 139>, ptr %i.lu, align 16, !tbaa !10
  store <4 x i32> <i32 140, i32 141, i32 142, i32 143>, ptr %i.lv, align 16, !tbaa !10
  %i.lw = getelementptr inbounds nuw i8, ptr %i.d, i64 576
  %i.lx = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  store <4 x i32> <i32 144, i32 145, i32 146, i32 147>, ptr %i.lw, align 16, !tbaa !10
  store <4 x i32> <i32 148, i32 149, i32 150, i32 151>, ptr %i.lx, align 16, !tbaa !10
  %i.ly = getelementptr inbounds nuw i8, ptr %i.d, i64 608
  %i.lz = getelementptr inbounds nuw i8, ptr %i.d, i64 624
  store <4 x i32> <i32 152, i32 153, i32 154, i32 155>, ptr %i.ly, align 16, !tbaa !10
  store <4 x i32> <i32 156, i32 157, i32 158, i32 159>, ptr %i.lz, align 16, !tbaa !10
  %i.ma = getelementptr inbounds nuw i8, ptr %i.d, i64 640
  %i.mb = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  store <4 x i32> <i32 160, i32 161, i32 162, i32 163>, ptr %i.ma, align 16, !tbaa !10
  store <4 x i32> <i32 164, i32 165, i32 166, i32 167>, ptr %i.mb, align 16, !tbaa !10
  %i.mc = getelementptr inbounds nuw i8, ptr %i.d, i64 672
  %i.md = getelementptr inbounds nuw i8, ptr %i.d, i64 688
  store <4 x i32> <i32 168, i32 169, i32 170, i32 171>, ptr %i.mc, align 16, !tbaa !10
  store <4 x i32> <i32 172, i32 173, i32 174, i32 175>, ptr %i.md, align 16, !tbaa !10
  %i.me = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  %i.mf = getelementptr inbounds nuw i8, ptr %i.d, i64 720
  store <4 x i32> <i32 176, i32 177, i32 178, i32 179>, ptr %i.me, align 16, !tbaa !10
  store <4 x i32> <i32 180, i32 181, i32 182, i32 183>, ptr %i.mf, align 16, !tbaa !10
  %i.mg = getelementptr inbounds nuw i8, ptr %i.d, i64 736
  %i.mh = getelementptr inbounds nuw i8, ptr %i.d, i64 752
  store <4 x i32> <i32 184, i32 185, i32 186, i32 187>, ptr %i.mg, align 16, !tbaa !10
  store <4 x i32> <i32 188, i32 189, i32 190, i32 191>, ptr %i.mh, align 16, !tbaa !10
  %i.mi = getelementptr inbounds nuw i8, ptr %i.d, i64 768
  %i.mj = getelementptr inbounds nuw i8, ptr %i.d, i64 784
  store <4 x i32> <i32 192, i32 193, i32 194, i32 195>, ptr %i.mi, align 16, !tbaa !10
  store <4 x i32> <i32 196, i32 197, i32 198, i32 199>, ptr %i.mj, align 16, !tbaa !10
  %i.mk = getelementptr inbounds nuw i8, ptr %i.d, i64 800
  %i.ml = getelementptr inbounds nuw i8, ptr %i.d, i64 816
  store <4 x i32> <i32 200, i32 201, i32 202, i32 203>, ptr %i.mk, align 16, !tbaa !10
  store <4 x i32> <i32 204, i32 205, i32 206, i32 207>, ptr %i.ml, align 16, !tbaa !10
  %i.mm = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  %i.mn = getelementptr inbounds nuw i8, ptr %i.d, i64 848
  store <4 x i32> <i32 208, i32 209, i32 210, i32 211>, ptr %i.mm, align 16, !tbaa !10
  store <4 x i32> <i32 212, i32 213, i32 214, i32 215>, ptr %i.mn, align 16, !tbaa !10
  %i.mo = getelementptr inbounds nuw i8, ptr %i.d, i64 864
  %i.mp = getelementptr inbounds nuw i8, ptr %i.d, i64 880
  store <4 x i32> <i32 216, i32 217, i32 218, i32 219>, ptr %i.mo, align 16, !tbaa !10
  store <4 x i32> <i32 220, i32 221, i32 222, i32 223>, ptr %i.mp, align 16, !tbaa !10
  %i.mq = getelementptr inbounds nuw i8, ptr %i.d, i64 896
  %i.mr = getelementptr inbounds nuw i8, ptr %i.d, i64 912
  store <4 x i32> <i32 224, i32 225, i32 226, i32 227>, ptr %i.mq, align 16, !tbaa !10
  store <4 x i32> <i32 228, i32 229, i32 230, i32 231>, ptr %i.mr, align 16, !tbaa !10
  %i.ms = getelementptr inbounds nuw i8, ptr %i.d, i64 928
  %i.mt = getelementptr inbounds nuw i8, ptr %i.d, i64 944
  store <4 x i32> <i32 232, i32 233, i32 234, i32 235>, ptr %i.ms, align 16, !tbaa !10
  store <4 x i32> <i32 236, i32 237, i32 238, i32 239>, ptr %i.mt, align 16, !tbaa !10
  %i.mu = getelementptr inbounds nuw i8, ptr %i.d, i64 960
  %i.mv = getelementptr inbounds nuw i8, ptr %i.d, i64 976
  store <4 x i32> <i32 240, i32 241, i32 242, i32 243>, ptr %i.mu, align 16, !tbaa !10
  store <4 x i32> <i32 244, i32 245, i32 246, i32 247>, ptr %i.mv, align 16, !tbaa !10
  %i.mw = getelementptr inbounds nuw i8, ptr %i.d, i64 992
  %i.mx = getelementptr inbounds nuw i8, ptr %i.d, i64 1008
  store <4 x i32> <i32 248, i32 249, i32 250, i32 251>, ptr %i.mw, align 16, !tbaa !10
  store <4 x i32> <i32 252, i32 253, i32 254, i32 255>, ptr %i.mx, align 16, !tbaa !10
  br label %.lr.ph414.i

.lr.ph411.i:                                      ; preds = %.preheader333.i, %.lr.ph411.i
  %indvars.iv510.i = phi i64 [ %indvars.iv.next511.i, %.lr.ph411.i ], [ %indvars.iv.next509.i, %.preheader333.i ] ; 4 uses
  %.1282410.i = phi i16 [ %i.nb, %.lr.ph411.i ], [ %i.ke, %.preheader333.i ]
  %i.my = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv510.i
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !13
  %i.na = zext i8 %i.mz to i16
  %i.nb = tail call i16 @llvm.fshl.i16(i16 %i.na, i16 %.1282410.i, i16 8) ; 2 uses
  %i.nc = zext i16 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.nc ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !10
  %i.nf = add i32 %i.ne, -1                       ; 2 uses
  store i32 %i.nf, ptr %i.nd, align 4, !tbaa !10
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ng
  %i.ni = trunc nuw nsw i64 %indvars.iv510.i to i32
  store i32 %i.ni, ptr %i.nh, align 4, !tbaa !10
  %indvars.iv.next511.i = add nsw i64 %indvars.iv510.i, -1
  %.not677.i = icmp eq i64 %indvars.iv510.i, 0
  br i1 %.not677.i, label %.preheader332.i, label %.lr.ph411.i, !llvm.loop !23

.lr.ph414.i:                                      ; preds = %.preheader332.i, %.split.loop.exit657.i
  %indvars.iv540.i = phi i32 [ %indvars.iv.next541.i, %.split.loop.exit657.i ], [ 0, %.preheader332.i ] ; 2 uses
  %indvars.iv516.i = phi i64 [ %indvars.iv.next517.i, %.split.loop.exit657.i ], [ 121, %.preheader332.i ] ; 7 uses
  %1 = urem i32 %indvars.iv540.i, 121
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv516.i
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !10 ; 2 uses
  %i.nl = shl i32 %i.nk, 8                        ; 2 uses
  %i.nm = add i32 %i.nl, 256
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.nn
  %i.np = load i32, ptr %i.no, align 4, !tbaa !10
  %i.nq = sext i32 %i.nl to i64
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.nq
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !10
  %i.nt = sub i32 %i.np, %i.ns                    ; 2 uses
  %indvars.iv.next539.i = add nsw i64 %indvars.iv516.i, -121 ; 3 uses
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next539.i
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !10 ; 2 uses
  %i.nw = shl i32 %i.nv, 8                        ; 2 uses
  %i.nx = add i32 %i.nw, 256
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !10
  %i.ob = sext i32 %i.nw to i64
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !10
  %i.oe = sub i32 %i.oa, %i.od
  %i.of = icmp ugt i32 %i.oe, %i.nt
  br i1 %i.of, label %bb.g, label %.split.loop.exit657.i

bb.g:                                             ; preds = %.lr.ph414.i
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv516.i
  store i32 %i.nv, ptr %i.og, align 4, !tbaa !10
  %.not323.not.i = icmp samesign ult i64 %indvars.iv516.i, 242
  br i1 %.not323.not.i, label %.split.loop.exit657.i.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %2 = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv516.i
  %3 = getelementptr i8, ptr %2, i64 -968
  %i.oh = load i32, ptr %3, align 4, !tbaa !10    ; 2 uses
  %i.oi = shl i32 %i.oh, 8                        ; 2 uses
  %i.oj = add i32 %i.oi, 256
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !10
  %i.on = sext i32 %i.oi to i64
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.on
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !10
  %i.oq = sub i32 %i.om, %i.op
  %i.or = icmp ugt i32 %i.oq, %i.nt
  br i1 %i.or, label %bb.i, label %.split.loop.exit657.i

bb.i:                                             ; preds = %bb.h
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next539.i
  store i32 %i.oh, ptr %i.os, align 4, !tbaa !10
  br label %.split.loop.exit657.i.loopexit

.split.loop.exit657.i.loopexit:                   ; preds = %bb.i, %bb.g
  %4 = zext nneg i32 %1 to i64
  br label %.split.loop.exit657.i

.split.loop.exit657.i:                            ; preds = %.lr.ph414.i, %bb.h, %.split.loop.exit657.i.loopexit
  %.3290.i = phi i64 [ %4, %.split.loop.exit657.i.loopexit ], [ %indvars.iv516.i, %.lr.ph414.i ], [ %indvars.iv.next539.i, %bb.h ]
  %5 = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.3290.i
  store i32 %i.nk, ptr %5, align 4, !tbaa !10
  %indvars.iv.next517.i = add nuw nsw i64 %indvars.iv516.i, 1 ; 2 uses
  %exitcond519.not.i = icmp eq i64 %indvars.iv.next517.i, 256
  %indvars.iv.next541.i = add nuw nsw i32 %indvars.iv540.i, 1
  br i1 %exitcond519.not.i, label %.lr.ph414.1.i, label %.lr.ph414.i, !llvm.loop !24

.lr.ph414.1.i:                                    ; preds = %.split.loop.exit657.i, %.split.loop.exit659.i
  %indvars.iv535.i = phi i32 [ %indvars.iv.next536.i, %.split.loop.exit659.i ], [ 0, %.split.loop.exit657.i ] ; 2 uses
  %indvars.iv516.1.i = phi i64 [ %indvars.iv.next517.1.i, %.split.loop.exit659.i ], [ 40, %.split.loop.exit657.i ] ; 15 uses
  %6 = urem i32 %indvars.iv535.i, 40
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv516.1.i
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !10 ; 2 uses
  %i.ov = shl i32 %i.ou, 8                        ; 2 uses
  %i.ow = add i32 %i.ov, 256
  %i.ox = sext i32 %i.ow to i64
  %i.oy = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ox
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !10
  %i.pa = sext i32 %i.ov to i64
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.pa
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !10
  %i.pd = sub i32 %i.oz, %i.pc                    ; 6 uses
  %indvars.iv.next534.i = add nsw i64 %indvars.iv516.1.i, -40 ; 3 uses
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next534.i
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !10 ; 2 uses
  %i.pg = shl i32 %i.pf, 8                        ; 2 uses
  %i.ph = add i32 %i.pg, 256
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.pi
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !10
  %i.pl = sext i32 %i.pg to i64
  %i.pm = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.pl
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !10
  %i.po = sub i32 %i.pk, %i.pn
  %i.pp = icmp ugt i32 %i.po, %i.pd
  br i1 %i.pp, label %bb.j, label %.split.loop.exit659.i

bb.j:                                             ; preds = %.lr.ph414.1.i
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv516.1.i
  store i32 %i.pf, ptr %i.pq, align 4, !tbaa !10
  %.not323.not.1.i = icmp samesign ult i64 %indvars.iv516.1.i, 80
  br i1 %.not323.not.1.i, label %.split.loop.exit659.i.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next534.i.1 = add nsw i64 %indvars.iv516.1.i, -80 ; 3 uses
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next534.i.1
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !10 ; 2 uses
  %i.pt = shl i32 %i.ps, 8                        ; 2 uses
  %i.pu = add i32 %i.pt, 256
  %i.pv = sext i32 %i.pu to i64
  %i.pw = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.pv
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !10
  %i.py = sext i32 %i.pt to i64
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.py
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !10
  %i.qb = sub i32 %i.px, %i.qa
  %i.qc = icmp ugt i32 %i.qb, %i.pd
  br i1 %i.qc, label %bb.l, label %.split.loop.exit659.i

bb.l:                                             ; preds = %bb.k
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next534.i
  store i32 %i.ps, ptr %i.qd, align 4, !tbaa !10
  %.not323.not.1.i.1 = icmp samesign ult i64 %indvars.iv516.1.i, 120
  br i1 %.not323.not.1.i.1, label %.split.loop.exit659.i.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next534.i.2 = add nsw i64 %indvars.iv516.1.i, -120 ; 3 uses
  %i.qe = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next534.i.2
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !10 ; 2 uses
  %i.qg = shl i32 %i.qf, 8                        ; 2 uses
  %i.qh = add i32 %i.qg, 256
  %i.qi = sext i32 %i.qh to i64
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !10
  %i.ql = sext i32 %i.qg to i64
  %i.qm = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ql
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !10
  %i.qo = sub i32 %i.qk, %i.qn
  %i.qp = icmp ugt i32 %i.qo, %i.pd
  br i1 %i.qp, label %bb.n, label %.split.loop.exit659.i

bb.n:                                             ; preds = %bb.m
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next534.i.1
  store i32 %i.qf, ptr %i.qq, align 4, !tbaa !10
  %.not323.not.1.i.2 = icmp samesign ult i64 %indvars.iv516.1.i, 160
  br i1 %.not323.not.1.i.2, label %.split.loop.exit659.i.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next534.i.3 = add nsw i64 %indvars.iv516.1.i, -160 ; 3 uses
  %i.qr = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next534.i.3
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !10 ; 2 uses
  %i.qt = shl i32 %i.qs, 8                        ; 2 uses
  %i.qu = add i32 %i.qt, 256
  %i.qv = sext i32 %i.qu to i64
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.qv
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !10
  %i.qy = sext i32 %i.qt to i64
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.qy
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !10
  %i.rb = sub i32 %i.qx, %i.ra
  %i.rc = icmp ugt i32 %i.rb, %i.pd
  br i1 %i.rc, label %bb.p, label %.split.loop.exit659.i

bb.p:                                             ; preds = %bb.o
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next534.i.2
  store i32 %i.qs, ptr %i.rd, align 4, !tbaa !10
  %.not323.not.1.i.3 = icmp samesign ult i64 %indvars.iv516.1.i, 200
  br i1 %.not323.not.1.i.3, label %.split.loop.exit659.i.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next534.i.4 = add nsw i64 %indvars.iv516.1.i, -200 ; 3 uses
  %i.re = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next534.i.4
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !10 ; 2 uses
  %i.rg = shl i32 %i.rf, 8                        ; 2 uses
  %i.rh = add i32 %i.rg, 256
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ri
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !10
  %i.rl = sext i32 %i.rg to i64
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.rl
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !10
  %i.ro = sub i32 %i.rk, %i.rn
  %i.rp = icmp ugt i32 %i.ro, %i.pd
  br i1 %i.rp, label %bb.r, label %.split.loop.exit659.i

bb.r:                                             ; preds = %bb.q
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next534.i.3
  store i32 %i.rf, ptr %i.rq, align 4, !tbaa !10
  %.not323.not.1.i.4 = icmp samesign ult i64 %indvars.iv516.1.i, 240
  br i1 %.not323.not.1.i.4, label %.split.loop.exit659.i.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %7 = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv516.1.i
  %8 = getelementptr i8, ptr %7, i64 -960
  %i.rr = load i32, ptr %8, align 4, !tbaa !10    ; 2 uses
  %i.rs = shl i32 %i.rr, 8                        ; 2 uses
  %i.rt = add i32 %i.rs, 256
  %i.ru = sext i32 %i.rt to i64
  %i.rv = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ru
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !10
  %i.rx = sext i32 %i.rs to i64
  %i.ry = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.rx
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !10
  %i.sa = sub i32 %i.rw, %i.rz
  %i.sb = icmp ugt i32 %i.sa, %i.pd
  br i1 %i.sb, label %bb.t, label %.split.loop.exit659.i

bb.t:                                             ; preds = %bb.s
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next534.i.4
  store i32 %i.rr, ptr %i.sc, align 4, !tbaa !10
  br label %.split.loop.exit659.i.loopexit

.split.loop.exit659.i.loopexit:                   ; preds = %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j
  %9 = zext nneg i32 %6 to i64
  br label %.split.loop.exit659.i

.split.loop.exit659.i:                            ; preds = %.lr.ph414.1.i, %bb.k, %bb.m, %bb.o, %bb.q, %bb.s, %.split.loop.exit659.i.loopexit
  %.3290.1.i = phi i64 [ %9, %.split.loop.exit659.i.loopexit ], [ %indvars.iv516.1.i, %.lr.ph414.1.i ], [ %indvars.iv.next534.i, %bb.k ], [ %indvars.iv.next534.i.1, %bb.m ], [ %indvars.iv.next534.i.2, %bb.o ], [ %indvars.iv.next534.i.3, %bb.q ], [ %indvars.iv.next534.i.4, %bb.s ]
  %10 = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.3290.1.i
  store i32 %i.ou, ptr %10, align 4, !tbaa !10
  %indvars.iv.next517.1.i = add nuw nsw i64 %indvars.iv516.1.i, 1 ; 2 uses
  %exitcond519.1.not.i = icmp eq i64 %indvars.iv.next517.1.i, 256
  %indvars.iv.next536.i = add nuw nsw i32 %indvars.iv535.i, 1
  br i1 %exitcond519.1.not.i, label %.lr.ph414.2.i, label %.lr.ph414.1.i, !llvm.loop !24

.lr.ph414.2.i:                                    ; preds = %.split.loop.exit659.i, %.split.loop.exit662.i
  %indvars.iv530.i = phi i32 [ %indvars.iv.next531.i, %.split.loop.exit662.i ], [ 0, %.split.loop.exit659.i ] ; 2 uses
  %indvars.iv516.2.i = phi i64 [ %indvars.iv.next517.2.i, %.split.loop.exit662.i ], [ 13, %.split.loop.exit659.i ] ; 3 uses
  %11 = urem i32 %indvars.iv530.i, 13
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv516.2.i
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !10 ; 2 uses
  %i.sf = shl i32 %i.se, 8                        ; 2 uses
  %i.sg = add i32 %i.sf, 256
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.sh
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !10
  %i.sk = sext i32 %i.sf to i64
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.sk
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !10
  %i.sn = sub i32 %i.sj, %i.sm
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.lr.ph414.2.i
  %indvars.iv528.i = phi i64 [ %indvars.iv.next529.i, %bb.v ], [ %indvars.iv516.2.i, %.lr.ph414.2.i ] ; 4 uses
  %indvars.iv.next529.i = add nsw i64 %indvars.iv528.i, -13 ; 2 uses
  %i.so = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next529.i
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !10 ; 2 uses
  %i.sq = shl i32 %i.sp, 8                        ; 2 uses
  %i.sr = add i32 %i.sq, 256
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ss
  %i.su = load i32, ptr %i.st, align 4, !tbaa !10
  %i.sv = sext i32 %i.sq to i64
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.sv
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !10
  %i.sy = sub i32 %i.su, %i.sx
  %i.sz = icmp ugt i32 %i.sy, %i.sn
  br i1 %i.sz, label %bb.v, label %.split.loop.exit662.i

bb.v:                                             ; preds = %bb.u
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv528.i
  store i32 %i.sp, ptr %i.ta, align 4, !tbaa !10
  %.not323.not.2.i = icmp slt i64 %indvars.iv528.i, 26
  br i1 %.not323.not.2.i, label %.split.loop.exit662.i.loopexit, label %bb.u, !llvm.loop !25

.split.loop.exit662.i.loopexit:                   ; preds = %bb.v
  %12 = zext nneg i32 %11 to i64
  br label %.split.loop.exit662.i

.split.loop.exit662.i:                            ; preds = %bb.u, %.split.loop.exit662.i.loopexit
  %.3290.2.i = phi i64 [ %12, %.split.loop.exit662.i.loopexit ], [ %indvars.iv528.i, %bb.u ]
  %13 = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.3290.2.i
  store i32 %i.se, ptr %13, align 4, !tbaa !10
  %indvars.iv.next517.2.i = add nuw nsw i64 %indvars.iv516.2.i, 1 ; 2 uses
  %exitcond519.2.not.i = icmp eq i64 %indvars.iv.next517.2.i, 256
  %indvars.iv.next531.i = add nuw nsw i32 %indvars.iv530.i, 1
  br i1 %exitcond519.2.not.i, label %.lr.ph414.3.i, label %.lr.ph414.2.i, !llvm.loop !24

.lr.ph414.3.i:                                    ; preds = %.split.loop.exit662.i, %.split.loop.exit665.i
  %indvars.iv525.i = phi i32 [ %indvars.iv.next526.i, %.split.loop.exit665.i ], [ 0, %.split.loop.exit662.i ] ; 2 uses
  %indvars.iv516.3.i = phi i64 [ %indvars.iv.next517.3.i, %.split.loop.exit665.i ], [ 4, %.split.loop.exit662.i ] ; 3 uses
  %i.tb = and i32 %indvars.iv525.i, 3
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv516.3.i
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !10 ; 2 uses
  %i.te = shl i32 %i.td, 8                        ; 2 uses
  %i.tf = add i32 %i.te, 256
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.tg
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !10
  %i.tj = sext i32 %i.te to i64
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.tj
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !10
  %i.tm = sub i32 %i.ti, %i.tl
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.lr.ph414.3.i
  %indvars.iv523.i = phi i64 [ %indvars.iv.next524.i, %bb.x ], [ %indvars.iv516.3.i, %.lr.ph414.3.i ] ; 4 uses
  %indvars.iv.next524.i = add nsw i64 %indvars.iv523.i, -4 ; 2 uses
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next524.i
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !10 ; 2 uses
  %i.tp = shl i32 %i.to, 8                        ; 2 uses
  %i.tq = add i32 %i.tp, 256
  %i.tr = sext i32 %i.tq to i64
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.tr
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !10
  %i.tu = sext i32 %i.tp to i64
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.tu
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !10
  %i.tx = sub i32 %i.tt, %i.tw
  %i.ty = icmp ugt i32 %i.tx, %i.tm
  br i1 %i.ty, label %bb.x, label %.split.loop.exit665.i

bb.x:                                             ; preds = %bb.w
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv523.i
  store i32 %i.to, ptr %i.tz, align 4, !tbaa !10
  %.not323.not.3.i = icmp slt i64 %indvars.iv523.i, 8
  br i1 %.not323.not.3.i, label %.split.loop.exit665.i.loopexit, label %bb.w, !llvm.loop !25

.split.loop.exit665.i.loopexit:                   ; preds = %bb.x
  %i.ua = zext nneg i32 %i.tb to i64
  br label %.split.loop.exit665.i

.split.loop.exit665.i:                            ; preds = %bb.w, %.split.loop.exit665.i.loopexit
  %.3290.3.i = phi i64 [ %i.ua, %.split.loop.exit665.i.loopexit ], [ %indvars.iv523.i, %bb.w ]
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.3290.3.i
  store i32 %i.td, ptr %i.ub, align 4, !tbaa !10
  %indvars.iv.next517.3.i = add nuw nsw i64 %indvars.iv516.3.i, 1 ; 2 uses
  %exitcond519.3.not.i = icmp eq i64 %indvars.iv.next517.3.i, 256
  %indvars.iv.next526.i = add nuw nsw i32 %indvars.iv525.i, 1
  br i1 %exitcond519.3.not.i, label %.lr.ph414.4.i, label %.lr.ph414.3.i, !llvm.loop !24

.lr.ph414.4.i:                                    ; preds = %.split.loop.exit665.i, %bb.aa
  %indvars.iv516.4.i = phi i64 [ %indvars.iv.next517.4.i, %bb.aa ], [ 1, %.split.loop.exit665.i ] ; 3 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv516.4.i
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !10 ; 2 uses
  %i.ue = shl i32 %i.ud, 8                        ; 2 uses
  %i.uf = add i32 %i.ue, 256
  %i.ug = sext i32 %i.uf to i64
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ug
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !10
  %i.uj = sext i32 %i.ue to i64
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.uj
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !10
  %i.um = sub i32 %i.ui, %i.ul
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph414.4.i
  %indvars.iv520.i = phi i64 [ %indvars.iv.next521.i, %bb.z ], [ %indvars.iv516.4.i, %.lr.ph414.4.i ] ; 4 uses
  %indvars.iv.next521.i = add nsw i64 %indvars.iv520.i, -1 ; 2 uses
  %i.un = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next521.i
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !10 ; 2 uses
  %i.up = shl i32 %i.uo, 8                        ; 2 uses
  %i.uq = add i32 %i.up, 256
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ur
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !10
  %i.uu = sext i32 %i.up to i64
  %i.uv = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.uu
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !10
  %i.ux = sub i32 %i.ut, %i.uw
  %i.uy = icmp ugt i32 %i.ux, %i.um
  br i1 %i.uy, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv520.i
  store i32 %i.uo, ptr %i.uz, align 4, !tbaa !10
  %.not323.not.4.i = icmp slt i64 %indvars.iv520.i, 2
  br i1 %.not323.not.4.i, label %bb.aa, label %bb.y, !llvm.loop !25

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.3290.4.i = phi i64 [ 0, %bb.z ], [ %indvars.iv520.i, %bb.y ]
  %i.va = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.3290.4.i
  store i32 %i.ud, ptr %i.va, align 4, !tbaa !10
  %indvars.iv.next517.4.i = add nuw nsw i64 %indvars.iv516.4.i, 1 ; 2 uses
  %exitcond519.4.not.i = icmp eq i64 %indvars.iv.next517.4.i, 256
  br i1 %exitcond519.4.not.i, label %.preheader.i.preheader, label %.lr.ph414.4.i, !llvm.loop !24

.preheader.i.preheader:                           ; preds = %bb.aa
  %scevgep358.a = getelementptr i8, ptr %i.j, i64 4
  %scevgep360.a = getelementptr i8, ptr %i.j, i64 4
  %scevgep362.a = getelementptr i8, ptr %i.j, i64 8
  %scevgep376 = getelementptr i8, ptr %i.j, i64 4
  %scevgep379 = getelementptr i8, ptr %i.j, i64 4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.cf
  %indvars.iv562.i = phi i64 [ %indvars.iv.next563.i, %bb.cf ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %.0283440.i = phi i32 [ %.5.i, %bb.cf ], [ 0, %.preheader.i.preheader ]
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv562.i
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !10 ; 4 uses
  %i.vd = shl i32 %i.vc, 8                        ; 2 uses
  %i.ve = sext i32 %i.vd to i64
  %i.vf = zext i32 %i.vc to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.n, i64 %i.ve ; 3 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.bm, %.preheader.i
  %indvars.iv544.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next545.i, %bb.bm ] ; 4 uses
  %.1284421.i = phi i32 [ %.0283440.i, %.preheader.i ], [ %.5.i, %bb.bm ] ; 5 uses
  %.not321.i = icmp eq i64 %indvars.iv544.i, %i.vf
  br i1 %.not321.i, label %bb.bm, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv544.i ; 4 uses
  %i.vg = load i32, ptr %gep.i, align 4, !tbaa !10 ; 7 uses
  %i.vh = and i32 %i.vg, 2097152
  %.not322.i = icmp eq i32 %i.vh, 0
  br i1 %.not322.i, label %bb.ad, label %.thread.i

bb.ad:                                            ; preds = %bb.ac
  %i.vi = getelementptr i8, ptr %gep.i, i64 4
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !10
  %i.vk = and i32 %i.vj, -2097153                 ; 2 uses
  %i.vl = add i32 %i.vk, -1                       ; 3 uses
  %i.vm = icmp sgt i32 %i.vl, %i.vg
  br i1 %i.vm, label %bb.ae, label %.thread.i

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.ab, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.vn = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.vo = sub i32 %i.vk, %i.vg
  %i.vp = trunc nuw nsw i64 %indvars.iv544.i to i32
  %i.vq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vn, ptr noundef nonnull @.str.7, i32 noundef %i.vc, i32 noundef %i.vp, i32 noundef %.1284421.i, i32 noundef %i.vo) #11 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 %i.vg, ptr %i.a, align 16, !tbaa !10
  store i32 %i.vl, ptr %i.b, align 16, !tbaa !10
  store i32 2, ptr %i.c, align 16, !tbaa !10
  br label %.lr.ph319.i.i

.lr.ph319.i.i:                                    ; preds = %.outer247.backedge.i.i, %bb.ag
  %.0236.ph332.i.i = phi i32 [ 1, %bb.ag ], [ %.0236.ph.be.i.i, %.outer247.backedge.i.i ] ; 5 uses
  %i.vr = icmp samesign ult i32 %.0236.ph332.i.i, 98
  %i.vs = add nsw i32 %.0236.ph332.i.i, -1        ; 2 uses
  %i.vt = zext nneg i32 %i.vs to i64              ; 3 uses
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.vt ; 2 uses
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.vt ; 2 uses
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.vt ; 3 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.be, %.lr.ph319.i.i
  br i1 %i.vr, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @BZ2_bz__AssertH__fail(i32 noundef 1001) #9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.vx = load i32, ptr %i.vu, align 4, !tbaa !10 ; 11 uses
  %i.vy = load i32, ptr %i.vv, align 4, !tbaa !10 ; 13 uses
  %i.vz = load i32, ptr %i.vw, align 4, !tbaa !10 ; 18 uses
  %i.wa = sub nsw i32 %i.vy, %i.vx                ; 3 uses
  %i.wb = icmp slt i32 %i.wa, 20
  %i.wc = icmp sgt i32 %i.vz, 14
  %or.cond.i.i = select i1 %i.wb, i1 true, i1 %i.wc
  br i1 %or.cond.i.i, label %bb.ak, label %bb.av

bb.ak:                                            ; preds = %bb.aj
  %i.wd = icmp slt i32 %i.wa, 1
  br i1 %i.wd, label %mainSimpleSort.exit.i.i, label %.preheader120.i.i.i

.preheader120.i.i.i:                              ; preds = %bb.ak, %.preheader120.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.preheader120.i.i.i ], [ 0, %bb.ak ] ; 4 uses
  %i.we = getelementptr inbounds nuw [4 x i8], ptr @incs, i64 %indvars.iv.i.i.i
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !10
  %.not.i.i.i = icmp sgt i32 %i.wf, %i.wa
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.preheader120.i.i.i, !llvm.loop !26

.preheader.i.i.i:                                 ; preds = %.preheader120.i.i.i
end_hunk_0
