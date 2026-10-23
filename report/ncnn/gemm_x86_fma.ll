Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_fma?download=true
inline.NumInlined: 233
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 134
loop-unroll.NumUnrolled: 138
begin_hunk_0_@_ZN4ncnnL30transpose_pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  %i.rl = icmp slt i32 %.0506.lcssa.i, %5
  br i1 %i.rl, label %.lr.ph732.i.preheader, label %.loopexit666.i

.lr.ph732.i.preheader:                            ; preds = %.preheader665.i
  %.neg = or disjoint i32 %.0506.lcssa.i, 1
  br i1 %lcmp.mod.not, label %.lr.ph732.i.prol.loopexit, label %.lr.ph732.i.prol

.lr.ph732.i.prol:                                 ; preds = %.lr.ph732.i.preheader
  %i.rm = load <4 x float>, ptr %.4490.lcssa.i, align 1, !tbaa !89
  %i.rn = fmul fast <4 x float> %i.rm, %i.rk      ; 2 uses
  %i.ro = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.rn)
  %i.rp = fadd fast <4 x float> %i.ro, %i.rn
  %i.rq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rp)
  %i.rr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.rq, <4 x i32> poison)
  %i.rs = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.rr, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.rt = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.rs, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.ru = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.rt, <8 x i16> poison)
  %i.rv = bitcast <16 x i8> %i.ru to <4 x i32>
  %i.rw = extractelement <4 x i32> %i.rv, i64 0
  store i32 %i.rw, ptr %.12.lcssa.i, align 4, !tbaa !50
  %i.rx = getelementptr inbounds nuw i8, ptr %.12.lcssa.i, i64 4 ; 2 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %.4490.lcssa.i, i64 %i.n
  %i.rz = or disjoint i32 %.0506.lcssa.i, 1
  br label %.lr.ph732.i.prol.loopexit

.lr.ph732.i.prol.loopexit:                        ; preds = %.lr.ph732.i.prol, %.lr.ph732.i.preheader
  %.lcssa170.unr = phi ptr [ poison, %.lr.ph732.i.preheader ], [ %i.rx, %.lr.ph732.i.prol ]
  %.13731.i.unr = phi ptr [ %.12.lcssa.i, %.lr.ph732.i.preheader ], [ %i.rx, %.lr.ph732.i.prol ]
  %.5491730.i.unr = phi ptr [ %.4490.lcssa.i, %.lr.ph732.i.preheader ], [ %i.ry, %.lr.ph732.i.prol ]
  %.1507729.i.unr = phi i32 [ %.0506.lcssa.i, %.lr.ph732.i.preheader ], [ %i.rz, %.lr.ph732.i.prol ]
  %i.sa = icmp eq i32 %5, %.neg
  br i1 %i.sa, label %.loopexit666.i, label %.lr.ph732.i

.lr.ph725.i:                                      ; preds = %bb.n, %.lr.ph725.i
  %.12724.i = phi ptr [ %i.su, %.lr.ph725.i ], [ %.7735.i, %bb.n ] ; 2 uses
  %.4490723.i = phi ptr [ %i.sv, %.lr.ph725.i ], [ %i.mg, %bb.n ] ; 3 uses
  %.0506722.i = phi i32 [ %i.sw, %.lr.ph725.i ], [ 0, %bb.n ]
  %i.sb = load <4 x float>, ptr %.4490723.i, align 1, !tbaa !89
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %.4490723.i, i64 %i.n
  %i.sd = load <4 x float>, ptr %i.sc, align 1, !tbaa !89
  %i.se = fmul fast <4 x float> %i.sb, %i.rk      ; 2 uses
  %i.sf = fmul fast <4 x float> %i.sd, %i.rk      ; 2 uses
  %i.sg = shufflevector <4 x float> %i.se, <4 x float> %i.sf, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.sh = shufflevector <4 x float> %i.se, <4 x float> %i.sf, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.si = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sg)
  %i.sj = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sh)
  %i.sk = fadd fast <4 x float> %i.si, %i.sg
  %i.sl = fadd fast <4 x float> %i.sj, %i.sh
  %i.sm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sk)
  %i.sn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sl)
  %i.so = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.sm, <4 x i32> %i.sn)
  %i.sp = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.so, <8 x i16> splat (i16 -127))
  %i.sq = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.sp, <8 x i16> splat (i16 127))
  %i.sr = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.sq, <8 x i16> poison)
  %i.ss = bitcast <16 x i8> %i.sr to <2 x i64>
  %i.st = extractelement <2 x i64> %i.ss, i64 0
  store i64 %i.st, ptr %.12724.i, align 8, !tbaa !109
  %i.su = getelementptr inbounds nuw i8, ptr %.12724.i, i64 8 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.4490723.i, i64 %.idx520.i ; 2 uses
  %i.sw = add nuw nsw i32 %.0506722.i, 2          ; 2 uses
  %i.sx = or disjoint i32 %i.sw, 1
  %i.sy = icmp slt i32 %i.sx, %5
  br i1 %i.sy, label %.lr.ph725.i, label %.preheader665.i, !llvm.loop !892

.lr.ph732.i:                                      ; preds = %.lr.ph732.i.prol.loopexit, %.lr.ph732.i
  %.13731.i = phi ptr [ %i.tx, %.lr.ph732.i ], [ %.13731.i.unr, %.lr.ph732.i.prol.loopexit ] ; 3 uses
  %.5491730.i = phi ptr [ %i.ty, %.lr.ph732.i ], [ %.5491730.i.unr, %.lr.ph732.i.prol.loopexit ] ; 2 uses
  %.1507729.i = phi i32 [ %i.tz, %.lr.ph732.i ], [ %.1507729.i.unr, %.lr.ph732.i.prol.loopexit ]
  %i.sz = load <4 x float>, ptr %.5491730.i, align 1, !tbaa !89
  %i.ta = fmul fast <4 x float> %i.sz, %i.rk      ; 2 uses
  %i.tb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ta)
  %i.tc = fadd fast <4 x float> %i.tb, %i.ta
  %i.td = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.tc)
  %i.te = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.td, <4 x i32> poison)
  %i.tf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.te, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.tg = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.tf, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.th = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.tg, <8 x i16> poison)
  %i.ti = bitcast <16 x i8> %i.th to <4 x i32>
  %i.tj = extractelement <4 x i32> %i.ti, i64 0
  store i32 %i.tj, ptr %.13731.i, align 4, !tbaa !50
  %i.tk = getelementptr inbounds nuw i8, ptr %.13731.i, i64 4
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %.5491730.i, i64 %i.n ; 2 uses
  %i.tm = load <4 x float>, ptr %i.tl, align 1, !tbaa !89
  %i.tn = fmul fast <4 x float> %i.tm, %i.rk      ; 2 uses
  %i.to = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.tn)
  %i.tp = fadd fast <4 x float> %i.to, %i.tn
  %i.tq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.tp)
  %i.tr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.tq, <4 x i32> poison)
  %i.ts = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tr, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.tt = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ts, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.tu = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.tt, <8 x i16> poison)
  %i.tv = bitcast <16 x i8> %i.tu to <4 x i32>
  %i.tw = extractelement <4 x i32> %i.tv, i64 0
  store i32 %i.tw, ptr %i.tk, align 4, !tbaa !50
  %i.tx = getelementptr inbounds nuw i8, ptr %.13731.i, i64 8 ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %i.n
  %i.tz = add nuw nsw i32 %.1507729.i, 2          ; 2 uses
  %exitcond845.not.i.1 = icmp eq i32 %i.tz, %5
  br i1 %exitcond845.not.i.1, label %.loopexit666.i, label %.lr.ph732.i, !llvm.loop !893

.loopexit666.i:                                   ; preds = %.lr.ph732.i.prol.loopexit, %.lr.ph732.i, %.lr.ph719.i, %.lr.ph713.i, %.preheader665.i, %bb.m, %bb.l, %bb.k
  %.14.i = phi ptr [ %.7735.i, %bb.k ], [ %.12.lcssa.i, %.preheader665.i ], [ %i.oy, %.lr.ph713.i ], [ %i.rc, %.lr.ph719.i ], [ %.7735.i, %bb.m ], [ %.7735.i, %bb.l ], [ %.lcssa170.unr, %.lr.ph732.i.prol.loopexit ], [ %i.tx, %.lr.ph732.i ] ; 2 uses
  %indvars.iv.next847.i = add nuw nsw i64 %indvars.iv846.i, 4 ; 3 uses
  %i.ua = icmp slt i64 %indvars.iv.next847.i, %invariant.op.i
  br i1 %i.ua, label %bb.k, label %.preheader664.loopexit.i, !llvm.loop !894

.preheader657.loopexit.i:                         ; preds = %.loopexit660.i
  %i.ub = trunc nuw nsw i64 %indvars.iv.next851.i to i32
  br label %.preheader657.i

.preheader657.i:                                  ; preds = %.preheader657.loopexit.i, %.preheader664.i
  %.2466.lcssa.i = phi i32 [ %.1465.lcssa.i, %.preheader664.i ], [ %i.ub, %.preheader657.loopexit.i ] ; 2 uses
  %.15.lcssa.i = phi ptr [ %.7.lcssa.i, %.preheader664.i ], [ %.23.i, %.preheader657.loopexit.i ]
  %i.uc = icmp slt i32 %.2466.lcssa.i, %3
  br i1 %i.uc, label %.lr.ph801.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph801.i:                                      ; preds = %.preheader657.i
  %i.ud = sext i32 %4 to i64
  %i.ue = mul i64 %i.n, %i.ud
  %i.uf = icmp sgt i32 %5, 7
  %.idx513.i = shl i64 %i.n, 5
  %i.ug = icmp sgt i32 %5, 3                      ; 2 uses
  %.idx512.i = shl i64 %i.n, 4                    ; 2 uses
  %.idx.i = shl i64 %i.n, 3
  %.idx510.i = mul i64 %i.n, 12
  %i.uh = and i32 %5, -4
  %i.ui = sext i32 %.2466.lcssa.i to i64
  %i.uj = sext i32 %2 to i64
  %i.uk = sext i32 %i.e to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %xtraiter181 = and i32 %5, 1
  %lcmp.mod182.not = icmp eq i32 %xtraiter181, 0
  br label %bb.s

bb.o:                                             ; preds = %.loopexit660.i, %.lr.ph772.i
  %indvars.iv850.i = phi i64 [ %i.ly, %.lr.ph772.i ], [ %indvars.iv.next851.i, %.loopexit660.i ] ; 2 uses
  %.15771.i = phi ptr [ %.7.lcssa.i, %.lr.ph772.i ], [ %.23.i, %.loopexit660.i ] ; 7 uses
  %i.ul = load ptr, ptr %0, align 8, !tbaa !24
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %i.lu
  %i.un = add nsw i64 %indvars.iv850.i, %i.ma     ; 4 uses
  %i.uo = mul nsw i64 %i.un, %i.mb
  %i.up = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.uo ; 4 uses
  switch i32 %i.e, label %.loopexit660.i [
    i32 8, label %bb.p
    i32 4, label %bb.q
    i32 1, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.uq = load ptr, ptr %6, align 8, !tbaa !24
  %i.ur = getelementptr [4 x i8], ptr %i.uq, i64 %i.un ; 2 uses
  %i.us = load float, ptr %i.ur, align 4, !tbaa !68
  %i.ut = insertelement <8 x float> poison, float %i.us, i64 0
  %i.uu = shufflevector <8 x float> %i.ut, <8 x float> poison, <8 x i32> zeroinitializer
  %i.uv = getelementptr i8, ptr %i.ur, i64 4
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !68
  %i.ux = insertelement <8 x float> poison, float %i.uw, i64 0
  %i.uy = shufflevector <8 x float> %i.ux, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.lv, label %.lr.ph742.i, label %.loopexit660.i

.lr.ph742.i:                                      ; preds = %bb.p, %.lr.ph742.i
  %.16741.i = phi ptr [ %i.vx, %.lr.ph742.i ], [ %.15771.i, %bb.p ] ; 2 uses
  %.0497740.i = phi i32 [ %i.vz, %.lr.ph742.i ], [ 0, %bb.p ]
  %.0498739.i = phi ptr [ %i.vy, %.lr.ph742.i ], [ %i.up, %bb.p ] ; 3 uses
  %i.uz = load <8 x float>, ptr %.0498739.i, align 32, !tbaa !89
  %i.va = getelementptr inbounds nuw i8, ptr %.0498739.i, i64 32
  %i.vb = load <8 x float>, ptr %i.va, align 32, !tbaa !89
  %i.vc = fmul fast <8 x float> %i.uz, %i.uu      ; 2 uses
  %i.vd = fmul fast <8 x float> %i.vb, %i.uy      ; 2 uses
  %i.ve = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.vc)
  %i.vf = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.vd)
  %i.vg = fadd fast <8 x float> %i.ve, %i.vc
  %i.vh = fadd fast <8 x float> %i.vf, %i.vd
  %i.vi = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vg) ; 2 uses
  %i.vj = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vh) ; 2 uses
  %i.vk = shufflevector <8 x i32> %i.vi, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vl = shufflevector <8 x i32> %i.vi, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.vm = shufflevector <8 x i32> %i.vj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vn = shufflevector <8 x i32> %i.vj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.vo = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.vk, <4 x i32> %i.vl)
  %i.vp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.vm, <4 x i32> %i.vn)
  %i.vq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vo, <8 x i16> splat (i16 -127))
  %i.vr = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.vq, <8 x i16> splat (i16 127))
  %i.vs = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vp, <8 x i16> splat (i16 -127))
  %i.vt = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.vs, <8 x i16> splat (i16 127))
  %i.vu = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.vr, <8 x i16> %i.vt)
  %i.vv = bitcast <16 x i8> %i.vu to <8 x i16>
  %i.vw = shufflevector <8 x i16> %i.vv, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.vw, ptr %.16741.i, align 16, !tbaa !89
  %i.vx = getelementptr inbounds nuw i8, ptr %.16741.i, i64 16 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.0498739.i, i64 %.idx519.i
  %i.vz = add nuw nsw i32 %.0497740.i, 8          ; 2 uses
  %i.wa = or disjoint i32 %i.vz, 7
  %i.wb = icmp slt i32 %i.wa, %5
  br i1 %i.wb, label %.lr.ph742.i, label %.loopexit660.i, !llvm.loop !895

bb.q:                                             ; preds = %bb.o
  %i.wc = load ptr, ptr %6, align 8, !tbaa !24
  %i.wd = getelementptr [4 x i8], ptr %i.wc, i64 %i.un ; 2 uses
  %i.we = load float, ptr %i.wd, align 4, !tbaa !68
  %i.wf = insertelement <4 x float> poison, float %i.we, i64 0 ; 2 uses
  %i.wg = getelementptr i8, ptr %i.wd, i64 4
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !68
  %i.wi = insertelement <4 x float> poison, float %i.wh, i64 0 ; 2 uses
  br i1 %i.lw, label %.lr.ph748.i.preheader, label %.loopexit660.i

.lr.ph748.i.preheader:                            ; preds = %bb.q
  %7 = shufflevector <4 x float> %i.wf, <4 x float> %i.wi, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %8 = shufflevector <4 x float> %i.wf, <4 x float> %i.wi, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br label %.lr.ph748.i

.lr.ph748.i:                                      ; preds = %.lr.ph748.i.preheader, %.lr.ph748.i
  %.18747.i = phi ptr [ %i.wz, %.lr.ph748.i ], [ %.15771.i, %.lr.ph748.i.preheader ] ; 2 uses
  %.0496746.i = phi i32 [ %i.xb, %.lr.ph748.i ], [ 0, %.lr.ph748.i.preheader ]
  %.2500745.i = phi ptr [ %i.xa, %.lr.ph748.i ], [ %i.up, %.lr.ph748.i.preheader ] ; 3 uses
  %i.wj = load <4 x float>, ptr %.2500745.i, align 16, !tbaa !89 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.2500745.i, i64 16
  %i.wl = load <4 x float>, ptr %i.wk, align 16, !tbaa !89 ; 2 uses
  %9 = shufflevector <4 x float> %i.wj, <4 x float> %i.wl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.wm = fmul fast <4 x float> %9, %7            ; 2 uses
  %10 = shufflevector <4 x float> %i.wj, <4 x float> %i.wl, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %11 = fmul fast <4 x float> %10, %8             ; 2 uses
  %i.wn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.wm)
  %i.wo = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %11)
  %i.wp = fadd fast <4 x float> %i.wn, %i.wm
  %i.wq = fadd fast <4 x float> %i.wo, %11
  %i.wr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wp)
  %i.ws = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wq)
  %i.wt = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.wr, <4 x i32> %i.ws)
  %i.wu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wt, <8 x i16> splat (i16 -127))
  %i.wv = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.wu, <8 x i16> splat (i16 127))
  %i.ww = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.wv, <8 x i16> poison)
  %i.wx = bitcast <16 x i8> %i.ww to <2 x i64>
  %i.wy = extractelement <2 x i64> %i.wx, i64 0
  store i64 %i.wy, ptr %.18747.i, align 8, !tbaa !109
  %i.wz = getelementptr inbounds nuw i8, ptr %.18747.i, i64 8 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %.2500745.i, i64 %.idx518.i
  %i.xb = add nuw nsw i32 %.0496746.i, 4          ; 2 uses
  %i.xc = or disjoint i32 %i.xb, 3
  %i.xd = icmp slt i32 %i.xc, %5
  br i1 %i.xd, label %.lr.ph748.i, label %.loopexit660.i, !llvm.loop !896

bb.r:                                             ; preds = %bb.o
  %i.xe = load ptr, ptr %6, align 8, !tbaa !24
  %i.xf = getelementptr [4 x i8], ptr %i.xe, i64 %i.un ; 2 uses
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !68 ; 2 uses
  %i.xh = getelementptr i8, ptr %i.xf, i64 4
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !68 ; 2 uses
  %i.xj = insertelement <4 x float> poison, float %i.xg, i64 0 ; 3 uses
  %i.xk = insertelement <4 x float> poison, float %i.xi, i64 0 ; 3 uses
  %i.xl = shufflevector <4 x float> %i.xj, <4 x float> %i.xk, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.lw, label %.lr.ph754.i.preheader, label %.preheader661.i

.lr.ph754.i.preheader:                            ; preds = %bb.r
  %12 = shufflevector <4 x float> %i.xj, <4 x float> %i.xk, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %13 = shufflevector <4 x float> %i.xj, <4 x float> %i.xk, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br label %.lr.ph754.i

.preheader661.i:                                  ; preds = %.lr.ph754.i, %bb.r
  %.4502.lcssa.i = phi ptr [ %i.up, %bb.r ], [ %i.yu, %.lr.ph754.i ] ; 2 uses
  %.0492.lcssa.i = phi i32 [ 0, %bb.r ], [ %i.lx, %.lr.ph754.i ] ; 3 uses
  %.20.lcssa.i = phi ptr [ %.15771.i, %bb.r ], [ %i.yt, %.lr.ph754.i ] ; 2 uses
  %i.xm = or disjoint i32 %.0492.lcssa.i, 1
  %i.xn = icmp slt i32 %i.xm, %5
  br i1 %i.xn, label %.lr.ph761.i, label %.preheader659.i

.lr.ph754.i:                                      ; preds = %.lr.ph754.i.preheader, %.lr.ph754.i
  %.20753.i = phi ptr [ %i.yt, %.lr.ph754.i ], [ %.15771.i, %.lr.ph754.i.preheader ] ; 2 uses
  %.0492752.i = phi i32 [ %i.yv, %.lr.ph754.i ], [ 0, %.lr.ph754.i.preheader ]
  %.4502751.i = phi ptr [ %i.yu, %.lr.ph754.i ], [ %i.up, %.lr.ph754.i.preheader ] ; 5 uses
  %i.xo = load i64, ptr %.4502751.i, align 1, !tbaa !89
  %i.xp = insertelement <2 x i64> poison, i64 %i.xo, i64 0
  %i.xq = bitcast <2 x i64> %i.xp to <4 x float>
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %.4502751.i, i64 %i.n
  %i.xs = load i64, ptr %i.xr, align 1, !tbaa !89
  %i.xt = insertelement <2 x i64> poison, i64 %i.xs, i64 0
  %i.xu = bitcast <2 x i64> %i.xt to <4 x float>
  %i.xv = getelementptr inbounds nuw i8, ptr %.4502751.i, i64 %.idx515.i
  %i.xw = load i64, ptr %i.xv, align 1, !tbaa !89
  %i.xx = insertelement <2 x i64> poison, i64 %i.xw, i64 0
  %i.xy = bitcast <2 x i64> %i.xx to <4 x float>
  %i.xz = getelementptr inbounds nuw i8, ptr %.4502751.i, i64 %.idx516.i
  %i.ya = load i64, ptr %i.xz, align 1, !tbaa !89
  %i.yb = insertelement <2 x i64> poison, i64 %i.ya, i64 0
  %i.yc = bitcast <2 x i64> %i.yb to <4 x float>
  %i.yd = shufflevector <4 x float> %i.xq, <4 x float> %i.xu, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ye = shufflevector <4 x float> %i.xy, <4 x float> %i.yc, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.yf = fmul fast <4 x float> %12, %i.yd        ; 2 uses
  %i.yg = fmul fast <4 x float> %13, %i.ye        ; 2 uses
  %i.yh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.yf)
  %i.yi = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.yg)
  %i.yj = fadd fast <4 x float> %i.yh, %i.yf
  %i.yk = fadd fast <4 x float> %i.yi, %i.yg
  %i.yl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yj)
  %i.ym = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yk)
  %i.yn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.yl, <4 x i32> %i.ym)
  %i.yo = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yn, <8 x i16> splat (i16 -127))
  %i.yp = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.yo, <8 x i16> splat (i16 127))
  %i.yq = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.yp, <8 x i16> poison)
  %i.yr = bitcast <16 x i8> %i.yq to <2 x i64>
  %i.ys = extractelement <2 x i64> %i.yr, i64 0
  store i64 %i.ys, ptr %.20753.i, align 8, !tbaa !109
  %i.yt = getelementptr inbounds nuw i8, ptr %.20753.i, i64 8 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.4502751.i, i64 %.idx518.i ; 2 uses
  %i.yv = add nuw nsw i32 %.0492752.i, 4          ; 2 uses
  %i.yw = or disjoint i32 %i.yv, 3
  %i.yx = icmp slt i32 %i.yw, %5
  br i1 %i.yx, label %.lr.ph754.i, label %.preheader661.i, !llvm.loop !897

.preheader659.i:                                  ; preds = %.lr.ph761.i, %.preheader661.i
  %.5503.lcssa.i = phi ptr [ %.4502.lcssa.i, %.preheader661.i ], [ %i.zs, %.lr.ph761.i ]
  %.1493.lcssa.i = phi i32 [ %.0492.lcssa.i, %.preheader661.i ], [ %i.zt, %.lr.ph761.i ] ; 2 uses
  %.21.lcssa.i = phi ptr [ %.20.lcssa.i, %.preheader661.i ], [ %i.zr, %.lr.ph761.i ] ; 2 uses
  %i.yy = icmp slt i32 %.1493.lcssa.i, %5
  br i1 %i.yy, label %.lr.ph768.i, label %.loopexit660.i

.lr.ph761.i:                                      ; preds = %.preheader661.i, %.lr.ph761.i
  %.21760.i = phi ptr [ %i.zr, %.lr.ph761.i ], [ %.20.lcssa.i, %.preheader661.i ] ; 2 uses
  %.1493759.i = phi i32 [ %i.zt, %.lr.ph761.i ], [ %.0492.lcssa.i, %.preheader661.i ]
  %.5503758.i = phi ptr [ %i.zs, %.lr.ph761.i ], [ %.4502.lcssa.i, %.preheader661.i ] ; 3 uses
  %i.yz = load i64, ptr %.5503758.i, align 1, !tbaa !89
  %i.za = insertelement <2 x i64> poison, i64 %i.yz, i64 0
  %i.zb = bitcast <2 x i64> %i.za to <4 x float>
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %.5503758.i, i64 %i.n
  %i.zd = load i64, ptr %i.zc, align 1, !tbaa !89
  %i.ze = insertelement <2 x i64> poison, i64 %i.zd, i64 0
  %i.zf = bitcast <2 x i64> %i.ze to <4 x float>
  %i.zg = shufflevector <4 x float> %i.zb, <4 x float> %i.zf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.zh = fmul fast <4 x float> %i.zg, %i.xl      ; 2 uses
  %i.zi = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.zh)
  %i.zj = fadd fast <4 x float> %i.zi, %i.zh
  %i.zk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.zj)
  %i.zl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.zk, <4 x i32> poison)
  %i.zm = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.zl, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.zn = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.zm, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.zo = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.zn, <8 x i16> poison)
  %i.zp = bitcast <16 x i8> %i.zo to <4 x i32>
  %i.zq = extractelement <4 x i32> %i.zp, i64 0
  store i32 %i.zq, ptr %.21760.i, align 4, !tbaa !50
  %i.zr = getelementptr inbounds nuw i8, ptr %.21760.i, i64 4 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %.5503758.i, i64 %.idx515.i ; 2 uses
  %i.zt = add nuw nsw i32 %.1493759.i, 2          ; 3 uses
  %i.zu = or disjoint i32 %i.zt, 1
  %i.zv = icmp slt i32 %i.zu, %5
  br i1 %i.zv, label %.lr.ph761.i, label %.preheader659.i, !llvm.loop !898

.lr.ph768.i:                                      ; preds = %.preheader659.i, %.lr.ph768.i
  %.22767.i = phi ptr [ %i.aag, %.lr.ph768.i ], [ %.21.lcssa.i, %.preheader659.i ] ; 3 uses
  %.2494766.i = phi i32 [ %i.aai, %.lr.ph768.i ], [ %.1493.lcssa.i, %.preheader659.i ]
  %.6504765.i = phi ptr [ %i.aah, %.lr.ph768.i ], [ %.5503.lcssa.i, %.preheader659.i ] ; 3 uses
  %i.zw = load float, ptr %.6504765.i, align 4, !tbaa !68
  %i.zx = fmul fast float %i.zw, %i.xg
  %i.zy = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.zx)
  %i.zz = fptosi float %i.zy to i32
  %spec.select.i528651.i = tail call i32 @llvm.smax.i32(i32 %i.zz, i32 -127)
  %.0.i529652.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i528651.i, i32 127)
  %.0.i529.i = trunc nsw i32 %.0.i529652.i to i8
  store i8 %.0.i529.i, ptr %.22767.i, align 1, !tbaa !89
  %i.aaa = getelementptr inbounds nuw i8, ptr %.6504765.i, i64 4
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !68
  %i.aac = fmul fast float %i.aab, %i.xi
  %i.aad = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aac)
  %i.aae = fptosi float %i.aad to i32
  %spec.select.i526653.i = tail call i32 @llvm.smax.i32(i32 %i.aae, i32 -127)
  %.0.i527654.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i526653.i, i32 127)
  %.0.i527.i = trunc nsw i32 %.0.i527654.i to i8
  %i.aaf = getelementptr inbounds nuw i8, ptr %.22767.i, i64 1
  store i8 %.0.i527.i, ptr %i.aaf, align 1, !tbaa !89
  %i.aag = getelementptr inbounds nuw i8, ptr %.22767.i, i64 2 ; 2 uses
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %.6504765.i, i64 %i.n
  %i.aai = add nuw nsw i32 %.2494766.i, 1         ; 2 uses
  %exitcond849.not.i = icmp eq i32 %i.aai, %5
  br i1 %exitcond849.not.i, label %.loopexit660.i, label %.lr.ph768.i, !llvm.loop !899

.loopexit660.i:                                   ; preds = %.lr.ph768.i, %.lr.ph748.i, %.lr.ph742.i, %.preheader659.i, %bb.q, %bb.p, %bb.o
  %.23.i = phi ptr [ %.15771.i, %bb.o ], [ %.21.lcssa.i, %.preheader659.i ], [ %i.vx, %.lr.ph742.i ], [ %i.wz, %.lr.ph748.i ], [ %.15771.i, %bb.q ], [ %.15771.i, %bb.p ], [ %i.aag, %.lr.ph768.i ] ; 2 uses
  %indvars.iv.next851.i = add nuw nsw i64 %indvars.iv850.i, 2 ; 3 uses
  %i.aaj = icmp slt i64 %indvars.iv.next851.i, %invariant.op916.i
  br i1 %i.aaj, label %bb.o, label %.preheader657.loopexit.i, !llvm.loop !900

bb.s:                                             ; preds = %.loopexit.i, %.lr.ph801.i
  %indvars.iv854.i = phi i64 [ %i.ui, %.lr.ph801.i ], [ %indvars.iv.next855.i, %.loopexit.i ] ; 2 uses
  %.24800.i = phi ptr [ %.15.lcssa.i, %.lr.ph801.i ], [ %.31.i, %.loopexit.i ] ; 7 uses
  %i.aak = load ptr, ptr %0, align 8, !tbaa !24
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %i.ue
  %i.aam = add nsw i64 %indvars.iv854.i, %i.uj    ; 2 uses
  %i.aan = mul nsw i64 %i.aam, %i.uk
  %i.aao = getelementptr inbounds [4 x i8], ptr %i.aal, i64 %i.aan ; 4 uses
  %i.aap = load ptr, ptr %6, align 8, !tbaa !24
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %i.aam
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !68 ; 6 uses
  switch i32 %i.e, label %.loopexit.i [
    i32 8, label %bb.t
    i32 4, label %bb.u
    i32 1, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.aas = insertelement <8 x float> poison, float %i.aar, i64 0
  %i.aat = shufflevector <8 x float> %i.aas, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.uf, label %.lr.ph778.i, label %.loopexit.i

.lr.ph778.i:                                      ; preds = %bb.t, %.lr.ph778.i
  %.25777.i = phi ptr [ %i.abh, %.lr.ph778.i ], [ %.24800.i, %bb.t ] ; 2 uses
  %.0457776.i = phi i32 [ %i.abj, %.lr.ph778.i ], [ 0, %bb.t ]
  %.0458775.i = phi ptr [ %i.abi, %.lr.ph778.i ], [ %i.aao, %bb.t ] ; 2 uses
  %i.aau = load <8 x float>, ptr %.0458775.i, align 32, !tbaa !89
  %i.aav = fmul fast <8 x float> %i.aau, %i.aat   ; 2 uses
  %i.aaw = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.aav)
  %i.aax = fadd fast <8 x float> %i.aaw, %i.aav
  %i.aay = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aax) ; 2 uses
  %i.aaz = shufflevector <8 x i32> %i.aay, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aba = shufflevector <8 x i32> %i.aay, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.abb = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aaz, <4 x i32> %i.aba)
  %i.abc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.abb, <8 x i16> splat (i16 -127))
  %i.abd = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.abc, <8 x i16> splat (i16 127))
  %i.abe = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.abd, <8 x i16> poison)
  %i.abf = bitcast <16 x i8> %i.abe to <2 x i64>
  %i.abg = extractelement <2 x i64> %i.abf, i64 0
  store i64 %i.abg, ptr %.25777.i, align 8, !tbaa !109
  %i.abh = getelementptr inbounds nuw i8, ptr %.25777.i, i64 8 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %.0458775.i, i64 %.idx513.i
  %i.abj = add nuw nsw i32 %.0457776.i, 8         ; 2 uses
  %i.abk = or disjoint i32 %i.abj, 7
  %i.abl = icmp slt i32 %i.abk, %5
  br i1 %i.abl, label %.lr.ph778.i, label %.loopexit.i, !llvm.loop !901

bb.u:                                             ; preds = %bb.s
  %i.abm = insertelement <4 x float> poison, float %i.aar, i64 0
  %i.abn = shufflevector <4 x float> %i.abm, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.ug, label %.lr.ph784.i, label %.loopexit.i

.lr.ph784.i:                                      ; preds = %bb.u, %.lr.ph784.i
  %.0454783.i = phi i32 [ %i.acb, %.lr.ph784.i ], [ 0, %bb.u ]
  %.27782.i = phi ptr [ %i.abz, %.lr.ph784.i ], [ %.24800.i, %bb.u ] ; 2 uses
  %.2460781.i = phi ptr [ %i.aca, %.lr.ph784.i ], [ %i.aao, %bb.u ] ; 2 uses
  %i.abo = load <4 x float>, ptr %.2460781.i, align 16, !tbaa !89
  %i.abp = fmul fast <4 x float> %i.abo, %i.abn   ; 2 uses
  %i.abq = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.abp)
  %i.abr = fadd fast <4 x float> %i.abq, %i.abp
  %i.abs = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.abr)
  %i.abt = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.abs, <4 x i32> poison)
  %i.abu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.abt, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.abv = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.abu, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.abw = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.abv, <8 x i16> poison)
  %i.abx = bitcast <16 x i8> %i.abw to <4 x i32>
  %i.aby = extractelement <4 x i32> %i.abx, i64 0
  store i32 %i.aby, ptr %.27782.i, align 4, !tbaa !50
  %i.abz = getelementptr inbounds nuw i8, ptr %.27782.i, i64 4 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %.2460781.i, i64 %.idx512.i
  %i.acb = add nuw nsw i32 %.0454783.i, 4         ; 2 uses
  %i.acc = or disjoint i32 %i.acb, 3
  %i.acd = icmp slt i32 %i.acc, %5
  br i1 %i.acd, label %.lr.ph784.i, label %.loopexit.i, !llvm.loop !902

bb.v:                                             ; preds = %bb.s
  %i.ace = insertelement <4 x float> poison, float %i.aar, i64 0
  %i.acf = shufflevector <4 x float> %i.ace, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.ug, label %.lr.ph790.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph790.i, %bb.v
  %.4462.lcssa.i = phi ptr [ %i.aao, %bb.v ], [ %i.adl, %.lr.ph790.i ] ; 3 uses
  %.29.lcssa.i = phi ptr [ %.24800.i, %bb.v ], [ %i.adk, %.lr.ph790.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.uh, %.lr.ph790.i ] ; 4 uses
  %i.acg = icmp slt i32 %.0.lcssa.i, %5
  br i1 %i.acg, label %.lr.ph797.i.preheader, label %.loopexit.i

.lr.ph797.i.preheader:                            ; preds = %.preheader.i
  %.neg183 = or disjoint i32 %.0.lcssa.i, 1
  br i1 %lcmp.mod182.not, label %.lr.ph797.i.prol.loopexit, label %.lr.ph797.i.prol

.lr.ph797.i.prol:                                 ; preds = %.lr.ph797.i.preheader
  %i.ach = load float, ptr %.4462.lcssa.i, align 4, !tbaa !68
  %i.aci = fmul fast float %i.ach, %i.aar
  %i.acj = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aci)
  %i.ack = fptosi float %i.acj to i32
  %spec.select.i649.i.prol = tail call i32 @llvm.smax.i32(i32 %i.ack, i32 -127)
  %.0.i650.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i649.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i650.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.29.lcssa.i, align 1, !tbaa !89
  %i.acl = getelementptr inbounds nuw i8, ptr %.29.lcssa.i, i64 1 ; 2 uses
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %.4462.lcssa.i, i64 %i.n
  %i.acn = or disjoint i32 %.0.lcssa.i, 1
  br label %.lr.ph797.i.prol.loopexit

.lr.ph797.i.prol.loopexit:                        ; preds = %.lr.ph797.i.prol, %.lr.ph797.i.preheader
  %.lcssa153.unr = phi ptr [ poison, %.lr.ph797.i.preheader ], [ %i.acl, %.lr.ph797.i.prol ]
  %.1796.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph797.i.preheader ], [ %i.acn, %.lr.ph797.i.prol ]
  %.30795.i.unr = phi ptr [ %.29.lcssa.i, %.lr.ph797.i.preheader ], [ %i.acl, %.lr.ph797.i.prol ]
  %.5463794.i.unr = phi ptr [ %.4462.lcssa.i, %.lr.ph797.i.preheader ], [ %i.acm, %.lr.ph797.i.prol ]
  %i.aco = icmp eq i32 %5, %.neg183
  br i1 %i.aco, label %.loopexit.i, label %.lr.ph797.i

end_hunk_0
begin_hunk_1_@_ZN4ncnnL20pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  br i1 %i.kt, label %.lr.ph537.i, label %.loopexit484.i

.lr.ph528.i:                                      ; preds = %.preheader485.i, %.lr.ph528.i
  %.7527.i = phi ptr [ %i.nm, %.lr.ph528.i ], [ %.0354540.i, %.preheader485.i ] ; 2 uses
  %.7367526.i = phi ptr [ %i.nn, %.lr.ph528.i ], [ %.0360.i, %.preheader485.i ] ; 2 uses
  %.6376525.i = phi ptr [ %i.no, %.lr.ph528.i ], [ %i.gl, %.preheader485.i ] ; 10 uses
  %.0388524.i = phi i32 [ %i.np, %.lr.ph528.i ], [ 0, %.preheader485.i ]
  %i.ku = load float, ptr %.6376525.i, align 4, !tbaa !68
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.6376525.i, i64 %i.n ; 2 uses
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !68
  %i.kx = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 %.idx466.i ; 2 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !68
  %i.kz = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 %.idx467.i ; 2 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !68
  %i.lb = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 %.idx409.i ; 2 uses
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !68
  %i.ld = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 %.idx469.i ; 2 uses
  %i.le = load float, ptr %i.ld, align 4, !tbaa !68
  %i.lf = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 %.idx470.i ; 2 uses
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !68
  %i.lh = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 %.idx471.i ; 2 uses
  %i.li = load float, ptr %i.lh, align 4, !tbaa !68
  %i.lj = insertelement <8 x float> poison, float %i.ku, i64 0
  %i.lk = insertelement <8 x float> %i.lj, float %i.kw, i64 1
  %i.ll = insertelement <8 x float> %i.lk, float %i.ky, i64 2
  %i.lm = insertelement <8 x float> %i.ll, float %i.la, i64 3
  %i.ln = insertelement <8 x float> %i.lm, float %i.lc, i64 4
  %i.lo = insertelement <8 x float> %i.ln, float %i.le, i64 5
  %i.lp = insertelement <8 x float> %i.lo, float %i.lg, i64 6
  %i.lq = insertelement <8 x float> %i.lp, float %i.li, i64 7
  %i.lr = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 4
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !68
  %i.lt = getelementptr i8, ptr %i.kv, i64 4
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !68
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !68
  %i.lx = getelementptr i8, ptr %i.kz, i64 4
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !68
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !68
  %i.mb = getelementptr i8, ptr %i.ld, i64 4
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !68
  %i.md = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.me = load float, ptr %i.md, align 4, !tbaa !68
  %i.mf = getelementptr i8, ptr %i.lh, i64 4
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !68
  %i.mh = insertelement <8 x float> poison, float %i.ls, i64 0
  %i.mi = insertelement <8 x float> %i.mh, float %i.lu, i64 1
  %i.mj = insertelement <8 x float> %i.mi, float %i.lw, i64 2
  %i.mk = insertelement <8 x float> %i.mj, float %i.ly, i64 3
  %i.ml = insertelement <8 x float> %i.mk, float %i.ma, i64 4
  %i.mm = insertelement <8 x float> %i.ml, float %i.mc, i64 5
  %i.mn = insertelement <8 x float> %i.mm, float %i.me, i64 6
  %i.mo = insertelement <8 x float> %i.mn, float %i.mg, i64 7
  %i.mp = fmul fast <8 x float> %i.lq, %i.gp      ; 2 uses
  %i.mq = fmul fast <8 x float> %i.mo, %i.gp      ; 2 uses
  %i.mr = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.mp)
  %i.ms = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.mq)
  %i.mt = fadd fast <8 x float> %i.mr, %i.mp
  %i.mu = fadd fast <8 x float> %i.ms, %i.mq
  %i.mv = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mt) ; 2 uses
  %i.mw = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mu) ; 2 uses
  %i.mx = shufflevector <8 x i32> %i.mv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.my = shufflevector <8 x i32> %i.mv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mz = shufflevector <8 x i32> %i.mw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.na = shufflevector <8 x i32> %i.mw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.nb = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mx, <4 x i32> %i.my)
  %i.nc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mz, <4 x i32> %i.na)
  %i.nd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nb, <8 x i16> splat (i16 -127))
  %i.ne = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.nd, <8 x i16> splat (i16 127))
  %i.nf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nc, <8 x i16> splat (i16 -127))
  %i.ng = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.nf, <8 x i16> splat (i16 127))
  %i.nh = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ne, <8 x i16> %i.ng)
  %i.ni = shufflevector <16 x i8> %i.nh, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nj = bitcast <16 x i8> %i.ni to <2 x double> ; 2 uses
  %i.nk = extractelement <2 x double> %i.nj, i64 0
  store double %i.nk, ptr %.7527.i, align 1, !tbaa !89
  %i.nl = extractelement <2 x double> %i.nj, i64 1
  store double %i.nl, ptr %.7367526.i, align 1, !tbaa !89
  %i.nm = getelementptr inbounds nuw i8, ptr %.7527.i, i64 8 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.7367526.i, i64 8 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 8 ; 2 uses
  %i.np = add nuw nsw i32 %.0388524.i, 2          ; 2 uses
  %i.nq = or disjoint i32 %i.np, 1
  %i.nr = icmp slt i32 %i.nq, %5
  br i1 %i.nr, label %.lr.ph528.i, label %.preheader483.i, !llvm.loop !915

.lr.ph537.i:                                      ; preds = %.preheader483.i, %.lr.ph537.i
  %.8536.i = phi ptr [ %i.pc, %.lr.ph537.i ], [ %.7.lcssa.i, %.preheader483.i ] ; 2 uses
  %.8368535.i = phi ptr [ %i.pd, %.lr.ph537.i ], [ %.7367.lcssa.i, %.preheader483.i ] ; 2 uses
  %.7377534.i = phi ptr [ %i.pe, %.lr.ph537.i ], [ %.6376.lcssa.i, %.preheader483.i ] ; 9 uses
  %.1389533.i = phi i32 [ %i.pf, %.lr.ph537.i ], [ %.0388.lcssa.i, %.preheader483.i ]
  %i.ns = load float, ptr %.7377534.i, align 4, !tbaa !68
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %.7377534.i, i64 %i.n
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !68
  %i.nv = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 %.idx466.i
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !68
  %i.nx = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 %.idx467.i
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !68
  %i.nz = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 %.idx409.i
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !68
  %i.ob = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 %.idx469.i
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !68
  %i.od = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 %.idx470.i
  %i.oe = load float, ptr %i.od, align 4, !tbaa !68
  %i.of = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 %.idx471.i
  %i.og = load float, ptr %i.of, align 4, !tbaa !68
  %i.oh = insertelement <8 x float> poison, float %i.ns, i64 0
  %i.oi = insertelement <8 x float> %i.oh, float %i.nu, i64 1
  %i.oj = insertelement <8 x float> %i.oi, float %i.nw, i64 2
  %i.ok = insertelement <8 x float> %i.oj, float %i.ny, i64 3
  %i.ol = insertelement <8 x float> %i.ok, float %i.oa, i64 4
  %i.om = insertelement <8 x float> %i.ol, float %i.oc, i64 5
  %i.on = insertelement <8 x float> %i.om, float %i.oe, i64 6
  %i.oo = insertelement <8 x float> %i.on, float %i.og, i64 7
  %i.op = fmul fast <8 x float> %i.oo, %i.gp      ; 2 uses
  %i.oq = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.op)
  %i.or = fadd fast <8 x float> %i.oq, %i.op
  %i.os = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.or) ; 2 uses
  %i.ot = shufflevector <8 x i32> %i.os, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ou = shufflevector <8 x i32> %i.os, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ov = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ot, <4 x i32> %i.ou)
  %i.ow = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ov, <8 x i16> splat (i16 -127))
  %i.ox = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ow, <8 x i16> splat (i16 127))
  %i.oy = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ox, <8 x i16> poison)
  %i.oz = bitcast <16 x i8> %i.oy to <4 x i32>    ; 2 uses
  %i.pa = extractelement <4 x i32> %i.oz, i64 0
  store i32 %i.pa, ptr %.8536.i, align 4, !tbaa !50
  %i.pb = extractelement <4 x i32> %i.oz, i64 1
  store i32 %i.pb, ptr %.8368535.i, align 4, !tbaa !50
  %i.pc = getelementptr inbounds nuw i8, ptr %.8536.i, i64 4
  %i.pd = getelementptr inbounds nuw i8, ptr %.8368535.i, i64 4 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 4
  %i.pf = add nuw nsw i32 %.1389533.i, 1          ; 2 uses
  %exitcond657.not.i = icmp eq i32 %i.pf, %5
  br i1 %exitcond657.not.i, label %.loopexit484.i, label %.lr.ph537.i, !llvm.loop !916

.loopexit484.i:                                   ; preds = %.lr.ph537.i, %.lr.ph520.i, %.lr.ph503.i, %.preheader483.i, %.preheader486.i, %.preheader489.i, %bb.k
  %.9369.i = phi ptr [ %.0360.i, %bb.k ], [ %.7367.lcssa.i, %.preheader483.i ], [ %i.im, %.lr.ph503.i ], [ %i.kq, %.lr.ph520.i ], [ %.4364.lcssa.i, %.preheader486.i ], [ %.1361.lcssa.i, %.preheader489.i ], [ %i.pd, %.lr.ph537.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.pg = or disjoint i64 %indvars.iv.next.i, 7
  %i.ph = icmp samesign ult i64 %i.pg, %i.x
  br i1 %i.ph, label %bb.k, label %.preheader482.loopexit.i, !llvm.loop !917

.preheader475.loopexit.i:                         ; preds = %.loopexit477.i.us40, %.loopexit477.i.us, %.loopexit477.i.preheader
  %.us-phi = phi ptr [ %.0354.lcssa.i, %.loopexit477.i.preheader ], [ %.15.i.us, %.loopexit477.i.us ], [ %.15.i.us41, %.loopexit477.i.us40 ]
  %.us-phi35 = phi i64 [ %i.aq, %.loopexit477.i.preheader ], [ %indvars.iv.next662.i.us, %.loopexit477.i.us ], [ %indvars.iv.next662.i.us42, %.loopexit477.i.us40 ]
  %i.pi = trunc nuw nsw i64 %.us-phi35 to i32
  br label %.preheader475.i

.preheader475.i:                                  ; preds = %.preheader475.loopexit.i, %.preheader482.i
  %.1357.lcssa.i = phi i32 [ %.0356.lcssa.i, %.preheader482.i ], [ %i.pi, %.preheader475.loopexit.i ] ; 3 uses
  %.9.lcssa.i = phi ptr [ %.0354.lcssa.i, %.preheader482.i ], [ %.us-phi, %.preheader475.loopexit.i ] ; 2 uses
  %i.pj = or disjoint i32 %.1357.lcssa.i, 1
  %i.pk = icmp slt i32 %i.pj, %3
  br i1 %i.pk, label %.lr.ph595.i, label %.preheader472.i

.lr.ph595.i:                                      ; preds = %.preheader475.i
  %i.pl = sext i32 %4 to i64
  %i.pm = icmp sgt i32 %5, 3
  %i.pn = and i32 %5, -4
  %i.po = zext nneg i32 %.1357.lcssa.i to i64
  %i.pp = sext i32 %3 to i64
  %i.pq = sext i32 %2 to i64
  %invariant.op717.i = add nsw i64 %i.pp, -1
  %i.pr = shl nuw nsw i64 %i.n, 2                 ; 2 uses
  br label %bb.l

.preheader472.loopexit.i:                         ; preds = %._crit_edge.i
  %i.ps = trunc nuw nsw i64 %indvars.iv.next666.i to i32
  br label %.preheader472.i

.preheader472.i:                                  ; preds = %.preheader472.loopexit.i, %.preheader475.i
  %.2358.lcssa.i = phi i32 [ %.1357.lcssa.i, %.preheader475.i ], [ %i.ps, %.preheader472.loopexit.i ] ; 2 uses
  %.16.lcssa.i = phi ptr [ %.9.lcssa.i, %.preheader475.i ], [ %.19.lcssa.i, %.preheader472.loopexit.i ]
  %i.pt = icmp slt i32 %.2358.lcssa.i, %3
  br i1 %i.pt, label %.lr.ph614.i, label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph614.i:                                      ; preds = %.preheader472.i
  %i.pu = sext i32 %4 to i64
  %i.pv = icmp sgt i32 %5, 3
  %i.pw = and i32 %5, -4
  %i.px = sext i32 %.2358.lcssa.i to i64
  %i.py = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i, %.lr.ph595.i
  %indvars.iv665.i = phi i64 [ %i.po, %.lr.ph595.i ], [ %indvars.iv.next666.i, %._crit_edge.i ] ; 2 uses
  %.16594.i = phi ptr [ %.9.lcssa.i, %.lr.ph595.i ], [ %.19.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.pz = load ptr, ptr %0, align 8, !tbaa !24
  %i.qa = add nsw i64 %indvars.iv665.i, %i.pq     ; 2 uses
  %i.qb = mul i64 %i.qa, %i.n
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %i.qb
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.qc, i64 %i.pl ; 2 uses
  %i.qe = load ptr, ptr %6, align 8, !tbaa !24
  %i.qf = getelementptr [4 x i8], ptr %i.qe, i64 %i.qa ; 2 uses
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !68 ; 3 uses
  %i.qh = getelementptr i8, ptr %i.qf, i64 4
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !68 ; 3 uses
  %i.qj = insertelement <4 x float> poison, float %i.qg, i64 0 ; 3 uses
  %i.qk = insertelement <4 x float> poison, float %i.qi, i64 0 ; 3 uses
  %i.ql = shufflevector <4 x float> %i.qj, <4 x float> %i.qk, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.pm, label %.lr.ph577.i.preheader, label %.preheader474.i

.lr.ph577.i.preheader:                            ; preds = %bb.l
  %7 = shufflevector <4 x float> %i.qj, <4 x float> %i.qk, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %8 = shufflevector <4 x float> %i.qj, <4 x float> %i.qk, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br label %.lr.ph577.i

.preheader474.i:                                  ; preds = %.lr.ph577.i, %bb.l
  %.0381.lcssa.i = phi ptr [ %i.qd, %bb.l ], [ %i.rf, %.lr.ph577.i ] ; 2 uses
  %.0378.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.pn, %.lr.ph577.i ] ; 3 uses
  %.17.lcssa.i = phi ptr [ %.16594.i, %bb.l ], [ %i.re, %.lr.ph577.i ] ; 2 uses
  %i.qm = or disjoint i32 %.0378.lcssa.i, 1
  %i.qn = icmp slt i32 %i.qm, %5
  br i1 %i.qn, label %.lr.ph584.i, label %.preheader473.i

.lr.ph577.i:                                      ; preds = %.lr.ph577.i.preheader, %.lr.ph577.i
  %.17576.i = phi ptr [ %i.re, %.lr.ph577.i ], [ %.16594.i, %.lr.ph577.i.preheader ] ; 2 uses
  %.0378575.i = phi i32 [ %i.rg, %.lr.ph577.i ], [ 0, %.lr.ph577.i.preheader ]
  %.0381574.i = phi ptr [ %i.rf, %.lr.ph577.i ], [ %i.qd, %.lr.ph577.i.preheader ] ; 3 uses
  %i.qo = load <4 x float>, ptr %.0381574.i, align 1, !tbaa !89 ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %.0381574.i, i64 %i.n
  %i.qq = load <4 x float>, ptr %i.qp, align 1, !tbaa !89 ; 2 uses
  %9 = shufflevector <4 x float> %i.qo, <4 x float> %i.qq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.qr = fmul fast <4 x float> %9, %7            ; 2 uses
  %10 = shufflevector <4 x float> %i.qo, <4 x float> %i.qq, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %11 = fmul fast <4 x float> %10, %8             ; 2 uses
  %i.qs = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qr)
  %i.qt = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %11)
  %i.qu = fadd fast <4 x float> %i.qs, %i.qr
  %i.qv = fadd fast <4 x float> %i.qt, %11
  %i.qw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qu)
  %i.qx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qv)
  %i.qy = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.qw, <4 x i32> %i.qx)
  %i.qz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qy, <8 x i16> splat (i16 -127))
  %i.ra = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.qz, <8 x i16> splat (i16 127))
  %i.rb = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ra, <8 x i16> poison)
  %i.rc = bitcast <16 x i8> %i.rb to <2 x i64>
  %i.rd = extractelement <2 x i64> %i.rc, i64 0
  store i64 %i.rd, ptr %.17576.i, align 8, !tbaa !109
  %i.re = getelementptr inbounds nuw i8, ptr %.17576.i, i64 8 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.0381574.i, i64 16 ; 2 uses
  %i.rg = add nuw nsw i32 %.0378575.i, 4          ; 2 uses
  %i.rh = or disjoint i32 %i.rg, 3
  %i.ri = icmp slt i32 %i.rh, %5
  br i1 %i.ri, label %.lr.ph577.i, label %.preheader474.i, !llvm.loop !918

.preheader473.i:                                  ; preds = %.lr.ph584.i, %.preheader474.i
  %.1382.lcssa.i = phi ptr [ %.0381.lcssa.i, %.preheader474.i ], [ %i.tb, %.lr.ph584.i ] ; 8 uses
  %.1379.lcssa.i = phi i32 [ %.0378.lcssa.i, %.preheader474.i ], [ %i.tc, %.lr.ph584.i ] ; 6 uses
  %.18.lcssa.i = phi ptr [ %.17.lcssa.i, %.preheader474.i ], [ %i.ta, %.lr.ph584.i ] ; 8 uses
  %i.rj = icmp slt i32 %.1379.lcssa.i, %5
  br i1 %i.rj, label %.lr.ph591.i.preheader, label %._crit_edge.i

.lr.ph591.i.preheader:                            ; preds = %.preheader473.i
  %i.rk = xor i32 %.1379.lcssa.i, -1
  %i.rl = add i32 %5, %i.rk                       ; 2 uses
  %i.rm = zext i32 %i.rl to i64
  %i.rn = add nuw nsw i64 %i.rm, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.rl, 7
  br i1 %min.iters.check, label %.lr.ph591.i.preheader182, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph591.i.preheader
  %scevgep = getelementptr i8, ptr %.18.lcssa.i, i64 2
  %i.ro = xor i32 %.1379.lcssa.i, -1
  %i.rp = add i32 %5, %i.ro
  %i.rq = zext i32 %i.rp to i64                   ; 2 uses
  %i.rr = shl nuw nsw i64 %i.rq, 1
  %scevgep139 = getelementptr i8, ptr %scevgep, i64 %i.rr ; 2 uses
  %scevgep140 = getelementptr i8, ptr %.1382.lcssa.i, i64 %i.pr
  %i.rs = getelementptr i8, ptr %.1382.lcssa.i, i64 %i.pr
  %scevgep141 = getelementptr i8, ptr %i.rs, i64 4
  %i.rt = shl nuw nsw i64 %i.rq, 2                ; 2 uses
  %scevgep142 = getelementptr i8, ptr %scevgep141, i64 %i.rt
  %scevgep143 = getelementptr i8, ptr %.1382.lcssa.i, i64 4
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.rt
  %bound0 = icmp ult ptr %.18.lcssa.i, %scevgep142
  %bound1 = icmp ult ptr %scevgep140, %scevgep139
  %found.conflict = and i1 %bound0, %bound1
  %bound0145 = icmp ult ptr %.18.lcssa.i, %scevgep144
  %bound1146 = icmp ult ptr %.1382.lcssa.i, %scevgep139
  %found.conflict147 = and i1 %bound0145, %bound1146
  %conflict.rdx = or i1 %found.conflict, %found.conflict147
  br i1 %conflict.rdx, label %.lr.ph591.i.preheader182, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.rn, 8589934584              ; 5 uses
  %i.ru = shl nuw nsw i64 %n.vec, 1
  %i.rv = getelementptr i8, ptr %.18.lcssa.i, i64 %i.ru ; 2 uses
  %i.rw = trunc i64 %n.vec to i32
  %i.rx = add i32 %.1379.lcssa.i, %i.rw
  %i.ry = shl nuw nsw i64 %n.vec, 2
  %i.rz = getelementptr i8, ptr %.1382.lcssa.i, i64 %i.ry
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.qg, i64 0
  %broadcast.splatinsert148 = insertelement <8 x float> poison, float %i.qi, i64 0
  %i.sa = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert148, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.sb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.18.lcssa.i, i64 %i.sb
  %i.sc = shl i64 %index, 2
  %next.gep150 = getelementptr i8, ptr %.1382.lcssa.i, i64 %i.sc ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep150, align 4, !tbaa !68, !alias.scope !934
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %next.gep150, i64 %i.n
  %wide.load151 = load <8 x float>, ptr %i.sd, align 4, !tbaa !68, !alias.scope !935
  %i.se = shufflevector <8 x float> %wide.load, <8 x float> %wide.load151, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sf = fmul fast <16 x float> %i.se, %i.sa
  %i.sg = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.sf)
  %i.sh = fptosi <16 x float> %i.sg to <16 x i32>
  %i.si = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.sh, <16 x i32> splat (i32 -127))
  %i.sj = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.si, <16 x i32> splat (i32 127))
  %interleaved.vec = trunc nsw <16 x i32> %i.sj to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !89, !alias.scope !936, !noalias !937
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sk = icmp eq i64 %index.next, %n.vec
  br i1 %i.sk, label %middle.block, label %vector.body, !llvm.loop !923

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph591.i.preheader182

.lr.ph591.i.preheader182:                         ; preds = %vector.memcheck, %.lr.ph591.i.preheader, %middle.block
  %.19590.i.ph = phi ptr [ %.18.lcssa.i, %vector.memcheck ], [ %.18.lcssa.i, %.lr.ph591.i.preheader ], [ %i.rv, %middle.block ]
  %.2380589.i.ph = phi i32 [ %.1379.lcssa.i, %vector.memcheck ], [ %.1379.lcssa.i, %.lr.ph591.i.preheader ], [ %i.rx, %middle.block ]
  %.2383588.i.ph = phi ptr [ %.1382.lcssa.i, %vector.memcheck ], [ %.1382.lcssa.i, %.lr.ph591.i.preheader ], [ %i.rz, %middle.block ]
  br label %.lr.ph591.i

.lr.ph584.i:                                      ; preds = %.preheader474.i, %.lr.ph584.i
  %.18583.i = phi ptr [ %i.ta, %.lr.ph584.i ], [ %.17.lcssa.i, %.preheader474.i ] ; 2 uses
  %.1379582.i = phi i32 [ %i.tc, %.lr.ph584.i ], [ %.0378.lcssa.i, %.preheader474.i ]
  %.1382581.i = phi ptr [ %i.tb, %.lr.ph584.i ], [ %.0381.lcssa.i, %.preheader474.i ] ; 3 uses
  %i.sl = load i64, ptr %.1382581.i, align 1, !tbaa !89
  %i.sm = insertelement <2 x i64> poison, i64 %i.sl, i64 0
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %.1382581.i, i64 %i.n
  %i.so = load i64, ptr %i.sn, align 1, !tbaa !89
  %.uncasted.i = insertelement <2 x i64> %i.sm, i64 %i.so, i64 1
  %i.sp = bitcast <2 x i64> %.uncasted.i to <4 x float>
  %i.sq = fmul fast <4 x float> %i.ql, %i.sp      ; 2 uses
  %i.sr = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sq)
  %i.ss = fadd fast <4 x float> %i.sr, %i.sq
  %i.st = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ss)
  %i.su = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.st, <4 x i32> poison)
  %i.sv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.su, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.sw = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.sv, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.sx = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.sw, <8 x i16> poison)
  %i.sy = bitcast <16 x i8> %i.sx to <4 x i32>
  %i.sz = extractelement <4 x i32> %i.sy, i64 0
  store i32 %i.sz, ptr %.18583.i, align 4, !tbaa !50
  %i.ta = getelementptr inbounds nuw i8, ptr %.18583.i, i64 4 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.1382581.i, i64 8 ; 2 uses
  %i.tc = add nuw nsw i32 %.1379582.i, 2          ; 3 uses
  %i.td = or disjoint i32 %i.tc, 1
  %i.te = icmp slt i32 %i.td, %5
  br i1 %i.te, label %.lr.ph584.i, label %.preheader473.i, !llvm.loop !924

.lr.ph591.i:                                      ; preds = %.lr.ph591.i.preheader182, %.lr.ph591.i
  %.19590.i = phi ptr [ %i.tp, %.lr.ph591.i ], [ %.19590.i.ph, %.lr.ph591.i.preheader182 ] ; 3 uses
  %.2380589.i = phi i32 [ %i.tr, %.lr.ph591.i ], [ %.2380589.i.ph, %.lr.ph591.i.preheader182 ]
  %.2383588.i = phi ptr [ %i.tq, %.lr.ph591.i ], [ %.2383588.i.ph, %.lr.ph591.i.preheader182 ] ; 3 uses
  %i.tf = load float, ptr %.2383588.i, align 4, !tbaa !68
  %i.tg = fmul fast float %i.tf, %i.qg
  %i.th = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.tg)
  %i.ti = fptosi float %i.th to i32
  %spec.select.i412460.i = tail call i32 @llvm.smax.i32(i32 %i.ti, i32 -127)
  %.0.i413461.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i412460.i, i32 127)
  %.0.i413.i = trunc nsw i32 %.0.i413461.i to i8
  store i8 %.0.i413.i, ptr %.19590.i, align 1, !tbaa !89
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %.2383588.i, i64 %i.n
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !68
  %i.tl = fmul fast float %i.tk, %i.qi
  %i.tm = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.tl)
  %i.tn = fptosi float %i.tm to i32
  %spec.select.i410462.i = tail call i32 @llvm.smax.i32(i32 %i.tn, i32 -127)
  %.0.i411463.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i410462.i, i32 127)
  %.0.i411.i = trunc nsw i32 %.0.i411463.i to i8
  %i.to = getelementptr inbounds nuw i8, ptr %.19590.i, i64 1
  store i8 %.0.i411.i, ptr %i.to, align 1, !tbaa !89
  %i.tp = getelementptr inbounds nuw i8, ptr %.19590.i, i64 2 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.2383588.i, i64 4
  %i.tr = add nuw nsw i32 %.2380589.i, 1          ; 2 uses
  %exitcond664.not.i = icmp eq i32 %i.tr, %5
  br i1 %exitcond664.not.i, label %._crit_edge.i, label %.lr.ph591.i, !llvm.loop !925

._crit_edge.i:                                    ; preds = %.lr.ph591.i, %middle.block, %.preheader473.i
  %.19.lcssa.i = phi ptr [ %.18.lcssa.i, %.preheader473.i ], [ %i.rv, %middle.block ], [ %i.tp, %.lr.ph591.i ] ; 2 uses
  %indvars.iv.next666.i = add nuw nsw i64 %indvars.iv665.i, 2 ; 3 uses
  %i.ts = icmp slt i64 %indvars.iv.next666.i, %invariant.op717.i
  br i1 %i.ts, label %bb.l, label %.preheader472.loopexit.i, !llvm.loop !926

bb.m:                                             ; preds = %._crit_edge610.i, %.lr.ph614.i
  %indvars.iv669.i = phi i64 [ %i.px, %.lr.ph614.i ], [ %indvars.iv.next670.i, %._crit_edge610.i ] ; 2 uses
  %.20613.i = phi ptr [ %.16.lcssa.i, %.lr.ph614.i ], [ %.22.lcssa.i, %._crit_edge610.i ] ; 2 uses
  %i.tt = load ptr, ptr %0, align 8, !tbaa !24
  %i.tu = add nsw i64 %indvars.iv669.i, %i.py     ; 2 uses
  %i.tv = mul i64 %i.tu, %i.n
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %i.tv
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.tw, i64 %i.pu ; 2 uses
  %i.ty = load ptr, ptr %6, align 8, !tbaa !24
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.tu
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !68 ; 5 uses
  %i.ub = insertelement <4 x float> poison, float %i.ua, i64 0
  %i.uc = shufflevector <4 x float> %i.ub, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.pv, label %.lr.ph602.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph602.i, %bb.m
  %.21.lcssa.i = phi ptr [ %.20613.i, %bb.m ], [ %i.vt, %.lr.ph602.i ] ; 7 uses
  %.0352.lcssa.i = phi ptr [ %i.tx, %bb.m ], [ %i.vu, %.lr.ph602.i ] ; 6 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.m ], [ %i.pw, %.lr.ph602.i ] ; 6 uses
  %i.ud = icmp slt i32 %.0.lcssa.i, %5
  br i1 %i.ud, label %.lr.ph609.i.preheader, label %._crit_edge610.i

.lr.ph609.i.preheader:                            ; preds = %.preheader.i
  %i.ue = xor i32 %.0.lcssa.i, -1
  %i.uf = add i32 %5, %i.ue                       ; 2 uses
  %i.ug = zext i32 %i.uf to i64
  %i.uh = add nuw nsw i64 %i.ug, 1                ; 2 uses
  %min.iters.check163 = icmp ult i32 %i.uf, 7
  br i1 %min.iters.check163, label %.lr.ph609.i.preheader179, label %vector.memcheck154

vector.memcheck154:                               ; preds = %.lr.ph609.i.preheader
  %scevgep155 = getelementptr i8, ptr %.21.lcssa.i, i64 1
  %i.ui = xor i32 %.0.lcssa.i, -1
  %i.uj = add i32 %5, %i.ui
  %i.uk = zext i32 %i.uj to i64                   ; 2 uses
  %scevgep156 = getelementptr i8, ptr %scevgep155, i64 %i.uk
  %scevgep157 = getelementptr i8, ptr %.0352.lcssa.i, i64 4
  %i.ul = shl nuw nsw i64 %i.uk, 2
  %scevgep158 = getelementptr i8, ptr %scevgep157, i64 %i.ul
end_hunk_1
