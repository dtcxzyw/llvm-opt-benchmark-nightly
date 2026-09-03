Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/blocksort?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 14
begin_hunk_0_@BZ2_blockSort:bb.a
  %i.jd = trunc nuw nsw i64 %indvars.iv507.i to i32
  store i32 %i.jd, ptr %i.jc, align 4, !tbaa !10
  %i.je = add nsw i64 %indvars.iv507.i, -1        ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !13
  %i.jh = zext i8 %i.jg to i16
  %i.ji = tail call i16 @llvm.fshl.i16(i16 %i.jh, i16 %i.iw, i16 8) ; 2 uses
  %i.jj = zext i16 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.jj ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !10
  %i.jm = add i32 %i.jl, -1                       ; 2 uses
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !10
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.jn
  %i.jp = trunc nuw nsw i64 %i.je to i32
  store i32 %i.jp, ptr %i.jo, align 4, !tbaa !10
  %i.jq = add nsw i64 %indvars.iv507.i, -2        ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !13
  %i.jt = zext i8 %i.js to i16
  %i.ju = tail call i16 @llvm.fshl.i16(i16 %i.jt, i16 %i.ji, i16 8) ; 2 uses
  %i.jv = zext i16 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.jv ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !10
  %i.jy = add i32 %i.jx, -1                       ; 2 uses
  store i32 %i.jy, ptr %i.jw, align 4, !tbaa !10
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.jz
  %i.kb = trunc nuw nsw i64 %i.jq to i32
  store i32 %i.kb, ptr %i.ka, align 4, !tbaa !10
  %i.kc = add nsw i64 %indvars.iv507.i, -3        ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !13
  %i.kf = zext i8 %i.ke to i16
  %i.kg = tail call i16 @llvm.fshl.i16(i16 %i.kf, i16 %i.ju, i16 8) ; 3 uses
  %i.kh = zext i16 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.kh ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !10
  %i.kk = add i32 %i.kj, -1                       ; 2 uses
  store i32 %i.kk, ptr %i.ki, align 4, !tbaa !10
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.kl
  %i.kn = trunc nuw nsw i64 %i.kc to i32
  store i32 %i.kn, ptr %i.km, align 4, !tbaa !10
  %indvars.iv.next508.i = add nsw i64 %indvars.iv507.i, -4 ; 2 uses
  %i.ko = icmp samesign ugt i64 %indvars.iv507.i, 6
  br i1 %i.ko, label %.lr.ph405.i, label %.preheader332.i, !llvm.loop !22

.preheader331.i:                                  ; preds = %.lr.ph410.i, %.preheader332.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.e, i8 0, i64 256, i1 false), !tbaa !13
  %i.kp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.d, align 16, !tbaa !10
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %i.kp, align 16, !tbaa !10
  %i.kq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.kr = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr %i.kq, align 16, !tbaa !10
  store <4 x i32> <i32 12, i32 13, i32 14, i32 15>, ptr %i.kr, align 16, !tbaa !10
  %i.ks = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.kt = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store <4 x i32> <i32 16, i32 17, i32 18, i32 19>, ptr %i.ks, align 16, !tbaa !10
  store <4 x i32> <i32 20, i32 21, i32 22, i32 23>, ptr %i.kt, align 16, !tbaa !10
  %i.ku = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.kv = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store <4 x i32> <i32 24, i32 25, i32 26, i32 27>, ptr %i.ku, align 16, !tbaa !10
  store <4 x i32> <i32 28, i32 29, i32 30, i32 31>, ptr %i.kv, align 16, !tbaa !10
  %i.kw = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.kx = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store <4 x i32> <i32 32, i32 33, i32 34, i32 35>, ptr %i.kw, align 16, !tbaa !10
  store <4 x i32> <i32 36, i32 37, i32 38, i32 39>, ptr %i.kx, align 16, !tbaa !10
  %i.ky = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.kz = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store <4 x i32> <i32 40, i32 41, i32 42, i32 43>, ptr %i.ky, align 16, !tbaa !10
  store <4 x i32> <i32 44, i32 45, i32 46, i32 47>, ptr %i.kz, align 16, !tbaa !10
  %i.la = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.lb = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  store <4 x i32> <i32 48, i32 49, i32 50, i32 51>, ptr %i.la, align 16, !tbaa !10
  store <4 x i32> <i32 52, i32 53, i32 54, i32 55>, ptr %i.lb, align 16, !tbaa !10
  %i.lc = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.ld = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  store <4 x i32> <i32 56, i32 57, i32 58, i32 59>, ptr %i.lc, align 16, !tbaa !10
  store <4 x i32> <i32 60, i32 61, i32 62, i32 63>, ptr %i.ld, align 16, !tbaa !10
  %i.le = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.lf = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store <4 x i32> <i32 64, i32 65, i32 66, i32 67>, ptr %i.le, align 16, !tbaa !10
  store <4 x i32> <i32 68, i32 69, i32 70, i32 71>, ptr %i.lf, align 16, !tbaa !10
  %i.lg = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.lh = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  store <4 x i32> <i32 72, i32 73, i32 74, i32 75>, ptr %i.lg, align 16, !tbaa !10
  store <4 x i32> <i32 76, i32 77, i32 78, i32 79>, ptr %i.lh, align 16, !tbaa !10
  %i.li = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.lj = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  store <4 x i32> <i32 80, i32 81, i32 82, i32 83>, ptr %i.li, align 16, !tbaa !10
  store <4 x i32> <i32 84, i32 85, i32 86, i32 87>, ptr %i.lj, align 16, !tbaa !10
  %i.lk = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %i.ll = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  store <4 x i32> <i32 88, i32 89, i32 90, i32 91>, ptr %i.lk, align 16, !tbaa !10
  store <4 x i32> <i32 92, i32 93, i32 94, i32 95>, ptr %i.ll, align 16, !tbaa !10
  %i.lm = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %i.ln = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  store <4 x i32> <i32 96, i32 97, i32 98, i32 99>, ptr %i.lm, align 16, !tbaa !10
  store <4 x i32> <i32 100, i32 101, i32 102, i32 103>, ptr %i.ln, align 16, !tbaa !10
  %i.lo = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %i.lp = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  store <4 x i32> <i32 104, i32 105, i32 106, i32 107>, ptr %i.lo, align 16, !tbaa !10
  store <4 x i32> <i32 108, i32 109, i32 110, i32 111>, ptr %i.lp, align 16, !tbaa !10
  %i.lq = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.lr = getelementptr inbounds nuw i8, ptr %i.d, i64 464
  store <4 x i32> <i32 112, i32 113, i32 114, i32 115>, ptr %i.lq, align 16, !tbaa !10
  store <4 x i32> <i32 116, i32 117, i32 118, i32 119>, ptr %i.lr, align 16, !tbaa !10
  %i.ls = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.lt = getelementptr inbounds nuw i8, ptr %i.d, i64 496
  store <4 x i32> <i32 120, i32 121, i32 122, i32 123>, ptr %i.ls, align 16, !tbaa !10
  store <4 x i32> <i32 124, i32 125, i32 126, i32 127>, ptr %i.lt, align 16, !tbaa !10
  %i.lu = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  %i.lv = getelementptr inbounds nuw i8, ptr %i.d, i64 528
  store <4 x i32> <i32 128, i32 129, i32 130, i32 131>, ptr %i.lu, align 16, !tbaa !10
  store <4 x i32> <i32 132, i32 133, i32 134, i32 135>, ptr %i.lv, align 16, !tbaa !10
  %i.lw = getelementptr inbounds nuw i8, ptr %i.d, i64 544
  %i.lx = getelementptr inbounds nuw i8, ptr %i.d, i64 560
  store <4 x i32> <i32 136, i32 137, i32 138, i32 139>, ptr %i.lw, align 16, !tbaa !10
  store <4 x i32> <i32 140, i32 141, i32 142, i32 143>, ptr %i.lx, align 16, !tbaa !10
  %i.ly = getelementptr inbounds nuw i8, ptr %i.d, i64 576
  %i.lz = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  store <4 x i32> <i32 144, i32 145, i32 146, i32 147>, ptr %i.ly, align 16, !tbaa !10
  store <4 x i32> <i32 148, i32 149, i32 150, i32 151>, ptr %i.lz, align 16, !tbaa !10
  %i.ma = getelementptr inbounds nuw i8, ptr %i.d, i64 608
  %i.mb = getelementptr inbounds nuw i8, ptr %i.d, i64 624
  store <4 x i32> <i32 152, i32 153, i32 154, i32 155>, ptr %i.ma, align 16, !tbaa !10
  store <4 x i32> <i32 156, i32 157, i32 158, i32 159>, ptr %i.mb, align 16, !tbaa !10
  %i.mc = getelementptr inbounds nuw i8, ptr %i.d, i64 640
  %i.md = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  store <4 x i32> <i32 160, i32 161, i32 162, i32 163>, ptr %i.mc, align 16, !tbaa !10
  store <4 x i32> <i32 164, i32 165, i32 166, i32 167>, ptr %i.md, align 16, !tbaa !10
  %i.me = getelementptr inbounds nuw i8, ptr %i.d, i64 672
  %i.mf = getelementptr inbounds nuw i8, ptr %i.d, i64 688
  store <4 x i32> <i32 168, i32 169, i32 170, i32 171>, ptr %i.me, align 16, !tbaa !10
  store <4 x i32> <i32 172, i32 173, i32 174, i32 175>, ptr %i.mf, align 16, !tbaa !10
  %i.mg = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  %i.mh = getelementptr inbounds nuw i8, ptr %i.d, i64 720
  store <4 x i32> <i32 176, i32 177, i32 178, i32 179>, ptr %i.mg, align 16, !tbaa !10
  store <4 x i32> <i32 180, i32 181, i32 182, i32 183>, ptr %i.mh, align 16, !tbaa !10
  %i.mi = getelementptr inbounds nuw i8, ptr %i.d, i64 736
  %i.mj = getelementptr inbounds nuw i8, ptr %i.d, i64 752
  store <4 x i32> <i32 184, i32 185, i32 186, i32 187>, ptr %i.mi, align 16, !tbaa !10
  store <4 x i32> <i32 188, i32 189, i32 190, i32 191>, ptr %i.mj, align 16, !tbaa !10
  %i.mk = getelementptr inbounds nuw i8, ptr %i.d, i64 768
  %i.ml = getelementptr inbounds nuw i8, ptr %i.d, i64 784
  store <4 x i32> <i32 192, i32 193, i32 194, i32 195>, ptr %i.mk, align 16, !tbaa !10
  store <4 x i32> <i32 196, i32 197, i32 198, i32 199>, ptr %i.ml, align 16, !tbaa !10
  %i.mm = getelementptr inbounds nuw i8, ptr %i.d, i64 800
  %i.mn = getelementptr inbounds nuw i8, ptr %i.d, i64 816
  store <4 x i32> <i32 200, i32 201, i32 202, i32 203>, ptr %i.mm, align 16, !tbaa !10
  store <4 x i32> <i32 204, i32 205, i32 206, i32 207>, ptr %i.mn, align 16, !tbaa !10
  %i.mo = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  %i.mp = getelementptr inbounds nuw i8, ptr %i.d, i64 848
  store <4 x i32> <i32 208, i32 209, i32 210, i32 211>, ptr %i.mo, align 16, !tbaa !10
  store <4 x i32> <i32 212, i32 213, i32 214, i32 215>, ptr %i.mp, align 16, !tbaa !10
  %i.mq = getelementptr inbounds nuw i8, ptr %i.d, i64 864
  %i.mr = getelementptr inbounds nuw i8, ptr %i.d, i64 880
  store <4 x i32> <i32 216, i32 217, i32 218, i32 219>, ptr %i.mq, align 16, !tbaa !10
  store <4 x i32> <i32 220, i32 221, i32 222, i32 223>, ptr %i.mr, align 16, !tbaa !10
  %i.ms = getelementptr inbounds nuw i8, ptr %i.d, i64 896
  %i.mt = getelementptr inbounds nuw i8, ptr %i.d, i64 912
  store <4 x i32> <i32 224, i32 225, i32 226, i32 227>, ptr %i.ms, align 16, !tbaa !10
  store <4 x i32> <i32 228, i32 229, i32 230, i32 231>, ptr %i.mt, align 16, !tbaa !10
  %i.mu = getelementptr inbounds nuw i8, ptr %i.d, i64 928
  %i.mv = getelementptr inbounds nuw i8, ptr %i.d, i64 944
  store <4 x i32> <i32 232, i32 233, i32 234, i32 235>, ptr %i.mu, align 16, !tbaa !10
  store <4 x i32> <i32 236, i32 237, i32 238, i32 239>, ptr %i.mv, align 16, !tbaa !10
  %i.mw = getelementptr inbounds nuw i8, ptr %i.d, i64 960
  %i.mx = getelementptr inbounds nuw i8, ptr %i.d, i64 976
  store <4 x i32> <i32 240, i32 241, i32 242, i32 243>, ptr %i.mw, align 16, !tbaa !10
  store <4 x i32> <i32 244, i32 245, i32 246, i32 247>, ptr %i.mx, align 16, !tbaa !10
  %i.my = getelementptr inbounds nuw i8, ptr %i.d, i64 992
  %i.mz = getelementptr inbounds nuw i8, ptr %i.d, i64 1008
  store <4 x i32> <i32 248, i32 249, i32 250, i32 251>, ptr %i.my, align 16, !tbaa !10
  store <4 x i32> <i32 252, i32 253, i32 254, i32 255>, ptr %i.mz, align 16, !tbaa !10
  br label %.lr.ph413.i

.lr.ph410.i:                                      ; preds = %.preheader332.i, %.lr.ph410.i
  %indvars.iv509.i = phi i64 [ %indvars.iv.next510.i, %.lr.ph410.i ], [ %indvars.iv.next508.i, %.preheader332.i ] ; 4 uses
  %.1282409.i = phi i16 [ %i.nd, %.lr.ph410.i ], [ %i.kg, %.preheader332.i ]
  %i.na = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv509.i
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !13
  %i.nc = zext i8 %i.nb to i16
  %i.nd = tail call i16 @llvm.fshl.i16(i16 %i.nc, i16 %.1282409.i, i16 8) ; 2 uses
  %i.ne = zext i16 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ne ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !10
  %i.nh = add i32 %i.ng, -1                       ; 2 uses
  store i32 %i.nh, ptr %i.nf, align 4, !tbaa !10
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ni
  %i.nk = trunc nuw nsw i64 %indvars.iv509.i to i32
  store i32 %i.nk, ptr %i.nj, align 4, !tbaa !10
  %indvars.iv.next510.i = add nsw i64 %indvars.iv509.i, -1
  %.not676.i = icmp eq i64 %indvars.iv509.i, 0
  br i1 %.not676.i, label %.preheader331.i, label %.lr.ph410.i, !llvm.loop !23

.lr.ph413.i:                                      ; preds = %.preheader331.i, %.split.loop.exit656.i
  %indvars.iv515.i = phi i64 [ %indvars.iv.next516.i, %.split.loop.exit656.i ], [ 121, %.preheader331.i ] ; 7 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv515.i
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !10 ; 2 uses
  %i.nn = shl i32 %i.nm, 8                        ; 2 uses
  %i.no = add i32 %i.nn, 256
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.np
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !10
  %i.ns = sext i32 %i.nn to i64
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ns
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !10
  %i.nv = sub i32 %i.nr, %i.nu                    ; 2 uses
  %indvars.iv.next538.i = add nsw i64 %indvars.iv515.i, -121 ; 4 uses
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next538.i
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !10 ; 2 uses
  %i.ny = shl i32 %i.nx, 8                        ; 2 uses
  %i.nz = add i32 %i.ny, 256
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.oa
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !10
  %i.od = sext i32 %i.ny to i64
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !10
  %i.og = sub i32 %i.oc, %i.of
  %i.oh = icmp ugt i32 %i.og, %i.nv
  br i1 %i.oh, label %bb.g, label %.split.loop.exit656.i

bb.g:                                             ; preds = %.lr.ph413.i
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv515.i
  store i32 %i.nx, ptr %i.oi, align 4, !tbaa !10
  %.not322.not.i = icmp samesign ult i64 %indvars.iv515.i, 242
  br i1 %.not322.not.i, label %.split.loop.exit656.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next535.i.1 = add nsw i64 %indvars.iv515.i, -242 ; 2 uses
  %1 = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next535.i.1
  %i.oj = load i32, ptr %1, align 4, !tbaa !10    ; 2 uses
  %i.ok = shl i32 %i.oj, 8                        ; 2 uses
  %i.ol = add i32 %i.ok, 256
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.om
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !10
  %i.op = sext i32 %i.ok to i64
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.op
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !10
  %i.os = sub i32 %i.oo, %i.or
  %i.ot = icmp ugt i32 %i.os, %i.nv
  br i1 %i.ot, label %bb.i, label %.split.loop.exit656.i

bb.i:                                             ; preds = %bb.h
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next538.i
  store i32 %i.oj, ptr %i.ou, align 4, !tbaa !10
  br label %.split.loop.exit656.i

.split.loop.exit656.i:                            ; preds = %bb.i, %bb.h, %bb.g, %.lr.ph413.i
  %.3290.in.i = phi i64 [ %indvars.iv.next538.i, %bb.g ], [ %indvars.iv515.i, %.lr.ph413.i ], [ %indvars.iv.next538.i, %bb.h ], [ %indvars.iv.next535.i.1, %bb.i ]
  %sext.i = shl i64 %.3290.in.i, 32
  %2 = ashr exact i64 %sext.i, 30
  %3 = getelementptr inbounds i8, ptr %i.d, i64 %2
  store i32 %i.nm, ptr %3, align 4, !tbaa !10
  %indvars.iv.next516.i = add nuw nsw i64 %indvars.iv515.i, 1 ; 2 uses
  %exitcond518.not.i = icmp eq i64 %indvars.iv.next516.i, 256
  br i1 %exitcond518.not.i, label %.lr.ph413.1.i, label %.lr.ph413.i, !llvm.loop !24

.lr.ph413.1.i:                                    ; preds = %.split.loop.exit656.i, %.split.loop.exit658.i
  %indvars.iv515.1.i = phi i64 [ %indvars.iv.next516.1.i, %.split.loop.exit658.i ], [ 40, %.split.loop.exit656.i ] ; 15 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv515.1.i
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !10 ; 2 uses
  %i.ox = shl i32 %i.ow, 8                        ; 2 uses
  %i.oy = add i32 %i.ox, 256
  %i.oz = sext i32 %i.oy to i64
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.oz
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !10
  %i.pc = sext i32 %i.ox to i64
  %i.pd = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.pc
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !10
  %i.pf = sub i32 %i.pb, %i.pe                    ; 6 uses
  %indvars.iv.next533.i = add nsw i64 %indvars.iv515.1.i, -40 ; 4 uses
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next533.i
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !10 ; 2 uses
  %i.pi = shl i32 %i.ph, 8                        ; 2 uses
  %i.pj = add i32 %i.pi, 256
  %i.pk = sext i32 %i.pj to i64
  %i.pl = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.pk
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !10
  %i.pn = sext i32 %i.pi to i64
  %i.po = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.pn
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !10
  %i.pq = sub i32 %i.pm, %i.pp
  %i.pr = icmp ugt i32 %i.pq, %i.pf
  br i1 %i.pr, label %bb.j, label %.split.loop.exit658.i

bb.j:                                             ; preds = %.lr.ph413.1.i
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv515.1.i
  store i32 %i.ph, ptr %i.ps, align 4, !tbaa !10
  %.not322.not.1.i = icmp samesign ult i64 %indvars.iv515.1.i, 80
  br i1 %.not322.not.1.i, label %.split.loop.exit658.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next533.i.1 = add nsw i64 %indvars.iv515.1.i, -80 ; 4 uses
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next533.i.1
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !10 ; 2 uses
  %i.pv = shl i32 %i.pu, 8                        ; 2 uses
  %i.pw = add i32 %i.pv, 256
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.px
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !10
  %i.qa = sext i32 %i.pv to i64
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.qa
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !10
  %i.qd = sub i32 %i.pz, %i.qc
  %i.qe = icmp ugt i32 %i.qd, %i.pf
  br i1 %i.qe, label %bb.l, label %.split.loop.exit658.i

bb.l:                                             ; preds = %bb.k
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next533.i
  store i32 %i.pu, ptr %i.qf, align 4, !tbaa !10
  %.not322.not.1.i.1 = icmp samesign ult i64 %indvars.iv515.1.i, 120
  br i1 %.not322.not.1.i.1, label %.split.loop.exit658.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next533.i.2 = add nsw i64 %indvars.iv515.1.i, -120 ; 4 uses
  %i.qg = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next533.i.2
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !10 ; 2 uses
  %i.qi = shl i32 %i.qh, 8                        ; 2 uses
  %i.qj = add i32 %i.qi, 256
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.qk
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !10
  %i.qn = sext i32 %i.qi to i64
  %i.qo = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !10
  %i.qq = sub i32 %i.qm, %i.qp
  %i.qr = icmp ugt i32 %i.qq, %i.pf
  br i1 %i.qr, label %bb.n, label %.split.loop.exit658.i

bb.n:                                             ; preds = %bb.m
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next533.i.1
  store i32 %i.qh, ptr %i.qs, align 4, !tbaa !10
  %.not322.not.1.i.2 = icmp samesign ult i64 %indvars.iv515.1.i, 160
  br i1 %.not322.not.1.i.2, label %.split.loop.exit658.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next533.i.3 = add nsw i64 %indvars.iv515.1.i, -160 ; 4 uses
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next533.i.3
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !10 ; 2 uses
  %i.qv = shl i32 %i.qu, 8                        ; 2 uses
  %i.qw = add i32 %i.qv, 256
  %i.qx = sext i32 %i.qw to i64
  %i.qy = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.qx
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !10
  %i.ra = sext i32 %i.qv to i64
  %i.rb = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ra
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !10
  %i.rd = sub i32 %i.qz, %i.rc
  %i.re = icmp ugt i32 %i.rd, %i.pf
  br i1 %i.re, label %bb.p, label %.split.loop.exit658.i

bb.p:                                             ; preds = %bb.o
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next533.i.2
  store i32 %i.qu, ptr %i.rf, align 4, !tbaa !10
  %.not322.not.1.i.3 = icmp samesign ult i64 %indvars.iv515.1.i, 200
  br i1 %.not322.not.1.i.3, label %.split.loop.exit658.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next533.i.4 = add nsw i64 %indvars.iv515.1.i, -200 ; 4 uses
  %i.rg = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next533.i.4
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !10 ; 2 uses
  %i.ri = shl i32 %i.rh, 8                        ; 2 uses
  %i.rj = add i32 %i.ri, 256
  %i.rk = sext i32 %i.rj to i64
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.rk
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !10
  %i.rn = sext i32 %i.ri to i64
  %i.ro = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.rn
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !10
  %i.rq = sub i32 %i.rm, %i.rp
  %i.rr = icmp ugt i32 %i.rq, %i.pf
  br i1 %i.rr, label %bb.r, label %.split.loop.exit658.i

bb.r:                                             ; preds = %bb.q
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next533.i.3
  store i32 %i.rh, ptr %i.rs, align 4, !tbaa !10
  %.not322.not.1.i.4 = icmp samesign ult i64 %indvars.iv515.1.i, 240
  br i1 %.not322.not.1.i.4, label %.split.loop.exit658.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next531.i.5 = add nsw i64 %indvars.iv515.1.i, -240 ; 2 uses
  %4 = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next531.i.5
  %i.rt = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %i.ru = shl i32 %i.rt, 8                        ; 2 uses
  %i.rv = add i32 %i.ru, 256
  %i.rw = sext i32 %i.rv to i64
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.rw
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !10
  %i.rz = sext i32 %i.ru to i64
  %i.sa = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.rz
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !10
  %i.sc = sub i32 %i.ry, %i.sb
  %i.sd = icmp ugt i32 %i.sc, %i.pf
  br i1 %i.sd, label %bb.t, label %.split.loop.exit658.i

bb.t:                                             ; preds = %bb.s
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next533.i.4
  store i32 %i.rt, ptr %i.se, align 4, !tbaa !10
  br label %.split.loop.exit658.i

.split.loop.exit658.i:                            ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %.lr.ph413.1.i
  %.3290.1.in.i = phi i64 [ %indvars.iv.next533.i, %bb.j ], [ %indvars.iv515.1.i, %.lr.ph413.1.i ], [ %indvars.iv.next533.i, %bb.k ], [ %indvars.iv.next533.i.1, %bb.l ], [ %indvars.iv.next533.i.1, %bb.m ], [ %indvars.iv.next533.i.2, %bb.n ], [ %indvars.iv.next533.i.2, %bb.o ], [ %indvars.iv.next533.i.3, %bb.p ], [ %indvars.iv.next533.i.3, %bb.q ], [ %indvars.iv.next533.i.4, %bb.r ], [ %indvars.iv.next533.i.4, %bb.s ], [ %indvars.iv.next531.i.5, %bb.t ]
  %sext595.i = shl i64 %.3290.1.in.i, 32
  %5 = ashr exact i64 %sext595.i, 30
  %6 = getelementptr inbounds i8, ptr %i.d, i64 %5
  store i32 %i.ow, ptr %6, align 4, !tbaa !10
  %indvars.iv.next516.1.i = add nuw nsw i64 %indvars.iv515.1.i, 1 ; 2 uses
  %exitcond518.1.not.i = icmp eq i64 %indvars.iv.next516.1.i, 256
  br i1 %exitcond518.1.not.i, label %.lr.ph413.2.i, label %.lr.ph413.1.i, !llvm.loop !24

.lr.ph413.2.i:                                    ; preds = %.split.loop.exit658.i, %.split.loop.exit661.i
  %indvars.iv515.2.i = phi i64 [ %indvars.iv.next516.2.i, %.split.loop.exit661.i ], [ 13, %.split.loop.exit658.i ] ; 3 uses
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv515.2.i
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !10 ; 2 uses
  %i.sh = shl i32 %i.sg, 8                        ; 2 uses
  %i.si = add i32 %i.sh, 256
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.sj
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !10
  %i.sm = sext i32 %i.sh to i64
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.sm
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !10
  %i.sp = sub i32 %i.sl, %i.so
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.lr.ph413.2.i
  %indvars.iv527.i = phi i64 [ %indvars.iv.next528.i, %bb.v ], [ %indvars.iv515.2.i, %.lr.ph413.2.i ] ; 4 uses
  %indvars.iv.next528.i = add nsw i64 %indvars.iv527.i, -13 ; 3 uses
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next528.i
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !10 ; 2 uses
  %i.ss = shl i32 %i.sr, 8                        ; 2 uses
  %i.st = add i32 %i.ss, 256
  %i.su = sext i32 %i.st to i64
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.su
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !10
  %i.sx = sext i32 %i.ss to i64
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.sx
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !10
  %i.ta = sub i32 %i.sw, %i.sz
  %i.tb = icmp ugt i32 %i.ta, %i.sp
  br i1 %i.tb, label %bb.v, label %.split.loop.exit661.i

bb.v:                                             ; preds = %bb.u
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv527.i
  store i32 %i.sr, ptr %i.tc, align 4, !tbaa !10
  %.not322.not.2.i = icmp slt i64 %indvars.iv527.i, 26
  br i1 %.not322.not.2.i, label %.split.loop.exit661.i, label %bb.u, !llvm.loop !25

.split.loop.exit661.i:                            ; preds = %bb.v, %bb.u
  %.3290.2.i = phi i64 [ %indvars.iv.next528.i, %bb.v ], [ %indvars.iv527.i, %bb.u ]
  %sext596.i = shl i64 %.3290.2.i, 32
  %7 = ashr exact i64 %sext596.i, 30
  %8 = getelementptr inbounds i8, ptr %i.d, i64 %7
  store i32 %i.sg, ptr %8, align 4, !tbaa !10
  %indvars.iv.next516.2.i = add nuw nsw i64 %indvars.iv515.2.i, 1 ; 2 uses
  %exitcond518.2.not.i = icmp eq i64 %indvars.iv.next516.2.i, 256
  br i1 %exitcond518.2.not.i, label %.lr.ph413.3.i, label %.lr.ph413.2.i, !llvm.loop !24

.lr.ph413.3.i:                                    ; preds = %.split.loop.exit661.i, %.split.loop.exit664.i
  %indvars.iv524.i = phi i32 [ %indvars.iv.next525.i, %.split.loop.exit664.i ], [ 0, %.split.loop.exit661.i ] ; 2 uses
  %indvars.iv515.3.i = phi i64 [ %indvars.iv.next516.3.i, %.split.loop.exit664.i ], [ 4, %.split.loop.exit661.i ] ; 3 uses
  %i.td = and i32 %indvars.iv524.i, 3
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv515.3.i
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !10 ; 2 uses
  %i.tg = shl i32 %i.tf, 8                        ; 2 uses
  %i.th = add i32 %i.tg, 256
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ti
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !10
  %i.tl = sext i32 %i.tg to i64
  %i.tm = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.tl
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !10
  %i.to = sub i32 %i.tk, %i.tn
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.lr.ph413.3.i
  %indvars.iv522.i = phi i64 [ %indvars.iv.next523.i, %bb.x ], [ %indvars.iv515.3.i, %.lr.ph413.3.i ] ; 4 uses
  %indvars.iv.next523.i = add nsw i64 %indvars.iv522.i, -4 ; 2 uses
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next523.i
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !10 ; 2 uses
  %i.tr = shl i32 %i.tq, 8                        ; 2 uses
  %i.ts = add i32 %i.tr, 256
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.tt
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !10
  %i.tw = sext i32 %i.tr to i64
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.tw
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !10
  %i.tz = sub i32 %i.tv, %i.ty
  %i.ua = icmp ugt i32 %i.tz, %i.to
  br i1 %i.ua, label %bb.x, label %.split.loop.exit664.i

bb.x:                                             ; preds = %bb.w
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv522.i
  store i32 %i.tq, ptr %i.ub, align 4, !tbaa !10
  %.not322.not.3.i = icmp slt i64 %indvars.iv522.i, 8
  br i1 %.not322.not.3.i, label %.split.loop.exit664.i.loopexit, label %bb.w, !llvm.loop !25

.split.loop.exit664.i.loopexit:                   ; preds = %bb.x
  %i.uc = zext nneg i32 %i.td to i64
  br label %.split.loop.exit664.i

.split.loop.exit664.i:                            ; preds = %bb.w, %.split.loop.exit664.i.loopexit
  %.3290.3.i = phi i64 [ %i.uc, %.split.loop.exit664.i.loopexit ], [ %indvars.iv522.i, %bb.w ]
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.3290.3.i
  store i32 %i.tf, ptr %i.ud, align 4, !tbaa !10
  %indvars.iv.next516.3.i = add nuw nsw i64 %indvars.iv515.3.i, 1 ; 2 uses
  %exitcond518.3.not.i = icmp eq i64 %indvars.iv.next516.3.i, 256
  %indvars.iv.next525.i = add nuw nsw i32 %indvars.iv524.i, 1
  br i1 %exitcond518.3.not.i, label %.lr.ph413.4.i, label %.lr.ph413.3.i, !llvm.loop !24

.lr.ph413.4.i:                                    ; preds = %.split.loop.exit664.i, %bb.aa
  %indvars.iv515.4.i = phi i64 [ %indvars.iv.next516.4.i, %bb.aa ], [ 1, %.split.loop.exit664.i ] ; 3 uses
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv515.4.i
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !10 ; 2 uses
  %i.ug = shl i32 %i.uf, 8                        ; 2 uses
  %i.uh = add i32 %i.ug, 256
  %i.ui = sext i32 %i.uh to i64
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ui
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !10
  %i.ul = sext i32 %i.ug to i64
  %i.um = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ul
  %i.un = load i32, ptr %i.um, align 4, !tbaa !10
  %i.uo = sub i32 %i.uk, %i.un
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph413.4.i
  %indvars.iv519.i = phi i64 [ %indvars.iv.next520.i, %bb.z ], [ %indvars.iv515.4.i, %.lr.ph413.4.i ] ; 4 uses
  %indvars.iv.next520.i = add nsw i64 %indvars.iv519.i, -1 ; 2 uses
  %i.up = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next520.i
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !10 ; 2 uses
  %i.ur = shl i32 %i.uq, 8                        ; 2 uses
  %i.us = add i32 %i.ur, 256
  %i.ut = sext i32 %i.us to i64
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ut
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !10
  %i.uw = sext i32 %i.ur to i64
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.uw
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !10
  %i.uz = sub i32 %i.uv, %i.uy
  %i.va = icmp ugt i32 %i.uz, %i.uo
  br i1 %i.va, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv519.i
  store i32 %i.uq, ptr %i.vb, align 4, !tbaa !10
  %.not322.not.4.i = icmp slt i64 %indvars.iv519.i, 2
  br i1 %.not322.not.4.i, label %bb.aa, label %bb.y, !llvm.loop !25

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.3290.4.i = phi i64 [ 0, %bb.z ], [ %indvars.iv519.i, %bb.y ]
  %i.vc = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.3290.4.i
  store i32 %i.uf, ptr %i.vc, align 4, !tbaa !10
  %indvars.iv.next516.4.i = add nuw nsw i64 %indvars.iv515.4.i, 1 ; 2 uses
  %exitcond518.4.not.i = icmp eq i64 %indvars.iv.next516.4.i, 256
  br i1 %exitcond518.4.not.i, label %.preheader.i.preheader, label %.lr.ph413.4.i, !llvm.loop !24

.preheader.i.preheader:                           ; preds = %bb.aa
  %scevgep358.a = getelementptr i8, ptr %i.j, i64 4
  %scevgep360.a = getelementptr i8, ptr %i.j, i64 4
  %scevgep362.a = getelementptr i8, ptr %i.j, i64 8
  %scevgep376 = getelementptr i8, ptr %i.j, i64 4
  %scevgep379 = getelementptr i8, ptr %i.j, i64 4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.cf
  %indvars.iv561.i = phi i64 [ %indvars.iv.next562.i, %bb.cf ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %.0283439.i = phi i32 [ %.5.i, %bb.cf ], [ 0, %.preheader.i.preheader ]
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv561.i
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !10 ; 4 uses
  %i.vf = shl i32 %i.ve, 8                        ; 2 uses
  %i.vg = sext i32 %i.vf to i64
  %i.vh = zext i32 %i.ve to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.n, i64 %i.vg ; 3 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.bm, %.preheader.i
  %indvars.iv543.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next544.i, %bb.bm ] ; 4 uses
  %.1284420.i = phi i32 [ %.0283439.i, %.preheader.i ], [ %.5.i, %bb.bm ] ; 5 uses
  %.not320.i = icmp eq i64 %indvars.iv543.i, %i.vh
  br i1 %.not320.i, label %bb.bm, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv543.i ; 4 uses
  %i.vi = load i32, ptr %gep.i, align 4, !tbaa !10 ; 7 uses
  %i.vj = and i32 %i.vi, 2097152
  %.not321.i = icmp eq i32 %i.vj, 0
  br i1 %.not321.i, label %bb.ad, label %.thread.i

bb.ad:                                            ; preds = %bb.ac
  %i.vk = getelementptr i8, ptr %gep.i, i64 4
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !10
  %i.vm = and i32 %i.vl, -2097153                 ; 2 uses
  %i.vn = add i32 %i.vm, -1                       ; 3 uses
  %i.vo = icmp sgt i32 %i.vn, %i.vi
  br i1 %i.vo, label %bb.ae, label %.thread.i

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.ab, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.vp = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.vq = sub i32 %i.vm, %i.vi
  %i.vr = trunc nuw nsw i64 %indvars.iv543.i to i32
  %i.vs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vp, ptr noundef nonnull @.str.7, i32 noundef %i.ve, i32 noundef %i.vr, i32 noundef %.1284420.i, i32 noundef %i.vq) #11 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 %i.vi, ptr %i.a, align 16, !tbaa !10
  store i32 %i.vn, ptr %i.b, align 16, !tbaa !10
  store i32 2, ptr %i.c, align 16, !tbaa !10
  br label %.lr.ph319.i.i

.lr.ph319.i.i:                                    ; preds = %.outer247.backedge.i.i, %bb.ag
  %.0236.ph332.i.i = phi i32 [ 1, %bb.ag ], [ %.0236.ph.be.i.i, %.outer247.backedge.i.i ] ; 5 uses
  %i.vt = icmp samesign ult i32 %.0236.ph332.i.i, 98
  %i.vu = add nsw i32 %.0236.ph332.i.i, -1        ; 2 uses
  %i.vv = zext nneg i32 %i.vu to i64              ; 3 uses
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.vv ; 2 uses
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.vv ; 2 uses
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.vv ; 3 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.be, %.lr.ph319.i.i
  br i1 %i.vt, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @BZ2_bz__AssertH__fail(i32 noundef 1001) #9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.vz = load i32, ptr %i.vw, align 4, !tbaa !10 ; 11 uses
  %i.wa = load i32, ptr %i.vx, align 4, !tbaa !10 ; 13 uses
  %i.wb = load i32, ptr %i.vy, align 4, !tbaa !10 ; 18 uses
  %i.wc = sub nsw i32 %i.wa, %i.vz                ; 3 uses
  %i.wd = icmp slt i32 %i.wc, 20
  %i.we = icmp sgt i32 %i.wb, 14
  %or.cond.i.i = select i1 %i.wd, i1 true, i1 %i.we
  br i1 %or.cond.i.i, label %bb.ak, label %bb.av

bb.ak:                                            ; preds = %bb.aj
  %i.wf = icmp slt i32 %i.wc, 1
  br i1 %i.wf, label %mainSimpleSort.exit.i.i, label %.preheader120.i.i.i

.preheader120.i.i.i:                              ; preds = %bb.ak, %.preheader120.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.preheader120.i.i.i ], [ 0, %bb.ak ] ; 4 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr @incs, i64 %indvars.iv.i.i.i
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !10
  %.not.i.i.i = icmp sgt i32 %i.wh, %i.wc
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.preheader120.i.i.i, !llvm.loop !26

.preheader.i.i.i:                                 ; preds = %.preheader120.i.i.i
end_hunk_0
