Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx2?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4ncnn39transpose_pack_A_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiiS2_:bb.a
  %i.qk = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qj, <8 x i16> splat (i16 -127))
  %i.ql = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.qk, <8 x i16> splat (i16 127))
  %i.qm = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ql, <8 x i16> poison)
  %i.qn = bitcast <16 x i8> %i.qm to <4 x i32>
  %i.qo = extractelement <4 x i32> %i.qn, i64 0
  store i32 %i.qo, ptr %.13.lcssa.i, align 4, !tbaa !28
  %i.qp = getelementptr inbounds nuw i8, ptr %.13.lcssa.i, i64 4 ; 2 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %.4469.lcssa.i, i64 %i.m
  %i.qr = or disjoint i32 %.0485.lcssa.i, 1
  br label %.lr.ph693.i.prol.loopexit

.lr.ph693.i.prol.loopexit:                        ; preds = %.lr.ph693.i.prol, %.lr.ph693.i.preheader
  %.lcssa165.unr = phi ptr [ poison, %.lr.ph693.i.preheader ], [ %i.qp, %.lr.ph693.i.prol ]
  %.14692.i.unr = phi ptr [ %.13.lcssa.i, %.lr.ph693.i.preheader ], [ %i.qp, %.lr.ph693.i.prol ]
  %.5470691.i.unr = phi ptr [ %.4469.lcssa.i, %.lr.ph693.i.preheader ], [ %i.qq, %.lr.ph693.i.prol ]
  %.1486690.i.unr = phi i32 [ %.0485.lcssa.i, %.lr.ph693.i.preheader ], [ %i.qr, %.lr.ph693.i.prol ]
  %i.qs = icmp eq i32 %5, %.neg
  br i1 %i.qs, label %.loopexit634.i, label %.lr.ph693.i

.lr.ph686.i:                                      ; preds = %bb.l, %.lr.ph686.i
  %.13685.i = phi ptr [ %i.rm, %.lr.ph686.i ], [ %.8696.i, %bb.l ] ; 2 uses
  %.4469684.i = phi ptr [ %i.rn, %.lr.ph686.i ], [ %i.la, %bb.l ] ; 3 uses
  %.0485683.i = phi i32 [ %i.ro, %.lr.ph686.i ], [ 0, %bb.l ]
  %i.qt = load <4 x float>, ptr %.4469684.i, align 1, !tbaa !17
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.4469684.i, i64 %i.m
  %i.qv = load <4 x float>, ptr %i.qu, align 1, !tbaa !17
  %i.qw = fmul fast <4 x float> %i.qt, %i.qc      ; 2 uses
  %i.qx = fmul fast <4 x float> %i.qv, %i.qc      ; 2 uses
  %i.qy = shufflevector <4 x float> %i.qw, <4 x float> %i.qx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.qz = shufflevector <4 x float> %i.qw, <4 x float> %i.qx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ra = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qy)
  %i.rb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qz)
  %i.rc = fadd fast <4 x float> %i.ra, %i.qy
  %i.rd = fadd fast <4 x float> %i.rb, %i.qz
  %i.re = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rc)
  %i.rf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rd)
  %i.rg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.re, <4 x i32> %i.rf)
  %i.rh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.rg, <8 x i16> splat (i16 -127))
  %i.ri = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.rh, <8 x i16> splat (i16 127))
  %i.rj = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ri, <8 x i16> poison)
  %i.rk = bitcast <16 x i8> %i.rj to <2 x i64>
  %i.rl = extractelement <2 x i64> %i.rk, i64 0
  store i64 %i.rl, ptr %.13685.i, align 8, !tbaa !27
  %i.rm = getelementptr inbounds nuw i8, ptr %.13685.i, i64 8 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.4469684.i, i64 %.idx496.i ; 2 uses
  %i.ro = add nuw nsw i32 %.0485683.i, 2          ; 2 uses
  %i.rp = or disjoint i32 %i.ro, 1
  %i.rq = icmp slt i32 %i.rp, %5
  br i1 %i.rq, label %.lr.ph686.i, label %.preheader633.i, !llvm.loop !180

.lr.ph693.i:                                      ; preds = %.lr.ph693.i.prol.loopexit, %.lr.ph693.i
  %.14692.i = phi ptr [ %i.sp, %.lr.ph693.i ], [ %.14692.i.unr, %.lr.ph693.i.prol.loopexit ] ; 3 uses
  %.5470691.i = phi ptr [ %i.sq, %.lr.ph693.i ], [ %.5470691.i.unr, %.lr.ph693.i.prol.loopexit ] ; 2 uses
  %.1486690.i = phi i32 [ %i.sr, %.lr.ph693.i ], [ %.1486690.i.unr, %.lr.ph693.i.prol.loopexit ]
  %i.rr = load <4 x float>, ptr %.5470691.i, align 1, !tbaa !17
  %i.rs = fmul fast <4 x float> %i.rr, %i.qc      ; 2 uses
  %i.rt = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.rs)
  %i.ru = fadd fast <4 x float> %i.rt, %i.rs
  %i.rv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ru) ; 2 uses
  %i.rw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.rv, <4 x i32> %i.rv)
  %i.rx = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.rw, <8 x i16> splat (i16 -127))
  %i.ry = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.rx, <8 x i16> splat (i16 127))
  %i.rz = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ry, <8 x i16> poison)
  %i.sa = bitcast <16 x i8> %i.rz to <4 x i32>
  %i.sb = extractelement <4 x i32> %i.sa, i64 0
  store i32 %i.sb, ptr %.14692.i, align 4, !tbaa !28
  %i.sc = getelementptr inbounds nuw i8, ptr %.14692.i, i64 4
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %.5470691.i, i64 %i.m ; 2 uses
  %i.se = load <4 x float>, ptr %i.sd, align 1, !tbaa !17
  %i.sf = fmul fast <4 x float> %i.se, %i.qc      ; 2 uses
  %i.sg = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sf)
  %i.sh = fadd fast <4 x float> %i.sg, %i.sf
  %i.si = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sh) ; 2 uses
  %i.sj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.si, <4 x i32> %i.si)
  %i.sk = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.sj, <8 x i16> splat (i16 -127))
  %i.sl = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.sk, <8 x i16> splat (i16 127))
  %i.sm = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.sl, <8 x i16> poison)
  %i.sn = bitcast <16 x i8> %i.sm to <4 x i32>
  %i.so = extractelement <4 x i32> %i.sn, i64 0
  store i32 %i.so, ptr %i.sc, align 4, !tbaa !28
  %i.sp = getelementptr inbounds nuw i8, ptr %.14692.i, i64 8 ; 2 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.m
  %i.sr = add nuw nsw i32 %.1486690.i, 2          ; 2 uses
  %exitcond803.not.i.1 = icmp eq i32 %i.sr, %5
  br i1 %exitcond803.not.i.1, label %.loopexit634.i, label %.lr.ph693.i, !llvm.loop !181

.loopexit634.i:                                   ; preds = %.lr.ph693.i.prol.loopexit, %.lr.ph693.i, %.lr.ph680.i, %.lr.ph674.i, %.preheader633.i, %bb.k, %bb.j, %bb.i
  %.15.i = phi ptr [ %.8696.i, %bb.i ], [ %.13.lcssa.i, %.preheader633.i ], [ %i.nq, %.lr.ph674.i ], [ %i.pu, %.lr.ph680.i ], [ %.8696.i, %bb.k ], [ %.8696.i, %bb.j ], [ %.lcssa165.unr, %.lr.ph693.i.prol.loopexit ], [ %i.sp, %.lr.ph693.i ] ; 2 uses
  %indvars.iv.next805.i = add nuw nsw i64 %indvars.iv804.i, 4 ; 3 uses
  %i.ss = icmp slt i64 %indvars.iv.next805.i, %invariant.op.i
  br i1 %i.ss, label %bb.i, label %.preheader632.loopexit.i, !llvm.loop !182

.preheader625.loopexit.i:                         ; preds = %.loopexit628.i
  %i.st = trunc nuw nsw i64 %indvars.iv.next809.i to i32
  br label %.preheader625.i

.preheader625.i:                                  ; preds = %.preheader625.loopexit.i, %.preheader632.i
  %.2446.lcssa.i = phi i32 [ %.1445.lcssa.i, %.preheader632.i ], [ %i.st, %.preheader625.loopexit.i ] ; 2 uses
  %.16.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader632.i ], [ %.24.i, %.preheader625.loopexit.i ]
  %i.su = icmp slt i32 %.2446.lcssa.i, %3
  br i1 %i.su, label %.lr.ph762.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph762.i:                                      ; preds = %.preheader625.i
  %i.sv = sext i32 %4 to i64
  %i.sw = mul i64 %i.m, %i.sv
  %i.sx = icmp sgt i32 %5, 7
  %.idx489.i = shl i64 %i.m, 5
  %i.sy = icmp sgt i32 %5, 3                      ; 2 uses
  %.idx488.i = shl i64 %i.m, 4                    ; 2 uses
  %i.sz = trunc i64 %i.m to i32
  %i.ta = insertelement <4 x i32> poison, i32 %i.sz, i64 0
  %i.tb = shufflevector <4 x i32> %i.ta, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.tc = mul <4 x i32> %i.tb, <i32 0, i32 1, i32 2, i32 3>
  %i.td = and i32 %5, -4
  %i.te = sext i32 %.2446.lcssa.i to i64
  %i.tf = sext i32 %2 to i64
  %i.tg = sext i32 %i.d to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %xtraiter175 = and i32 %5, 1
  %lcmp.mod176.not = icmp eq i32 %xtraiter175, 0
  br label %bb.q

bb.m:                                             ; preds = %.loopexit628.i, %.lr.ph733.i
  %indvars.iv808.i = phi i64 [ %i.ks, %.lr.ph733.i ], [ %indvars.iv.next809.i, %.loopexit628.i ] ; 2 uses
  %.16732.i = phi ptr [ %.8.lcssa.i, %.lr.ph733.i ], [ %.24.i, %.loopexit628.i ] ; 7 uses
  %i.th = load ptr, ptr %0, align 8, !tbaa !14
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.ko
  %i.tj = add nsw i64 %indvars.iv808.i, %i.ku     ; 4 uses
  %i.tk = mul nsw i64 %i.tj, %i.kv
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.tk ; 4 uses
  switch i32 %i.d, label %.loopexit628.i [
    i32 8, label %bb.n
    i32 4, label %bb.o
    i32 1, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.tm = load ptr, ptr %6, align 8, !tbaa !14
  %i.tn = getelementptr [4 x i8], ptr %i.tm, i64 %i.tj ; 2 uses
  %i.to = load float, ptr %i.tn, align 4, !tbaa !30
  %i.tp = insertelement <8 x float> poison, float %i.to, i64 0
  %i.tq = shufflevector <8 x float> %i.tp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tr = getelementptr i8, ptr %i.tn, i64 4
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !30
  %i.tt = insertelement <8 x float> poison, float %i.ts, i64 0
  %i.tu = shufflevector <8 x float> %i.tt, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.kp, label %.lr.ph703.i, label %.loopexit628.i

.lr.ph703.i:                                      ; preds = %bb.n, %.lr.ph703.i
  %.17702.i = phi ptr [ %i.ur, %.lr.ph703.i ], [ %.16732.i, %bb.n ] ; 2 uses
  %.0476701.i = phi i32 [ %i.ut, %.lr.ph703.i ], [ 0, %bb.n ]
  %.0477700.i = phi ptr [ %i.us, %.lr.ph703.i ], [ %i.tl, %bb.n ] ; 3 uses
  %i.tv = load <8 x float>, ptr %.0477700.i, align 32, !tbaa !17
  %i.tw = getelementptr inbounds nuw i8, ptr %.0477700.i, i64 32
  %i.tx = load <8 x float>, ptr %i.tw, align 32, !tbaa !17
  %i.ty = fmul fast <8 x float> %i.tv, %i.tq      ; 2 uses
  %i.tz = fmul fast <8 x float> %i.tx, %i.tu      ; 2 uses
  %i.ua = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ty)
  %i.ub = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tz)
  %i.uc = fadd fast <8 x float> %i.ua, %i.ty
  %i.ud = fadd fast <8 x float> %i.ub, %i.tz
  %i.ue = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.uc)
  %i.uf = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ud)
  %i.ug = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ue, <8 x i32> %i.uf)
  %i.uh = bitcast <16 x i16> %i.ug to <4 x i64>
  %i.ui = shufflevector <4 x i64> %i.uh, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.uj = bitcast <4 x i64> %i.ui to <16 x i16>
  %i.uk = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.uj, <16 x i16> splat (i16 -127))
  %i.ul = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.uk, <16 x i16> splat (i16 127))
  %i.um = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.ul, <16 x i16> poison)
  %i.un = bitcast <32 x i8> %i.um to <8 x i32>
  %i.uo = shufflevector <8 x i32> %i.un, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.up = bitcast <4 x i32> %i.uo to <8 x i16>
  %i.uq = shufflevector <8 x i16> %i.up, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  store <8 x i16> %i.uq, ptr %.17702.i, align 16, !tbaa !17
  %i.ur = getelementptr inbounds nuw i8, ptr %.17702.i, i64 16 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.0477700.i, i64 %.idx495.i
  %i.ut = add nuw nsw i32 %.0476701.i, 8          ; 2 uses
  %i.uu = or disjoint i32 %i.ut, 7
  %i.uv = icmp slt i32 %i.uu, %5
  br i1 %i.uv, label %.lr.ph703.i, label %.loopexit628.i, !llvm.loop !183

bb.o:                                             ; preds = %bb.m
  %i.uw = load ptr, ptr %6, align 8, !tbaa !14
  %i.ux = getelementptr [4 x i8], ptr %i.uw, i64 %i.tj ; 2 uses
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !30
  %i.uz = insertelement <4 x float> poison, float %i.uy, i64 0 ; 2 uses
  %i.va = getelementptr i8, ptr %i.ux, i64 4
  %i.vb = load float, ptr %i.va, align 4, !tbaa !30
  %i.vc = insertelement <4 x float> poison, float %i.vb, i64 0 ; 2 uses
  br i1 %i.kq, label %.lr.ph709.i.preheader, label %.loopexit628.i

.lr.ph709.i.preheader:                            ; preds = %bb.o
  %i.vd = shufflevector <4 x float> %i.uz, <4 x float> %i.vc, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %i.ve = shufflevector <4 x float> %i.uz, <4 x float> %i.vc, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br label %.lr.ph709.i

.lr.ph709.i:                                      ; preds = %.lr.ph709.i.preheader, %.lr.ph709.i
  %.19708.i = phi ptr [ %i.vv, %.lr.ph709.i ], [ %.16732.i, %.lr.ph709.i.preheader ] ; 2 uses
  %.0475707.i = phi i32 [ %i.vx, %.lr.ph709.i ], [ 0, %.lr.ph709.i.preheader ]
  %.2479706.i = phi ptr [ %i.vw, %.lr.ph709.i ], [ %i.tl, %.lr.ph709.i.preheader ] ; 2 uses
  %7 = load <8 x float>, ptr %.2479706.i, align 16, !tbaa !17 ; 2 uses
  %i.vf = shufflevector <8 x float> %7, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.vg = fmul fast <4 x float> %i.vf, %i.vd      ; 2 uses
  %i.vh = shufflevector <8 x float> %7, <8 x float> poison, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.vi = fmul fast <4 x float> %i.vh, %i.ve      ; 2 uses
  %i.vj = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.vg)
  %i.vk = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.vi)
  %i.vl = fadd fast <4 x float> %i.vj, %i.vg
  %i.vm = fadd fast <4 x float> %i.vk, %i.vi
  %i.vn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vl)
  %i.vo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vm)
  %i.vp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.vn, <4 x i32> %i.vo)
  %i.vq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vp, <8 x i16> splat (i16 -127))
  %i.vr = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.vq, <8 x i16> splat (i16 127))
  %i.vs = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.vr, <8 x i16> poison)
  %i.vt = bitcast <16 x i8> %i.vs to <2 x i64>
  %i.vu = extractelement <2 x i64> %i.vt, i64 0
  store i64 %i.vu, ptr %.19708.i, align 8, !tbaa !27
  %i.vv = getelementptr inbounds nuw i8, ptr %.19708.i, i64 8 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.2479706.i, i64 %.idx494.i
  %i.vx = add nuw nsw i32 %.0475707.i, 4          ; 2 uses
  %i.vy = or disjoint i32 %i.vx, 3
  %i.vz = icmp slt i32 %i.vy, %5
  br i1 %i.vz, label %.lr.ph709.i, label %.loopexit628.i, !llvm.loop !184

bb.p:                                             ; preds = %bb.m
  %i.wa = load ptr, ptr %6, align 8, !tbaa !14
  %i.wb = getelementptr [4 x i8], ptr %i.wa, i64 %i.tj ; 2 uses
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !30 ; 2 uses
  %i.wd = getelementptr i8, ptr %i.wb, i64 4
  %i.we = load float, ptr %i.wd, align 4, !tbaa !30 ; 2 uses
  %i.wf = insertelement <4 x float> poison, float %i.wc, i64 0 ; 2 uses
  %i.wg = shufflevector <4 x float> %i.wf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wh = insertelement <4 x float> poison, float %i.we, i64 0 ; 2 uses
  %i.wi = shufflevector <4 x float> %i.wh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wj = shufflevector <4 x float> %i.wf, <4 x float> %i.wh, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.kq, label %.lr.ph715.i, label %.preheader629.i

.preheader629.i:                                  ; preds = %.lr.ph715.i, %bb.p
  %.4481.lcssa.i = phi ptr [ %i.tl, %bb.p ], [ %i.xw, %.lr.ph715.i ] ; 2 uses
  %.0471.lcssa.i = phi i32 [ 0, %bb.p ], [ %i.kr, %.lr.ph715.i ] ; 3 uses
  %.21.lcssa.i = phi ptr [ %.16732.i, %bb.p ], [ %i.xv, %.lr.ph715.i ] ; 2 uses
  %i.wk = or disjoint i32 %.0471.lcssa.i, 1
  %i.wl = icmp slt i32 %i.wk, %5
  br i1 %i.wl, label %.lr.ph722.i, label %.preheader627.i

.lr.ph715.i:                                      ; preds = %bb.p, %.lr.ph715.i
  %.21714.i = phi ptr [ %i.xv, %.lr.ph715.i ], [ %.16732.i, %bb.p ] ; 2 uses
  %.0471713.i = phi i32 [ %i.xx, %.lr.ph715.i ], [ 0, %bb.p ]
  %.4481712.i = phi ptr [ %i.xw, %.lr.ph715.i ], [ %i.tl, %bb.p ] ; 5 uses
  %i.wm = load i64, ptr %.4481712.i, align 1, !tbaa !17
  %i.wn = insertelement <2 x i64> poison, i64 %i.wm, i64 0
  %i.wo = bitcast <2 x i64> %i.wn to <4 x float>
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %.4481712.i, i64 %i.m
  %i.wq = load i64, ptr %i.wp, align 1, !tbaa !17
  %i.wr = insertelement <2 x i64> poison, i64 %i.wq, i64 0
  %i.ws = bitcast <2 x i64> %i.wr to <4 x float>
  %i.wt = getelementptr inbounds nuw i8, ptr %.4481712.i, i64 %.idx491.i
  %i.wu = load i64, ptr %i.wt, align 1, !tbaa !17
  %i.wv = insertelement <2 x i64> poison, i64 %i.wu, i64 0
  %i.ww = bitcast <2 x i64> %i.wv to <4 x float>
  %i.wx = getelementptr inbounds nuw i8, ptr %.4481712.i, i64 %.idx492.i
  %i.wy = load i64, ptr %i.wx, align 1, !tbaa !17
  %i.wz = insertelement <2 x i64> poison, i64 %i.wy, i64 0
  %i.xa = bitcast <2 x i64> %i.wz to <4 x float>
  %i.xb = shufflevector <4 x float> %i.wo, <4 x float> %i.ws, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.xc = shufflevector <4 x float> %i.ww, <4 x float> %i.xa, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.xd = shufflevector <4 x float> %i.xb, <4 x float> %i.xc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xe = shufflevector <4 x float> %i.xb, <4 x float> %i.xc, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.xf = fmul fast <4 x float> %i.wg, %i.xd      ; 2 uses
  %i.xg = fmul fast <4 x float> %i.wi, %i.xe      ; 2 uses
  %i.xh = shufflevector <4 x float> %i.xf, <4 x float> %i.xg, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.xi = shufflevector <4 x float> %i.xf, <4 x float> %i.xg, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.xj = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.xh)
  %i.xk = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.xi)
  %i.xl = fadd fast <4 x float> %i.xj, %i.xh
  %i.xm = fadd fast <4 x float> %i.xk, %i.xi
  %i.xn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xl)
  %i.xo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xm)
  %i.xp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.xn, <4 x i32> %i.xo)
  %i.xq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.xp, <8 x i16> splat (i16 -127))
  %i.xr = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.xq, <8 x i16> splat (i16 127))
  %i.xs = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.xr, <8 x i16> poison)
  %i.xt = bitcast <16 x i8> %i.xs to <2 x i64>
  %i.xu = extractelement <2 x i64> %i.xt, i64 0
  store i64 %i.xu, ptr %.21714.i, align 8, !tbaa !27
  %i.xv = getelementptr inbounds nuw i8, ptr %.21714.i, i64 8 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.4481712.i, i64 %.idx494.i ; 2 uses
  %i.xx = add nuw nsw i32 %.0471713.i, 4          ; 2 uses
  %i.xy = or disjoint i32 %i.xx, 3
  %i.xz = icmp slt i32 %i.xy, %5
  br i1 %i.xz, label %.lr.ph715.i, label %.preheader629.i, !llvm.loop !185

.preheader627.i:                                  ; preds = %.lr.ph722.i, %.preheader629.i
  %.5482.lcssa.i = phi ptr [ %.4481.lcssa.i, %.preheader629.i ], [ %i.yu, %.lr.ph722.i ]
  %.1472.lcssa.i = phi i32 [ %.0471.lcssa.i, %.preheader629.i ], [ %i.yv, %.lr.ph722.i ] ; 2 uses
  %.22.lcssa.i = phi ptr [ %.21.lcssa.i, %.preheader629.i ], [ %i.yt, %.lr.ph722.i ] ; 2 uses
  %i.ya = icmp slt i32 %.1472.lcssa.i, %5
  br i1 %i.ya, label %.lr.ph729.i, label %.loopexit628.i

.lr.ph722.i:                                      ; preds = %.preheader629.i, %.lr.ph722.i
  %.22721.i = phi ptr [ %i.yt, %.lr.ph722.i ], [ %.21.lcssa.i, %.preheader629.i ] ; 2 uses
  %.1472720.i = phi i32 [ %i.yv, %.lr.ph722.i ], [ %.0471.lcssa.i, %.preheader629.i ]
  %.5482719.i = phi ptr [ %i.yu, %.lr.ph722.i ], [ %.4481.lcssa.i, %.preheader629.i ] ; 3 uses
  %i.yb = load i64, ptr %.5482719.i, align 1, !tbaa !17
  %i.yc = insertelement <2 x i64> poison, i64 %i.yb, i64 0
  %i.yd = bitcast <2 x i64> %i.yc to <4 x float>
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %.5482719.i, i64 %i.m
  %i.yf = load i64, ptr %i.ye, align 1, !tbaa !17
  %i.yg = insertelement <2 x i64> poison, i64 %i.yf, i64 0
  %i.yh = bitcast <2 x i64> %i.yg to <4 x float>
  %i.yi = shufflevector <4 x float> %i.yd, <4 x float> %i.yh, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.yj = fmul fast <4 x float> %i.yi, %i.wj      ; 2 uses
  %i.yk = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.yj)
  %i.yl = fadd fast <4 x float> %i.yk, %i.yj
  %i.ym = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yl) ; 2 uses
  %i.yn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ym, <4 x i32> %i.ym)
  %i.yo = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yn, <8 x i16> splat (i16 -127))
  %i.yp = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.yo, <8 x i16> splat (i16 127))
  %i.yq = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.yp, <8 x i16> poison)
  %i.yr = bitcast <16 x i8> %i.yq to <4 x i32>
  %i.ys = extractelement <4 x i32> %i.yr, i64 0
  store i32 %i.ys, ptr %.22721.i, align 4, !tbaa !28
  %i.yt = getelementptr inbounds nuw i8, ptr %.22721.i, i64 4 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.5482719.i, i64 %.idx491.i ; 2 uses
  %i.yv = add nuw nsw i32 %.1472720.i, 2          ; 3 uses
  %i.yw = or disjoint i32 %i.yv, 1
  %i.yx = icmp slt i32 %i.yw, %5
  br i1 %i.yx, label %.lr.ph722.i, label %.preheader627.i, !llvm.loop !186

.lr.ph729.i:                                      ; preds = %.preheader627.i, %.lr.ph729.i
  %.23728.i = phi ptr [ %i.zi, %.lr.ph729.i ], [ %.22.lcssa.i, %.preheader627.i ] ; 3 uses
  %.2473727.i = phi i32 [ %i.zk, %.lr.ph729.i ], [ %.1472.lcssa.i, %.preheader627.i ]
  %.6483726.i = phi ptr [ %i.zj, %.lr.ph729.i ], [ %.5482.lcssa.i, %.preheader627.i ] ; 3 uses
  %i.yy = load float, ptr %.6483726.i, align 4, !tbaa !30
  %i.yz = fmul fast float %i.yy, %i.wc
  %i.za = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.yz)
  %i.zb = fptosi float %i.za to i32
  %spec.select.i504619.i = tail call i32 @llvm.smax.i32(i32 %i.zb, i32 -127)
  %.0.i505620.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i504619.i, i32 127)
  %.0.i505.i = trunc nsw i32 %.0.i505620.i to i8
  store i8 %.0.i505.i, ptr %.23728.i, align 1, !tbaa !17
  %i.zc = getelementptr inbounds nuw i8, ptr %.6483726.i, i64 4
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !30
  %i.ze = fmul fast float %i.zd, %i.we
  %i.zf = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ze)
  %i.zg = fptosi float %i.zf to i32
  %spec.select.i502621.i = tail call i32 @llvm.smax.i32(i32 %i.zg, i32 -127)
  %.0.i503622.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i502621.i, i32 127)
  %.0.i503.i = trunc nsw i32 %.0.i503622.i to i8
  %i.zh = getelementptr inbounds nuw i8, ptr %.23728.i, i64 1
  store i8 %.0.i503.i, ptr %i.zh, align 1, !tbaa !17
  %i.zi = getelementptr inbounds nuw i8, ptr %.23728.i, i64 2 ; 2 uses
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %.6483726.i, i64 %i.m
  %i.zk = add nuw nsw i32 %.2473727.i, 1          ; 2 uses
  %exitcond807.not.i = icmp eq i32 %i.zk, %5
  br i1 %exitcond807.not.i, label %.loopexit628.i, label %.lr.ph729.i, !llvm.loop !187

.loopexit628.i:                                   ; preds = %.lr.ph729.i, %.lr.ph709.i, %.lr.ph703.i, %.preheader627.i, %bb.o, %bb.n, %bb.m
  %.24.i = phi ptr [ %.16732.i, %bb.m ], [ %.22.lcssa.i, %.preheader627.i ], [ %i.ur, %.lr.ph703.i ], [ %i.vv, %.lr.ph709.i ], [ %.16732.i, %bb.o ], [ %.16732.i, %bb.n ], [ %i.zi, %.lr.ph729.i ] ; 2 uses
  %indvars.iv.next809.i = add nuw nsw i64 %indvars.iv808.i, 2 ; 3 uses
  %i.zl = icmp slt i64 %indvars.iv.next809.i, %invariant.op872.i
  br i1 %i.zl, label %bb.m, label %.preheader625.loopexit.i, !llvm.loop !188

bb.q:                                             ; preds = %.loopexit.i, %.lr.ph762.i
  %indvars.iv812.i = phi i64 [ %i.te, %.lr.ph762.i ], [ %indvars.iv.next813.i, %.loopexit.i ] ; 2 uses
  %.25761.i = phi ptr [ %.16.lcssa.i, %.lr.ph762.i ], [ %.32.i, %.loopexit.i ] ; 7 uses
  %i.zm = load ptr, ptr %0, align 8, !tbaa !14
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %i.sw
  %i.zo = add nsw i64 %indvars.iv812.i, %i.tf     ; 2 uses
  %i.zp = mul nsw i64 %i.zo, %i.tg
  %i.zq = getelementptr inbounds [4 x i8], ptr %i.zn, i64 %i.zp ; 4 uses
  %i.zr = load ptr, ptr %6, align 8, !tbaa !14
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %i.zo
  %i.zt = load float, ptr %i.zs, align 4, !tbaa !30 ; 6 uses
  switch i32 %i.d, label %.loopexit.i [
    i32 8, label %bb.r
    i32 4, label %bb.s
    i32 1, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.zu = insertelement <8 x float> poison, float %i.zt, i64 0
  %i.zv = shufflevector <8 x float> %i.zu, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.sx, label %.lr.ph739.i, label %.loopexit.i

.lr.ph739.i:                                      ; preds = %bb.r, %.lr.ph739.i
  %.26738.i = phi ptr [ %i.aak, %.lr.ph739.i ], [ %.25761.i, %bb.r ] ; 2 uses
  %.0448737.i = phi i32 [ %i.aam, %.lr.ph739.i ], [ 0, %bb.r ]
  %.0449736.i = phi ptr [ %i.aal, %.lr.ph739.i ], [ %i.zq, %bb.r ] ; 2 uses
  %i.zw = load <8 x float>, ptr %.0449736.i, align 32, !tbaa !17
  %i.zx = fmul fast <8 x float> %i.zw, %i.zv      ; 2 uses
  %i.zy = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.zx)
  %i.zz = fadd fast <8 x float> %i.zy, %i.zx
  %i.aaa = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.zz)
  %i.aab = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.aaa, <8 x i32> poison)
  %i.aac = bitcast <16 x i16> %i.aab to <8 x i32>
  %i.aad = shufflevector <8 x i32> %i.aac, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aae = bitcast <4 x i32> %i.aad to <8 x i16>
  %i.aaf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aae, <8 x i16> splat (i16 -127))
  %i.aag = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aaf, <8 x i16> splat (i16 127))
  %i.aah = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aag, <8 x i16> poison)
  %i.aai = bitcast <16 x i8> %i.aah to <2 x i64>
  %i.aaj = extractelement <2 x i64> %i.aai, i64 0
end_hunk_0
