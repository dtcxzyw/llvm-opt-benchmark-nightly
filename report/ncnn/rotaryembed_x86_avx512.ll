inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn22RotaryEmbed_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined:bb.a
.lr.ph404:                                        ; preds = %.preheader364, %.lr.ph404
  %.3403 = phi ptr [ %i.hr, %.lr.ph404 ], [ %.2.lcssa, %.preheader364 ] ; 2 uses
  %.3258402 = phi ptr [ %i.ht, %.lr.ph404 ], [ %.2257.lcssa, %.preheader364 ] ; 2 uses
  %.3263401 = phi ptr [ %i.hu, %.lr.ph404 ], [ %.2262.lcssa, %.preheader364 ] ; 2 uses
  %.3268400 = phi ptr [ %i.hs, %.lr.ph404 ], [ %.2267.lcssa, %.preheader364 ] ; 2 uses
  %.3273399 = phi i32 [ %i.hv, %.lr.ph404 ], [ %.2272.lcssa, %.preheader364 ]
  %i.hf = load <4 x float>, ptr %.3403, align 1, !tbaa !56 ; 2 uses
  %i.hg = load i64, ptr %.3258402, align 1, !tbaa !56
  %i.hh = insertelement <2 x i64> poison, i64 %i.hg, i64 0
  %i.hi = bitcast <2 x i64> %i.hh to <4 x float>
  %i.hj = load i64, ptr %.3263401, align 1, !tbaa !56
  %i.hk = insertelement <2 x i64> poison, i64 %i.hj, i64 0
  %i.hl = bitcast <2 x i64> %i.hk to <4 x float>
  %i.hm = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hn = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ho = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.hp = fmul fast <4 x float> %i.hn, %i.ho
  %i.hq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float> nofpclass(nan inf) %i.hf, <4 x float> nofpclass(nan inf) %i.hm, <4 x float> nofpclass(nan inf) %i.hp)
  store <4 x float> %i.hq, ptr %.3268400, align 1, !tbaa !56
  %i.hr = getelementptr inbounds nuw i8, ptr %.3403, i64 16 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.3268400, i64 16 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.3258402, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.3263401, i64 8 ; 2 uses
  %i.hv = add nuw nsw i32 %.3273399, 2            ; 3 uses
  %i.hw = or disjoint i32 %i.hv, 1
  %i.hx = load i32, ptr %9, align 4, !tbaa !25
  %i.hy = sdiv i32 %i.hx, 2                       ; 2 uses
  %i.hz = icmp slt i32 %i.hw, %i.hy
  br i1 %i.hz, label %.lr.ph404, label %.preheader362, !llvm.loop !78

.lr.ph416:                                        ; preds = %.lr.ph416.prol.loopexit, %.lr.ph416
  %.4415 = phi ptr [ %i.je, %.lr.ph416 ], [ %.4415.unr, %.lr.ph416.prol.loopexit ] ; 5 uses
  %.4259414 = phi ptr [ %i.it, %.lr.ph416 ], [ %.4259414.unr, %.lr.ph416.prol.loopexit ] ; 3 uses
  %.4264413 = phi ptr [ %i.iv, %.lr.ph416 ], [ %.4264413.unr, %.lr.ph416.prol.loopexit ] ; 3 uses
  %.4269412 = phi ptr [ %i.jf, %.lr.ph416 ], [ %.4269412.unr, %.lr.ph416.prol.loopexit ] ; 5 uses
  %.4274411 = phi i32 [ %i.jg, %.lr.ph416 ], [ %.4274411.unr, %.lr.ph416.prol.loopexit ]
  %i.ia = load float, ptr %.4415, align 4, !tbaa !61 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.4415, i64 4
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !61 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.4259414, i64 4
  %i.ie = load float, ptr %.4259414, align 4, !tbaa !61 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.4264413, i64 4
  %i.ig = load float, ptr %.4264413, align 4, !tbaa !61 ; 2 uses
  %i.ih = fmul fast float %i.ie, %i.ia
  %i.ii = fmul fast float %i.ig, %i.ic
  %i.ij = fsub fast float %i.ih, %i.ii
  store float %i.ij, ptr %.4269412, align 4, !tbaa !61
  %i.ik = fmul fast float %i.ig, %i.ia
  %i.il = fmul fast float %i.ie, %i.ic
  %i.im = fadd fast float %i.ik, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %.4269412, i64 4
  store float %i.im, ptr %i.in, align 4, !tbaa !61
  %i.io = getelementptr inbounds nuw i8, ptr %.4415, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %.4269412, i64 8
  %i.iq = load float, ptr %i.io, align 4, !tbaa !61 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.4415, i64 12
  %i.is = load float, ptr %i.ir, align 4, !tbaa !61 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.4259414, i64 8
  %i.iu = load float, ptr %i.id, align 4, !tbaa !61 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.4264413, i64 8
  %i.iw = load float, ptr %i.if, align 4, !tbaa !61 ; 2 uses
  %i.ix = fmul fast float %i.iu, %i.iq
  %i.iy = fmul fast float %i.iw, %i.is
  %i.iz = fsub fast float %i.ix, %i.iy
  store float %i.iz, ptr %i.ip, align 4, !tbaa !61
  %i.ja = fmul fast float %i.iw, %i.iq
  %i.jb = fmul fast float %i.iu, %i.is
  %i.jc = fadd fast float %i.ja, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %.4269412, i64 12
  store float %i.jc, ptr %i.jd, align 4, !tbaa !61
  %i.je = getelementptr inbounds nuw i8, ptr %.4415, i64 16
  %i.jf = getelementptr inbounds nuw i8, ptr %.4269412, i64 16
  %i.jg = add nuw nsw i32 %.4274411, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.jg, %.lcssa
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph416, !llvm.loop !79

bb.e:                                             ; preds = %bb.c
  %i.jh = load i32, ptr %9, align 4, !tbaa !25    ; 2 uses
  %i.ji = sdiv i32 %i.jh, 2                       ; 2 uses
  %i.jj = sext i32 %i.ji to i64                   ; 2 uses
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.jj ; 2 uses
  %i.jl = load ptr, ptr %7, align 8, !tbaa !29
  %i.jm = load i32, ptr %i.s, align 4, !tbaa !24
  %i.jn = sext i32 %i.jm to i64
  %i.jo = mul nsw i64 %indvars.iv, %i.jn
  %i.jp = load i64, ptr %i.t, align 8, !tbaa !23
  %i.jq = mul i64 %i.jo, %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jq ; 2 uses
  %i.js = load ptr, ptr %8, align 8, !tbaa !29
  %i.jt = load i32, ptr %i.u, align 4, !tbaa !24
  %i.ju = sext i32 %i.jt to i64
  %i.jv = mul nsw i64 %indvars.iv, %i.ju
  %i.jw = load i64, ptr %i.v, align 8, !tbaa !23
  %i.jx = mul i64 %i.jv, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jx ; 2 uses
  %i.jz = mul i64 %i.at, %indvars.iv
  %i.ka = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.jz ; 3 uses
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.jj ; 2 uses
  %i.kc = icmp sgt i32 %i.jh, 31
  br i1 %i.kc, label %.lr.ph424, label %.preheader361

.preheader361:                                    ; preds = %.lr.ph424, %bb.e
  %.pre-phi = phi i32 [ %i.ji, %bb.e ], [ %i.kx, %.lr.ph424 ] ; 2 uses
  %.0299.lcssa = phi ptr [ %i.ax, %bb.e ], [ %i.ko, %.lr.ph424 ] ; 2 uses
  %.0295.lcssa = phi ptr [ %i.jk, %bb.e ], [ %i.kp, %.lr.ph424 ] ; 2 uses
  %.0291.lcssa = phi ptr [ %i.jr, %bb.e ], [ %i.kq, %.lr.ph424 ] ; 2 uses
  %.0287.lcssa = phi ptr [ %i.jy, %bb.e ], [ %i.kr, %.lr.ph424 ] ; 2 uses
  %.0283.lcssa = phi ptr [ %i.ka, %bb.e ], [ %i.ks, %.lr.ph424 ] ; 2 uses
  %.0279.lcssa = phi ptr [ %i.kb, %bb.e ], [ %i.kt, %.lr.ph424 ] ; 2 uses
  %.0275.lcssa = phi i32 [ 0, %bb.e ], [ %i.ku, %.lr.ph424 ] ; 3 uses
  %i.kd = or disjoint i32 %.0275.lcssa, 7
  %i.ke = icmp slt i32 %i.kd, %.pre-phi
  br i1 %i.ke, label %.lr.ph439, label %.preheader360

.lr.ph424:                                        ; preds = %bb.e, %.lr.ph424
  %.0275423 = phi i32 [ %i.ku, %.lr.ph424 ], [ 0, %bb.e ]
  %.0279422 = phi ptr [ %i.kt, %.lr.ph424 ], [ %i.kb, %bb.e ] ; 2 uses
  %.0283421 = phi ptr [ %i.ks, %.lr.ph424 ], [ %i.ka, %bb.e ] ; 2 uses
  %.0287420 = phi ptr [ %i.kr, %.lr.ph424 ], [ %i.jy, %bb.e ] ; 2 uses
  %.0291419 = phi ptr [ %i.kq, %.lr.ph424 ], [ %i.jr, %bb.e ] ; 2 uses
  %.0295418 = phi ptr [ %i.kp, %.lr.ph424 ], [ %i.jk, %bb.e ] ; 2 uses
  %.0299417 = phi ptr [ %i.ko, %.lr.ph424 ], [ %i.ax, %bb.e ] ; 2 uses
  %i.kf = load <16 x float>, ptr %.0299417, align 1, !tbaa !56 ; 2 uses
  %i.kg = load <16 x float>, ptr %.0295418, align 1, !tbaa !56 ; 2 uses
  %i.kh = load <16 x float>, ptr %.0291419, align 1, !tbaa !56 ; 2 uses
  %i.ki = load <16 x float>, ptr %.0287420, align 1, !tbaa !56 ; 2 uses
  %i.kj = fmul fast <16 x float> %i.kh, %i.kf
  %i.kk = fneg fast <16 x float> %i.kg
  %i.kl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.kk, <16 x float> nofpclass(nan inf) %i.ki, <16 x float> nofpclass(nan inf) %i.kj)
  %i.km = fmul fast <16 x float> %i.kh, %i.kg
  %i.kn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.kf, <16 x float> nofpclass(nan inf) %i.ki, <16 x float> nofpclass(nan inf) %i.km)
  store <16 x float> %i.kl, ptr %.0283421, align 1, !tbaa !56
  store <16 x float> %i.kn, ptr %.0279422, align 1, !tbaa !56
  %i.ko = getelementptr inbounds nuw i8, ptr %.0299417, i64 64 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0295418, i64 64 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.0291419, i64 64 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.0287420, i64 64 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0283421, i64 64 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.0279422, i64 64 ; 2 uses
  %i.ku = add nuw nsw i32 %.0275423, 16           ; 3 uses
  %i.kv = or disjoint i32 %i.ku, 15
  %i.kw = load i32, ptr %9, align 4, !tbaa !25
  %i.kx = sdiv i32 %i.kw, 2                       ; 2 uses
  %i.ky = icmp slt i32 %i.kv, %i.kx
  br i1 %i.ky, label %.lr.ph424, label %.preheader361, !llvm.loop !80

.preheader360:                                    ; preds = %.lr.ph439, %.preheader361
  %.pre-phi526 = phi i32 [ %.pre-phi, %.preheader361 ], [ %i.lt, %.lr.ph439 ] ; 2 uses
  %.1300.lcssa = phi ptr [ %.0299.lcssa, %.preheader361 ], [ %i.lk, %.lr.ph439 ] ; 2 uses
  %.1296.lcssa = phi ptr [ %.0295.lcssa, %.preheader361 ], [ %i.ll, %.lr.ph439 ] ; 2 uses
  %.1292.lcssa = phi ptr [ %.0291.lcssa, %.preheader361 ], [ %i.lm, %.lr.ph439 ] ; 2 uses
  %.1288.lcssa = phi ptr [ %.0287.lcssa, %.preheader361 ], [ %i.ln, %.lr.ph439 ] ; 2 uses
  %.1284.lcssa = phi ptr [ %.0283.lcssa, %.preheader361 ], [ %i.lo, %.lr.ph439 ] ; 2 uses
  %.1280.lcssa = phi ptr [ %.0279.lcssa, %.preheader361 ], [ %i.lp, %.lr.ph439 ] ; 2 uses
  %.1276.lcssa = phi i32 [ %.0275.lcssa, %.preheader361 ], [ %i.lq, %.lr.ph439 ] ; 3 uses
  %i.kz = or disjoint i32 %.1276.lcssa, 3
  %i.la = icmp slt i32 %i.kz, %.pre-phi526
  br i1 %i.la, label %.lr.ph454, label %.preheader

.lr.ph439:                                        ; preds = %.preheader361, %.lr.ph439
  %.1276438 = phi i32 [ %i.lq, %.lr.ph439 ], [ %.0275.lcssa, %.preheader361 ]
  %.1280437 = phi ptr [ %i.lp, %.lr.ph439 ], [ %.0279.lcssa, %.preheader361 ] ; 2 uses
  %.1284436 = phi ptr [ %i.lo, %.lr.ph439 ], [ %.0283.lcssa, %.preheader361 ] ; 2 uses
  %.1288435 = phi ptr [ %i.ln, %.lr.ph439 ], [ %.0287.lcssa, %.preheader361 ] ; 2 uses
  %.1292434 = phi ptr [ %i.lm, %.lr.ph439 ], [ %.0291.lcssa, %.preheader361 ] ; 2 uses
  %.1296433 = phi ptr [ %i.ll, %.lr.ph439 ], [ %.0295.lcssa, %.preheader361 ] ; 2 uses
  %.1300432 = phi ptr [ %i.lk, %.lr.ph439 ], [ %.0299.lcssa, %.preheader361 ] ; 2 uses
  %i.lb = load <8 x float>, ptr %.1300432, align 1, !tbaa !56 ; 2 uses
  %i.lc = load <8 x float>, ptr %.1296433, align 1, !tbaa !56 ; 2 uses
  %i.ld = load <8 x float>, ptr %.1292434, align 1, !tbaa !56 ; 2 uses
  %i.le = load <8 x float>, ptr %.1288435, align 1, !tbaa !56 ; 2 uses
  %i.lf = fmul fast <8 x float> %i.ld, %i.lb
  %i.lg = fneg fast <8 x float> %i.lc
  %i.lh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lg, <8 x float> nofpclass(nan inf) %i.le, <8 x float> nofpclass(nan inf) %i.lf)
  %i.li = fmul fast <8 x float> %i.ld, %i.lc
  %i.lj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lb, <8 x float> nofpclass(nan inf) %i.le, <8 x float> nofpclass(nan inf) %i.li)
  store <8 x float> %i.lh, ptr %.1284436, align 1, !tbaa !56
  store <8 x float> %i.lj, ptr %.1280437, align 1, !tbaa !56
  %i.lk = getelementptr inbounds nuw i8, ptr %.1300432, i64 32 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.1296433, i64 32 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.1292434, i64 32 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.1288435, i64 32 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.1284436, i64 32 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.1280437, i64 32 ; 2 uses
  %i.lq = add nuw nsw i32 %.1276438, 8            ; 3 uses
  %i.lr = or disjoint i32 %i.lq, 7
  %i.ls = load i32, ptr %9, align 4, !tbaa !25
  %i.lt = sdiv i32 %i.ls, 2                       ; 2 uses
  %i.lu = icmp slt i32 %i.lr, %i.lt
  br i1 %i.lu, label %.lr.ph439, label %.preheader360, !llvm.loop !81

.preheader:                                       ; preds = %.lr.ph454, %.preheader360
  %.2301.lcssa = phi ptr [ %.1300.lcssa, %.preheader360 ], [ %i.om, %.lr.ph454 ] ; 7 uses
  %.2297.lcssa = phi ptr [ %.1296.lcssa, %.preheader360 ], [ %i.on, %.lr.ph454 ] ; 7 uses
  %.2293.lcssa = phi ptr [ %.1292.lcssa, %.preheader360 ], [ %i.oo, %.lr.ph454 ] ; 7 uses
  %.2289.lcssa = phi ptr [ %.1288.lcssa, %.preheader360 ], [ %i.op, %.lr.ph454 ] ; 7 uses
  %.2285.lcssa = phi ptr [ %.1284.lcssa, %.preheader360 ], [ %i.oq, %.lr.ph454 ] ; 7 uses
  %.2281.lcssa = phi ptr [ %.1280.lcssa, %.preheader360 ], [ %i.or, %.lr.ph454 ] ; 7 uses
  %.2277.lcssa = phi i32 [ %.1276.lcssa, %.preheader360 ], [ %i.os, %.lr.ph454 ] ; 6 uses
  %.lcssa367 = phi i32 [ %.pre-phi526, %.preheader360 ], [ %i.ov, %.lr.ph454 ] ; 5 uses
  %.2281.lcssa643 = ptrtoaddr ptr %.2281.lcssa to i64 ; 2 uses
  %.2285.lcssa644 = ptrtoaddr ptr %.2285.lcssa to i64
  %.2297.lcssa645 = ptrtoaddr ptr %.2297.lcssa to i64
  %.2301.lcssa647 = ptrtoaddr ptr %.2301.lcssa to i64
  %.2293.lcssa650 = ptrtoaddr ptr %.2293.lcssa to i64
  %.2289.lcssa653 = ptrtoaddr ptr %.2289.lcssa to i64 ; 2 uses
  %i.lv = icmp slt i32 %.2277.lcssa, %.lcssa367
  br i1 %i.lv, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.lw = xor i32 %.2277.lcssa, -1
  %i.lx = add i32 %.lcssa367, %i.lw               ; 3 uses
  %i.ly = zext i32 %i.lx to i64
  %i.lz = add nuw nsw i64 %i.ly, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.lx, 3
  br i1 %min.iters.check, label %.lr.ph470.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %10 = insertelement <8 x i64> poison, i64 %.2285.lcssa644, i64 0 ; 2 uses
  %11 = insertelement <8 x i64> %10, i64 %.2297.lcssa645, i64 1
  %12 = insertelement <8 x i64> %11, i64 %.2301.lcssa647, i64 2
  %13 = insertelement <8 x i64> %12, i64 %.2293.lcssa650, i64 3
  %14 = insertelement <8 x i64> %13, i64 %.2289.lcssa653, i64 4
  %15 = shufflevector <8 x i64> %14, <8 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %16 = shufflevector <8 x i64> %10, <8 x i64> poison, <2 x i32> <i32 poison, i32 0>
  %17 = insertelement <2 x i64> %16, i64 %.2281.lcssa643, i64 0
  %18 = shufflevector <2 x i64> %17, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0>
  %19 = sub <8 x i64> %15, %18
  %20 = icmp ugt <8 x i64> %19, splat (i64 -64)
  %i.ma = sub i64 %.2289.lcssa653, %.2281.lcssa643
  %diff.check662.a = icmp ugt i64 %i.ma, -64
  %21 = bitcast <8 x i1> %20 to i8
  %22 = icmp ne i8 %21, 0
  %op.rdx = or i1 %22, %diff.check662.a
  br i1 %op.rdx, label %.lr.ph470.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check664 = icmp ult i32 %i.lx, 15
  br i1 %min.iters.check664, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mb = and i64 %i.lz, 12
  %n.vec = and i64 %i.lz, 8589934576              ; 5 uses
  %i.mc = trunc i64 %n.vec to i32
  %i.md = add i32 %.2277.lcssa, %i.mc
  %i.me = shl nuw nsw i64 %n.vec, 2               ; 6 uses
  %i.mf = getelementptr i8, ptr %.2281.lcssa, i64 %i.me
  %i.mg = getelementptr i8, ptr %.2285.lcssa, i64 %i.me
  %i.mh = getelementptr i8, ptr %.2289.lcssa, i64 %i.me
  %i.mi = getelementptr i8, ptr %.2293.lcssa, i64 %i.me
  %i.mj = getelementptr i8, ptr %.2297.lcssa, i64 %i.me
  %i.mk = getelementptr i8, ptr %.2301.lcssa, i64 %i.me
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ml = shl i64 %index, 2                       ; 6 uses
  %next.gep = getelementptr i8, ptr %.2281.lcssa, i64 %i.ml
  %next.gep665 = getelementptr i8, ptr %.2285.lcssa, i64 %i.ml
  %next.gep666 = getelementptr i8, ptr %.2289.lcssa, i64 %i.ml
  %next.gep667 = getelementptr i8, ptr %.2293.lcssa, i64 %i.ml
  %next.gep668 = getelementptr i8, ptr %.2297.lcssa, i64 %i.ml
  %next.gep669 = getelementptr i8, ptr %.2301.lcssa, i64 %i.ml
  %wide.load = load <16 x float>, ptr %next.gep669, align 4, !tbaa !61 ; 2 uses
  %wide.load670 = load <16 x float>, ptr %next.gep668, align 4, !tbaa !61 ; 2 uses
  %wide.load671 = load <16 x float>, ptr %next.gep667, align 4, !tbaa !61 ; 2 uses
  %wide.load672 = load <16 x float>, ptr %next.gep666, align 4, !tbaa !61 ; 2 uses
  %i.mm = fmul fast <16 x float> %wide.load671, %wide.load
  %i.mn = fmul fast <16 x float> %wide.load672, %wide.load670
  %i.mo = fsub fast <16 x float> %i.mm, %i.mn
  store <16 x float> %i.mo, ptr %next.gep665, align 4, !tbaa !61
  %i.mp = fmul fast <16 x float> %wide.load672, %wide.load
  %i.mq = fmul fast <16 x float> %wide.load671, %wide.load670
  %i.mr = fadd fast <16 x float> %i.mp, %i.mq
  store <16 x float> %i.mr, ptr %next.gep, align 4, !tbaa !61
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ms = icmp eq i64 %index.next, %n.vec
  br i1 %i.ms, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lz, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph470.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec679 = and i64 %i.lz, 8589934588           ; 4 uses
  %i.mt = trunc i64 %n.vec679 to i32
  %i.mu = add i32 %.2277.lcssa, %i.mt
  %i.mv = shl nuw nsw i64 %n.vec679, 2            ; 6 uses
  %i.mw = getelementptr i8, ptr %.2281.lcssa, i64 %i.mv
  %i.mx = getelementptr i8, ptr %.2285.lcssa, i64 %i.mv
  %i.my = getelementptr i8, ptr %.2289.lcssa, i64 %i.mv
  %i.mz = getelementptr i8, ptr %.2293.lcssa, i64 %i.mv
  %i.na = getelementptr i8, ptr %.2297.lcssa, i64 %i.mv
  %i.nb = getelementptr i8, ptr %.2301.lcssa, i64 %i.mv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index680 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next691, %vec.epilog.vector.body ] ; 2 uses
  %i.nc = shl i64 %index680, 2                    ; 6 uses
  %next.gep681 = getelementptr i8, ptr %.2281.lcssa, i64 %i.nc
  %next.gep682 = getelementptr i8, ptr %.2285.lcssa, i64 %i.nc
  %next.gep683 = getelementptr i8, ptr %.2289.lcssa, i64 %i.nc
  %next.gep684 = getelementptr i8, ptr %.2293.lcssa, i64 %i.nc
  %next.gep685 = getelementptr i8, ptr %.2297.lcssa, i64 %i.nc
  %next.gep686 = getelementptr i8, ptr %.2301.lcssa, i64 %i.nc
  %wide.load687 = load <4 x float>, ptr %next.gep686, align 4, !tbaa !61 ; 2 uses
  %wide.load688 = load <4 x float>, ptr %next.gep685, align 4, !tbaa !61 ; 2 uses
  %wide.load689 = load <4 x float>, ptr %next.gep684, align 4, !tbaa !61 ; 2 uses
  %wide.load690 = load <4 x float>, ptr %next.gep683, align 4, !tbaa !61 ; 2 uses
  %i.nd = fmul fast <4 x float> %wide.load689, %wide.load687
  %i.ne = fmul fast <4 x float> %wide.load690, %wide.load688
  %i.nf = fsub fast <4 x float> %i.nd, %i.ne
  store <4 x float> %i.nf, ptr %next.gep682, align 4, !tbaa !61
  %i.ng = fmul fast <4 x float> %wide.load690, %wide.load687
  %i.nh = fmul fast <4 x float> %wide.load689, %wide.load688
  %i.ni = fadd fast <4 x float> %i.ng, %i.nh
  store <4 x float> %i.ni, ptr %next.gep681, align 4, !tbaa !61
  %index.next691 = add nuw i64 %index680, 4       ; 2 uses
  %i.nj = icmp eq i64 %index.next691, %n.vec679
  br i1 %i.nj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !83

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n692 = icmp eq i64 %i.lz, %n.vec679
  br i1 %cmp.n692, label %.loopexit, label %.lr.ph470.preheader

.lr.ph470.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3278469.ph = phi i32 [ %.2277.lcssa, %iter.check ], [ %.2277.lcssa, %vector.memcheck ], [ %i.md, %vec.epilog.iter.check ], [ %i.mu, %vec.epilog.middle.block ] ; 4 uses
  %.3282468.ph = phi ptr [ %.2281.lcssa, %iter.check ], [ %.2281.lcssa, %vector.memcheck ], [ %i.mf, %vec.epilog.iter.check ], [ %i.mw, %vec.epilog.middle.block ] ; 3 uses
  %.3286467.ph = phi ptr [ %.2285.lcssa, %iter.check ], [ %.2285.lcssa, %vector.memcheck ], [ %i.mg, %vec.epilog.iter.check ], [ %i.mx, %vec.epilog.middle.block ] ; 3 uses
  %.3290466.ph = phi ptr [ %.2289.lcssa, %iter.check ], [ %.2289.lcssa, %vector.memcheck ], [ %i.mh, %vec.epilog.iter.check ], [ %i.my, %vec.epilog.middle.block ] ; 3 uses
  %.3294465.ph = phi ptr [ %.2293.lcssa, %iter.check ], [ %.2293.lcssa, %vector.memcheck ], [ %i.mi, %vec.epilog.iter.check ], [ %i.mz, %vec.epilog.middle.block ] ; 3 uses
  %.3298464.ph = phi ptr [ %.2297.lcssa, %iter.check ], [ %.2297.lcssa, %vector.memcheck ], [ %i.mj, %vec.epilog.iter.check ], [ %i.na, %vec.epilog.middle.block ] ; 3 uses
  %.3302463.ph = phi ptr [ %.2301.lcssa, %iter.check ], [ %.2301.lcssa, %vector.memcheck ], [ %i.mk, %vec.epilog.iter.check ], [ %i.nb, %vec.epilog.middle.block ] ; 3 uses
  %i.nk = sub i32 %.lcssa367, %.3278469.ph
  %.neg816 = add i32 %.3278469.ph, 1
  %xtraiter814 = and i32 %i.nk, 1
  %lcmp.mod815.not = icmp eq i32 %xtraiter814, 0
  br i1 %lcmp.mod815.not, label %.lr.ph470.prol.loopexit, label %.lr.ph470.prol

.lr.ph470.prol:                                   ; preds = %.lr.ph470.preheader
  %i.nl = getelementptr inbounds nuw i8, ptr %.3302463.ph, i64 4
  %i.nm = load float, ptr %.3302463.ph, align 4, !tbaa !61 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.3298464.ph, i64 4
  %i.no = load float, ptr %.3298464.ph, align 4, !tbaa !61 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.3294465.ph, i64 4
  %i.nq = load float, ptr %.3294465.ph, align 4, !tbaa !61 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.3290466.ph, i64 4
  %i.ns = load float, ptr %.3290466.ph, align 4, !tbaa !61 ; 2 uses
  %i.nt = fmul fast float %i.nq, %i.nm
  %i.nu = fmul fast float %i.ns, %i.no
  %i.nv = fsub fast float %i.nt, %i.nu
  %i.nw = getelementptr inbounds nuw i8, ptr %.3286467.ph, i64 4
  store float %i.nv, ptr %.3286467.ph, align 4, !tbaa !61
  %i.nx = fmul fast float %i.ns, %i.nm
  %i.ny = fmul fast float %i.nq, %i.no
  %i.nz = fadd fast float %i.nx, %i.ny
  %i.oa = getelementptr inbounds nuw i8, ptr %.3282468.ph, i64 4
  store float %i.nz, ptr %.3282468.ph, align 4, !tbaa !61
  %i.ob = add nuw nsw i32 %.3278469.ph, 1
  br label %.lr.ph470.prol.loopexit

.lr.ph470.prol.loopexit:                          ; preds = %.lr.ph470.prol, %.lr.ph470.preheader
  %.3278469.unr = phi i32 [ %.3278469.ph, %.lr.ph470.preheader ], [ %i.ob, %.lr.ph470.prol ]
  %.3282468.unr = phi ptr [ %.3282468.ph, %.lr.ph470.preheader ], [ %i.oa, %.lr.ph470.prol ]
  %.3286467.unr = phi ptr [ %.3286467.ph, %.lr.ph470.preheader ], [ %i.nw, %.lr.ph470.prol ]
  %.3290466.unr = phi ptr [ %.3290466.ph, %.lr.ph470.preheader ], [ %i.nr, %.lr.ph470.prol ]
  %.3294465.unr = phi ptr [ %.3294465.ph, %.lr.ph470.preheader ], [ %i.np, %.lr.ph470.prol ]
  %.3298464.unr = phi ptr [ %.3298464.ph, %.lr.ph470.preheader ], [ %i.nn, %.lr.ph470.prol ]
  %.3302463.unr = phi ptr [ %.3302463.ph, %.lr.ph470.preheader ], [ %i.nl, %.lr.ph470.prol ]
  %i.oc = icmp eq i32 %.lcssa367, %.neg816
  br i1 %i.oc, label %.loopexit, label %.lr.ph470

.lr.ph454:                                        ; preds = %.preheader360, %.lr.ph454
  %.2277453 = phi i32 [ %i.os, %.lr.ph454 ], [ %.1276.lcssa, %.preheader360 ]
  %.2281452 = phi ptr [ %i.or, %.lr.ph454 ], [ %.1280.lcssa, %.preheader360 ] ; 2 uses
  %.2285451 = phi ptr [ %i.oq, %.lr.ph454 ], [ %.1284.lcssa, %.preheader360 ] ; 2 uses
  %.2289450 = phi ptr [ %i.op, %.lr.ph454 ], [ %.1288.lcssa, %.preheader360 ] ; 2 uses
  %.2293449 = phi ptr [ %i.oo, %.lr.ph454 ], [ %.1292.lcssa, %.preheader360 ] ; 2 uses
  %.2297448 = phi ptr [ %i.on, %.lr.ph454 ], [ %.1296.lcssa, %.preheader360 ] ; 2 uses
  %.2301447 = phi ptr [ %i.om, %.lr.ph454 ], [ %.1300.lcssa, %.preheader360 ] ; 2 uses
  %i.od = load <4 x float>, ptr %.2301447, align 1, !tbaa !56 ; 2 uses
  %i.oe = load <4 x float>, ptr %.2297448, align 1, !tbaa !56 ; 2 uses
  %i.of = load <4 x float>, ptr %.2293449, align 1, !tbaa !56 ; 2 uses
  %i.og = load <4 x float>, ptr %.2289450, align 1, !tbaa !56 ; 2 uses
  %i.oh = fmul fast <4 x float> %i.of, %i.od
  %i.oi = fneg fast <4 x float> %i.oe
  %i.oj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.oi, <4 x float> nofpclass(nan inf) %i.og, <4 x float> nofpclass(nan inf) %i.oh)
  %i.ok = fmul fast <4 x float> %i.of, %i.oe
  %i.ol = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.od, <4 x float> nofpclass(nan inf) %i.og, <4 x float> nofpclass(nan inf) %i.ok)
  store <4 x float> %i.oj, ptr %.2285451, align 1, !tbaa !56
  store <4 x float> %i.ol, ptr %.2281452, align 1, !tbaa !56
  %i.om = getelementptr inbounds nuw i8, ptr %.2301447, i64 16 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.2297448, i64 16 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.2293449, i64 16 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.2289450, i64 16 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.2285451, i64 16 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.2281452, i64 16 ; 2 uses
  %i.os = add nuw nsw i32 %.2277453, 4            ; 3 uses
  %i.ot = or disjoint i32 %i.os, 3
  %i.ou = load i32, ptr %9, align 4, !tbaa !25
  %i.ov = sdiv i32 %i.ou, 2                       ; 2 uses
  %i.ow = icmp slt i32 %i.ot, %i.ov
  br i1 %i.ow, label %.lr.ph454, label %.preheader, !llvm.loop !84

.lr.ph470:                                        ; preds = %.lr.ph470.prol.loopexit, %.lr.ph470
  %.3278469 = phi i32 [ %i.qd, %.lr.ph470 ], [ %.3278469.unr, %.lr.ph470.prol.loopexit ]
  %.3282468 = phi ptr [ %i.qc, %.lr.ph470 ], [ %.3282468.unr, %.lr.ph470.prol.loopexit ] ; 3 uses
  %.3286467 = phi ptr [ %i.py, %.lr.ph470 ], [ %.3286467.unr, %.lr.ph470.prol.loopexit ] ; 3 uses
  %.3290466 = phi ptr [ %i.pt, %.lr.ph470 ], [ %.3290466.unr, %.lr.ph470.prol.loopexit ] ; 3 uses
  %.3294465 = phi ptr [ %i.pr, %.lr.ph470 ], [ %.3294465.unr, %.lr.ph470.prol.loopexit ] ; 3 uses
  %.3298464 = phi ptr [ %i.pp, %.lr.ph470 ], [ %.3298464.unr, %.lr.ph470.prol.loopexit ] ; 3 uses
  %.3302463 = phi ptr [ %i.pn, %.lr.ph470 ], [ %.3302463.unr, %.lr.ph470.prol.loopexit ] ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.3302463, i64 4
  %i.oy = load float, ptr %.3302463, align 4, !tbaa !61 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.3298464, i64 4
  %i.pa = load float, ptr %.3298464, align 4, !tbaa !61 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.3294465, i64 4
  %i.pc = load float, ptr %.3294465, align 4, !tbaa !61 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.3290466, i64 4
  %i.pe = load float, ptr %.3290466, align 4, !tbaa !61 ; 2 uses
  %i.pf = fmul fast float %i.pc, %i.oy
  %i.pg = fmul fast float %i.pe, %i.pa
  %i.ph = fsub fast float %i.pf, %i.pg
  %i.pi = getelementptr inbounds nuw i8, ptr %.3286467, i64 4
  store float %i.ph, ptr %.3286467, align 4, !tbaa !61
  %i.pj = fmul fast float %i.pe, %i.oy
  %i.pk = fmul fast float %i.pc, %i.pa
  %i.pl = fadd fast float %i.pj, %i.pk
  %i.pm = getelementptr inbounds nuw i8, ptr %.3282468, i64 4
end_hunk_0
begin_hunk_1_@_ZN4ncnnL17rotaryembed_bf16sERKNS_3MatES2_S2_RS0_iRKNS_6OptionE.omp_outlined:bb.a
  %i.ns = add nuw nsw i32 %.4291463, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ns, %.lcssa
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph467, !llvm.loop !115

bb.e:                                             ; preds = %bb.c
  %i.nt = load i32, ptr %9, align 4, !tbaa !25    ; 2 uses
  %i.nu = sdiv i32 %i.nt, 2                       ; 2 uses
  %i.nv = sext i32 %i.nu to i64                   ; 2 uses
  %i.nw = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.nv ; 2 uses
  %i.nx = load ptr, ptr %7, align 8, !tbaa !29
  %i.ny = load i32, ptr %i.r, align 4, !tbaa !24
  %i.nz = sext i32 %i.ny to i64
  %i.oa = mul nsw i64 %indvars.iv, %i.nz
  %i.ob = load i64, ptr %i.s, align 8, !tbaa !23
  %i.oc = mul i64 %i.oa, %i.ob
  %i.od = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.oc ; 2 uses
  %i.oe = load ptr, ptr %8, align 8, !tbaa !29
  %i.of = load i32, ptr %i.t, align 4, !tbaa !24
  %i.og = sext i32 %i.of to i64
  %i.oh = mul nsw i64 %indvars.iv, %i.og
  %i.oi = load i64, ptr %i.u, align 8, !tbaa !23
  %i.oj = mul i64 %i.oh, %i.oi
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.oj ; 2 uses
  %i.ol = mul i64 %i.as, %indvars.iv
  %i.om = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ol ; 3 uses
  %i.on = getelementptr inbounds [2 x i8], ptr %i.om, i64 %i.nv ; 2 uses
  %i.oo = icmp sgt i32 %i.nt, 31
  br i1 %i.oo, label %.lr.ph475, label %.preheader412

.preheader412:                                    ; preds = %.lr.ph475, %bb.e
  %.pre-phi = phi i32 [ %i.nu, %bb.e ], [ %i.rd, %.lr.ph475 ] ; 2 uses
  %.0268.lcssa = phi ptr [ %i.aw, %bb.e ], [ %i.qu, %.lr.ph475 ] ; 2 uses
  %.0264.lcssa = phi ptr [ %i.nw, %bb.e ], [ %i.qv, %.lr.ph475 ] ; 2 uses
  %.0260.lcssa = phi ptr [ %i.od, %bb.e ], [ %i.qw, %.lr.ph475 ] ; 2 uses
  %.0256.lcssa = phi ptr [ %i.ok, %bb.e ], [ %i.qx, %.lr.ph475 ] ; 2 uses
  %.0252.lcssa = phi ptr [ %i.om, %bb.e ], [ %i.qy, %.lr.ph475 ] ; 2 uses
  %.0248.lcssa = phi ptr [ %i.on, %bb.e ], [ %i.qz, %.lr.ph475 ] ; 2 uses
  %.0247.lcssa = phi i32 [ 0, %bb.e ], [ %i.ra, %.lr.ph475 ] ; 3 uses
  %i.op = or disjoint i32 %.0247.lcssa, 7
  %i.oq = icmp slt i32 %i.op, %.pre-phi
  br i1 %i.oq, label %.lr.ph490, label %.preheader411

.lr.ph475:                                        ; preds = %bb.e, %.lr.ph475
  %.0247474 = phi i32 [ %i.ra, %.lr.ph475 ], [ 0, %bb.e ]
  %.0248473 = phi ptr [ %i.qz, %.lr.ph475 ], [ %i.on, %bb.e ] ; 2 uses
  %.0252472 = phi ptr [ %i.qy, %.lr.ph475 ], [ %i.om, %bb.e ] ; 2 uses
  %.0256471 = phi ptr [ %i.qx, %.lr.ph475 ], [ %i.ok, %bb.e ] ; 2 uses
  %.0260470 = phi ptr [ %i.qw, %.lr.ph475 ], [ %i.od, %bb.e ] ; 2 uses
  %.0264469 = phi ptr [ %i.qv, %.lr.ph475 ], [ %i.nw, %bb.e ] ; 2 uses
  %.0268468 = phi ptr [ %i.qu, %.lr.ph475 ], [ %i.aw, %bb.e ] ; 2 uses
  %i.or = load <16 x i16>, ptr %.0268468, align 1, !tbaa !56 ; 2 uses
  %i.os = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.or, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ot = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.or, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ou = shufflevector <16 x i16> %i.os, <16 x i16> %i.ot, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ov = shufflevector <16 x i16> %i.os, <16 x i16> %i.ot, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ow = bitcast <16 x i16> %i.ou to <8 x i32>
  %i.ox = bitcast <16 x i16> %i.ov to <8 x i32>
  %i.oy = shufflevector <8 x i32> %i.ow, <8 x i32> %i.ox, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oz = bitcast <16 x i32> %i.oy to <16 x float> ; 2 uses
  %i.pa = load <16 x i16>, ptr %.0264469, align 1, !tbaa !56 ; 2 uses
  %i.pb = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.pa, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.pc = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.pa, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pd = shufflevector <16 x i16> %i.pb, <16 x i16> %i.pc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.pe = shufflevector <16 x i16> %i.pb, <16 x i16> %i.pc, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pf = bitcast <16 x i16> %i.pd to <8 x i32>
  %i.pg = bitcast <16 x i16> %i.pe to <8 x i32>
  %i.ph = shufflevector <8 x i32> %i.pf, <8 x i32> %i.pg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pi = bitcast <16 x i32> %i.ph to <16 x float> ; 2 uses
  %i.pj = load <16 x i16>, ptr %.0260470, align 1, !tbaa !56 ; 2 uses
  %i.pk = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.pj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.pl = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.pj, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pm = shufflevector <16 x i16> %i.pk, <16 x i16> %i.pl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.pn = shufflevector <16 x i16> %i.pk, <16 x i16> %i.pl, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.po = bitcast <16 x i16> %i.pm to <8 x i32>
  %i.pp = bitcast <16 x i16> %i.pn to <8 x i32>
  %i.pq = shufflevector <8 x i32> %i.po, <8 x i32> %i.pp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pr = bitcast <16 x i32> %i.pq to <16 x float> ; 2 uses
  %i.ps = load <16 x i16>, ptr %.0256471, align 1, !tbaa !56 ; 2 uses
  %i.pt = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ps, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.pu = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ps, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pv = shufflevector <16 x i16> %i.pt, <16 x i16> %i.pu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.pw = shufflevector <16 x i16> %i.pt, <16 x i16> %i.pu, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.px = bitcast <16 x i16> %i.pv to <8 x i32>
  %i.py = bitcast <16 x i16> %i.pw to <8 x i32>
  %i.pz = shufflevector <8 x i32> %i.px, <8 x i32> %i.py, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qa = bitcast <16 x i32> %i.pz to <16 x float> ; 2 uses
  %i.qb = fmul fast <16 x float> %i.pr, %i.oz
  %i.qc = fneg fast <16 x float> %i.pi
  %i.qd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.qc, <16 x float> nofpclass(nan inf) %i.qa, <16 x float> nofpclass(nan inf) %i.qb)
  %i.qe = fmul fast <16 x float> %i.pr, %i.pi
  %i.qf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oz, <16 x float> nofpclass(nan inf) %i.qa, <16 x float> nofpclass(nan inf) %i.qe)
  %i.qg = bitcast <16 x float> %i.qd to <16 x i32>
  %i.qh = lshr <16 x i32> %i.qg, splat (i32 16)   ; 2 uses
  %i.qi = shufflevector <16 x i32> %i.qh, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qj = shufflevector <16 x i32> %i.qh, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qk = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.qi, <8 x i32> %i.qj)
  %i.ql = bitcast <16 x i16> %i.qk to <4 x i64>
  %i.qm = shufflevector <4 x i64> %i.ql, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.qm, ptr %.0252472, align 1, !tbaa !56
  %i.qn = bitcast <16 x float> %i.qf to <16 x i32>
  %i.qo = lshr <16 x i32> %i.qn, splat (i32 16)   ; 2 uses
  %i.qp = shufflevector <16 x i32> %i.qo, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qq = shufflevector <16 x i32> %i.qo, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qr = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.qp, <8 x i32> %i.qq)
  %i.qs = bitcast <16 x i16> %i.qr to <4 x i64>
  %i.qt = shufflevector <4 x i64> %i.qs, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.qt, ptr %.0248473, align 1, !tbaa !56
  %i.qu = getelementptr inbounds nuw i8, ptr %.0268468, i64 32 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.0264469, i64 32 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.0260470, i64 32 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.0256471, i64 32 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.0252472, i64 32 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.0248473, i64 32 ; 2 uses
  %i.ra = add nuw nsw i32 %.0247474, 16           ; 3 uses
  %i.rb = or disjoint i32 %i.ra, 15
  %i.rc = load i32, ptr %9, align 4, !tbaa !25
  %i.rd = sdiv i32 %i.rc, 2                       ; 2 uses
  %i.re = icmp slt i32 %i.rb, %i.rd
  br i1 %i.re, label %.lr.ph475, label %.preheader412, !llvm.loop !116

.preheader411:                                    ; preds = %.lr.ph490, %.preheader412
  %.pre-phi577 = phi i32 [ %.pre-phi, %.preheader412 ], [ %i.sz, %.lr.ph490 ] ; 2 uses
  %.1269.lcssa = phi ptr [ %.0268.lcssa, %.preheader412 ], [ %i.sq, %.lr.ph490 ] ; 2 uses
  %.1265.lcssa = phi ptr [ %.0264.lcssa, %.preheader412 ], [ %i.sr, %.lr.ph490 ] ; 2 uses
  %.1261.lcssa = phi ptr [ %.0260.lcssa, %.preheader412 ], [ %i.ss, %.lr.ph490 ] ; 2 uses
  %.1257.lcssa = phi ptr [ %.0256.lcssa, %.preheader412 ], [ %i.st, %.lr.ph490 ] ; 2 uses
  %.1253.lcssa = phi ptr [ %.0252.lcssa, %.preheader412 ], [ %i.su, %.lr.ph490 ] ; 2 uses
  %.1249.lcssa = phi ptr [ %.0248.lcssa, %.preheader412 ], [ %i.sv, %.lr.ph490 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0247.lcssa, %.preheader412 ], [ %i.sw, %.lr.ph490 ] ; 3 uses
  %i.rf = or disjoint i32 %.1.lcssa, 3
  %i.rg = icmp slt i32 %i.rf, %.pre-phi577
  br i1 %i.rg, label %.lr.ph505, label %.preheader

.lr.ph490:                                        ; preds = %.preheader412, %.lr.ph490
  %.1489 = phi i32 [ %i.sw, %.lr.ph490 ], [ %.0247.lcssa, %.preheader412 ]
  %.1249488 = phi ptr [ %i.sv, %.lr.ph490 ], [ %.0248.lcssa, %.preheader412 ] ; 2 uses
  %.1253487 = phi ptr [ %i.su, %.lr.ph490 ], [ %.0252.lcssa, %.preheader412 ] ; 2 uses
  %.1257486 = phi ptr [ %i.st, %.lr.ph490 ], [ %.0256.lcssa, %.preheader412 ] ; 2 uses
  %.1261485 = phi ptr [ %i.ss, %.lr.ph490 ], [ %.0260.lcssa, %.preheader412 ] ; 2 uses
  %.1265484 = phi ptr [ %i.sr, %.lr.ph490 ], [ %.0264.lcssa, %.preheader412 ] ; 2 uses
  %.1269483 = phi ptr [ %i.sq, %.lr.ph490 ], [ %.0268.lcssa, %.preheader412 ] ; 2 uses
  %i.rh = load <8 x i16>, ptr %.1269483, align 1, !tbaa !56 ; 2 uses
  %i.ri = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rk = shufflevector <8 x i16> %i.ri, <8 x i16> %i.rj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rl = bitcast <16 x i16> %i.rk to <8 x float> ; 2 uses
  %i.rm = load <8 x i16>, ptr %.1265484, align 1, !tbaa !56 ; 2 uses
  %i.rn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ro = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rp = shufflevector <8 x i16> %i.rn, <8 x i16> %i.ro, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rq = bitcast <16 x i16> %i.rp to <8 x float> ; 2 uses
  %i.rr = load <8 x i16>, ptr %.1261485, align 1, !tbaa !56 ; 2 uses
  %i.rs = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rt = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rr, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ru = shufflevector <8 x i16> %i.rs, <8 x i16> %i.rt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rv = bitcast <16 x i16> %i.ru to <8 x float> ; 2 uses
  %i.rw = load <8 x i16>, ptr %.1257486, align 1, !tbaa !56 ; 2 uses
  %i.rx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ry = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rz = shufflevector <8 x i16> %i.rx, <8 x i16> %i.ry, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sa = bitcast <16 x i16> %i.rz to <8 x float> ; 2 uses
  %i.sb = fmul fast <8 x float> %i.rv, %i.rl
  %i.sc = fneg fast <8 x float> %i.rq
  %i.sd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.sc, <8 x float> nofpclass(nan inf) %i.sa, <8 x float> nofpclass(nan inf) %i.sb)
  %i.se = fmul fast <8 x float> %i.rv, %i.rq
  %i.sf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rl, <8 x float> nofpclass(nan inf) %i.sa, <8 x float> nofpclass(nan inf) %i.se)
  %i.sg = bitcast <8 x float> %i.sd to <8 x i32>
  %i.sh = lshr <8 x i32> %i.sg, splat (i32 16)    ; 2 uses
  %i.si = shufflevector <8 x i32> %i.sh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sj = shufflevector <8 x i32> %i.sh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.sk = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.si, <4 x i32> %i.sj)
  store <8 x i16> %i.sk, ptr %.1253487, align 1, !tbaa !56
  %i.sl = bitcast <8 x float> %i.sf to <8 x i32>
  %i.sm = lshr <8 x i32> %i.sl, splat (i32 16)    ; 2 uses
  %i.sn = shufflevector <8 x i32> %i.sm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.so = shufflevector <8 x i32> %i.sm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.sp = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.sn, <4 x i32> %i.so)
  store <8 x i16> %i.sp, ptr %.1249488, align 1, !tbaa !56
  %i.sq = getelementptr inbounds nuw i8, ptr %.1269483, i64 16 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.1265484, i64 16 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.1261485, i64 16 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.1257486, i64 16 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.1253487, i64 16 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.1249488, i64 16 ; 2 uses
  %i.sw = add nuw nsw i32 %.1489, 8               ; 3 uses
  %i.sx = or disjoint i32 %i.sw, 7
  %i.sy = load i32, ptr %9, align 4, !tbaa !25
  %i.sz = sdiv i32 %i.sy, 2                       ; 2 uses
  %i.ta = icmp slt i32 %i.sx, %i.sz
  br i1 %i.ta, label %.lr.ph490, label %.preheader411, !llvm.loop !117

.preheader:                                       ; preds = %.lr.ph505, %.preheader411
  %.2270.lcssa = phi ptr [ %.1269.lcssa, %.preheader411 ], [ %i.xj, %.lr.ph505 ] ; 7 uses
  %.2266.lcssa = phi ptr [ %.1265.lcssa, %.preheader411 ], [ %i.xk, %.lr.ph505 ] ; 7 uses
  %.2262.lcssa = phi ptr [ %.1261.lcssa, %.preheader411 ], [ %i.xl, %.lr.ph505 ] ; 7 uses
  %.2258.lcssa = phi ptr [ %.1257.lcssa, %.preheader411 ], [ %i.xm, %.lr.ph505 ] ; 7 uses
  %.2254.lcssa = phi ptr [ %.1253.lcssa, %.preheader411 ], [ %i.xn, %.lr.ph505 ] ; 7 uses
  %.2250.lcssa = phi ptr [ %.1249.lcssa, %.preheader411 ], [ %i.xo, %.lr.ph505 ] ; 7 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader411 ], [ %i.xp, %.lr.ph505 ] ; 6 uses
  %.lcssa418 = phi i32 [ %.pre-phi577, %.preheader411 ], [ %i.xs, %.lr.ph505 ] ; 3 uses
  %.2250.lcssa694 = ptrtoaddr ptr %.2250.lcssa to i64 ; 2 uses
  %.2254.lcssa695 = ptrtoaddr ptr %.2254.lcssa to i64
  %.2266.lcssa696 = ptrtoaddr ptr %.2266.lcssa to i64
  %.2270.lcssa698 = ptrtoaddr ptr %.2270.lcssa to i64
  %.2262.lcssa701 = ptrtoaddr ptr %.2262.lcssa to i64
  %.2258.lcssa704 = ptrtoaddr ptr %.2258.lcssa to i64 ; 2 uses
  %i.tb = icmp slt i32 %.2.lcssa, %.lcssa418
  br i1 %i.tb, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.tc = xor i32 %.2.lcssa, -1
  %i.td = add i32 %.lcssa418, %i.tc               ; 3 uses
  %i.te = zext i32 %i.td to i64
  %i.tf = add nuw nsw i64 %i.te, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.td, 7
  br i1 %min.iters.check, label %.lr.ph521.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %10 = insertelement <8 x i64> poison, i64 %.2254.lcssa695, i64 0 ; 2 uses
  %11 = insertelement <8 x i64> %10, i64 %.2266.lcssa696, i64 1
  %12 = insertelement <8 x i64> %11, i64 %.2270.lcssa698, i64 2
  %13 = insertelement <8 x i64> %12, i64 %.2262.lcssa701, i64 3
  %14 = insertelement <8 x i64> %13, i64 %.2258.lcssa704, i64 4
  %15 = shufflevector <8 x i64> %14, <8 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %16 = shufflevector <8 x i64> %10, <8 x i64> poison, <2 x i32> <i32 poison, i32 0>
  %17 = insertelement <2 x i64> %16, i64 %.2250.lcssa694, i64 0
  %18 = shufflevector <2 x i64> %17, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0>
  %19 = sub <8 x i64> %15, %18
  %20 = icmp ugt <8 x i64> %19, splat (i64 -64)
  %i.tg = sub i64 %.2258.lcssa704, %.2250.lcssa694
  %diff.check713.a = icmp ugt i64 %i.tg, -64
  %21 = bitcast <8 x i1> %20 to i8
  %22 = icmp ne i8 %21, 0
  %op.rdx = or i1 %22, %diff.check713.a
  br i1 %op.rdx, label %.lr.ph521.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check715 = icmp ult i32 %i.td, 31
  br i1 %min.iters.check715, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.th = and i64 %i.tf, 24
  %n.vec = and i64 %i.tf, 8589934560              ; 5 uses
  %i.ti = trunc i64 %n.vec to i32
  %i.tj = add i32 %.2.lcssa, %i.ti
  %i.tk = shl nuw nsw i64 %n.vec, 1               ; 6 uses
  %i.tl = getelementptr i8, ptr %.2250.lcssa, i64 %i.tk
  %i.tm = getelementptr i8, ptr %.2254.lcssa, i64 %i.tk
  %i.tn = getelementptr i8, ptr %.2258.lcssa, i64 %i.tk
  %i.to = getelementptr i8, ptr %.2262.lcssa, i64 %i.tk
  %i.tp = getelementptr i8, ptr %.2266.lcssa, i64 %i.tk
  %i.tq = getelementptr i8, ptr %.2270.lcssa, i64 %i.tk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.tr = shl i64 %index, 1                       ; 6 uses
  %next.gep = getelementptr i8, ptr %.2250.lcssa, i64 %i.tr
  %next.gep716 = getelementptr i8, ptr %.2254.lcssa, i64 %i.tr
  %next.gep717 = getelementptr i8, ptr %.2258.lcssa, i64 %i.tr
  %next.gep718 = getelementptr i8, ptr %.2262.lcssa, i64 %i.tr
  %next.gep719 = getelementptr i8, ptr %.2266.lcssa, i64 %i.tr
  %next.gep720 = getelementptr i8, ptr %.2270.lcssa, i64 %i.tr
  %wide.load = load <32 x i16>, ptr %next.gep720, align 2, !tbaa !99
  %i.ts = zext <32 x i16> %wide.load to <32 x i32>
  %i.tt = shl nuw <32 x i32> %i.ts, splat (i32 16)
  %i.tu = bitcast <32 x i32> %i.tt to <32 x float> ; 2 uses
  %wide.load721 = load <32 x i16>, ptr %next.gep719, align 2, !tbaa !99
  %i.tv = zext <32 x i16> %wide.load721 to <32 x i32>
  %i.tw = shl nuw <32 x i32> %i.tv, splat (i32 16)
  %i.tx = bitcast <32 x i32> %i.tw to <32 x float> ; 2 uses
  %wide.load722 = load <32 x i16>, ptr %next.gep718, align 2, !tbaa !99
  %i.ty = zext <32 x i16> %wide.load722 to <32 x i32>
  %i.tz = shl nuw <32 x i32> %i.ty, splat (i32 16)
  %i.ua = bitcast <32 x i32> %i.tz to <32 x float> ; 2 uses
  %wide.load723 = load <32 x i16>, ptr %next.gep717, align 2, !tbaa !99
  %i.ub = zext <32 x i16> %wide.load723 to <32 x i32>
  %i.uc = shl nuw <32 x i32> %i.ub, splat (i32 16)
  %i.ud = bitcast <32 x i32> %i.uc to <32 x float> ; 2 uses
  %i.ue = fmul fast <32 x float> %i.ua, %i.tu
  %i.uf = fmul fast <32 x float> %i.ud, %i.tx
  %i.ug = fsub fast <32 x float> %i.ue, %i.uf
  %i.uh = bitcast <32 x float> %i.ug to <32 x i32>
  %i.ui = lshr <32 x i32> %i.uh, splat (i32 16)
  %i.uj = trunc nuw <32 x i32> %i.ui to <32 x i16>
  store <32 x i16> %i.uj, ptr %next.gep716, align 2, !tbaa !99
  %i.uk = fmul fast <32 x float> %i.ud, %i.tu
  %i.ul = fmul fast <32 x float> %i.ua, %i.tx
  %i.um = fadd fast <32 x float> %i.uk, %i.ul
  %i.un = bitcast <32 x float> %i.um to <32 x i32>
  %i.uo = lshr <32 x i32> %i.un, splat (i32 16)
  %i.up = trunc nuw <32 x i32> %i.uo to <32 x i16>
  store <32 x i16> %i.up, ptr %next.gep, align 2, !tbaa !99
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.uq = icmp eq i64 %index.next, %n.vec
  br i1 %i.uq, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.tf, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.th, 0
  br i1 %min.epilog.iters.check, label %.lr.ph521.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec730 = and i64 %i.tf, 8589934584           ; 4 uses
  %i.ur = trunc i64 %n.vec730 to i32
  %i.us = add i32 %.2.lcssa, %i.ur
  %i.ut = shl nuw nsw i64 %n.vec730, 1            ; 6 uses
  %i.uu = getelementptr i8, ptr %.2250.lcssa, i64 %i.ut
  %i.uv = getelementptr i8, ptr %.2254.lcssa, i64 %i.ut
  %i.uw = getelementptr i8, ptr %.2258.lcssa, i64 %i.ut
  %i.ux = getelementptr i8, ptr %.2262.lcssa, i64 %i.ut
  %i.uy = getelementptr i8, ptr %.2266.lcssa, i64 %i.ut
  %i.uz = getelementptr i8, ptr %.2270.lcssa, i64 %i.ut
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index731 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next742, %vec.epilog.vector.body ] ; 2 uses
  %i.va = shl i64 %index731, 1                    ; 6 uses
  %next.gep732 = getelementptr i8, ptr %.2250.lcssa, i64 %i.va
  %next.gep733 = getelementptr i8, ptr %.2254.lcssa, i64 %i.va
  %next.gep734 = getelementptr i8, ptr %.2258.lcssa, i64 %i.va
  %next.gep735 = getelementptr i8, ptr %.2262.lcssa, i64 %i.va
  %next.gep736 = getelementptr i8, ptr %.2266.lcssa, i64 %i.va
  %next.gep737 = getelementptr i8, ptr %.2270.lcssa, i64 %i.va
  %wide.load738 = load <8 x i16>, ptr %next.gep737, align 2, !tbaa !99
  %i.vb = zext <8 x i16> %wide.load738 to <8 x i32>
  %i.vc = shl nuw <8 x i32> %i.vb, splat (i32 16)
  %i.vd = bitcast <8 x i32> %i.vc to <8 x float>  ; 2 uses
  %wide.load739 = load <8 x i16>, ptr %next.gep736, align 2, !tbaa !99
  %i.ve = zext <8 x i16> %wide.load739 to <8 x i32>
  %i.vf = shl nuw <8 x i32> %i.ve, splat (i32 16)
  %i.vg = bitcast <8 x i32> %i.vf to <8 x float>  ; 2 uses
  %wide.load740 = load <8 x i16>, ptr %next.gep735, align 2, !tbaa !99
  %i.vh = zext <8 x i16> %wide.load740 to <8 x i32>
  %i.vi = shl nuw <8 x i32> %i.vh, splat (i32 16)
  %i.vj = bitcast <8 x i32> %i.vi to <8 x float>  ; 2 uses
  %wide.load741 = load <8 x i16>, ptr %next.gep734, align 2, !tbaa !99
  %i.vk = zext <8 x i16> %wide.load741 to <8 x i32>
  %i.vl = shl nuw <8 x i32> %i.vk, splat (i32 16)
  %i.vm = bitcast <8 x i32> %i.vl to <8 x float>  ; 2 uses
  %i.vn = fmul fast <8 x float> %i.vj, %i.vd
  %i.vo = fmul fast <8 x float> %i.vm, %i.vg
  %i.vp = fsub fast <8 x float> %i.vn, %i.vo
  %i.vq = bitcast <8 x float> %i.vp to <8 x i32>
  %i.vr = lshr <8 x i32> %i.vq, splat (i32 16)
  %i.vs = trunc nuw <8 x i32> %i.vr to <8 x i16>
  store <8 x i16> %i.vs, ptr %next.gep733, align 2, !tbaa !99
  %i.vt = fmul fast <8 x float> %i.vm, %i.vd
  %i.vu = fmul fast <8 x float> %i.vj, %i.vg
  %i.vv = fadd fast <8 x float> %i.vt, %i.vu
  %i.vw = bitcast <8 x float> %i.vv to <8 x i32>
  %i.vx = lshr <8 x i32> %i.vw, splat (i32 16)
  %i.vy = trunc nuw <8 x i32> %i.vx to <8 x i16>
  store <8 x i16> %i.vy, ptr %next.gep732, align 2, !tbaa !99
  %index.next742 = add nuw i64 %index731, 8       ; 2 uses
  %i.vz = icmp eq i64 %index.next742, %n.vec730
  br i1 %i.vz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !119

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n743 = icmp eq i64 %i.tf, %n.vec730
  br i1 %cmp.n743, label %.loopexit, label %.lr.ph521.preheader

.lr.ph521.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3520.ph = phi i32 [ %.2.lcssa, %iter.check ], [ %.2.lcssa, %vector.memcheck ], [ %i.tj, %vec.epilog.iter.check ], [ %i.us, %vec.epilog.middle.block ]
  %.3251519.ph = phi ptr [ %.2250.lcssa, %iter.check ], [ %.2250.lcssa, %vector.memcheck ], [ %i.tl, %vec.epilog.iter.check ], [ %i.uu, %vec.epilog.middle.block ]
  %.3255518.ph = phi ptr [ %.2254.lcssa, %iter.check ], [ %.2254.lcssa, %vector.memcheck ], [ %i.tm, %vec.epilog.iter.check ], [ %i.uv, %vec.epilog.middle.block ]
  %.3259517.ph = phi ptr [ %.2258.lcssa, %iter.check ], [ %.2258.lcssa, %vector.memcheck ], [ %i.tn, %vec.epilog.iter.check ], [ %i.uw, %vec.epilog.middle.block ]
  %.3263516.ph = phi ptr [ %.2262.lcssa, %iter.check ], [ %.2262.lcssa, %vector.memcheck ], [ %i.to, %vec.epilog.iter.check ], [ %i.ux, %vec.epilog.middle.block ]
  %.3267515.ph = phi ptr [ %.2266.lcssa, %iter.check ], [ %.2266.lcssa, %vector.memcheck ], [ %i.tp, %vec.epilog.iter.check ], [ %i.uy, %vec.epilog.middle.block ]
  %.3271514.ph = phi ptr [ %.2270.lcssa, %iter.check ], [ %.2270.lcssa, %vector.memcheck ], [ %i.tq, %vec.epilog.iter.check ], [ %i.uz, %vec.epilog.middle.block ]
  br label %.lr.ph521

.lr.ph505:                                        ; preds = %.preheader411, %.lr.ph505
  %.2504 = phi i32 [ %i.xp, %.lr.ph505 ], [ %.1.lcssa, %.preheader411 ]
  %.2250503 = phi ptr [ %i.xo, %.lr.ph505 ], [ %.1249.lcssa, %.preheader411 ] ; 2 uses
  %.2254502 = phi ptr [ %i.xn, %.lr.ph505 ], [ %.1253.lcssa, %.preheader411 ] ; 2 uses
  %.2258501 = phi ptr [ %i.xm, %.lr.ph505 ], [ %.1257.lcssa, %.preheader411 ] ; 2 uses
  %.2262500 = phi ptr [ %i.xl, %.lr.ph505 ], [ %.1261.lcssa, %.preheader411 ] ; 2 uses
  %.2266499 = phi ptr [ %i.xk, %.lr.ph505 ], [ %.1265.lcssa, %.preheader411 ] ; 2 uses
  %.2270498 = phi ptr [ %i.xj, %.lr.ph505 ], [ %.1269.lcssa, %.preheader411 ] ; 2 uses
  %i.wa = load i64, ptr %.2270498, align 1, !tbaa !56
  %i.wb = insertelement <2 x i64> poison, i64 %i.wa, i64 0
  %i.wc = bitcast <2 x i64> %i.wb to <8 x i16>
  %i.wd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.wc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.we = bitcast <8 x i16> %i.wd to <4 x float>  ; 2 uses
  %i.wf = load i64, ptr %.2266499, align 1, !tbaa !56
  %i.wg = insertelement <2 x i64> poison, i64 %i.wf, i64 0
  %i.wh = bitcast <2 x i64> %i.wg to <8 x i16>
  %i.wi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.wh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wj = bitcast <8 x i16> %i.wi to <4 x float>  ; 2 uses
  %i.wk = load i64, ptr %.2262500, align 1, !tbaa !56
  %i.wl = insertelement <2 x i64> poison, i64 %i.wk, i64 0
  %i.wm = bitcast <2 x i64> %i.wl to <8 x i16>
  %i.wn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.wm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wo = bitcast <8 x i16> %i.wn to <4 x float>  ; 2 uses
  %i.wp = load i64, ptr %.2258501, align 1, !tbaa !56
  %i.wq = insertelement <2 x i64> poison, i64 %i.wp, i64 0
  %i.wr = bitcast <2 x i64> %i.wq to <8 x i16>
  %i.ws = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.wr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wt = bitcast <8 x i16> %i.ws to <4 x float>  ; 2 uses
  %i.wu = fmul fast <4 x float> %i.wo, %i.we
  %i.wv = fneg fast <4 x float> %i.wj
  %i.ww = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.wv, <4 x float> nofpclass(nan inf) %i.wt, <4 x float> nofpclass(nan inf) %i.wu)
  %i.wx = fmul fast <4 x float> %i.wo, %i.wj
  %i.wy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.we, <4 x float> nofpclass(nan inf) %i.wt, <4 x float> nofpclass(nan inf) %i.wx)
  %i.wz = bitcast <4 x float> %i.ww to <4 x i32>
  %i.xa = lshr <4 x i32> %i.wz, splat (i32 16)
  %i.xb = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.xa, <4 x i32> poison)
  %i.xc = bitcast <8 x i16> %i.xb to <2 x i64>
  %i.xd = extractelement <2 x i64> %i.xc, i64 0
  store i64 %i.xd, ptr %.2254502, align 1, !tbaa !56
  %i.xe = bitcast <4 x float> %i.wy to <4 x i32>
  %i.xf = lshr <4 x i32> %i.xe, splat (i32 16)
  %i.xg = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.xf, <4 x i32> poison)
  %i.xh = bitcast <8 x i16> %i.xg to <2 x i64>
  %i.xi = extractelement <2 x i64> %i.xh, i64 0
  store i64 %i.xi, ptr %.2250503, align 1, !tbaa !56
  %i.xj = getelementptr inbounds nuw i8, ptr %.2270498, i64 8 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.2266499, i64 8 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.2262500, i64 8 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.2258501, i64 8 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.2254502, i64 8 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.2250503, i64 8 ; 2 uses
  %i.xp = add nuw nsw i32 %.2504, 4               ; 3 uses
  %i.xq = or disjoint i32 %i.xp, 3
  %i.xr = load i32, ptr %9, align 4, !tbaa !25
  %i.xs = sdiv i32 %i.xr, 2                       ; 2 uses
  %i.xt = icmp slt i32 %i.xq, %i.xs
  br i1 %i.xt, label %.lr.ph505, label %.preheader, !llvm.loop !120

end_hunk_1
