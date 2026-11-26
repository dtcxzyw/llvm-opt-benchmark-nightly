Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/rotaryembed_x86_avx512bf16?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@_ZN4ncnnL17rotaryembed_bf16sERKNS_3MatES2_S2_RS0_iRKNS_6OptionE.omp_outlined:bb.a
  %i.jq = bitcast <2 x i32> %i.jp to <2 x float>
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.js = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.jt = fmul fast <4 x float> %i.jr, %i.js
  %i.ju = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float> nofpclass(nan inf) %i.jh, <4 x float> nofpclass(nan inf) %i.jm, <4 x float> nofpclass(nan inf) %i.jt)
  %i.jv = shufflevector <4 x float> %i.ju, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.jw = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jv)
  %i.jx = bitcast <8 x bfloat> %i.jw to <2 x i64>
  %i.jy = extractelement <2 x i64> %i.jx, i64 0
  store i64 %i.jy, ptr %.3290442, align 1, !tbaa !54
  %i.jz = getelementptr inbounds nuw i8, ptr %.3276445, i64 8 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.3290442, i64 8 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.3280444, i64 4 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.3285443, i64 4 ; 2 uses
  %i.kd = add nuw nsw i32 %.3295441, 2            ; 3 uses
  %i.ke = or disjoint i32 %i.kd, 1
  %i.kf = load i32, ptr %9, align 4, !tbaa !9
  %i.kg = sdiv i32 %i.kf, 2                       ; 2 uses
  %i.kh = icmp slt i32 %i.ke, %i.kg
  br i1 %i.kh, label %.lr.ph446, label %.preheader404, !llvm.loop !41

.lr.ph458:                                        ; preds = %.lr.ph458.preheader, %.lr.ph458
  %.4457 = phi ptr [ %i.lk, %.lr.ph458 ], [ %.4457.ph, %.lr.ph458.preheader ] ; 2 uses
  %.4281456 = phi ptr [ %i.ki, %.lr.ph458 ], [ %.4281456.ph, %.lr.ph458.preheader ] ; 2 uses
  %.4286455 = phi ptr [ %i.kk, %.lr.ph458 ], [ %.4286455.ph, %.lr.ph458.preheader ] ; 2 uses
  %.4291454 = phi ptr [ %i.ll, %.lr.ph458 ], [ %.4291454.ph, %.lr.ph458.preheader ] ; 2 uses
  %.4296453 = phi i32 [ %i.lm, %.lr.ph458 ], [ %.4296453.ph, %.lr.ph458.preheader ]
  %i.ki = getelementptr inbounds nuw i8, ptr %.4281456, i64 2
  %i.kj = load i16, ptr %.4281456, align 2, !tbaa !57
  %i.kk = getelementptr inbounds nuw i8, ptr %.4286455, i64 2
  %i.kl = load i16, ptr %.4286455, align 2, !tbaa !57
  %i.km = load <2 x i16>, ptr %.4457, align 2, !tbaa !57
  %i.kn = zext <2 x i16> %i.km to <2 x i32>
  %i.ko = shl nuw <2 x i32> %i.kn, splat (i32 16) ; 2 uses
  %i.kp = bitcast <2 x i32> %i.ko to <2 x float>
  %i.kq = zext i16 %i.kj to i32
  %i.kr = shl nuw i32 %i.kq, 16
  %i.ks = zext i16 %i.kl to i32
  %i.kt = shl nuw i32 %i.ks, 16
  %i.ku = insertelement <2 x i32> poison, i32 %i.kt, i64 0
  %i.kv = bitcast <2 x i32> %i.ku to <2 x float>
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kx = bitcast <2 x i32> %i.ko to <2 x float>
  %i.ky = shufflevector <2 x float> %i.kx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kz = fmul fast <2 x float> %i.kw, %i.ky      ; 2 uses
  %i.la = insertelement <2 x i32> poison, i32 %i.kr, i64 0
  %i.lb = bitcast <2 x i32> %i.la to <2 x float>
  %i.lc = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ld = fmul fast <2 x float> %i.lc, %i.kp      ; 2 uses
  %i.le = fsub fast <2 x float> %i.ld, %i.kz
  %i.lf = fadd fast <2 x float> %i.ld, %i.kz
  %i.lg = shufflevector <2 x float> %i.le, <2 x float> %i.lf, <2 x i32> <i32 0, i32 3>
  %i.lh = bitcast <2 x float> %i.lg to <2 x i32>
  %i.li = lshr <2 x i32> %i.lh, splat (i32 16)
  %i.lj = trunc nuw <2 x i32> %i.li to <2 x i16>
  store <2 x i16> %i.lj, ptr %.4291454, align 2, !tbaa !57
  %i.lk = getelementptr inbounds nuw i8, ptr %.4457, i64 4
  %i.ll = getelementptr inbounds nuw i8, ptr %.4291454, i64 4
  %i.lm = add nuw nsw i32 %.4296453, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.lm, %.lcssa
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph458, !llvm.loop !42

bb.e:                                             ; preds = %bb.c
  %i.ln = load i32, ptr %9, align 4, !tbaa !9     ; 2 uses
  %i.lo = sdiv i32 %i.ln, 2                       ; 2 uses
  %i.lp = sext i32 %i.lo to i64                   ; 2 uses
  %i.lq = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.lp ; 2 uses
  %i.lr = load ptr, ptr %7, align 8, !tbaa !16
  %i.ls = load i32, ptr %i.r, align 4, !tbaa !15
  %i.lt = sext i32 %i.ls to i64
  %i.lu = mul nsw i64 %indvars.iv, %i.lt
  %i.lv = load i64, ptr %i.s, align 8, !tbaa !51
  %i.lw = mul i64 %i.lu, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lw ; 2 uses
  %i.ly = load ptr, ptr %8, align 8, !tbaa !16
  %i.lz = load i32, ptr %i.t, align 4, !tbaa !15
  %i.ma = sext i32 %i.lz to i64
  %i.mb = mul nsw i64 %indvars.iv, %i.ma
  %i.mc = load i64, ptr %i.u, align 8, !tbaa !51
  %i.md = mul i64 %i.mb, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.md ; 2 uses
  %i.mf = mul i64 %i.as, %indvars.iv
  %i.mg = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.mf ; 3 uses
  %i.mh = getelementptr inbounds [2 x i8], ptr %i.mg, i64 %i.lp ; 2 uses
  %i.mi = icmp sgt i32 %i.ln, 31
  br i1 %i.mi, label %.lr.ph466, label %.preheader403

.preheader403:                                    ; preds = %.lr.ph466, %bb.e
  %.pre-phi = phi i32 [ %i.lo, %bb.e ], [ %i.nj, %.lr.ph466 ] ; 2 uses
  %.0268.lcssa = phi ptr [ %i.aw, %bb.e ], [ %i.na, %.lr.ph466 ] ; 2 uses
  %.0264.lcssa = phi ptr [ %i.lq, %bb.e ], [ %i.nb, %.lr.ph466 ] ; 2 uses
  %.0260.lcssa = phi ptr [ %i.lx, %bb.e ], [ %i.nc, %.lr.ph466 ] ; 2 uses
  %.0256.lcssa = phi ptr [ %i.me, %bb.e ], [ %i.nd, %.lr.ph466 ] ; 2 uses
  %.0252.lcssa = phi ptr [ %i.mg, %bb.e ], [ %i.ne, %.lr.ph466 ] ; 2 uses
  %.0248.lcssa = phi ptr [ %i.mh, %bb.e ], [ %i.nf, %.lr.ph466 ] ; 2 uses
  %.0247.lcssa = phi i32 [ 0, %bb.e ], [ %i.ng, %.lr.ph466 ] ; 3 uses
  %i.mj = or disjoint i32 %.0247.lcssa, 7
  %i.mk = icmp slt i32 %i.mj, %.pre-phi
  br i1 %i.mk, label %.lr.ph481, label %.preheader402

.lr.ph466:                                        ; preds = %bb.e, %.lr.ph466
  %.0247465 = phi i32 [ %i.ng, %.lr.ph466 ], [ 0, %bb.e ]
  %.0248464 = phi ptr [ %i.nf, %.lr.ph466 ], [ %i.mh, %bb.e ] ; 2 uses
  %.0252463 = phi ptr [ %i.ne, %.lr.ph466 ], [ %i.mg, %bb.e ] ; 2 uses
  %.0256462 = phi ptr [ %i.nd, %.lr.ph466 ], [ %i.me, %bb.e ] ; 2 uses
  %.0260461 = phi ptr [ %i.nc, %.lr.ph466 ], [ %i.lx, %bb.e ] ; 2 uses
  %.0264460 = phi ptr [ %i.nb, %.lr.ph466 ], [ %i.lq, %bb.e ] ; 2 uses
  %.0268459 = phi ptr [ %i.na, %.lr.ph466 ], [ %i.aw, %bb.e ] ; 2 uses
  %i.ml = load <16 x bfloat>, ptr %.0268459, align 1, !tbaa !54
  %i.mm = fpext fast <16 x bfloat> %i.ml to <16 x float> ; 2 uses
  %i.mn = load <16 x bfloat>, ptr %.0264460, align 1, !tbaa !54
  %i.mo = fpext fast <16 x bfloat> %i.mn to <16 x float> ; 2 uses
  %i.mp = load <16 x bfloat>, ptr %.0260461, align 1, !tbaa !54
  %i.mq = fpext fast <16 x bfloat> %i.mp to <16 x float> ; 2 uses
  %i.mr = load <16 x bfloat>, ptr %.0256462, align 1, !tbaa !54
  %i.ms = fpext fast <16 x bfloat> %i.mr to <16 x float> ; 2 uses
  %i.mt = fmul fast <16 x float> %i.mq, %i.mm
  %i.mu = fneg fast <16 x float> %i.mo
  %i.mv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.mu, <16 x float> nofpclass(nan inf) %i.ms, <16 x float> nofpclass(nan inf) %i.mt)
  %i.mw = fmul fast <16 x float> %i.mq, %i.mo
  %i.mx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mm, <16 x float> nofpclass(nan inf) %i.ms, <16 x float> nofpclass(nan inf) %i.mw)
  %i.my = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.mv)
  store <16 x bfloat> %i.my, ptr %.0252463, align 1, !tbaa !54
  %i.mz = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.mx)
  store <16 x bfloat> %i.mz, ptr %.0248464, align 1, !tbaa !54
  %i.na = getelementptr inbounds nuw i8, ptr %.0268459, i64 32 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.0264460, i64 32 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.0260461, i64 32 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.0256462, i64 32 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.0252463, i64 32 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.0248464, i64 32 ; 2 uses
  %i.ng = add nuw nsw i32 %.0247465, 16           ; 3 uses
  %i.nh = or disjoint i32 %i.ng, 15
  %i.ni = load i32, ptr %9, align 4, !tbaa !9
  %i.nj = sdiv i32 %i.ni, 2                       ; 2 uses
  %i.nk = icmp slt i32 %i.nh, %i.nj
  br i1 %i.nk, label %.lr.ph466, label %.preheader403, !llvm.loop !43

.preheader402:                                    ; preds = %.lr.ph481, %.preheader403
  %.pre-phi568 = phi i32 [ %.pre-phi, %.preheader403 ], [ %i.ol, %.lr.ph481 ] ; 2 uses
  %.1269.lcssa = phi ptr [ %.0268.lcssa, %.preheader403 ], [ %i.oc, %.lr.ph481 ] ; 2 uses
  %.1265.lcssa = phi ptr [ %.0264.lcssa, %.preheader403 ], [ %i.od, %.lr.ph481 ] ; 2 uses
  %.1261.lcssa = phi ptr [ %.0260.lcssa, %.preheader403 ], [ %i.oe, %.lr.ph481 ] ; 2 uses
  %.1257.lcssa = phi ptr [ %.0256.lcssa, %.preheader403 ], [ %i.of, %.lr.ph481 ] ; 2 uses
  %.1253.lcssa = phi ptr [ %.0252.lcssa, %.preheader403 ], [ %i.og, %.lr.ph481 ] ; 2 uses
  %.1249.lcssa = phi ptr [ %.0248.lcssa, %.preheader403 ], [ %i.oh, %.lr.ph481 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0247.lcssa, %.preheader403 ], [ %i.oi, %.lr.ph481 ] ; 3 uses
  %i.nl = or disjoint i32 %.1.lcssa, 3
  %i.nm = icmp slt i32 %i.nl, %.pre-phi568
  br i1 %i.nm, label %.lr.ph496, label %.preheader

.lr.ph481:                                        ; preds = %.preheader403, %.lr.ph481
  %.1480 = phi i32 [ %i.oi, %.lr.ph481 ], [ %.0247.lcssa, %.preheader403 ]
  %.1249479 = phi ptr [ %i.oh, %.lr.ph481 ], [ %.0248.lcssa, %.preheader403 ] ; 2 uses
  %.1253478 = phi ptr [ %i.og, %.lr.ph481 ], [ %.0252.lcssa, %.preheader403 ] ; 2 uses
  %.1257477 = phi ptr [ %i.of, %.lr.ph481 ], [ %.0256.lcssa, %.preheader403 ] ; 2 uses
  %.1261476 = phi ptr [ %i.oe, %.lr.ph481 ], [ %.0260.lcssa, %.preheader403 ] ; 2 uses
  %.1265475 = phi ptr [ %i.od, %.lr.ph481 ], [ %.0264.lcssa, %.preheader403 ] ; 2 uses
  %.1269474 = phi ptr [ %i.oc, %.lr.ph481 ], [ %.0268.lcssa, %.preheader403 ] ; 2 uses
  %i.nn = load <8 x bfloat>, ptr %.1269474, align 1, !tbaa !54
  %i.no = fpext fast <8 x bfloat> %i.nn to <8 x float> ; 2 uses
  %i.np = load <8 x bfloat>, ptr %.1265475, align 1, !tbaa !54
  %i.nq = fpext fast <8 x bfloat> %i.np to <8 x float> ; 2 uses
  %i.nr = load <8 x bfloat>, ptr %.1261476, align 1, !tbaa !54
  %i.ns = fpext fast <8 x bfloat> %i.nr to <8 x float> ; 2 uses
  %i.nt = load <8 x bfloat>, ptr %.1257477, align 1, !tbaa !54
  %i.nu = fpext fast <8 x bfloat> %i.nt to <8 x float> ; 2 uses
  %i.nv = fmul fast <8 x float> %i.ns, %i.no
  %i.nw = fneg fast <8 x float> %i.nq
  %i.nx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.nw, <8 x float> nofpclass(nan inf) %i.nu, <8 x float> nofpclass(nan inf) %i.nv)
  %i.ny = fmul fast <8 x float> %i.ns, %i.nq
  %i.nz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.no, <8 x float> nofpclass(nan inf) %i.nu, <8 x float> nofpclass(nan inf) %i.ny)
  %i.oa = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.nx)
  store <8 x bfloat> %i.oa, ptr %.1253478, align 1, !tbaa !54
  %i.ob = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.nz)
  store <8 x bfloat> %i.ob, ptr %.1249479, align 1, !tbaa !54
  %i.oc = getelementptr inbounds nuw i8, ptr %.1269474, i64 16 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.1265475, i64 16 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.1261476, i64 16 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.1257477, i64 16 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.1253478, i64 16 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.1249479, i64 16 ; 2 uses
  %i.oi = add nuw nsw i32 %.1480, 8               ; 3 uses
  %i.oj = or disjoint i32 %i.oi, 7
  %i.ok = load i32, ptr %9, align 4, !tbaa !9
  %i.ol = sdiv i32 %i.ok, 2                       ; 2 uses
  %i.om = icmp slt i32 %i.oj, %i.ol
  br i1 %i.om, label %.lr.ph481, label %.preheader402, !llvm.loop !44

.preheader:                                       ; preds = %.lr.ph496, %.preheader402
  %.2270.lcssa = phi ptr [ %.1269.lcssa, %.preheader402 ], [ %i.tm, %.lr.ph496 ] ; 7 uses
  %.2266.lcssa = phi ptr [ %.1265.lcssa, %.preheader402 ], [ %i.tn, %.lr.ph496 ] ; 7 uses
  %.2262.lcssa = phi ptr [ %.1261.lcssa, %.preheader402 ], [ %i.to, %.lr.ph496 ] ; 7 uses
  %.2258.lcssa = phi ptr [ %.1257.lcssa, %.preheader402 ], [ %i.tp, %.lr.ph496 ] ; 7 uses
  %.2254.lcssa = phi ptr [ %.1253.lcssa, %.preheader402 ], [ %i.tq, %.lr.ph496 ] ; 7 uses
  %.2250.lcssa = phi ptr [ %.1249.lcssa, %.preheader402 ], [ %i.tr, %.lr.ph496 ] ; 7 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader402 ], [ %i.ts, %.lr.ph496 ] ; 6 uses
  %.lcssa409 = phi i32 [ %.pre-phi568, %.preheader402 ], [ %i.tv, %.lr.ph496 ] ; 3 uses
  %.2258.lcssa706 = ptrtoaddr ptr %.2258.lcssa to i64 ; 2 uses
  %.2262.lcssa707 = ptrtoaddr ptr %.2262.lcssa to i64 ; 2 uses
  %.2270.lcssa708 = ptrtoaddr ptr %.2270.lcssa to i64 ; 2 uses
  %.2266.lcssa709 = ptrtoaddr ptr %.2266.lcssa to i64 ; 2 uses
  %.2254.lcssa710 = ptrtoaddr ptr %.2254.lcssa to i64 ; 2 uses
  %.2250.lcssa711 = ptrtoaddr ptr %.2250.lcssa to i64 ; 5 uses
  %i.on = icmp slt i32 %.2.lcssa, %.lcssa409
  br i1 %i.on, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.oo = xor i32 %.2.lcssa, -1
  %i.op = add i32 %.lcssa409, %i.oo               ; 3 uses
  %i.oq = zext i32 %i.op to i64
  %i.or = add nuw nsw i64 %i.oq, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.op, 3
  br i1 %min.iters.check, label %.lr.ph512.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.os = sub i64 %.2254.lcssa710, %.2250.lcssa711
  %i.ot = insertelement <8 x i64> poison, i64 %.2266.lcssa709, i64 0
  %i.ou = insertelement <8 x i64> %i.ot, i64 %.2270.lcssa708, i64 1
  %i.ov = insertelement <8 x i64> %i.ou, i64 %.2262.lcssa707, i64 2
  %i.ow = insertelement <8 x i64> %i.ov, i64 %.2258.lcssa706, i64 3
  %i.ox = insertelement <4 x i64> poison, i64 %.2254.lcssa710, i64 0
  %i.oy = sub i64 %.2266.lcssa709, %.2250.lcssa711
  %i.oz = sub i64 %.2270.lcssa708, %.2250.lcssa711
  %i.pa = sub i64 %.2262.lcssa707, %.2250.lcssa711
  %i.pb = insertelement <8 x i64> poison, i64 %i.os, i64 0
  %i.pc = shufflevector <4 x i64> %i.ox, <4 x i64> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pd = sub <8 x i64> %i.ow, %i.pc
  %i.pe = shufflevector <8 x i64> %i.pb, <8 x i64> %i.pd, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.pf = insertelement <8 x i64> %i.pe, i64 %i.oy, i64 5
  %i.pg = insertelement <8 x i64> %i.pf, i64 %i.oz, i64 6
  %i.ph = insertelement <8 x i64> %i.pg, i64 %i.pa, i64 7
  %i.pi = icmp ugt <8 x i64> %i.ph, splat (i64 -64)
  %i.pj = sub i64 %.2258.lcssa706, %.2250.lcssa711
  %diff.check725 = icmp ugt i64 %i.pj, -64
  %i.pk = bitcast <8 x i1> %i.pi to i8
  %i.pl = icmp ne i8 %i.pk, 0
  %op.rdx = or i1 %i.pl, %diff.check725
  br i1 %op.rdx, label %.lr.ph512.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check727 = icmp ult i32 %i.op, 31
  br i1 %min.iters.check727, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.pm = and i64 %i.or, 28
  %n.vec = and i64 %i.or, 8589934560              ; 5 uses
  %i.pn = trunc i64 %n.vec to i32
  %i.po = add i32 %.2.lcssa, %i.pn
  %i.pp = shl nuw nsw i64 %n.vec, 1               ; 6 uses
  %i.pq = getelementptr i8, ptr %.2250.lcssa, i64 %i.pp
  %i.pr = getelementptr i8, ptr %.2254.lcssa, i64 %i.pp
  %i.ps = getelementptr i8, ptr %.2258.lcssa, i64 %i.pp
  %i.pt = getelementptr i8, ptr %.2262.lcssa, i64 %i.pp
  %i.pu = getelementptr i8, ptr %.2266.lcssa, i64 %i.pp
  %i.pv = getelementptr i8, ptr %.2270.lcssa, i64 %i.pp
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.pw = shl i64 %index, 1                       ; 6 uses
  %next.gep = getelementptr i8, ptr %.2250.lcssa, i64 %i.pw
  %next.gep728 = getelementptr i8, ptr %.2254.lcssa, i64 %i.pw
  %next.gep729 = getelementptr i8, ptr %.2258.lcssa, i64 %i.pw
  %next.gep730 = getelementptr i8, ptr %.2262.lcssa, i64 %i.pw
  %next.gep731 = getelementptr i8, ptr %.2266.lcssa, i64 %i.pw
  %next.gep732 = getelementptr i8, ptr %.2270.lcssa, i64 %i.pw
  %wide.load = load <32 x i16>, ptr %next.gep732, align 2, !tbaa !57
  %i.px = zext <32 x i16> %wide.load to <32 x i32>
  %i.py = shl nuw <32 x i32> %i.px, splat (i32 16)
  %i.pz = bitcast <32 x i32> %i.py to <32 x float> ; 2 uses
  %wide.load733 = load <32 x i16>, ptr %next.gep731, align 2, !tbaa !57
  %i.qa = zext <32 x i16> %wide.load733 to <32 x i32>
  %i.qb = shl nuw <32 x i32> %i.qa, splat (i32 16)
  %i.qc = bitcast <32 x i32> %i.qb to <32 x float> ; 2 uses
  %wide.load734 = load <32 x i16>, ptr %next.gep730, align 2, !tbaa !57
  %i.qd = zext <32 x i16> %wide.load734 to <32 x i32>
  %i.qe = shl nuw <32 x i32> %i.qd, splat (i32 16)
  %i.qf = bitcast <32 x i32> %i.qe to <32 x float> ; 2 uses
  %wide.load735 = load <32 x i16>, ptr %next.gep729, align 2, !tbaa !57
  %i.qg = zext <32 x i16> %wide.load735 to <32 x i32>
  %i.qh = shl nuw <32 x i32> %i.qg, splat (i32 16)
  %i.qi = bitcast <32 x i32> %i.qh to <32 x float> ; 2 uses
  %i.qj = fmul fast <32 x float> %i.qf, %i.pz
  %i.qk = fmul fast <32 x float> %i.qi, %i.qc
  %i.ql = fsub fast <32 x float> %i.qj, %i.qk
  %i.qm = bitcast <32 x float> %i.ql to <32 x i32>
  %i.qn = lshr <32 x i32> %i.qm, splat (i32 16)
  %i.qo = trunc nuw <32 x i32> %i.qn to <32 x i16>
  store <32 x i16> %i.qo, ptr %next.gep728, align 2, !tbaa !57
  %i.qp = fmul fast <32 x float> %i.qi, %i.pz
  %i.qq = fmul fast <32 x float> %i.qf, %i.qc
  %i.qr = fadd fast <32 x float> %i.qp, %i.qq
  %i.qs = bitcast <32 x float> %i.qr to <32 x i32>
  %i.qt = lshr <32 x i32> %i.qs, splat (i32 16)
  %i.qu = trunc nuw <32 x i32> %i.qt to <32 x i16>
  store <32 x i16> %i.qu, ptr %next.gep, align 2, !tbaa !57
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.qv = icmp eq i64 %index.next, %n.vec
  br i1 %i.qv, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.or, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.pm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph512.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec736 = and i64 %i.or, 8589934588           ; 4 uses
  %i.qw = trunc i64 %n.vec736 to i32
  %i.qx = add i32 %.2.lcssa, %i.qw
  %i.qy = shl nuw nsw i64 %n.vec736, 1            ; 6 uses
  %i.qz = getelementptr i8, ptr %.2250.lcssa, i64 %i.qy
  %i.ra = getelementptr i8, ptr %.2254.lcssa, i64 %i.qy
  %i.rb = getelementptr i8, ptr %.2258.lcssa, i64 %i.qy
  %i.rc = getelementptr i8, ptr %.2262.lcssa, i64 %i.qy
  %i.rd = getelementptr i8, ptr %.2266.lcssa, i64 %i.qy
  %i.re = getelementptr i8, ptr %.2270.lcssa, i64 %i.qy
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index737 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next748, %vec.epilog.vector.body ] ; 2 uses
  %i.rf = shl i64 %index737, 1                    ; 6 uses
  %next.gep738 = getelementptr i8, ptr %.2250.lcssa, i64 %i.rf
  %next.gep739 = getelementptr i8, ptr %.2254.lcssa, i64 %i.rf
  %next.gep740 = getelementptr i8, ptr %.2258.lcssa, i64 %i.rf
  %next.gep741 = getelementptr i8, ptr %.2262.lcssa, i64 %i.rf
  %next.gep742 = getelementptr i8, ptr %.2266.lcssa, i64 %i.rf
  %next.gep743 = getelementptr i8, ptr %.2270.lcssa, i64 %i.rf
  %wide.load744 = load <4 x i16>, ptr %next.gep743, align 2, !tbaa !57
  %i.rg = zext <4 x i16> %wide.load744 to <4 x i32>
  %i.rh = shl nuw <4 x i32> %i.rg, splat (i32 16)
  %i.ri = bitcast <4 x i32> %i.rh to <4 x float>  ; 2 uses
  %wide.load745 = load <4 x i16>, ptr %next.gep742, align 2, !tbaa !57
  %i.rj = zext <4 x i16> %wide.load745 to <4 x i32>
  %i.rk = shl nuw <4 x i32> %i.rj, splat (i32 16)
  %i.rl = bitcast <4 x i32> %i.rk to <4 x float>  ; 2 uses
  %wide.load746 = load <4 x i16>, ptr %next.gep741, align 2, !tbaa !57
  %i.rm = zext <4 x i16> %wide.load746 to <4 x i32>
  %i.rn = shl nuw <4 x i32> %i.rm, splat (i32 16)
  %i.ro = bitcast <4 x i32> %i.rn to <4 x float>  ; 2 uses
  %wide.load747 = load <4 x i16>, ptr %next.gep740, align 2, !tbaa !57
  %i.rp = zext <4 x i16> %wide.load747 to <4 x i32>
  %i.rq = shl nuw <4 x i32> %i.rp, splat (i32 16)
  %i.rr = bitcast <4 x i32> %i.rq to <4 x float>  ; 2 uses
  %i.rs = fmul fast <4 x float> %i.ro, %i.ri
  %i.rt = fmul fast <4 x float> %i.rr, %i.rl
  %i.ru = fsub fast <4 x float> %i.rs, %i.rt
  %i.rv = bitcast <4 x float> %i.ru to <4 x i32>
  %i.rw = lshr <4 x i32> %i.rv, splat (i32 16)
  %i.rx = trunc nuw <4 x i32> %i.rw to <4 x i16>
  store <4 x i16> %i.rx, ptr %next.gep739, align 2, !tbaa !57
  %i.ry = fmul fast <4 x float> %i.rr, %i.ri
  %i.rz = fmul fast <4 x float> %i.ro, %i.rl
  %i.sa = fadd fast <4 x float> %i.ry, %i.rz
  %i.sb = bitcast <4 x float> %i.sa to <4 x i32>
  %i.sc = lshr <4 x i32> %i.sb, splat (i32 16)
  %i.sd = trunc nuw <4 x i32> %i.sc to <4 x i16>
  store <4 x i16> %i.sd, ptr %next.gep738, align 2, !tbaa !57
  %index.next748 = add nuw i64 %index737, 4       ; 2 uses
  %i.se = icmp eq i64 %index.next748, %n.vec736
  br i1 %i.se, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n749 = icmp eq i64 %i.or, %n.vec736
  br i1 %cmp.n749, label %.loopexit, label %.lr.ph512.preheader

.lr.ph512.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3511.ph = phi i32 [ %.2.lcssa, %iter.check ], [ %.2.lcssa, %vector.memcheck ], [ %i.po, %vec.epilog.iter.check ], [ %i.qx, %vec.epilog.middle.block ]
  %.3251510.ph = phi ptr [ %.2250.lcssa, %iter.check ], [ %.2250.lcssa, %vector.memcheck ], [ %i.pq, %vec.epilog.iter.check ], [ %i.qz, %vec.epilog.middle.block ]
  %.3255509.ph = phi ptr [ %.2254.lcssa, %iter.check ], [ %.2254.lcssa, %vector.memcheck ], [ %i.pr, %vec.epilog.iter.check ], [ %i.ra, %vec.epilog.middle.block ]
  %.3259508.ph = phi ptr [ %.2258.lcssa, %iter.check ], [ %.2258.lcssa, %vector.memcheck ], [ %i.ps, %vec.epilog.iter.check ], [ %i.rb, %vec.epilog.middle.block ]
  %.3263507.ph = phi ptr [ %.2262.lcssa, %iter.check ], [ %.2262.lcssa, %vector.memcheck ], [ %i.pt, %vec.epilog.iter.check ], [ %i.rc, %vec.epilog.middle.block ]
  %.3267506.ph = phi ptr [ %.2266.lcssa, %iter.check ], [ %.2266.lcssa, %vector.memcheck ], [ %i.pu, %vec.epilog.iter.check ], [ %i.rd, %vec.epilog.middle.block ]
  %.3271505.ph = phi ptr [ %.2270.lcssa, %iter.check ], [ %.2270.lcssa, %vector.memcheck ], [ %i.pv, %vec.epilog.iter.check ], [ %i.re, %vec.epilog.middle.block ]
  br label %.lr.ph512

.lr.ph496:                                        ; preds = %.preheader402, %.lr.ph496
  %.2495 = phi i32 [ %i.ts, %.lr.ph496 ], [ %.1.lcssa, %.preheader402 ]
  %.2250494 = phi ptr [ %i.tr, %.lr.ph496 ], [ %.1249.lcssa, %.preheader402 ] ; 2 uses
  %.2254493 = phi ptr [ %i.tq, %.lr.ph496 ], [ %.1253.lcssa, %.preheader402 ] ; 2 uses
  %.2258492 = phi ptr [ %i.tp, %.lr.ph496 ], [ %.1257.lcssa, %.preheader402 ] ; 2 uses
  %.2262491 = phi ptr [ %i.to, %.lr.ph496 ], [ %.1261.lcssa, %.preheader402 ] ; 2 uses
  %.2266490 = phi ptr [ %i.tn, %.lr.ph496 ], [ %.1265.lcssa, %.preheader402 ] ; 2 uses
  %.2270489 = phi ptr [ %i.tm, %.lr.ph496 ], [ %.1269.lcssa, %.preheader402 ] ; 2 uses
  %i.sf = load i64, ptr %.2270489, align 1, !tbaa !54
  %i.sg = insertelement <2 x i64> poison, i64 %i.sf, i64 0
  %i.sh = bitcast <2 x i64> %i.sg to <8 x i16>
  %i.si = shufflevector <8 x i16> %i.sh, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.sj = bitcast <8 x i16> %i.si to <4 x float>  ; 2 uses
  %i.sk = load i64, ptr %.2266490, align 1, !tbaa !54
  %i.sl = insertelement <2 x i64> poison, i64 %i.sk, i64 0
  %i.sm = bitcast <2 x i64> %i.sl to <8 x i16>
  %i.sn = shufflevector <8 x i16> %i.sm, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.so = bitcast <8 x i16> %i.sn to <4 x float>  ; 2 uses
  %i.sp = load i64, ptr %.2262491, align 1, !tbaa !54
  %i.sq = insertelement <2 x i64> poison, i64 %i.sp, i64 0
  %i.sr = bitcast <2 x i64> %i.sq to <8 x i16>
  %i.ss = shufflevector <8 x i16> %i.sr, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
end_hunk_0
