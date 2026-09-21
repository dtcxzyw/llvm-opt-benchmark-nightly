Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/rotaryembed_x86_avx512bf16?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@_ZN4ncnnL17rotaryembed_bf16sERKNS_3MatES2_S2_RS0_iRKNS_6OptionE.omp_outlined:bb.a
  %i.jj = shl nuw <2 x i32> %i.ji, splat (i32 16)
  %i.jk = bitcast <2 x i32> %i.jj to <2 x float>
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.jm = shufflevector <4 x float> %i.jb, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.jn = fmul fast <4 x float> %i.jl, %i.jm
  %i.jo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float> nofpclass(nan inf) %i.jb, <4 x float> nofpclass(nan inf) %i.jg, <4 x float> nofpclass(nan inf) %i.jn)
  %i.jp = shufflevector <4 x float> %i.jo, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.jq = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jp)
  %i.jr = bitcast <8 x bfloat> %i.jq to <2 x i64>
  %i.js = extractelement <2 x i64> %i.jr, i64 0
  store i64 %i.js, ptr %.3290442, align 1, !tbaa !54
  %i.jt = getelementptr inbounds nuw i8, ptr %.3276445, i64 8 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.3290442, i64 8 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.3280444, i64 4 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.3285443, i64 4 ; 2 uses
  %i.jx = add nuw nsw i32 %.3295441, 2            ; 3 uses
  %i.jy = or disjoint i32 %i.jx, 1
  %i.jz = load i32, ptr %9, align 4, !tbaa !9
  %i.ka = sdiv i32 %i.jz, 2                       ; 2 uses
  %i.kb = icmp slt i32 %i.jy, %i.ka
  br i1 %i.kb, label %.lr.ph446, label %.preheader404, !llvm.loop !41

.lr.ph458:                                        ; preds = %.lr.ph458.preheader, %.lr.ph458
  %.4457 = phi ptr [ %i.le, %.lr.ph458 ], [ %.4457.ph, %.lr.ph458.preheader ] ; 2 uses
  %.4281456 = phi ptr [ %i.kc, %.lr.ph458 ], [ %.4281456.ph, %.lr.ph458.preheader ] ; 2 uses
  %.4286455 = phi ptr [ %i.ke, %.lr.ph458 ], [ %.4286455.ph, %.lr.ph458.preheader ] ; 2 uses
  %.4291454 = phi ptr [ %i.lf, %.lr.ph458 ], [ %.4291454.ph, %.lr.ph458.preheader ] ; 2 uses
  %.4296453 = phi i32 [ %i.lg, %.lr.ph458 ], [ %.4296453.ph, %.lr.ph458.preheader ]
  %i.kc = getelementptr inbounds nuw i8, ptr %.4281456, i64 2
  %i.kd = load i16, ptr %.4281456, align 2, !tbaa !57
  %i.ke = getelementptr inbounds nuw i8, ptr %.4286455, i64 2
  %i.kf = load i16, ptr %.4286455, align 2, !tbaa !57
  %i.kg = load <2 x i16>, ptr %.4457, align 2, !tbaa !57
  %i.kh = zext <2 x i16> %i.kg to <2 x i32>
  %i.ki = shl nuw <2 x i32> %i.kh, splat (i32 16) ; 2 uses
  %i.kj = bitcast <2 x i32> %i.ki to <2 x float>
  %i.kk = zext i16 %i.kf to i32
  %i.kl = zext i16 %i.kd to i32
  %i.km = shl nuw i32 %i.kk, 16
  %i.kn = shl nuw i32 %i.kl, 16
  %i.ko = insertelement <2 x i32> poison, i32 %i.km, i64 0
  %i.kp = bitcast <2 x i32> %i.ko to <2 x float>
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = bitcast <2 x i32> %i.ki to <2 x float>
  %i.ks = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kt = fmul fast <2 x float> %i.kq, %i.ks      ; 2 uses
  %i.ku = insertelement <2 x i32> poison, i32 %i.kn, i64 0
  %i.kv = bitcast <2 x i32> %i.ku to <2 x float>
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kx = fmul fast <2 x float> %i.kw, %i.kj      ; 2 uses
  %i.ky = fsub fast <2 x float> %i.kx, %i.kt
  %i.kz = fadd fast <2 x float> %i.kx, %i.kt
  %i.la = shufflevector <2 x float> %i.ky, <2 x float> %i.kz, <2 x i32> <i32 0, i32 3>
  %i.lb = bitcast <2 x float> %i.la to <2 x i32>
  %i.lc = lshr <2 x i32> %i.lb, splat (i32 16)
  %i.ld = trunc nuw <2 x i32> %i.lc to <2 x i16>
  store <2 x i16> %i.ld, ptr %.4291454, align 2, !tbaa !57
  %i.le = getelementptr inbounds nuw i8, ptr %.4457, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %.4291454, i64 4
  %i.lg = add nuw nsw i32 %.4296453, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.lg, %.lcssa
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph458, !llvm.loop !42

bb.e:                                             ; preds = %bb.c
  %i.lh = load i32, ptr %9, align 4, !tbaa !9     ; 2 uses
  %i.li = sdiv i32 %i.lh, 2                       ; 2 uses
  %i.lj = sext i32 %i.li to i64                   ; 2 uses
  %i.lk = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.lj ; 2 uses
  %i.ll = load ptr, ptr %7, align 8, !tbaa !16
  %i.lm = load i32, ptr %i.r, align 4, !tbaa !15
  %i.ln = sext i32 %i.lm to i64
  %i.lo = mul nsw i64 %indvars.iv, %i.ln
  %i.lp = load i64, ptr %i.s, align 8, !tbaa !51
  %i.lq = mul i64 %i.lo, %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lq ; 2 uses
  %i.ls = load ptr, ptr %8, align 8, !tbaa !16
  %i.lt = load i32, ptr %i.t, align 4, !tbaa !15
  %i.lu = sext i32 %i.lt to i64
  %i.lv = mul nsw i64 %indvars.iv, %i.lu
  %i.lw = load i64, ptr %i.u, align 8, !tbaa !51
  %i.lx = mul i64 %i.lv, %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lx ; 2 uses
  %i.lz = mul i64 %i.as, %indvars.iv
  %i.ma = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.lz ; 3 uses
  %i.mb = getelementptr inbounds [2 x i8], ptr %i.ma, i64 %i.lj ; 2 uses
  %i.mc = icmp sgt i32 %i.lh, 31
  br i1 %i.mc, label %.lr.ph466, label %.preheader403

.preheader403:                                    ; preds = %.lr.ph466, %bb.e
  %.pre-phi = phi i32 [ %i.li, %bb.e ], [ %i.nd, %.lr.ph466 ] ; 2 uses
  %.0268.lcssa = phi ptr [ %i.aw, %bb.e ], [ %i.mu, %.lr.ph466 ] ; 2 uses
  %.0264.lcssa = phi ptr [ %i.lk, %bb.e ], [ %i.mv, %.lr.ph466 ] ; 2 uses
  %.0260.lcssa = phi ptr [ %i.lr, %bb.e ], [ %i.mw, %.lr.ph466 ] ; 2 uses
  %.0256.lcssa = phi ptr [ %i.ly, %bb.e ], [ %i.mx, %.lr.ph466 ] ; 2 uses
  %.0252.lcssa = phi ptr [ %i.ma, %bb.e ], [ %i.my, %.lr.ph466 ] ; 2 uses
  %.0248.lcssa = phi ptr [ %i.mb, %bb.e ], [ %i.mz, %.lr.ph466 ] ; 2 uses
  %.0247.lcssa = phi i32 [ 0, %bb.e ], [ %i.na, %.lr.ph466 ] ; 3 uses
  %i.md = or disjoint i32 %.0247.lcssa, 7
  %i.me = icmp slt i32 %i.md, %.pre-phi
  br i1 %i.me, label %.lr.ph481, label %.preheader402

.lr.ph466:                                        ; preds = %bb.e, %.lr.ph466
  %.0247465 = phi i32 [ %i.na, %.lr.ph466 ], [ 0, %bb.e ]
  %.0248464 = phi ptr [ %i.mz, %.lr.ph466 ], [ %i.mb, %bb.e ] ; 2 uses
  %.0252463 = phi ptr [ %i.my, %.lr.ph466 ], [ %i.ma, %bb.e ] ; 2 uses
  %.0256462 = phi ptr [ %i.mx, %.lr.ph466 ], [ %i.ly, %bb.e ] ; 2 uses
  %.0260461 = phi ptr [ %i.mw, %.lr.ph466 ], [ %i.lr, %bb.e ] ; 2 uses
  %.0264460 = phi ptr [ %i.mv, %.lr.ph466 ], [ %i.lk, %bb.e ] ; 2 uses
  %.0268459 = phi ptr [ %i.mu, %.lr.ph466 ], [ %i.aw, %bb.e ] ; 2 uses
  %i.mf = load <16 x bfloat>, ptr %.0268459, align 1, !tbaa !54
  %i.mg = fpext fast <16 x bfloat> %i.mf to <16 x float> ; 2 uses
  %i.mh = load <16 x bfloat>, ptr %.0264460, align 1, !tbaa !54
  %i.mi = fpext fast <16 x bfloat> %i.mh to <16 x float> ; 2 uses
  %i.mj = load <16 x bfloat>, ptr %.0260461, align 1, !tbaa !54
  %i.mk = fpext fast <16 x bfloat> %i.mj to <16 x float> ; 2 uses
  %i.ml = load <16 x bfloat>, ptr %.0256462, align 1, !tbaa !54
  %i.mm = fpext fast <16 x bfloat> %i.ml to <16 x float> ; 2 uses
  %i.mn = fmul fast <16 x float> %i.mk, %i.mg
  %i.mo = fneg fast <16 x float> %i.mi
  %i.mp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.mo, <16 x float> nofpclass(nan inf) %i.mm, <16 x float> nofpclass(nan inf) %i.mn)
  %i.mq = fmul fast <16 x float> %i.mk, %i.mi
  %i.mr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mg, <16 x float> nofpclass(nan inf) %i.mm, <16 x float> nofpclass(nan inf) %i.mq)
  %i.ms = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.mp)
  store <16 x bfloat> %i.ms, ptr %.0252463, align 1, !tbaa !54
  %i.mt = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.mr)
  store <16 x bfloat> %i.mt, ptr %.0248464, align 1, !tbaa !54
  %i.mu = getelementptr inbounds nuw i8, ptr %.0268459, i64 32 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.0264460, i64 32 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.0260461, i64 32 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.0256462, i64 32 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.0252463, i64 32 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.0248464, i64 32 ; 2 uses
  %i.na = add nuw nsw i32 %.0247465, 16           ; 3 uses
  %i.nb = or disjoint i32 %i.na, 15
  %i.nc = load i32, ptr %9, align 4, !tbaa !9
  %i.nd = sdiv i32 %i.nc, 2                       ; 2 uses
  %i.ne = icmp slt i32 %i.nb, %i.nd
  br i1 %i.ne, label %.lr.ph466, label %.preheader403, !llvm.loop !43

.preheader402:                                    ; preds = %.lr.ph481, %.preheader403
  %.pre-phi568 = phi i32 [ %.pre-phi, %.preheader403 ], [ %i.of, %.lr.ph481 ] ; 2 uses
  %.1269.lcssa = phi ptr [ %.0268.lcssa, %.preheader403 ], [ %i.nw, %.lr.ph481 ] ; 2 uses
  %.1265.lcssa = phi ptr [ %.0264.lcssa, %.preheader403 ], [ %i.nx, %.lr.ph481 ] ; 2 uses
  %.1261.lcssa = phi ptr [ %.0260.lcssa, %.preheader403 ], [ %i.ny, %.lr.ph481 ] ; 2 uses
  %.1257.lcssa = phi ptr [ %.0256.lcssa, %.preheader403 ], [ %i.nz, %.lr.ph481 ] ; 2 uses
  %.1253.lcssa = phi ptr [ %.0252.lcssa, %.preheader403 ], [ %i.oa, %.lr.ph481 ] ; 2 uses
  %.1249.lcssa = phi ptr [ %.0248.lcssa, %.preheader403 ], [ %i.ob, %.lr.ph481 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0247.lcssa, %.preheader403 ], [ %i.oc, %.lr.ph481 ] ; 3 uses
  %i.nf = or disjoint i32 %.1.lcssa, 3
  %i.ng = icmp slt i32 %i.nf, %.pre-phi568
  br i1 %i.ng, label %.lr.ph496, label %.preheader

.lr.ph481:                                        ; preds = %.preheader403, %.lr.ph481
  %.1480 = phi i32 [ %i.oc, %.lr.ph481 ], [ %.0247.lcssa, %.preheader403 ]
  %.1249479 = phi ptr [ %i.ob, %.lr.ph481 ], [ %.0248.lcssa, %.preheader403 ] ; 2 uses
  %.1253478 = phi ptr [ %i.oa, %.lr.ph481 ], [ %.0252.lcssa, %.preheader403 ] ; 2 uses
  %.1257477 = phi ptr [ %i.nz, %.lr.ph481 ], [ %.0256.lcssa, %.preheader403 ] ; 2 uses
  %.1261476 = phi ptr [ %i.ny, %.lr.ph481 ], [ %.0260.lcssa, %.preheader403 ] ; 2 uses
  %.1265475 = phi ptr [ %i.nx, %.lr.ph481 ], [ %.0264.lcssa, %.preheader403 ] ; 2 uses
  %.1269474 = phi ptr [ %i.nw, %.lr.ph481 ], [ %.0268.lcssa, %.preheader403 ] ; 2 uses
  %i.nh = load <8 x bfloat>, ptr %.1269474, align 1, !tbaa !54
  %i.ni = fpext fast <8 x bfloat> %i.nh to <8 x float> ; 2 uses
  %i.nj = load <8 x bfloat>, ptr %.1265475, align 1, !tbaa !54
  %i.nk = fpext fast <8 x bfloat> %i.nj to <8 x float> ; 2 uses
  %i.nl = load <8 x bfloat>, ptr %.1261476, align 1, !tbaa !54
  %i.nm = fpext fast <8 x bfloat> %i.nl to <8 x float> ; 2 uses
  %i.nn = load <8 x bfloat>, ptr %.1257477, align 1, !tbaa !54
  %i.no = fpext fast <8 x bfloat> %i.nn to <8 x float> ; 2 uses
  %i.np = fmul fast <8 x float> %i.nm, %i.ni
  %i.nq = fneg fast <8 x float> %i.nk
  %i.nr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.nq, <8 x float> nofpclass(nan inf) %i.no, <8 x float> nofpclass(nan inf) %i.np)
  %i.ns = fmul fast <8 x float> %i.nm, %i.nk
  %i.nt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ni, <8 x float> nofpclass(nan inf) %i.no, <8 x float> nofpclass(nan inf) %i.ns)
  %i.nu = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.nr)
  store <8 x bfloat> %i.nu, ptr %.1253478, align 1, !tbaa !54
  %i.nv = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.nt)
  store <8 x bfloat> %i.nv, ptr %.1249479, align 1, !tbaa !54
  %i.nw = getelementptr inbounds nuw i8, ptr %.1269474, i64 16 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.1265475, i64 16 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.1261476, i64 16 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.1257477, i64 16 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.1253478, i64 16 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.1249479, i64 16 ; 2 uses
  %i.oc = add nuw nsw i32 %.1480, 8               ; 3 uses
  %i.od = or disjoint i32 %i.oc, 7
  %i.oe = load i32, ptr %9, align 4, !tbaa !9
  %i.of = sdiv i32 %i.oe, 2                       ; 2 uses
  %i.og = icmp slt i32 %i.od, %i.of
  br i1 %i.og, label %.lr.ph481, label %.preheader402, !llvm.loop !44

.preheader:                                       ; preds = %.lr.ph496, %.preheader402
  %.2270.lcssa = phi ptr [ %.1269.lcssa, %.preheader402 ], [ %i.sq, %.lr.ph496 ] ; 7 uses
  %.2266.lcssa = phi ptr [ %.1265.lcssa, %.preheader402 ], [ %i.sr, %.lr.ph496 ] ; 7 uses
  %.2262.lcssa = phi ptr [ %.1261.lcssa, %.preheader402 ], [ %i.ss, %.lr.ph496 ] ; 7 uses
  %.2258.lcssa = phi ptr [ %.1257.lcssa, %.preheader402 ], [ %i.st, %.lr.ph496 ] ; 7 uses
  %.2254.lcssa = phi ptr [ %.1253.lcssa, %.preheader402 ], [ %i.su, %.lr.ph496 ] ; 7 uses
  %.2250.lcssa = phi ptr [ %.1249.lcssa, %.preheader402 ], [ %i.sv, %.lr.ph496 ] ; 7 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader402 ], [ %i.sw, %.lr.ph496 ] ; 6 uses
  %.lcssa409 = phi i32 [ %.pre-phi568, %.preheader402 ], [ %i.sz, %.lr.ph496 ] ; 3 uses
  %.2250.lcssa685 = ptrtoaddr ptr %.2250.lcssa to i64 ; 5 uses
  %.2254.lcssa686 = ptrtoaddr ptr %.2254.lcssa to i64 ; 5 uses
  %.2266.lcssa687 = ptrtoaddr ptr %.2266.lcssa to i64 ; 2 uses
  %.2270.lcssa689 = ptrtoaddr ptr %.2270.lcssa to i64 ; 2 uses
  %.2262.lcssa692 = ptrtoaddr ptr %.2262.lcssa to i64 ; 2 uses
  %.2258.lcssa695 = ptrtoaddr ptr %.2258.lcssa to i64 ; 2 uses
  %i.oh = icmp slt i32 %.2.lcssa, %.lcssa409
  br i1 %i.oh, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.oi = xor i32 %.2.lcssa, -1
  %i.oj = add i32 %.lcssa409, %i.oi               ; 3 uses
  %i.ok = zext i32 %i.oj to i64
  %i.ol = add nuw nsw i64 %i.ok, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.oj, 7
  br i1 %min.iters.check, label %.lr.ph512.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.om = sub i64 %.2254.lcssa686, %.2250.lcssa685
  %diff.check = icmp ugt i64 %i.om, -64
  %10 = sub i64 %.2266.lcssa687, %.2254.lcssa686
  %diff.check688 = icmp ugt i64 %10, -64
  %conflict.rdx = or i1 %diff.check, %diff.check688
  %11 = sub i64 %.2270.lcssa689, %.2254.lcssa686
  %diff.check690 = icmp ugt i64 %11, -64
  %conflict.rdx691 = or i1 %conflict.rdx, %diff.check690
  %i.on = sub i64 %.2262.lcssa692, %.2254.lcssa686
  %diff.check693 = icmp ugt i64 %i.on, -64
  %conflict.rdx694 = or i1 %conflict.rdx691, %diff.check693
  %i.oo = sub i64 %.2258.lcssa695, %.2254.lcssa686
  %diff.check696 = icmp ugt i64 %i.oo, -64
  %conflict.rdx697 = or i1 %conflict.rdx694, %diff.check696
  %12 = sub i64 %.2266.lcssa687, %.2250.lcssa685
  %diff.check698 = icmp ugt i64 %12, -64
  %conflict.rdx699 = or i1 %conflict.rdx697, %diff.check698
  %13 = sub i64 %.2270.lcssa689, %.2250.lcssa685
  %diff.check700 = icmp ugt i64 %13, -64
  %conflict.rdx701 = or i1 %conflict.rdx699, %diff.check700
  %i.op = sub i64 %.2262.lcssa692, %.2250.lcssa685
  %diff.check702 = icmp ugt i64 %i.op, -64
  %conflict.rdx703 = or i1 %conflict.rdx701, %diff.check702
  %14 = sub i64 %.2258.lcssa695, %.2250.lcssa685
  %diff.check704 = icmp ugt i64 %14, -64
  %conflict.rdx705 = or i1 %conflict.rdx703, %diff.check704
  br i1 %conflict.rdx705, label %.lr.ph512.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check706 = icmp ult i32 %i.oj, 31
  br i1 %min.iters.check706, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.oq = and i64 %i.ol, 24
  %n.vec = and i64 %i.ol, 8589934560              ; 5 uses
  %i.or = trunc i64 %n.vec to i32
  %i.os = add i32 %.2.lcssa, %i.or
  %i.ot = shl nuw nsw i64 %n.vec, 1               ; 6 uses
  %i.ou = getelementptr i8, ptr %.2250.lcssa, i64 %i.ot
  %i.ov = getelementptr i8, ptr %.2254.lcssa, i64 %i.ot
  %i.ow = getelementptr i8, ptr %.2258.lcssa, i64 %i.ot
  %i.ox = getelementptr i8, ptr %.2262.lcssa, i64 %i.ot
  %i.oy = getelementptr i8, ptr %.2266.lcssa, i64 %i.ot
  %i.oz = getelementptr i8, ptr %.2270.lcssa, i64 %i.ot
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.pa = shl i64 %index, 1                       ; 6 uses
  %next.gep = getelementptr i8, ptr %.2250.lcssa, i64 %i.pa
  %next.gep707 = getelementptr i8, ptr %.2254.lcssa, i64 %i.pa
  %next.gep708 = getelementptr i8, ptr %.2258.lcssa, i64 %i.pa
  %next.gep709 = getelementptr i8, ptr %.2262.lcssa, i64 %i.pa
  %next.gep710 = getelementptr i8, ptr %.2266.lcssa, i64 %i.pa
  %next.gep711 = getelementptr i8, ptr %.2270.lcssa, i64 %i.pa
  %wide.load = load <32 x i16>, ptr %next.gep711, align 2, !tbaa !57
  %i.pb = zext <32 x i16> %wide.load to <32 x i32>
  %i.pc = shl nuw <32 x i32> %i.pb, splat (i32 16)
  %i.pd = bitcast <32 x i32> %i.pc to <32 x float> ; 2 uses
  %wide.load712 = load <32 x i16>, ptr %next.gep710, align 2, !tbaa !57
  %i.pe = zext <32 x i16> %wide.load712 to <32 x i32>
  %i.pf = shl nuw <32 x i32> %i.pe, splat (i32 16)
  %i.pg = bitcast <32 x i32> %i.pf to <32 x float> ; 2 uses
  %wide.load713 = load <32 x i16>, ptr %next.gep709, align 2, !tbaa !57
  %i.ph = zext <32 x i16> %wide.load713 to <32 x i32>
  %i.pi = shl nuw <32 x i32> %i.ph, splat (i32 16)
  %i.pj = bitcast <32 x i32> %i.pi to <32 x float> ; 2 uses
  %wide.load714 = load <32 x i16>, ptr %next.gep708, align 2, !tbaa !57
  %i.pk = zext <32 x i16> %wide.load714 to <32 x i32>
  %i.pl = shl nuw <32 x i32> %i.pk, splat (i32 16)
  %i.pm = bitcast <32 x i32> %i.pl to <32 x float> ; 2 uses
  %i.pn = fmul fast <32 x float> %i.pj, %i.pd
  %i.po = fmul fast <32 x float> %i.pm, %i.pg
  %i.pp = fsub fast <32 x float> %i.pn, %i.po
  %i.pq = bitcast <32 x float> %i.pp to <32 x i32>
  %i.pr = lshr <32 x i32> %i.pq, splat (i32 16)
  %i.ps = trunc nuw <32 x i32> %i.pr to <32 x i16>
  store <32 x i16> %i.ps, ptr %next.gep707, align 2, !tbaa !57
  %i.pt = fmul fast <32 x float> %i.pm, %i.pd
  %i.pu = fmul fast <32 x float> %i.pj, %i.pg
  %i.pv = fadd fast <32 x float> %i.pt, %i.pu
  %i.pw = bitcast <32 x float> %i.pv to <32 x i32>
  %i.px = lshr <32 x i32> %i.pw, splat (i32 16)
  %i.py = trunc nuw <32 x i32> %i.px to <32 x i16>
  store <32 x i16> %i.py, ptr %next.gep, align 2, !tbaa !57
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.pz = icmp eq i64 %index.next, %n.vec
  br i1 %i.pz, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ol, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.oq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph512.preheader, label %vec.epilog.ph, !prof !65

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec721 = and i64 %i.ol, 8589934584           ; 4 uses
  %i.qa = trunc i64 %n.vec721 to i32
  %i.qb = add i32 %.2.lcssa, %i.qa
  %i.qc = shl nuw nsw i64 %n.vec721, 1            ; 6 uses
  %i.qd = getelementptr i8, ptr %.2250.lcssa, i64 %i.qc
  %i.qe = getelementptr i8, ptr %.2254.lcssa, i64 %i.qc
  %i.qf = getelementptr i8, ptr %.2258.lcssa, i64 %i.qc
  %i.qg = getelementptr i8, ptr %.2262.lcssa, i64 %i.qc
  %i.qh = getelementptr i8, ptr %.2266.lcssa, i64 %i.qc
  %i.qi = getelementptr i8, ptr %.2270.lcssa, i64 %i.qc
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index722 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next733, %vec.epilog.vector.body ] ; 2 uses
  %i.qj = shl i64 %index722, 1                    ; 6 uses
  %next.gep723 = getelementptr i8, ptr %.2250.lcssa, i64 %i.qj
  %next.gep724 = getelementptr i8, ptr %.2254.lcssa, i64 %i.qj
  %next.gep725 = getelementptr i8, ptr %.2258.lcssa, i64 %i.qj
  %next.gep726 = getelementptr i8, ptr %.2262.lcssa, i64 %i.qj
  %next.gep727 = getelementptr i8, ptr %.2266.lcssa, i64 %i.qj
  %next.gep728 = getelementptr i8, ptr %.2270.lcssa, i64 %i.qj
  %wide.load729 = load <8 x i16>, ptr %next.gep728, align 2, !tbaa !57
  %i.qk = zext <8 x i16> %wide.load729 to <8 x i32>
  %i.ql = shl nuw <8 x i32> %i.qk, splat (i32 16)
  %i.qm = bitcast <8 x i32> %i.ql to <8 x float>  ; 2 uses
  %wide.load730 = load <8 x i16>, ptr %next.gep727, align 2, !tbaa !57
  %i.qn = zext <8 x i16> %wide.load730 to <8 x i32>
  %i.qo = shl nuw <8 x i32> %i.qn, splat (i32 16)
  %i.qp = bitcast <8 x i32> %i.qo to <8 x float>  ; 2 uses
  %wide.load731 = load <8 x i16>, ptr %next.gep726, align 2, !tbaa !57
  %i.qq = zext <8 x i16> %wide.load731 to <8 x i32>
  %i.qr = shl nuw <8 x i32> %i.qq, splat (i32 16)
  %i.qs = bitcast <8 x i32> %i.qr to <8 x float>  ; 2 uses
  %wide.load732 = load <8 x i16>, ptr %next.gep725, align 2, !tbaa !57
  %i.qt = zext <8 x i16> %wide.load732 to <8 x i32>
  %i.qu = shl nuw <8 x i32> %i.qt, splat (i32 16)
  %i.qv = bitcast <8 x i32> %i.qu to <8 x float>  ; 2 uses
  %i.qw = fmul fast <8 x float> %i.qs, %i.qm
  %i.qx = fmul fast <8 x float> %i.qv, %i.qp
  %i.qy = fsub fast <8 x float> %i.qw, %i.qx
  %i.qz = bitcast <8 x float> %i.qy to <8 x i32>
  %i.ra = lshr <8 x i32> %i.qz, splat (i32 16)
  %i.rb = trunc nuw <8 x i32> %i.ra to <8 x i16>
  store <8 x i16> %i.rb, ptr %next.gep724, align 2, !tbaa !57
  %i.rc = fmul fast <8 x float> %i.qv, %i.qm
  %i.rd = fmul fast <8 x float> %i.qs, %i.qp
  %i.re = fadd fast <8 x float> %i.rc, %i.rd
  %i.rf = bitcast <8 x float> %i.re to <8 x i32>
  %i.rg = lshr <8 x i32> %i.rf, splat (i32 16)
  %i.rh = trunc nuw <8 x i32> %i.rg to <8 x i16>
  store <8 x i16> %i.rh, ptr %next.gep723, align 2, !tbaa !57
  %index.next733 = add nuw i64 %index722, 8       ; 2 uses
  %i.ri = icmp eq i64 %index.next733, %n.vec721
  br i1 %i.ri, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n734 = icmp eq i64 %i.ol, %n.vec721
  br i1 %cmp.n734, label %.loopexit, label %.lr.ph512.preheader

.lr.ph512.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3511.ph = phi i32 [ %.2.lcssa, %iter.check ], [ %.2.lcssa, %vector.memcheck ], [ %i.os, %vec.epilog.iter.check ], [ %i.qb, %vec.epilog.middle.block ]
  %.3251510.ph = phi ptr [ %.2250.lcssa, %iter.check ], [ %.2250.lcssa, %vector.memcheck ], [ %i.ou, %vec.epilog.iter.check ], [ %i.qd, %vec.epilog.middle.block ]
  %.3255509.ph = phi ptr [ %.2254.lcssa, %iter.check ], [ %.2254.lcssa, %vector.memcheck ], [ %i.ov, %vec.epilog.iter.check ], [ %i.qe, %vec.epilog.middle.block ]
  %.3259508.ph = phi ptr [ %.2258.lcssa, %iter.check ], [ %.2258.lcssa, %vector.memcheck ], [ %i.ow, %vec.epilog.iter.check ], [ %i.qf, %vec.epilog.middle.block ]
  %.3263507.ph = phi ptr [ %.2262.lcssa, %iter.check ], [ %.2262.lcssa, %vector.memcheck ], [ %i.ox, %vec.epilog.iter.check ], [ %i.qg, %vec.epilog.middle.block ]
  %.3267506.ph = phi ptr [ %.2266.lcssa, %iter.check ], [ %.2266.lcssa, %vector.memcheck ], [ %i.oy, %vec.epilog.iter.check ], [ %i.qh, %vec.epilog.middle.block ]
  %.3271505.ph = phi ptr [ %.2270.lcssa, %iter.check ], [ %.2270.lcssa, %vector.memcheck ], [ %i.oz, %vec.epilog.iter.check ], [ %i.qi, %vec.epilog.middle.block ]
  br label %.lr.ph512

.lr.ph496:                                        ; preds = %.preheader402, %.lr.ph496
  %.2495 = phi i32 [ %i.sw, %.lr.ph496 ], [ %.1.lcssa, %.preheader402 ]
  %.2250494 = phi ptr [ %i.sv, %.lr.ph496 ], [ %.1249.lcssa, %.preheader402 ] ; 2 uses
  %.2254493 = phi ptr [ %i.su, %.lr.ph496 ], [ %.1253.lcssa, %.preheader402 ] ; 2 uses
  %.2258492 = phi ptr [ %i.st, %.lr.ph496 ], [ %.1257.lcssa, %.preheader402 ] ; 2 uses
  %.2262491 = phi ptr [ %i.ss, %.lr.ph496 ], [ %.1261.lcssa, %.preheader402 ] ; 2 uses
  %.2266490 = phi ptr [ %i.sr, %.lr.ph496 ], [ %.1265.lcssa, %.preheader402 ] ; 2 uses
  %.2270489 = phi ptr [ %i.sq, %.lr.ph496 ], [ %.1269.lcssa, %.preheader402 ] ; 2 uses
  %i.rj = load i64, ptr %.2270489, align 1, !tbaa !54
  %i.rk = insertelement <2 x i64> poison, i64 %i.rj, i64 0
  %i.rl = bitcast <2 x i64> %i.rk to <8 x i16>
  %i.rm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rn = bitcast <8 x i16> %i.rm to <4 x float>  ; 2 uses
  %i.ro = load i64, ptr %.2266490, align 1, !tbaa !54
  %i.rp = insertelement <2 x i64> poison, i64 %i.ro, i64 0
  %i.rq = bitcast <2 x i64> %i.rp to <8 x i16>
  %i.rr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rs = bitcast <8 x i16> %i.rr to <4 x float>  ; 2 uses
  %i.rt = load i64, ptr %.2262491, align 1, !tbaa !54
  %i.ru = insertelement <2 x i64> poison, i64 %i.rt, i64 0
  %i.rv = bitcast <2 x i64> %i.ru to <8 x i16>
  %i.rw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rx = bitcast <8 x i16> %i.rw to <4 x float>  ; 2 uses
  %i.ry = load i64, ptr %.2258492, align 1, !tbaa !54
  %i.rz = insertelement <2 x i64> poison, i64 %i.ry, i64 0
  %i.sa = bitcast <2 x i64> %i.rz to <8 x i16>
  %i.sb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sc = bitcast <8 x i16> %i.sb to <4 x float>  ; 2 uses
  %i.sd = fmul fast <4 x float> %i.rx, %i.rn
  %i.se = fneg fast <4 x float> %i.rs
  %i.sf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.se, <4 x float> nofpclass(nan inf) %i.sc, <4 x float> nofpclass(nan inf) %i.sd)
  %i.sg = fmul fast <4 x float> %i.rx, %i.rs
  %i.sh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rn, <4 x float> nofpclass(nan inf) %i.sc, <4 x float> nofpclass(nan inf) %i.sg)
  %i.si = shufflevector <4 x float> %i.sf, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.sj = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.si)
  %i.sk = bitcast <8 x bfloat> %i.sj to <2 x i64>
  %i.sl = extractelement <2 x i64> %i.sk, i64 0
  store i64 %i.sl, ptr %.2254493, align 1, !tbaa !54
  %i.sm = shufflevector <4 x float> %i.sh, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.sn = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.sm)
  %i.so = bitcast <8 x bfloat> %i.sn to <2 x i64>
  %i.sp = extractelement <2 x i64> %i.so, i64 0
  store i64 %i.sp, ptr %.2250494, align 1, !tbaa !54
  %i.sq = getelementptr inbounds nuw i8, ptr %.2270489, i64 8 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.2266490, i64 8 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.2262491, i64 8 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.2258492, i64 8 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.2254493, i64 8 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.2250494, i64 8 ; 2 uses
  %i.sw = add nuw nsw i32 %.2495, 4               ; 3 uses
  %i.sx = or disjoint i32 %i.sw, 3
  %i.sy = load i32, ptr %9, align 4, !tbaa !9
  %i.sz = sdiv i32 %i.sy, 2                       ; 2 uses
  %i.ta = icmp slt i32 %i.sx, %i.sz
  br i1 %i.ta, label %.lr.ph496, label %.preheader, !llvm.loop !47

.lr.ph512:                                        ; preds = %.lr.ph512.preheader, %.lr.ph512
  %.3511 = phi i32 [ %i.uj, %.lr.ph512 ], [ %.3511.ph, %.lr.ph512.preheader ]
end_hunk_0
