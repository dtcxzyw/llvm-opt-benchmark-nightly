Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/rotaryembed_x86_avx512?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn22RotaryEmbed_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined:bb.a
  %.3258402 = phi ptr [ %i.ia, %.lr.ph404 ], [ %.2257.lcssa, %.preheader364 ] ; 2 uses
  %.3263401 = phi ptr [ %i.ib, %.lr.ph404 ], [ %.2262.lcssa, %.preheader364 ] ; 2 uses
  %.3268400 = phi ptr [ %i.hz, %.lr.ph404 ], [ %.2267.lcssa, %.preheader364 ] ; 2 uses
  %.3273399 = phi i32 [ %i.ic, %.lr.ph404 ], [ %.2272.lcssa, %.preheader364 ]
  %i.hm = load <4 x float>, ptr %.3403, align 1, !tbaa !42 ; 2 uses
  %i.hn = load i64, ptr %.3258402, align 1, !tbaa !42
  %i.ho = insertelement <2 x i64> poison, i64 %i.hn, i64 0
  %i.hp = bitcast <2 x i64> %i.ho to <4 x float>
  %i.hq = load i64, ptr %.3263401, align 1, !tbaa !42
  %i.hr = insertelement <2 x i64> poison, i64 %i.hq, i64 0
  %i.hs = bitcast <2 x i64> %i.hr to <4 x float>
  %i.ht = shufflevector <4 x float> %i.hp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hu = shufflevector <4 x float> %i.hs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hv = shufflevector <4 x float> %i.hm, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.hw = fmul fast <4 x float> %i.hu, %i.hv
  %i.hx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float> nofpclass(nan inf) %i.hm, <4 x float> nofpclass(nan inf) %i.ht, <4 x float> nofpclass(nan inf) %i.hw)
  store <4 x float> %i.hx, ptr %.3268400, align 1, !tbaa !42
  %i.hy = getelementptr inbounds nuw i8, ptr %.3403, i64 16 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.3268400, i64 16 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.3258402, i64 8 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.3263401, i64 8 ; 2 uses
  %i.ic = add nuw nsw i32 %.3273399, 2            ; 3 uses
  %i.id = or disjoint i32 %i.ic, 1
  %i.ie = load i32, ptr %9, align 4, !tbaa !21
  %i.if = sdiv i32 %i.ie, 2                       ; 2 uses
  %i.ig = icmp slt i32 %i.id, %i.if
  br i1 %i.ig, label %.lr.ph404, label %.preheader362, !llvm.loop !70

.lr.ph416:                                        ; preds = %.lr.ph416.prol.loopexit, %.lr.ph416
  %.4415 = phi ptr [ %i.jn, %.lr.ph416 ], [ %.4415.unr, %.lr.ph416.prol.loopexit ] ; 3 uses
  %.4259414 = phi ptr [ %i.iy, %.lr.ph416 ], [ %.4259414.unr, %.lr.ph416.prol.loopexit ] ; 3 uses
  %.4264413 = phi ptr [ %i.ja, %.lr.ph416 ], [ %.4264413.unr, %.lr.ph416.prol.loopexit ] ; 3 uses
  %.4269412 = phi ptr [ %i.jo, %.lr.ph416 ], [ %.4269412.unr, %.lr.ph416.prol.loopexit ] ; 3 uses
  %.4274411 = phi i32 [ %i.jp, %.lr.ph416 ], [ %.4274411.unr, %.lr.ph416.prol.loopexit ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.4259414, i64 4
  %i.ii = load float, ptr %.4259414, align 4, !tbaa !82
  %i.ij = getelementptr inbounds nuw i8, ptr %.4264413, i64 4
  %i.ik = load float, ptr %.4264413, align 4, !tbaa !82
  %i.il = load <2 x float>, ptr %.4415, align 4, !tbaa !82 ; 2 uses
  %i.im = insertelement <2 x float> poison, float %i.ik, i64 0
  %i.in = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> zeroinitializer
  %i.io = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ip = fmul fast <2 x float> %i.in, %i.io      ; 2 uses
  %i.iq = insertelement <2 x float> poison, float %i.ii, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = fmul fast <2 x float> %i.ir, %i.il      ; 2 uses
  %i.it = fsub fast <2 x float> %i.is, %i.ip
  %i.iu = fadd fast <2 x float> %i.is, %i.ip
  %i.iv = shufflevector <2 x float> %i.it, <2 x float> %i.iu, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.iv, ptr %.4269412, align 4, !tbaa !82
  %i.iw = getelementptr inbounds nuw i8, ptr %.4415, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %.4269412, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %.4259414, i64 8
  %i.iz = load float, ptr %i.ih, align 4, !tbaa !82
  %i.ja = getelementptr inbounds nuw i8, ptr %.4264413, i64 8
  %i.jb = load float, ptr %i.ij, align 4, !tbaa !82
  %i.jc = load <2 x float>, ptr %i.iw, align 4, !tbaa !82 ; 2 uses
  %i.jd = insertelement <2 x float> poison, float %i.jb, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jg = fmul fast <2 x float> %i.je, %i.jf      ; 2 uses
  %i.jh = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = fmul fast <2 x float> %i.ji, %i.jc      ; 2 uses
  %i.jk = fsub fast <2 x float> %i.jj, %i.jg
  %i.jl = fadd fast <2 x float> %i.jj, %i.jg
  %i.jm = shufflevector <2 x float> %i.jk, <2 x float> %i.jl, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.jm, ptr %i.ix, align 4, !tbaa !82
  %i.jn = getelementptr inbounds nuw i8, ptr %.4415, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %.4269412, i64 16
  %i.jp = add nuw nsw i32 %.4274411, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.jp, %.lcssa
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph416, !llvm.loop !71

bb.e:                                             ; preds = %bb.c
  %i.jq = load i32, ptr %9, align 4, !tbaa !21    ; 2 uses
  %i.jr = sdiv i32 %i.jq, 2                       ; 2 uses
  %i.js = sext i32 %i.jr to i64                   ; 2 uses
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.js ; 2 uses
  %i.ju = load ptr, ptr %7, align 8, !tbaa !25
  %i.jv = load i32, ptr %i.s, align 4, !tbaa !20
  %i.jw = sext i32 %i.jv to i64
  %i.jx = mul nsw i64 %indvars.iv, %i.jw
  %i.jy = load i64, ptr %i.t, align 8, !tbaa !19
  %i.jz = mul i64 %i.jx, %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jz ; 2 uses
  %i.kb = load ptr, ptr %8, align 8, !tbaa !25
  %i.kc = load i32, ptr %i.u, align 4, !tbaa !20
  %i.kd = sext i32 %i.kc to i64
  %i.ke = mul nsw i64 %indvars.iv, %i.kd
  %i.kf = load i64, ptr %i.v, align 8, !tbaa !19
  %i.kg = mul i64 %i.ke, %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kg ; 2 uses
  %i.ki = mul i64 %i.at, %indvars.iv
  %i.kj = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ki ; 3 uses
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %i.js ; 2 uses
  %i.kl = icmp sgt i32 %i.jq, 31
  br i1 %i.kl, label %.lr.ph424, label %.preheader361

.preheader361:                                    ; preds = %.lr.ph424, %bb.e
  %.pre-phi = phi i32 [ %i.jr, %bb.e ], [ %i.lg, %.lr.ph424 ] ; 2 uses
  %.0299.lcssa = phi ptr [ %i.ax, %bb.e ], [ %i.kx, %.lr.ph424 ] ; 2 uses
  %.0295.lcssa = phi ptr [ %i.jt, %bb.e ], [ %i.ky, %.lr.ph424 ] ; 2 uses
  %.0291.lcssa = phi ptr [ %i.ka, %bb.e ], [ %i.kz, %.lr.ph424 ] ; 2 uses
  %.0287.lcssa = phi ptr [ %i.kh, %bb.e ], [ %i.la, %.lr.ph424 ] ; 2 uses
  %.0283.lcssa = phi ptr [ %i.kj, %bb.e ], [ %i.lb, %.lr.ph424 ] ; 2 uses
  %.0279.lcssa = phi ptr [ %i.kk, %bb.e ], [ %i.lc, %.lr.ph424 ] ; 2 uses
  %.0275.lcssa = phi i32 [ 0, %bb.e ], [ %i.ld, %.lr.ph424 ] ; 3 uses
  %i.km = or disjoint i32 %.0275.lcssa, 7
  %i.kn = icmp slt i32 %i.km, %.pre-phi
  br i1 %i.kn, label %.lr.ph439, label %.preheader360

.lr.ph424:                                        ; preds = %bb.e, %.lr.ph424
  %.0275423 = phi i32 [ %i.ld, %.lr.ph424 ], [ 0, %bb.e ]
  %.0279422 = phi ptr [ %i.lc, %.lr.ph424 ], [ %i.kk, %bb.e ] ; 2 uses
  %.0283421 = phi ptr [ %i.lb, %.lr.ph424 ], [ %i.kj, %bb.e ] ; 2 uses
  %.0287420 = phi ptr [ %i.la, %.lr.ph424 ], [ %i.kh, %bb.e ] ; 2 uses
  %.0291419 = phi ptr [ %i.kz, %.lr.ph424 ], [ %i.ka, %bb.e ] ; 2 uses
  %.0295418 = phi ptr [ %i.ky, %.lr.ph424 ], [ %i.jt, %bb.e ] ; 2 uses
  %.0299417 = phi ptr [ %i.kx, %.lr.ph424 ], [ %i.ax, %bb.e ] ; 2 uses
  %i.ko = load <16 x float>, ptr %.0299417, align 1, !tbaa !42 ; 2 uses
  %i.kp = load <16 x float>, ptr %.0295418, align 1, !tbaa !42 ; 2 uses
  %i.kq = load <16 x float>, ptr %.0291419, align 1, !tbaa !42 ; 2 uses
  %i.kr = load <16 x float>, ptr %.0287420, align 1, !tbaa !42 ; 2 uses
  %i.ks = fmul fast <16 x float> %i.kq, %i.ko
  %i.kt = fneg fast <16 x float> %i.kp
  %i.ku = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.kt, <16 x float> nofpclass(nan inf) %i.kr, <16 x float> nofpclass(nan inf) %i.ks)
  %i.kv = fmul fast <16 x float> %i.kq, %i.kp
  %i.kw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ko, <16 x float> nofpclass(nan inf) %i.kr, <16 x float> nofpclass(nan inf) %i.kv)
  store <16 x float> %i.ku, ptr %.0283421, align 1, !tbaa !42
  store <16 x float> %i.kw, ptr %.0279422, align 1, !tbaa !42
  %i.kx = getelementptr inbounds nuw i8, ptr %.0299417, i64 64 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.0295418, i64 64 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.0291419, i64 64 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.0287420, i64 64 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.0283421, i64 64 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.0279422, i64 64 ; 2 uses
  %i.ld = add nuw nsw i32 %.0275423, 16           ; 3 uses
  %i.le = or disjoint i32 %i.ld, 15
  %i.lf = load i32, ptr %9, align 4, !tbaa !21
  %i.lg = sdiv i32 %i.lf, 2                       ; 2 uses
  %i.lh = icmp slt i32 %i.le, %i.lg
  br i1 %i.lh, label %.lr.ph424, label %.preheader361, !llvm.loop !72

.preheader360:                                    ; preds = %.lr.ph439, %.preheader361
  %.pre-phi526 = phi i32 [ %.pre-phi, %.preheader361 ], [ %i.mc, %.lr.ph439 ] ; 2 uses
  %.1300.lcssa = phi ptr [ %.0299.lcssa, %.preheader361 ], [ %i.lt, %.lr.ph439 ] ; 2 uses
  %.1296.lcssa = phi ptr [ %.0295.lcssa, %.preheader361 ], [ %i.lu, %.lr.ph439 ] ; 2 uses
  %.1292.lcssa = phi ptr [ %.0291.lcssa, %.preheader361 ], [ %i.lv, %.lr.ph439 ] ; 2 uses
  %.1288.lcssa = phi ptr [ %.0287.lcssa, %.preheader361 ], [ %i.lw, %.lr.ph439 ] ; 2 uses
  %.1284.lcssa = phi ptr [ %.0283.lcssa, %.preheader361 ], [ %i.lx, %.lr.ph439 ] ; 2 uses
  %.1280.lcssa = phi ptr [ %.0279.lcssa, %.preheader361 ], [ %i.ly, %.lr.ph439 ] ; 2 uses
  %.1276.lcssa = phi i32 [ %.0275.lcssa, %.preheader361 ], [ %i.lz, %.lr.ph439 ] ; 3 uses
  %i.li = or disjoint i32 %.1276.lcssa, 3
  %i.lj = icmp slt i32 %i.li, %.pre-phi526
  br i1 %i.lj, label %.lr.ph454, label %.preheader

.lr.ph439:                                        ; preds = %.preheader361, %.lr.ph439
  %.1276438 = phi i32 [ %i.lz, %.lr.ph439 ], [ %.0275.lcssa, %.preheader361 ]
  %.1280437 = phi ptr [ %i.ly, %.lr.ph439 ], [ %.0279.lcssa, %.preheader361 ] ; 2 uses
  %.1284436 = phi ptr [ %i.lx, %.lr.ph439 ], [ %.0283.lcssa, %.preheader361 ] ; 2 uses
  %.1288435 = phi ptr [ %i.lw, %.lr.ph439 ], [ %.0287.lcssa, %.preheader361 ] ; 2 uses
  %.1292434 = phi ptr [ %i.lv, %.lr.ph439 ], [ %.0291.lcssa, %.preheader361 ] ; 2 uses
  %.1296433 = phi ptr [ %i.lu, %.lr.ph439 ], [ %.0295.lcssa, %.preheader361 ] ; 2 uses
  %.1300432 = phi ptr [ %i.lt, %.lr.ph439 ], [ %.0299.lcssa, %.preheader361 ] ; 2 uses
  %i.lk = load <8 x float>, ptr %.1300432, align 1, !tbaa !42 ; 2 uses
  %i.ll = load <8 x float>, ptr %.1296433, align 1, !tbaa !42 ; 2 uses
  %i.lm = load <8 x float>, ptr %.1292434, align 1, !tbaa !42 ; 2 uses
  %i.ln = load <8 x float>, ptr %.1288435, align 1, !tbaa !42 ; 2 uses
  %i.lo = fmul fast <8 x float> %i.lm, %i.lk
  %i.lp = fneg fast <8 x float> %i.ll
  %i.lq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lp, <8 x float> nofpclass(nan inf) %i.ln, <8 x float> nofpclass(nan inf) %i.lo)
  %i.lr = fmul fast <8 x float> %i.lm, %i.ll
  %i.ls = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lk, <8 x float> nofpclass(nan inf) %i.ln, <8 x float> nofpclass(nan inf) %i.lr)
  store <8 x float> %i.lq, ptr %.1284436, align 1, !tbaa !42
  store <8 x float> %i.ls, ptr %.1280437, align 1, !tbaa !42
  %i.lt = getelementptr inbounds nuw i8, ptr %.1300432, i64 32 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.1296433, i64 32 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.1292434, i64 32 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.1288435, i64 32 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.1284436, i64 32 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.1280437, i64 32 ; 2 uses
  %i.lz = add nuw nsw i32 %.1276438, 8            ; 3 uses
  %i.ma = or disjoint i32 %i.lz, 7
  %i.mb = load i32, ptr %9, align 4, !tbaa !21
  %i.mc = sdiv i32 %i.mb, 2                       ; 2 uses
  %i.md = icmp slt i32 %i.ma, %i.mc
  br i1 %i.md, label %.lr.ph439, label %.preheader360, !llvm.loop !73

.preheader:                                       ; preds = %.lr.ph454, %.preheader360
  %.2301.lcssa = phi ptr [ %.1300.lcssa, %.preheader360 ], [ %i.po, %.lr.ph454 ] ; 7 uses
  %.2297.lcssa = phi ptr [ %.1296.lcssa, %.preheader360 ], [ %i.pp, %.lr.ph454 ] ; 7 uses
  %.2293.lcssa = phi ptr [ %.1292.lcssa, %.preheader360 ], [ %i.pq, %.lr.ph454 ] ; 7 uses
  %.2289.lcssa = phi ptr [ %.1288.lcssa, %.preheader360 ], [ %i.pr, %.lr.ph454 ] ; 7 uses
  %.2285.lcssa = phi ptr [ %.1284.lcssa, %.preheader360 ], [ %i.ps, %.lr.ph454 ] ; 7 uses
  %.2281.lcssa = phi ptr [ %.1280.lcssa, %.preheader360 ], [ %i.pt, %.lr.ph454 ] ; 7 uses
  %.2277.lcssa = phi i32 [ %.1276.lcssa, %.preheader360 ], [ %i.pu, %.lr.ph454 ] ; 6 uses
  %.lcssa367 = phi i32 [ %.pre-phi526, %.preheader360 ], [ %i.px, %.lr.ph454 ] ; 5 uses
  %.2289.lcssa664 = ptrtoaddr ptr %.2289.lcssa to i64 ; 2 uses
  %.2293.lcssa665 = ptrtoaddr ptr %.2293.lcssa to i64 ; 2 uses
  %.2301.lcssa666 = ptrtoaddr ptr %.2301.lcssa to i64 ; 2 uses
  %.2297.lcssa667 = ptrtoaddr ptr %.2297.lcssa to i64 ; 2 uses
  %.2285.lcssa668 = ptrtoaddr ptr %.2285.lcssa to i64 ; 2 uses
  %.2281.lcssa669 = ptrtoaddr ptr %.2281.lcssa to i64 ; 5 uses
  %i.me = icmp slt i32 %.2277.lcssa, %.lcssa367
  br i1 %i.me, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.mf = xor i32 %.2277.lcssa, -1
  %i.mg = add i32 %.lcssa367, %i.mf               ; 3 uses
  %i.mh = zext i32 %i.mg to i64
  %i.mi = add nuw nsw i64 %i.mh, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.mg, 3
  br i1 %min.iters.check, label %.lr.ph470.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.mj = sub i64 %.2285.lcssa668, %.2281.lcssa669
  %i.mk = insertelement <8 x i64> poison, i64 %.2297.lcssa667, i64 0
  %i.ml = insertelement <8 x i64> %i.mk, i64 %.2301.lcssa666, i64 1
  %i.mm = insertelement <8 x i64> %i.ml, i64 %.2293.lcssa665, i64 2
  %i.mn = insertelement <8 x i64> %i.mm, i64 %.2289.lcssa664, i64 3
  %i.mo = insertelement <4 x i64> poison, i64 %.2285.lcssa668, i64 0
  %i.mp = sub i64 %.2297.lcssa667, %.2281.lcssa669
  %i.mq = sub i64 %.2301.lcssa666, %.2281.lcssa669
  %i.mr = sub i64 %.2293.lcssa665, %.2281.lcssa669
  %i.ms = insertelement <8 x i64> poison, i64 %i.mj, i64 0
  %i.mt = shufflevector <4 x i64> %i.mo, <4 x i64> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mu = sub <8 x i64> %i.mn, %i.mt
  %i.mv = shufflevector <8 x i64> %i.ms, <8 x i64> %i.mu, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.mw = insertelement <8 x i64> %i.mv, i64 %i.mp, i64 5
  %i.mx = insertelement <8 x i64> %i.mw, i64 %i.mq, i64 6
  %i.my = insertelement <8 x i64> %i.mx, i64 %i.mr, i64 7
  %i.mz = icmp ugt <8 x i64> %i.my, splat (i64 -64)
  %i.na = sub i64 %.2289.lcssa664, %.2281.lcssa669
  %diff.check683 = icmp ugt i64 %i.na, -64
  %i.nb = bitcast <8 x i1> %i.mz to i8
  %i.nc = icmp ne i8 %i.nb, 0
  %op.rdx = or i1 %i.nc, %diff.check683
  br i1 %op.rdx, label %.lr.ph470.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check685 = icmp ult i32 %i.mg, 15
  br i1 %min.iters.check685, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nd = and i64 %i.mi, 12
  %n.vec = and i64 %i.mi, 8589934576              ; 5 uses
  %i.ne = trunc i64 %n.vec to i32
  %i.nf = add i32 %.2277.lcssa, %i.ne
  %i.ng = shl nuw nsw i64 %n.vec, 2               ; 6 uses
  %i.nh = getelementptr i8, ptr %.2281.lcssa, i64 %i.ng
  %i.ni = getelementptr i8, ptr %.2285.lcssa, i64 %i.ng
  %i.nj = getelementptr i8, ptr %.2289.lcssa, i64 %i.ng
  %i.nk = getelementptr i8, ptr %.2293.lcssa, i64 %i.ng
  %i.nl = getelementptr i8, ptr %.2297.lcssa, i64 %i.ng
  %i.nm = getelementptr i8, ptr %.2301.lcssa, i64 %i.ng
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nn = shl i64 %index, 2                       ; 6 uses
  %next.gep = getelementptr i8, ptr %.2281.lcssa, i64 %i.nn
  %next.gep686 = getelementptr i8, ptr %.2285.lcssa, i64 %i.nn
  %next.gep687 = getelementptr i8, ptr %.2289.lcssa, i64 %i.nn
  %next.gep688 = getelementptr i8, ptr %.2293.lcssa, i64 %i.nn
  %next.gep689 = getelementptr i8, ptr %.2297.lcssa, i64 %i.nn
  %next.gep690 = getelementptr i8, ptr %.2301.lcssa, i64 %i.nn
  %wide.load = load <16 x float>, ptr %next.gep690, align 4, !tbaa !82 ; 2 uses
  %wide.load691 = load <16 x float>, ptr %next.gep689, align 4, !tbaa !82 ; 2 uses
  %wide.load692 = load <16 x float>, ptr %next.gep688, align 4, !tbaa !82 ; 2 uses
  %wide.load693 = load <16 x float>, ptr %next.gep687, align 4, !tbaa !82 ; 2 uses
  %i.no = fmul fast <16 x float> %wide.load692, %wide.load
  %i.np = fmul fast <16 x float> %wide.load693, %wide.load691
  %i.nq = fsub fast <16 x float> %i.no, %i.np
  store <16 x float> %i.nq, ptr %next.gep686, align 4, !tbaa !82
  %i.nr = fmul fast <16 x float> %wide.load693, %wide.load
  %i.ns = fmul fast <16 x float> %wide.load692, %wide.load691
  %i.nt = fadd fast <16 x float> %i.nr, %i.ns
  store <16 x float> %i.nt, ptr %next.gep, align 4, !tbaa !82
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.nu = icmp eq i64 %index.next, %n.vec
  br i1 %i.nu, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mi, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.nd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph470.preheader, label %vec.epilog.ph, !prof !88

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec694 = and i64 %i.mi, 8589934588           ; 4 uses
  %i.nv = trunc i64 %n.vec694 to i32
  %i.nw = add i32 %.2277.lcssa, %i.nv
  %i.nx = shl nuw nsw i64 %n.vec694, 2            ; 6 uses
  %i.ny = getelementptr i8, ptr %.2281.lcssa, i64 %i.nx
  %i.nz = getelementptr i8, ptr %.2285.lcssa, i64 %i.nx
  %i.oa = getelementptr i8, ptr %.2289.lcssa, i64 %i.nx
  %i.ob = getelementptr i8, ptr %.2293.lcssa, i64 %i.nx
  %i.oc = getelementptr i8, ptr %.2297.lcssa, i64 %i.nx
  %i.od = getelementptr i8, ptr %.2301.lcssa, i64 %i.nx
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index695 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next706, %vec.epilog.vector.body ] ; 2 uses
  %i.oe = shl i64 %index695, 2                    ; 6 uses
  %next.gep696 = getelementptr i8, ptr %.2281.lcssa, i64 %i.oe
  %next.gep697 = getelementptr i8, ptr %.2285.lcssa, i64 %i.oe
  %next.gep698 = getelementptr i8, ptr %.2289.lcssa, i64 %i.oe
  %next.gep699 = getelementptr i8, ptr %.2293.lcssa, i64 %i.oe
  %next.gep700 = getelementptr i8, ptr %.2297.lcssa, i64 %i.oe
  %next.gep701 = getelementptr i8, ptr %.2301.lcssa, i64 %i.oe
  %wide.load702 = load <4 x float>, ptr %next.gep701, align 4, !tbaa !82 ; 2 uses
  %wide.load703 = load <4 x float>, ptr %next.gep700, align 4, !tbaa !82 ; 2 uses
  %wide.load704 = load <4 x float>, ptr %next.gep699, align 4, !tbaa !82 ; 2 uses
  %wide.load705 = load <4 x float>, ptr %next.gep698, align 4, !tbaa !82 ; 2 uses
  %i.of = fmul fast <4 x float> %wide.load704, %wide.load702
  %i.og = fmul fast <4 x float> %wide.load705, %wide.load703
  %i.oh = fsub fast <4 x float> %i.of, %i.og
  store <4 x float> %i.oh, ptr %next.gep697, align 4, !tbaa !82
  %i.oi = fmul fast <4 x float> %wide.load705, %wide.load702
  %i.oj = fmul fast <4 x float> %wide.load704, %wide.load703
  %i.ok = fadd fast <4 x float> %i.oi, %i.oj
  store <4 x float> %i.ok, ptr %next.gep696, align 4, !tbaa !82
  %index.next706 = add nuw i64 %index695, 4       ; 2 uses
  %i.ol = icmp eq i64 %index.next706, %n.vec694
  br i1 %i.ol, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !75

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n707 = icmp eq i64 %i.mi, %n.vec694
  br i1 %cmp.n707, label %.loopexit, label %.lr.ph470.preheader

.lr.ph470.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3278469.ph = phi i32 [ %.2277.lcssa, %iter.check ], [ %.2277.lcssa, %vector.memcheck ], [ %i.nf, %vec.epilog.iter.check ], [ %i.nw, %vec.epilog.middle.block ] ; 4 uses
  %.3282468.ph = phi ptr [ %.2281.lcssa, %iter.check ], [ %.2281.lcssa, %vector.memcheck ], [ %i.nh, %vec.epilog.iter.check ], [ %i.ny, %vec.epilog.middle.block ] ; 3 uses
  %.3286467.ph = phi ptr [ %.2285.lcssa, %iter.check ], [ %.2285.lcssa, %vector.memcheck ], [ %i.ni, %vec.epilog.iter.check ], [ %i.nz, %vec.epilog.middle.block ] ; 3 uses
  %.3290466.ph = phi ptr [ %.2289.lcssa, %iter.check ], [ %.2289.lcssa, %vector.memcheck ], [ %i.nj, %vec.epilog.iter.check ], [ %i.oa, %vec.epilog.middle.block ] ; 3 uses
  %.3294465.ph = phi ptr [ %.2293.lcssa, %iter.check ], [ %.2293.lcssa, %vector.memcheck ], [ %i.nk, %vec.epilog.iter.check ], [ %i.ob, %vec.epilog.middle.block ] ; 3 uses
  %.3298464.ph = phi ptr [ %.2297.lcssa, %iter.check ], [ %.2297.lcssa, %vector.memcheck ], [ %i.nl, %vec.epilog.iter.check ], [ %i.oc, %vec.epilog.middle.block ] ; 3 uses
  %.3302463.ph = phi ptr [ %.2301.lcssa, %iter.check ], [ %.2301.lcssa, %vector.memcheck ], [ %i.nm, %vec.epilog.iter.check ], [ %i.od, %vec.epilog.middle.block ] ; 3 uses
  %i.om = sub i32 %.lcssa367, %.3278469.ph
  %.neg835 = add i32 %.3278469.ph, 1
  %xtraiter833 = and i32 %i.om, 1
  %lcmp.mod834.not = icmp eq i32 %xtraiter833, 0
  br i1 %lcmp.mod834.not, label %.lr.ph470.prol.loopexit, label %.lr.ph470.prol

.lr.ph470.prol:                                   ; preds = %.lr.ph470.preheader
  %i.on = getelementptr inbounds nuw i8, ptr %.3302463.ph, i64 4
  %i.oo = load float, ptr %.3302463.ph, align 4, !tbaa !82 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.3298464.ph, i64 4
  %i.oq = load float, ptr %.3298464.ph, align 4, !tbaa !82 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.3294465.ph, i64 4
  %i.os = load float, ptr %.3294465.ph, align 4, !tbaa !82 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.3290466.ph, i64 4
  %i.ou = load float, ptr %.3290466.ph, align 4, !tbaa !82 ; 2 uses
  %i.ov = fmul fast float %i.os, %i.oo
  %i.ow = fmul fast float %i.ou, %i.oq
  %i.ox = fsub fast float %i.ov, %i.ow
  %i.oy = getelementptr inbounds nuw i8, ptr %.3286467.ph, i64 4
  store float %i.ox, ptr %.3286467.ph, align 4, !tbaa !82
  %i.oz = fmul fast float %i.ou, %i.oo
  %i.pa = fmul fast float %i.os, %i.oq
  %i.pb = fadd fast float %i.oz, %i.pa
  %i.pc = getelementptr inbounds nuw i8, ptr %.3282468.ph, i64 4
  store float %i.pb, ptr %.3282468.ph, align 4, !tbaa !82
  %i.pd = add nuw nsw i32 %.3278469.ph, 1
  br label %.lr.ph470.prol.loopexit

.lr.ph470.prol.loopexit:                          ; preds = %.lr.ph470.prol, %.lr.ph470.preheader
  %.3278469.unr = phi i32 [ %.3278469.ph, %.lr.ph470.preheader ], [ %i.pd, %.lr.ph470.prol ]
  %.3282468.unr = phi ptr [ %.3282468.ph, %.lr.ph470.preheader ], [ %i.pc, %.lr.ph470.prol ]
  %.3286467.unr = phi ptr [ %.3286467.ph, %.lr.ph470.preheader ], [ %i.oy, %.lr.ph470.prol ]
  %.3290466.unr = phi ptr [ %.3290466.ph, %.lr.ph470.preheader ], [ %i.ot, %.lr.ph470.prol ]
  %.3294465.unr = phi ptr [ %.3294465.ph, %.lr.ph470.preheader ], [ %i.or, %.lr.ph470.prol ]
  %.3298464.unr = phi ptr [ %.3298464.ph, %.lr.ph470.preheader ], [ %i.op, %.lr.ph470.prol ]
  %.3302463.unr = phi ptr [ %.3302463.ph, %.lr.ph470.preheader ], [ %i.on, %.lr.ph470.prol ]
  %i.pe = icmp eq i32 %.lcssa367, %.neg835
  br i1 %i.pe, label %.loopexit, label %.lr.ph470

.lr.ph454:                                        ; preds = %.preheader360, %.lr.ph454
  %.2277453 = phi i32 [ %i.pu, %.lr.ph454 ], [ %.1276.lcssa, %.preheader360 ]
  %.2281452 = phi ptr [ %i.pt, %.lr.ph454 ], [ %.1280.lcssa, %.preheader360 ] ; 2 uses
  %.2285451 = phi ptr [ %i.ps, %.lr.ph454 ], [ %.1284.lcssa, %.preheader360 ] ; 2 uses
  %.2289450 = phi ptr [ %i.pr, %.lr.ph454 ], [ %.1288.lcssa, %.preheader360 ] ; 2 uses
  %.2293449 = phi ptr [ %i.pq, %.lr.ph454 ], [ %.1292.lcssa, %.preheader360 ] ; 2 uses
  %.2297448 = phi ptr [ %i.pp, %.lr.ph454 ], [ %.1296.lcssa, %.preheader360 ] ; 2 uses
  %.2301447 = phi ptr [ %i.po, %.lr.ph454 ], [ %.1300.lcssa, %.preheader360 ] ; 2 uses
  %i.pf = load <4 x float>, ptr %.2301447, align 1, !tbaa !42 ; 2 uses
  %i.pg = load <4 x float>, ptr %.2297448, align 1, !tbaa !42 ; 2 uses
  %i.ph = load <4 x float>, ptr %.2293449, align 1, !tbaa !42 ; 2 uses
  %i.pi = load <4 x float>, ptr %.2289450, align 1, !tbaa !42 ; 2 uses
  %i.pj = fmul fast <4 x float> %i.ph, %i.pf
  %i.pk = fneg fast <4 x float> %i.pg
  %i.pl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.pk, <4 x float> nofpclass(nan inf) %i.pi, <4 x float> nofpclass(nan inf) %i.pj)
  %i.pm = fmul fast <4 x float> %i.ph, %i.pg
  %i.pn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pf, <4 x float> nofpclass(nan inf) %i.pi, <4 x float> nofpclass(nan inf) %i.pm)
  store <4 x float> %i.pl, ptr %.2285451, align 1, !tbaa !42
  store <4 x float> %i.pn, ptr %.2281452, align 1, !tbaa !42
  %i.po = getelementptr inbounds nuw i8, ptr %.2301447, i64 16 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.2297448, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL17rotaryembed_bf16sERKNS_3MatES2_S2_RS0_iRKNS_6OptionE.omp_outlined:bb.a
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph467, !llvm.loop !105

bb.e:                                             ; preds = %bb.c
  %i.nz = load i32, ptr %9, align 4, !tbaa !21    ; 2 uses
  %i.oa = sdiv i32 %i.nz, 2                       ; 2 uses
  %i.ob = sext i32 %i.oa to i64                   ; 2 uses
  %i.oc = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.ob ; 2 uses
  %i.od = load ptr, ptr %7, align 8, !tbaa !25
  %i.oe = load i32, ptr %i.r, align 4, !tbaa !20
  %i.of = sext i32 %i.oe to i64
  %i.og = mul nsw i64 %indvars.iv, %i.of
  %i.oh = load i64, ptr %i.s, align 8, !tbaa !19
  %i.oi = mul i64 %i.og, %i.oh
  %i.oj = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.oi ; 2 uses
  %i.ok = load ptr, ptr %8, align 8, !tbaa !25
  %i.ol = load i32, ptr %i.t, align 4, !tbaa !20
  %i.om = sext i32 %i.ol to i64
  %i.on = mul nsw i64 %indvars.iv, %i.om
  %i.oo = load i64, ptr %i.u, align 8, !tbaa !19
  %i.op = mul i64 %i.on, %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.op ; 2 uses
  %i.or = mul i64 %i.as, %indvars.iv
  %i.os = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.or ; 3 uses
  %i.ot = getelementptr inbounds [2 x i8], ptr %i.os, i64 %i.ob ; 2 uses
  %i.ou = icmp sgt i32 %i.nz, 31
  br i1 %i.ou, label %.lr.ph475, label %.preheader412

.preheader412:                                    ; preds = %.lr.ph475, %bb.e
  %.pre-phi = phi i32 [ %i.oa, %bb.e ], [ %i.rj, %.lr.ph475 ] ; 2 uses
  %.0268.lcssa = phi ptr [ %i.aw, %bb.e ], [ %i.ra, %.lr.ph475 ] ; 2 uses
  %.0264.lcssa = phi ptr [ %i.oc, %bb.e ], [ %i.rb, %.lr.ph475 ] ; 2 uses
  %.0260.lcssa = phi ptr [ %i.oj, %bb.e ], [ %i.rc, %.lr.ph475 ] ; 2 uses
  %.0256.lcssa = phi ptr [ %i.oq, %bb.e ], [ %i.rd, %.lr.ph475 ] ; 2 uses
  %.0252.lcssa = phi ptr [ %i.os, %bb.e ], [ %i.re, %.lr.ph475 ] ; 2 uses
  %.0248.lcssa = phi ptr [ %i.ot, %bb.e ], [ %i.rf, %.lr.ph475 ] ; 2 uses
  %.0247.lcssa = phi i32 [ 0, %bb.e ], [ %i.rg, %.lr.ph475 ] ; 3 uses
  %i.ov = or disjoint i32 %.0247.lcssa, 7
  %i.ow = icmp slt i32 %i.ov, %.pre-phi
  br i1 %i.ow, label %.lr.ph490, label %.preheader411

.lr.ph475:                                        ; preds = %bb.e, %.lr.ph475
  %.0247474 = phi i32 [ %i.rg, %.lr.ph475 ], [ 0, %bb.e ]
  %.0248473 = phi ptr [ %i.rf, %.lr.ph475 ], [ %i.ot, %bb.e ] ; 2 uses
  %.0252472 = phi ptr [ %i.re, %.lr.ph475 ], [ %i.os, %bb.e ] ; 2 uses
  %.0256471 = phi ptr [ %i.rd, %.lr.ph475 ], [ %i.oq, %bb.e ] ; 2 uses
  %.0260470 = phi ptr [ %i.rc, %.lr.ph475 ], [ %i.oj, %bb.e ] ; 2 uses
  %.0264469 = phi ptr [ %i.rb, %.lr.ph475 ], [ %i.oc, %bb.e ] ; 2 uses
  %.0268468 = phi ptr [ %i.ra, %.lr.ph475 ], [ %i.aw, %bb.e ] ; 2 uses
  %i.ox = load <16 x i16>, ptr %.0268468, align 1, !tbaa !42 ; 2 uses
  %i.oy = shufflevector <16 x i16> %i.ox, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.oz = shufflevector <16 x i16> %i.ox, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.pa = shufflevector <16 x i16> %i.oy, <16 x i16> %i.oz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.pb = shufflevector <16 x i16> %i.oy, <16 x i16> %i.oz, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pc = bitcast <16 x i16> %i.pa to <8 x i32>
  %i.pd = bitcast <16 x i16> %i.pb to <8 x i32>
  %i.pe = shufflevector <8 x i32> %i.pc, <8 x i32> %i.pd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pf = bitcast <16 x i32> %i.pe to <16 x float> ; 2 uses
  %i.pg = load <16 x i16>, ptr %.0264469, align 1, !tbaa !42 ; 2 uses
  %i.ph = shufflevector <16 x i16> %i.pg, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.pi = shufflevector <16 x i16> %i.pg, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.pj = shufflevector <16 x i16> %i.ph, <16 x i16> %i.pi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.pk = shufflevector <16 x i16> %i.ph, <16 x i16> %i.pi, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pl = bitcast <16 x i16> %i.pj to <8 x i32>
  %i.pm = bitcast <16 x i16> %i.pk to <8 x i32>
  %i.pn = shufflevector <8 x i32> %i.pl, <8 x i32> %i.pm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.po = bitcast <16 x i32> %i.pn to <16 x float> ; 2 uses
  %i.pp = load <16 x i16>, ptr %.0260470, align 1, !tbaa !42 ; 2 uses
  %i.pq = shufflevector <16 x i16> %i.pp, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.pr = shufflevector <16 x i16> %i.pp, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.ps = shufflevector <16 x i16> %i.pq, <16 x i16> %i.pr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.pt = shufflevector <16 x i16> %i.pq, <16 x i16> %i.pr, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pu = bitcast <16 x i16> %i.ps to <8 x i32>
  %i.pv = bitcast <16 x i16> %i.pt to <8 x i32>
  %i.pw = shufflevector <8 x i32> %i.pu, <8 x i32> %i.pv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.px = bitcast <16 x i32> %i.pw to <16 x float> ; 2 uses
  %i.py = load <16 x i16>, ptr %.0256471, align 1, !tbaa !42 ; 2 uses
  %i.pz = shufflevector <16 x i16> %i.py, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.qa = shufflevector <16 x i16> %i.py, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.qb = shufflevector <16 x i16> %i.pz, <16 x i16> %i.qa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.qc = shufflevector <16 x i16> %i.pz, <16 x i16> %i.qa, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.qd = bitcast <16 x i16> %i.qb to <8 x i32>
  %i.qe = bitcast <16 x i16> %i.qc to <8 x i32>
  %i.qf = shufflevector <8 x i32> %i.qd, <8 x i32> %i.qe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qg = bitcast <16 x i32> %i.qf to <16 x float> ; 2 uses
  %i.qh = fmul fast <16 x float> %i.px, %i.pf
  %i.qi = fneg fast <16 x float> %i.po
  %i.qj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.qi, <16 x float> nofpclass(nan inf) %i.qg, <16 x float> nofpclass(nan inf) %i.qh)
  %i.qk = fmul fast <16 x float> %i.px, %i.po
  %i.ql = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pf, <16 x float> nofpclass(nan inf) %i.qg, <16 x float> nofpclass(nan inf) %i.qk)
  %i.qm = bitcast <16 x float> %i.qj to <16 x i32>
  %i.qn = lshr <16 x i32> %i.qm, splat (i32 16)   ; 2 uses
  %i.qo = shufflevector <16 x i32> %i.qn, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qp = shufflevector <16 x i32> %i.qn, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qq = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.qo, <8 x i32> %i.qp)
  %i.qr = bitcast <16 x i16> %i.qq to <4 x i64>
  %i.qs = shufflevector <4 x i64> %i.qr, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.qs, ptr %.0252472, align 1, !tbaa !42
  %i.qt = bitcast <16 x float> %i.ql to <16 x i32>
  %i.qu = lshr <16 x i32> %i.qt, splat (i32 16)   ; 2 uses
  %i.qv = shufflevector <16 x i32> %i.qu, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qw = shufflevector <16 x i32> %i.qu, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qx = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.qv, <8 x i32> %i.qw)
  %i.qy = bitcast <16 x i16> %i.qx to <4 x i64>
  %i.qz = shufflevector <4 x i64> %i.qy, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.qz, ptr %.0248473, align 1, !tbaa !42
  %i.ra = getelementptr inbounds nuw i8, ptr %.0268468, i64 32 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.0264469, i64 32 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.0260470, i64 32 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.0256471, i64 32 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.0252472, i64 32 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.0248473, i64 32 ; 2 uses
  %i.rg = add nuw nsw i32 %.0247474, 16           ; 3 uses
  %i.rh = or disjoint i32 %i.rg, 15
  %i.ri = load i32, ptr %9, align 4, !tbaa !21
  %i.rj = sdiv i32 %i.ri, 2                       ; 2 uses
  %i.rk = icmp slt i32 %i.rh, %i.rj
  br i1 %i.rk, label %.lr.ph475, label %.preheader412, !llvm.loop !106

.preheader411:                                    ; preds = %.lr.ph490, %.preheader412
  %.pre-phi577 = phi i32 [ %.pre-phi, %.preheader412 ], [ %i.tf, %.lr.ph490 ] ; 2 uses
  %.1269.lcssa = phi ptr [ %.0268.lcssa, %.preheader412 ], [ %i.sw, %.lr.ph490 ] ; 2 uses
  %.1265.lcssa = phi ptr [ %.0264.lcssa, %.preheader412 ], [ %i.sx, %.lr.ph490 ] ; 2 uses
  %.1261.lcssa = phi ptr [ %.0260.lcssa, %.preheader412 ], [ %i.sy, %.lr.ph490 ] ; 2 uses
  %.1257.lcssa = phi ptr [ %.0256.lcssa, %.preheader412 ], [ %i.sz, %.lr.ph490 ] ; 2 uses
  %.1253.lcssa = phi ptr [ %.0252.lcssa, %.preheader412 ], [ %i.ta, %.lr.ph490 ] ; 2 uses
  %.1249.lcssa = phi ptr [ %.0248.lcssa, %.preheader412 ], [ %i.tb, %.lr.ph490 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0247.lcssa, %.preheader412 ], [ %i.tc, %.lr.ph490 ] ; 3 uses
  %i.rl = or disjoint i32 %.1.lcssa, 3
  %i.rm = icmp slt i32 %i.rl, %.pre-phi577
  br i1 %i.rm, label %.lr.ph505, label %.preheader

.lr.ph490:                                        ; preds = %.preheader412, %.lr.ph490
  %.1489 = phi i32 [ %i.tc, %.lr.ph490 ], [ %.0247.lcssa, %.preheader412 ]
  %.1249488 = phi ptr [ %i.tb, %.lr.ph490 ], [ %.0248.lcssa, %.preheader412 ] ; 2 uses
  %.1253487 = phi ptr [ %i.ta, %.lr.ph490 ], [ %.0252.lcssa, %.preheader412 ] ; 2 uses
  %.1257486 = phi ptr [ %i.sz, %.lr.ph490 ], [ %.0256.lcssa, %.preheader412 ] ; 2 uses
  %.1261485 = phi ptr [ %i.sy, %.lr.ph490 ], [ %.0260.lcssa, %.preheader412 ] ; 2 uses
  %.1265484 = phi ptr [ %i.sx, %.lr.ph490 ], [ %.0264.lcssa, %.preheader412 ] ; 2 uses
  %.1269483 = phi ptr [ %i.sw, %.lr.ph490 ], [ %.0268.lcssa, %.preheader412 ] ; 2 uses
  %i.rn = load <8 x i16>, ptr %.1269483, align 1, !tbaa !42 ; 2 uses
  %i.ro = shufflevector <8 x i16> %i.rn, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.rp = shufflevector <8 x i16> %i.rn, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.rq = shufflevector <8 x i16> %i.ro, <8 x i16> %i.rp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rr = bitcast <16 x i16> %i.rq to <8 x float> ; 2 uses
  %i.rs = load <8 x i16>, ptr %.1265484, align 1, !tbaa !42 ; 2 uses
  %i.rt = shufflevector <8 x i16> %i.rs, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ru = shufflevector <8 x i16> %i.rs, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.rv = shufflevector <8 x i16> %i.rt, <8 x i16> %i.ru, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rw = bitcast <16 x i16> %i.rv to <8 x float> ; 2 uses
  %i.rx = load <8 x i16>, ptr %.1261485, align 1, !tbaa !42 ; 2 uses
  %i.ry = shufflevector <8 x i16> %i.rx, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.rz = shufflevector <8 x i16> %i.rx, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.sa = shufflevector <8 x i16> %i.ry, <8 x i16> %i.rz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sb = bitcast <16 x i16> %i.sa to <8 x float> ; 2 uses
  %i.sc = load <8 x i16>, ptr %.1257486, align 1, !tbaa !42 ; 2 uses
  %i.sd = shufflevector <8 x i16> %i.sc, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.se = shufflevector <8 x i16> %i.sc, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.sf = shufflevector <8 x i16> %i.sd, <8 x i16> %i.se, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sg = bitcast <16 x i16> %i.sf to <8 x float> ; 2 uses
  %i.sh = fmul fast <8 x float> %i.sb, %i.rr
  %i.si = fneg fast <8 x float> %i.rw
  %i.sj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.si, <8 x float> nofpclass(nan inf) %i.sg, <8 x float> nofpclass(nan inf) %i.sh)
  %i.sk = fmul fast <8 x float> %i.sb, %i.rw
  %i.sl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rr, <8 x float> nofpclass(nan inf) %i.sg, <8 x float> nofpclass(nan inf) %i.sk)
  %i.sm = bitcast <8 x float> %i.sj to <8 x i32>
  %i.sn = lshr <8 x i32> %i.sm, splat (i32 16)    ; 2 uses
  %i.so = shufflevector <8 x i32> %i.sn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sp = shufflevector <8 x i32> %i.sn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.sq = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.so, <4 x i32> %i.sp)
  store <8 x i16> %i.sq, ptr %.1253487, align 1, !tbaa !42
  %i.sr = bitcast <8 x float> %i.sl to <8 x i32>
  %i.ss = lshr <8 x i32> %i.sr, splat (i32 16)    ; 2 uses
  %i.st = shufflevector <8 x i32> %i.ss, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.su = shufflevector <8 x i32> %i.ss, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.sv = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.st, <4 x i32> %i.su)
  store <8 x i16> %i.sv, ptr %.1249488, align 1, !tbaa !42
  %i.sw = getelementptr inbounds nuw i8, ptr %.1269483, i64 16 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.1265484, i64 16 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.1261485, i64 16 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.1257486, i64 16 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.1253487, i64 16 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.1249488, i64 16 ; 2 uses
  %i.tc = add nuw nsw i32 %.1489, 8               ; 3 uses
  %i.td = or disjoint i32 %i.tc, 7
  %i.te = load i32, ptr %9, align 4, !tbaa !21
  %i.tf = sdiv i32 %i.te, 2                       ; 2 uses
  %i.tg = icmp slt i32 %i.td, %i.tf
  br i1 %i.tg, label %.lr.ph490, label %.preheader411, !llvm.loop !107

.preheader:                                       ; preds = %.lr.ph505, %.preheader411
  %.2270.lcssa = phi ptr [ %.1269.lcssa, %.preheader411 ], [ %i.yi, %.lr.ph505 ] ; 7 uses
  %.2266.lcssa = phi ptr [ %.1265.lcssa, %.preheader411 ], [ %i.yj, %.lr.ph505 ] ; 7 uses
  %.2262.lcssa = phi ptr [ %.1261.lcssa, %.preheader411 ], [ %i.yk, %.lr.ph505 ] ; 7 uses
  %.2258.lcssa = phi ptr [ %.1257.lcssa, %.preheader411 ], [ %i.yl, %.lr.ph505 ] ; 7 uses
  %.2254.lcssa = phi ptr [ %.1253.lcssa, %.preheader411 ], [ %i.ym, %.lr.ph505 ] ; 7 uses
  %.2250.lcssa = phi ptr [ %.1249.lcssa, %.preheader411 ], [ %i.yn, %.lr.ph505 ] ; 7 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader411 ], [ %i.yo, %.lr.ph505 ] ; 6 uses
  %.lcssa418 = phi i32 [ %.pre-phi577, %.preheader411 ], [ %i.yr, %.lr.ph505 ] ; 3 uses
  %.2258.lcssa715 = ptrtoaddr ptr %.2258.lcssa to i64 ; 2 uses
  %.2262.lcssa716 = ptrtoaddr ptr %.2262.lcssa to i64 ; 2 uses
  %.2270.lcssa717 = ptrtoaddr ptr %.2270.lcssa to i64 ; 2 uses
  %.2266.lcssa718 = ptrtoaddr ptr %.2266.lcssa to i64 ; 2 uses
  %.2254.lcssa719 = ptrtoaddr ptr %.2254.lcssa to i64 ; 2 uses
  %.2250.lcssa720 = ptrtoaddr ptr %.2250.lcssa to i64 ; 5 uses
  %i.th = icmp slt i32 %.2.lcssa, %.lcssa418
  br i1 %i.th, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.ti = xor i32 %.2.lcssa, -1
  %i.tj = add i32 %.lcssa418, %i.ti               ; 3 uses
  %i.tk = zext i32 %i.tj to i64
  %i.tl = add nuw nsw i64 %i.tk, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.tj, 3
  br i1 %min.iters.check, label %.lr.ph521.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.tm = sub i64 %.2254.lcssa719, %.2250.lcssa720
  %i.tn = insertelement <8 x i64> poison, i64 %.2266.lcssa718, i64 0
  %i.to = insertelement <8 x i64> %i.tn, i64 %.2270.lcssa717, i64 1
  %i.tp = insertelement <8 x i64> %i.to, i64 %.2262.lcssa716, i64 2
  %i.tq = insertelement <8 x i64> %i.tp, i64 %.2258.lcssa715, i64 3
  %i.tr = insertelement <4 x i64> poison, i64 %.2254.lcssa719, i64 0
  %i.ts = sub i64 %.2266.lcssa718, %.2250.lcssa720
  %i.tt = sub i64 %.2270.lcssa717, %.2250.lcssa720
  %i.tu = sub i64 %.2262.lcssa716, %.2250.lcssa720
  %i.tv = insertelement <8 x i64> poison, i64 %i.tm, i64 0
  %i.tw = shufflevector <4 x i64> %i.tr, <4 x i64> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tx = sub <8 x i64> %i.tq, %i.tw
  %i.ty = shufflevector <8 x i64> %i.tv, <8 x i64> %i.tx, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.tz = insertelement <8 x i64> %i.ty, i64 %i.ts, i64 5
  %i.ua = insertelement <8 x i64> %i.tz, i64 %i.tt, i64 6
  %i.ub = insertelement <8 x i64> %i.ua, i64 %i.tu, i64 7
  %i.uc = icmp ugt <8 x i64> %i.ub, splat (i64 -64)
  %i.ud = sub i64 %.2258.lcssa715, %.2250.lcssa720
  %diff.check734 = icmp ugt i64 %i.ud, -64
  %i.ue = bitcast <8 x i1> %i.uc to i8
  %i.uf = icmp ne i8 %i.ue, 0
  %op.rdx = or i1 %i.uf, %diff.check734
  br i1 %op.rdx, label %.lr.ph521.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check736 = icmp ult i32 %i.tj, 31
  br i1 %min.iters.check736, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ug = and i64 %i.tl, 28
  %n.vec = and i64 %i.tl, 8589934560              ; 5 uses
  %i.uh = trunc i64 %n.vec to i32
  %i.ui = add i32 %.2.lcssa, %i.uh
  %i.uj = shl nuw nsw i64 %n.vec, 1               ; 6 uses
  %i.uk = getelementptr i8, ptr %.2250.lcssa, i64 %i.uj
  %i.ul = getelementptr i8, ptr %.2254.lcssa, i64 %i.uj
  %i.um = getelementptr i8, ptr %.2258.lcssa, i64 %i.uj
  %i.un = getelementptr i8, ptr %.2262.lcssa, i64 %i.uj
  %i.uo = getelementptr i8, ptr %.2266.lcssa, i64 %i.uj
  %i.up = getelementptr i8, ptr %.2270.lcssa, i64 %i.uj
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.uq = shl i64 %index, 1                       ; 6 uses
  %next.gep = getelementptr i8, ptr %.2250.lcssa, i64 %i.uq
  %next.gep737 = getelementptr i8, ptr %.2254.lcssa, i64 %i.uq
  %next.gep738 = getelementptr i8, ptr %.2258.lcssa, i64 %i.uq
  %next.gep739 = getelementptr i8, ptr %.2262.lcssa, i64 %i.uq
  %next.gep740 = getelementptr i8, ptr %.2266.lcssa, i64 %i.uq
  %next.gep741 = getelementptr i8, ptr %.2270.lcssa, i64 %i.uq
  %wide.load = load <32 x i16>, ptr %next.gep741, align 2, !tbaa !116
  %i.ur = zext <32 x i16> %wide.load to <32 x i32>
  %i.us = shl nuw <32 x i32> %i.ur, splat (i32 16)
  %i.ut = bitcast <32 x i32> %i.us to <32 x float> ; 2 uses
  %wide.load742 = load <32 x i16>, ptr %next.gep740, align 2, !tbaa !116
  %i.uu = zext <32 x i16> %wide.load742 to <32 x i32>
  %i.uv = shl nuw <32 x i32> %i.uu, splat (i32 16)
  %i.uw = bitcast <32 x i32> %i.uv to <32 x float> ; 2 uses
  %wide.load743 = load <32 x i16>, ptr %next.gep739, align 2, !tbaa !116
  %i.ux = zext <32 x i16> %wide.load743 to <32 x i32>
  %i.uy = shl nuw <32 x i32> %i.ux, splat (i32 16)
  %i.uz = bitcast <32 x i32> %i.uy to <32 x float> ; 2 uses
  %wide.load744 = load <32 x i16>, ptr %next.gep738, align 2, !tbaa !116
  %i.va = zext <32 x i16> %wide.load744 to <32 x i32>
  %i.vb = shl nuw <32 x i32> %i.va, splat (i32 16)
  %i.vc = bitcast <32 x i32> %i.vb to <32 x float> ; 2 uses
  %i.vd = fmul fast <32 x float> %i.uz, %i.ut
  %i.ve = fmul fast <32 x float> %i.vc, %i.uw
  %i.vf = fsub fast <32 x float> %i.vd, %i.ve
  %i.vg = bitcast <32 x float> %i.vf to <32 x i32>
  %i.vh = lshr <32 x i32> %i.vg, splat (i32 16)
  %i.vi = trunc nuw <32 x i32> %i.vh to <32 x i16>
  store <32 x i16> %i.vi, ptr %next.gep737, align 2, !tbaa !116
  %i.vj = fmul fast <32 x float> %i.vc, %i.ut
  %i.vk = fmul fast <32 x float> %i.uz, %i.uw
  %i.vl = fadd fast <32 x float> %i.vj, %i.vk
  %i.vm = bitcast <32 x float> %i.vl to <32 x i32>
  %i.vn = lshr <32 x i32> %i.vm, splat (i32 16)
  %i.vo = trunc nuw <32 x i32> %i.vn to <32 x i16>
  store <32 x i16> %i.vo, ptr %next.gep, align 2, !tbaa !116
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.vp = icmp eq i64 %index.next, %n.vec
  br i1 %i.vp, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.tl, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ug, 0
  br i1 %min.epilog.iters.check, label %.lr.ph521.preheader, label %vec.epilog.ph, !prof !123

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec745 = and i64 %i.tl, 8589934588           ; 4 uses
  %i.vq = trunc i64 %n.vec745 to i32
  %i.vr = add i32 %.2.lcssa, %i.vq
  %i.vs = shl nuw nsw i64 %n.vec745, 1            ; 6 uses
  %i.vt = getelementptr i8, ptr %.2250.lcssa, i64 %i.vs
  %i.vu = getelementptr i8, ptr %.2254.lcssa, i64 %i.vs
  %i.vv = getelementptr i8, ptr %.2258.lcssa, i64 %i.vs
  %i.vw = getelementptr i8, ptr %.2262.lcssa, i64 %i.vs
  %i.vx = getelementptr i8, ptr %.2266.lcssa, i64 %i.vs
  %i.vy = getelementptr i8, ptr %.2270.lcssa, i64 %i.vs
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index746 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next757, %vec.epilog.vector.body ] ; 2 uses
  %i.vz = shl i64 %index746, 1                    ; 6 uses
  %next.gep747 = getelementptr i8, ptr %.2250.lcssa, i64 %i.vz
  %next.gep748 = getelementptr i8, ptr %.2254.lcssa, i64 %i.vz
  %next.gep749 = getelementptr i8, ptr %.2258.lcssa, i64 %i.vz
  %next.gep750 = getelementptr i8, ptr %.2262.lcssa, i64 %i.vz
  %next.gep751 = getelementptr i8, ptr %.2266.lcssa, i64 %i.vz
  %next.gep752 = getelementptr i8, ptr %.2270.lcssa, i64 %i.vz
  %wide.load753 = load <4 x i16>, ptr %next.gep752, align 2, !tbaa !116
  %i.wa = zext <4 x i16> %wide.load753 to <4 x i32>
  %i.wb = shl nuw <4 x i32> %i.wa, splat (i32 16)
  %i.wc = bitcast <4 x i32> %i.wb to <4 x float>  ; 2 uses
  %wide.load754 = load <4 x i16>, ptr %next.gep751, align 2, !tbaa !116
  %i.wd = zext <4 x i16> %wide.load754 to <4 x i32>
  %i.we = shl nuw <4 x i32> %i.wd, splat (i32 16)
  %i.wf = bitcast <4 x i32> %i.we to <4 x float>  ; 2 uses
  %wide.load755 = load <4 x i16>, ptr %next.gep750, align 2, !tbaa !116
  %i.wg = zext <4 x i16> %wide.load755 to <4 x i32>
  %i.wh = shl nuw <4 x i32> %i.wg, splat (i32 16)
  %i.wi = bitcast <4 x i32> %i.wh to <4 x float>  ; 2 uses
  %wide.load756 = load <4 x i16>, ptr %next.gep749, align 2, !tbaa !116
  %i.wj = zext <4 x i16> %wide.load756 to <4 x i32>
  %i.wk = shl nuw <4 x i32> %i.wj, splat (i32 16)
  %i.wl = bitcast <4 x i32> %i.wk to <4 x float>  ; 2 uses
  %i.wm = fmul fast <4 x float> %i.wi, %i.wc
  %i.wn = fmul fast <4 x float> %i.wl, %i.wf
  %i.wo = fsub fast <4 x float> %i.wm, %i.wn
  %i.wp = bitcast <4 x float> %i.wo to <4 x i32>
  %i.wq = lshr <4 x i32> %i.wp, splat (i32 16)
  %i.wr = trunc nuw <4 x i32> %i.wq to <4 x i16>
  store <4 x i16> %i.wr, ptr %next.gep748, align 2, !tbaa !116
  %i.ws = fmul fast <4 x float> %i.wl, %i.wc
  %i.wt = fmul fast <4 x float> %i.wi, %i.wf
  %i.wu = fadd fast <4 x float> %i.ws, %i.wt
  %i.wv = bitcast <4 x float> %i.wu to <4 x i32>
  %i.ww = lshr <4 x i32> %i.wv, splat (i32 16)
  %i.wx = trunc nuw <4 x i32> %i.ww to <4 x i16>
  store <4 x i16> %i.wx, ptr %next.gep747, align 2, !tbaa !116
  %index.next757 = add nuw i64 %index746, 4       ; 2 uses
  %i.wy = icmp eq i64 %index.next757, %n.vec745
  br i1 %i.wy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !109

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n758 = icmp eq i64 %i.tl, %n.vec745
  br i1 %cmp.n758, label %.loopexit, label %.lr.ph521.preheader

.lr.ph521.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3520.ph = phi i32 [ %.2.lcssa, %iter.check ], [ %.2.lcssa, %vector.memcheck ], [ %i.ui, %vec.epilog.iter.check ], [ %i.vr, %vec.epilog.middle.block ]
  %.3251519.ph = phi ptr [ %.2250.lcssa, %iter.check ], [ %.2250.lcssa, %vector.memcheck ], [ %i.uk, %vec.epilog.iter.check ], [ %i.vt, %vec.epilog.middle.block ]
  %.3255518.ph = phi ptr [ %.2254.lcssa, %iter.check ], [ %.2254.lcssa, %vector.memcheck ], [ %i.ul, %vec.epilog.iter.check ], [ %i.vu, %vec.epilog.middle.block ]
  %.3259517.ph = phi ptr [ %.2258.lcssa, %iter.check ], [ %.2258.lcssa, %vector.memcheck ], [ %i.um, %vec.epilog.iter.check ], [ %i.vv, %vec.epilog.middle.block ]
  %.3263516.ph = phi ptr [ %.2262.lcssa, %iter.check ], [ %.2262.lcssa, %vector.memcheck ], [ %i.un, %vec.epilog.iter.check ], [ %i.vw, %vec.epilog.middle.block ]
  %.3267515.ph = phi ptr [ %.2266.lcssa, %iter.check ], [ %.2266.lcssa, %vector.memcheck ], [ %i.uo, %vec.epilog.iter.check ], [ %i.vx, %vec.epilog.middle.block ]
  %.3271514.ph = phi ptr [ %.2270.lcssa, %iter.check ], [ %.2270.lcssa, %vector.memcheck ], [ %i.up, %vec.epilog.iter.check ], [ %i.vy, %vec.epilog.middle.block ]
  br label %.lr.ph521

.lr.ph505:                                        ; preds = %.preheader411, %.lr.ph505
  %.2504 = phi i32 [ %i.yo, %.lr.ph505 ], [ %.1.lcssa, %.preheader411 ]
  %.2250503 = phi ptr [ %i.yn, %.lr.ph505 ], [ %.1249.lcssa, %.preheader411 ] ; 2 uses
  %.2254502 = phi ptr [ %i.ym, %.lr.ph505 ], [ %.1253.lcssa, %.preheader411 ] ; 2 uses
  %.2258501 = phi ptr [ %i.yl, %.lr.ph505 ], [ %.1257.lcssa, %.preheader411 ] ; 2 uses
  %.2262500 = phi ptr [ %i.yk, %.lr.ph505 ], [ %.1261.lcssa, %.preheader411 ] ; 2 uses
  %.2266499 = phi ptr [ %i.yj, %.lr.ph505 ], [ %.1265.lcssa, %.preheader411 ] ; 2 uses
  %.2270498 = phi ptr [ %i.yi, %.lr.ph505 ], [ %.1269.lcssa, %.preheader411 ] ; 2 uses
  %i.wz = load i64, ptr %.2270498, align 1, !tbaa !42
  %i.xa = insertelement <2 x i64> poison, i64 %i.wz, i64 0
  %i.xb = bitcast <2 x i64> %i.xa to <8 x i16>
  %i.xc = shufflevector <8 x i16> %i.xb, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.xd = bitcast <8 x i16> %i.xc to <4 x float>  ; 2 uses
  %i.xe = load i64, ptr %.2266499, align 1, !tbaa !42
  %i.xf = insertelement <2 x i64> poison, i64 %i.xe, i64 0
  %i.xg = bitcast <2 x i64> %i.xf to <8 x i16>
  %i.xh = shufflevector <8 x i16> %i.xg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.xi = bitcast <8 x i16> %i.xh to <4 x float>  ; 2 uses
  %i.xj = load i64, ptr %.2262500, align 1, !tbaa !42
  %i.xk = insertelement <2 x i64> poison, i64 %i.xj, i64 0
  %i.xl = bitcast <2 x i64> %i.xk to <8 x i16>
  %i.xm = shufflevector <8 x i16> %i.xl, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
end_hunk_1
