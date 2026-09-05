Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avxvnni?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4ncnn42transpose_pack_B_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiif:bb.a
  br i1 %brmerge807.i, label %.lr.ph731.i.split.us.split.us, label %.loopexit657.i.us

.lr.ph731.i.split.us.split.us:                    ; preds = %.lr.ph731.i.split.us
  br i1 %i.gq, label %.loopexit657.i.us.us.us, label %.loopexit657.i.us.us.preheader

.loopexit657.i.us.us.preheader:                   ; preds = %.lr.ph731.i.split.us.split.us
  %i.gz = add nuw nsw i64 %i.gt, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.gz)
  %i.ha = xor i64 %i.gt, -1
  %i.hb = add nsw i64 %smax, %i.ha
  %i.hc = and i64 %i.hb, -4
  %i.hd = add i64 %i.hc, %i.gt
  %i.he = add i64 %i.hd, 4
  br label %.preheader652.loopexit.i

.loopexit657.i.us.us.us:                          ; preds = %.lr.ph731.i.split.us.split.us, %.loopexit654.i.us.us.us
  %indvars.iv865.i.us.us.us = phi i64 [ %indvars.iv.next866.i.us.us.us, %.loopexit654.i.us.us.us ], [ %i.gt, %.lr.ph731.i.split.us.split.us ] ; 2 uses
  %.9730.i.us.us.us = phi ptr [ %.17.i.us.us.us, %.loopexit654.i.us.us.us ], [ %.0427.lcssa.i, %.lr.ph731.i.split.us.split.us ] ; 2 uses
  %i.hf = load ptr, ptr %0, align 8, !tbaa !14
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.gj
  %i.hh = add nsw i64 %indvars.iv865.i.us.us.us, %i.gv
  %i.hi = mul nuw nsw i64 %i.hh, %i.gw
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.hi ; 2 uses
  br i1 %i.gr, label %.lr.ph713.i.us.us.us, label %.preheader655.i.us.us.us

.lr.ph713.i.us.us.us:                             ; preds = %.loopexit657.i.us.us.us, %.lr.ph713.i.us.us.us
  %.14712.i.us.us.us = phi ptr [ %i.iq, %.lr.ph713.i.us.us.us ], [ %.9730.i.us.us.us, %.loopexit657.i.us.us.us ] ; 2 uses
  %.4460711.i.us.us.us = phi ptr [ %i.ir, %.lr.ph713.i.us.us.us ], [ %i.hj, %.loopexit657.i.us.us.us ] ; 5 uses
  %.0474710.i.us.us.us = phi i32 [ %i.is, %.lr.ph713.i.us.us.us ], [ 0, %.loopexit657.i.us.us.us ]
  %i.hk = load <4 x float>, ptr %.4460711.i.us.us.us, align 1, !tbaa !17
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.4460711.i.us.us.us, i64 %i.l
  %i.hm = load <4 x float>, ptr %i.hl, align 1, !tbaa !17
  %i.hn = getelementptr inbounds nuw i8, ptr %.4460711.i.us.us.us, i64 %.idx486.i
  %i.ho = load <4 x float>, ptr %i.hn, align 1, !tbaa !17
  %i.hp = getelementptr inbounds nuw i8, ptr %.4460711.i.us.us.us, i64 %.idx487.i
  %i.hq = load <4 x float>, ptr %i.hp, align 1, !tbaa !17
  %i.hr = fmul fast <4 x float> %i.hk, %i.gp      ; 2 uses
  %i.hs = fmul fast <4 x float> %i.hm, %i.gp      ; 2 uses
  %i.ht = fmul fast <4 x float> %i.ho, %i.gp      ; 2 uses
  %i.hu = fmul fast <4 x float> %i.hq, %i.gp      ; 2 uses
  %i.hv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hr)
  %i.hw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hs)
  %i.hx = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ht)
  %i.hy = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hu)
  %i.hz = fadd fast <4 x float> %i.hv, %i.hr
  %i.ia = fadd fast <4 x float> %i.hw, %i.hs
  %i.ib = fadd fast <4 x float> %i.hx, %i.ht
  %i.ic = fadd fast <4 x float> %i.hy, %i.hu
  %i.id = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hz)
  %i.ie = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ia)
  %i.if = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ib)
  %i.ig = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ic)
  %i.ih = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.id, <4 x i32> %i.ie)
  %i.ii = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.if, <4 x i32> %i.ig)
  %i.ij = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ih, <8 x i16> splat (i16 -127))
  %i.ik = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ij, <8 x i16> splat (i16 127))
  %i.il = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ii, <8 x i16> splat (i16 -127))
  %i.im = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.il, <8 x i16> splat (i16 127))
  %i.in = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ik, <8 x i16> %i.im)
  %i.io = add <16 x i8> %i.in, splat (i8 127)
  %i.ip = shufflevector <16 x i8> %i.io, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %i.ip, ptr %.14712.i.us.us.us, align 1, !tbaa !17
  %i.iq = getelementptr inbounds nuw i8, ptr %.14712.i.us.us.us, i64 16 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.4460711.i.us.us.us, i64 %.idx489.i ; 2 uses
  %i.is = add nuw nsw i32 %.0474710.i.us.us.us, 4 ; 2 uses
  %i.it = or disjoint i32 %i.is, 3
  %i.iu = icmp slt i32 %i.it, %5
  br i1 %i.iu, label %.lr.ph713.i.us.us.us, label %.preheader655.i.us.us.us, !llvm.loop !296

.preheader655.i.us.us.us:                         ; preds = %.lr.ph713.i.us.us.us, %.loopexit657.i.us.us.us
  %.0474.lcssa.i.us.us.us = phi i32 [ 0, %.loopexit657.i.us.us.us ], [ %i.gs, %.lr.ph713.i.us.us.us ] ; 3 uses
  %.4460.lcssa.i.us.us.us = phi ptr [ %i.hj, %.loopexit657.i.us.us.us ], [ %i.ir, %.lr.ph713.i.us.us.us ] ; 2 uses
  %.14.lcssa.i.us.us.us = phi ptr [ %.9730.i.us.us.us, %.loopexit657.i.us.us.us ], [ %i.iq, %.lr.ph713.i.us.us.us ] ; 2 uses
  %i.iv = or disjoint i32 %.0474.lcssa.i.us.us.us, 1
  %i.iw = icmp slt i32 %i.iv, %5
  br i1 %i.iw, label %.lr.ph720.i.us.us.us, label %.preheader653.i.us.us.us

.lr.ph720.i.us.us.us:                             ; preds = %.preheader655.i.us.us.us, %.lr.ph720.i.us.us.us
  %.15719.i.us.us.us = phi ptr [ %i.jq, %.lr.ph720.i.us.us.us ], [ %.14.lcssa.i.us.us.us, %.preheader655.i.us.us.us ] ; 2 uses
  %.5461718.i.us.us.us = phi ptr [ %i.jr, %.lr.ph720.i.us.us.us ], [ %.4460.lcssa.i.us.us.us, %.preheader655.i.us.us.us ] ; 3 uses
  %.1475717.i.us.us.us = phi i32 [ %i.js, %.lr.ph720.i.us.us.us ], [ %.0474.lcssa.i.us.us.us, %.preheader655.i.us.us.us ]
  %i.ix = load <4 x float>, ptr %.5461718.i.us.us.us, align 1, !tbaa !17
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.5461718.i.us.us.us, i64 %i.l
  %i.iz = load <4 x float>, ptr %i.iy, align 1, !tbaa !17
  %i.ja = fmul fast <4 x float> %i.ix, %i.gp      ; 2 uses
  %i.jb = fmul fast <4 x float> %i.iz, %i.gp      ; 2 uses
  %i.jc = shufflevector <4 x float> %i.ja, <4 x float> %i.jb, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.jd = shufflevector <4 x float> %i.ja, <4 x float> %i.jb, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.je = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.jc)
  %i.jf = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.jd)
  %i.jg = fadd fast <4 x float> %i.je, %i.jc
  %i.jh = fadd fast <4 x float> %i.jf, %i.jd
  %i.ji = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jg)
  %i.jj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jh)
  %i.jk = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ji, <4 x i32> %i.jj)
  %i.jl = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.jk, <8 x i16> splat (i16 -127))
  %i.jm = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.jl, <8 x i16> splat (i16 127))
  %i.jn = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.jm, <8 x i16> poison)
  %i.jo = bitcast <16 x i8> %i.jn to <2 x i64>
  %i.jp = extractelement <2 x i64> %i.jo, i64 0
  store i64 %i.jp, ptr %.15719.i.us.us.us, align 8, !tbaa !30
  %i.jq = getelementptr inbounds nuw i8, ptr %.15719.i.us.us.us, i64 8 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.5461718.i.us.us.us, i64 %.idx486.i ; 2 uses
  %i.js = add nuw nsw i32 %.1475717.i.us.us.us, 2 ; 3 uses
  %i.jt = or disjoint i32 %i.js, 1
  %i.ju = icmp slt i32 %i.jt, %5
  br i1 %i.ju, label %.lr.ph720.i.us.us.us, label %.preheader653.i.us.us.us, !llvm.loop !297

.preheader653.i.us.us.us:                         ; preds = %.lr.ph720.i.us.us.us, %.preheader655.i.us.us.us
  %.1475.lcssa.i.us.us.us = phi i32 [ %.0474.lcssa.i.us.us.us, %.preheader655.i.us.us.us ], [ %i.js, %.lr.ph720.i.us.us.us ] ; 5 uses
  %.5461.lcssa.i.us.us.us = phi ptr [ %.4460.lcssa.i.us.us.us, %.preheader655.i.us.us.us ], [ %i.jr, %.lr.ph720.i.us.us.us ] ; 3 uses
  %.15.lcssa.i.us.us.us = phi ptr [ %.14.lcssa.i.us.us.us, %.preheader655.i.us.us.us ], [ %i.jq, %.lr.ph720.i.us.us.us ] ; 4 uses
  %i.jv = icmp slt i32 %.1475.lcssa.i.us.us.us, %5
  br i1 %i.jv, label %.lr.ph727.i.us.us.us.preheader, label %.loopexit654.i.us.us.us

.lr.ph727.i.us.us.us.preheader:                   ; preds = %.preheader653.i.us.us.us
  %i.jw = sub i32 %5, %.1475.lcssa.i.us.us.us
  %.neg = add i32 %.1475.lcssa.i.us.us.us, 1
  %xtraiter = and i32 %i.jw, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph727.i.us.us.us.prol.loopexit, label %.lr.ph727.i.us.us.us.prol

.lr.ph727.i.us.us.us.prol:                        ; preds = %.lr.ph727.i.us.us.us.preheader
  %i.jx = load <4 x float>, ptr %.5461.lcssa.i.us.us.us, align 1, !tbaa !17
  %i.jy = fmul fast <4 x float> %i.jx, %i.gp      ; 2 uses
  %i.jz = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.jy)
  %i.ka = fadd fast <4 x float> %i.jz, %i.jy
  %i.kb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ka) ; 2 uses
  %i.kc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kb, <4 x i32> %i.kb)
  %i.kd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.kc, <8 x i16> splat (i16 -127))
  %i.ke = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.kd, <8 x i16> splat (i16 127))
  %i.kf = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ke, <8 x i16> poison)
  %i.kg = bitcast <16 x i8> %i.kf to <4 x i32>
  %i.kh = extractelement <4 x i32> %i.kg, i64 0
  store i32 %i.kh, ptr %.15.lcssa.i.us.us.us, align 4, !tbaa !23
  %i.ki = getelementptr inbounds nuw i8, ptr %.15.lcssa.i.us.us.us, i64 4 ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.5461.lcssa.i.us.us.us, i64 %i.l
  %i.kk = add nuw nsw i32 %.1475.lcssa.i.us.us.us, 1
  br label %.lr.ph727.i.us.us.us.prol.loopexit

.lr.ph727.i.us.us.us.prol.loopexit:               ; preds = %.lr.ph727.i.us.us.us.prol, %.lr.ph727.i.us.us.us.preheader
  %.lcssa196.unr = phi ptr [ poison, %.lr.ph727.i.us.us.us.preheader ], [ %i.ki, %.lr.ph727.i.us.us.us.prol ]
  %.16726.i.us.us.us.unr = phi ptr [ %.15.lcssa.i.us.us.us, %.lr.ph727.i.us.us.us.preheader ], [ %i.ki, %.lr.ph727.i.us.us.us.prol ]
  %.6462725.i.us.us.us.unr = phi ptr [ %.5461.lcssa.i.us.us.us, %.lr.ph727.i.us.us.us.preheader ], [ %i.kj, %.lr.ph727.i.us.us.us.prol ]
  %.2476724.i.us.us.us.unr = phi i32 [ %.1475.lcssa.i.us.us.us, %.lr.ph727.i.us.us.us.preheader ], [ %i.kk, %.lr.ph727.i.us.us.us.prol ]
  %i.kl = icmp eq i32 %5, %.neg
  br i1 %i.kl, label %.loopexit654.i.us.us.us, label %.lr.ph727.i.us.us.us

.lr.ph727.i.us.us.us:                             ; preds = %.lr.ph727.i.us.us.us.prol.loopexit, %.lr.ph727.i.us.us.us
  %.16726.i.us.us.us = phi ptr [ %i.lk, %.lr.ph727.i.us.us.us ], [ %.16726.i.us.us.us.unr, %.lr.ph727.i.us.us.us.prol.loopexit ] ; 3 uses
  %.6462725.i.us.us.us = phi ptr [ %i.ll, %.lr.ph727.i.us.us.us ], [ %.6462725.i.us.us.us.unr, %.lr.ph727.i.us.us.us.prol.loopexit ] ; 2 uses
  %.2476724.i.us.us.us = phi i32 [ %i.lm, %.lr.ph727.i.us.us.us ], [ %.2476724.i.us.us.us.unr, %.lr.ph727.i.us.us.us.prol.loopexit ]
  %i.km = load <4 x float>, ptr %.6462725.i.us.us.us, align 1, !tbaa !17
  %i.kn = fmul fast <4 x float> %i.km, %i.gp      ; 2 uses
  %i.ko = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.kn)
  %i.kp = fadd fast <4 x float> %i.ko, %i.kn
  %i.kq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kp) ; 2 uses
  %i.kr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kq, <4 x i32> %i.kq)
  %i.ks = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.kr, <8 x i16> splat (i16 -127))
  %i.kt = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ks, <8 x i16> splat (i16 127))
  %i.ku = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.kt, <8 x i16> poison)
  %i.kv = bitcast <16 x i8> %i.ku to <4 x i32>
  %i.kw = extractelement <4 x i32> %i.kv, i64 0
  store i32 %i.kw, ptr %.16726.i.us.us.us, align 4, !tbaa !23
  %i.kx = getelementptr inbounds nuw i8, ptr %.16726.i.us.us.us, i64 4
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.6462725.i.us.us.us, i64 %i.l ; 2 uses
  %i.kz = load <4 x float>, ptr %i.ky, align 1, !tbaa !17
  %i.la = fmul fast <4 x float> %i.kz, %i.gp      ; 2 uses
  %i.lb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.la)
  %i.lc = fadd fast <4 x float> %i.lb, %i.la
  %i.ld = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lc) ; 2 uses
  %i.le = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ld, <4 x i32> %i.ld)
  %i.lf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.le, <8 x i16> splat (i16 -127))
  %i.lg = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.lf, <8 x i16> splat (i16 127))
  %i.lh = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.lg, <8 x i16> poison)
  %i.li = bitcast <16 x i8> %i.lh to <4 x i32>
  %i.lj = extractelement <4 x i32> %i.li, i64 0
  store i32 %i.lj, ptr %i.kx, align 4, !tbaa !23
  %i.lk = getelementptr inbounds nuw i8, ptr %.16726.i.us.us.us, i64 8 ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.l
  %i.lm = add nuw nsw i32 %.2476724.i.us.us.us, 2 ; 2 uses
  %exitcond864.not.i.us.us.us.1 = icmp eq i32 %i.lm, %5
  br i1 %exitcond864.not.i.us.us.us.1, label %.loopexit654.i.us.us.us, label %.lr.ph727.i.us.us.us, !llvm.loop !298

.loopexit654.i.us.us.us:                          ; preds = %.lr.ph727.i.us.us.us.prol.loopexit, %.lr.ph727.i.us.us.us, %.preheader653.i.us.us.us
  %.17.i.us.us.us = phi ptr [ %.15.lcssa.i.us.us.us, %.preheader653.i.us.us.us ], [ %.lcssa196.unr, %.lr.ph727.i.us.us.us.prol.loopexit ], [ %i.lk, %.lr.ph727.i.us.us.us ] ; 2 uses
  %indvars.iv.next866.i.us.us.us = add nuw nsw i64 %indvars.iv865.i.us.us.us, 4 ; 3 uses
  %i.ln = icmp slt i64 %indvars.iv.next866.i.us.us.us, %invariant.op.i
  br i1 %i.ln, label %.loopexit657.i.us.us.us, label %.preheader652.loopexit.i, !llvm.loop !299

.loopexit657.i.us:                                ; preds = %.lr.ph731.i.split.us, %.loopexit654.i.loopexit10.us
  %indvars.iv865.i.us = phi i64 [ %indvars.iv.next866.i.us, %.loopexit654.i.loopexit10.us ], [ %i.gt, %.lr.ph731.i.split.us ] ; 2 uses
  %.9730.i.us = phi ptr [ %i.my, %.loopexit654.i.loopexit10.us ], [ %.0427.lcssa.i, %.lr.ph731.i.split.us ]
  %i.lo = load ptr, ptr %0, align 8, !tbaa !14
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.gj
  %i.lq = add nsw i64 %indvars.iv865.i.us, %i.gv
  %i.lr = mul nsw i64 %i.lq, %i.gw
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.lr
  br label %.lr.ph707.i.us

.lr.ph707.i.us:                                   ; preds = %.loopexit657.i.us, %.lr.ph707.i.us
  %.12706.i.us = phi ptr [ %i.my, %.lr.ph707.i.us ], [ %.9730.i.us, %.loopexit657.i.us ] ; 2 uses
  %.2458705.i.us = phi ptr [ %i.mz, %.lr.ph707.i.us ], [ %i.ls, %.loopexit657.i.us ] ; 5 uses
  %.0473704.i.us = phi i32 [ %i.na, %.lr.ph707.i.us ], [ 0, %.loopexit657.i.us ]
  %i.lt = load <4 x float>, ptr %.2458705.i.us, align 16, !tbaa !17
  %i.lu = getelementptr inbounds nuw i8, ptr %.2458705.i.us, i64 16
  %i.lv = load <4 x float>, ptr %i.lu, align 16, !tbaa !17
  %i.lw = getelementptr inbounds nuw i8, ptr %.2458705.i.us, i64 32
  %i.lx = load <4 x float>, ptr %i.lw, align 16, !tbaa !17
  %i.ly = getelementptr inbounds nuw i8, ptr %.2458705.i.us, i64 48
  %i.lz = load <4 x float>, ptr %i.ly, align 16, !tbaa !17
  %i.ma = fmul fast <4 x float> %i.lt, %i.gp      ; 2 uses
  %i.mb = fmul fast <4 x float> %i.lv, %i.gp      ; 2 uses
  %i.mc = fmul fast <4 x float> %i.lx, %i.gp      ; 2 uses
  %i.md = fmul fast <4 x float> %i.lz, %i.gp      ; 2 uses
  %i.me = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ma)
  %i.mf = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.mb)
  %i.mg = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.mc)
  %i.mh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.md)
  %i.mi = fadd fast <4 x float> %i.me, %i.ma
  %i.mj = fadd fast <4 x float> %i.mf, %i.mb
  %i.mk = fadd fast <4 x float> %i.mg, %i.mc
  %i.ml = fadd fast <4 x float> %i.mh, %i.md
  %i.mm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mi)
  %i.mn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mj)
  %i.mo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mk)
  %i.mp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ml)
  %i.mq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mm, <4 x i32> %i.mn)
  %i.mr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mo, <4 x i32> %i.mp)
  %i.ms = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mq, <8 x i16> splat (i16 -127))
  %i.mt = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ms, <8 x i16> splat (i16 127))
  %i.mu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mr, <8 x i16> splat (i16 -127))
  %i.mv = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mu, <8 x i16> splat (i16 127))
  %i.mw = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.mt, <8 x i16> %i.mv)
  %i.mx = add <16 x i8> %i.mw, splat (i8 127)
  store <16 x i8> %i.mx, ptr %.12706.i.us, align 16, !tbaa !17
  %i.my = getelementptr inbounds nuw i8, ptr %.12706.i.us, i64 16 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.2458705.i.us, i64 %.idx489.i
  %i.na = add nuw nsw i32 %.0473704.i.us, 4       ; 2 uses
  %i.nb = or disjoint i32 %i.na, 3
  %i.nc = icmp slt i32 %i.nb, %5
  br i1 %i.nc, label %.lr.ph707.i.us, label %.loopexit654.i.loopexit10.us, !llvm.loop !300

.loopexit654.i.loopexit10.us:                     ; preds = %.lr.ph707.i.us
  %indvars.iv.next866.i.us = add nuw nsw i64 %indvars.iv865.i.us, 4 ; 3 uses
  %i.nd = icmp slt i64 %indvars.iv.next866.i.us, %invariant.op.i
  br i1 %i.nd, label %.loopexit657.i.us, label %.preheader652.loopexit.i, !llvm.loop !299

.lr.ph.i.preheader:                               ; preds = %.lr.ph695.i, %.loopexit660.i.loopexit13
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit660.i.loopexit13 ], [ 0, %.lr.ph695.i ] ; 2 uses
  %.0427694.i = phi ptr [ %i.qz, %.loopexit660.i.loopexit13 ], [ %i.m, %.lr.ph695.i ]
  %i.ne = load ptr, ptr %0, align 8, !tbaa !14
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.p
  %i.ng = add nsw i64 %indvars.iv.i, %i.y
  %i.nh = mul nsw i64 %i.ng, %i.z
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.nf, i64 %i.nh
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.1428666.i = phi ptr [ %i.qz, %.lr.ph.i ], [ %.0427694.i, %.lr.ph.i.preheader ] ; 3 uses
  %.0441665.i = phi ptr [ %i.ra, %.lr.ph.i ], [ %i.ni, %.lr.ph.i.preheader ] ; 9 uses
  %.0448664.i = phi i32 [ %i.rb, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.nj = load <8 x float>, ptr %.0441665.i, align 32, !tbaa !17
  %i.nk = getelementptr inbounds nuw i8, ptr %.0441665.i, i64 32
  %i.nl = load <8 x float>, ptr %i.nk, align 32, !tbaa !17
  %i.nm = getelementptr inbounds nuw i8, ptr %.0441665.i, i64 64
  %i.nn = load <8 x float>, ptr %i.nm, align 32, !tbaa !17
  %i.no = getelementptr inbounds nuw i8, ptr %.0441665.i, i64 96
  %i.np = load <8 x float>, ptr %i.no, align 32, !tbaa !17
  %i.nq = getelementptr inbounds nuw i8, ptr %.0441665.i, i64 128
  %i.nr = load <8 x float>, ptr %i.nq, align 32, !tbaa !17
  %i.ns = getelementptr inbounds nuw i8, ptr %.0441665.i, i64 160
  %i.nt = load <8 x float>, ptr %i.ns, align 32, !tbaa !17
  %i.nu = getelementptr inbounds nuw i8, ptr %.0441665.i, i64 192
  %i.nv = load <8 x float>, ptr %i.nu, align 32, !tbaa !17
  %i.nw = getelementptr inbounds nuw i8, ptr %.0441665.i, i64 224
  %i.nx = load <8 x float>, ptr %i.nw, align 32, !tbaa !17
  %i.ny = fmul fast <8 x float> %i.nj, %i.s       ; 2 uses
  %i.nz = fmul fast <8 x float> %i.nl, %i.s       ; 2 uses
  %i.oa = fmul fast <8 x float> %i.nn, %i.s       ; 2 uses
  %i.ob = fmul fast <8 x float> %i.np, %i.s       ; 2 uses
  %i.oc = fmul fast <8 x float> %i.nr, %i.s       ; 2 uses
  %i.od = fmul fast <8 x float> %i.nt, %i.s       ; 2 uses
  %i.oe = fmul fast <8 x float> %i.nv, %i.s       ; 2 uses
  %i.of = fmul fast <8 x float> %i.nx, %i.s       ; 2 uses
  %i.og = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ny)
  %i.oh = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.oa)
  %i.oi = fadd fast <8 x float> %i.og, %i.ny
  %i.oj = fadd fast <8 x float> %i.oh, %i.oa
  %i.ok = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.oi)
  %i.ol = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.oj)
  %i.om = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ok, <8 x i32> %i.ol)
  %i.on = bitcast <16 x i16> %i.om to <4 x i64>
  %i.oo = shufflevector <4 x i64> %i.on, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.op = bitcast <4 x i64> %i.oo to <16 x i16>
  %i.oq = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.op, <16 x i16> splat (i16 -127))
  %i.or = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.oq, <16 x i16> splat (i16 127))
  %i.os = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.or, <16 x i16> poison)
  %i.ot = bitcast <32 x i8> %i.os to <4 x i64>
  %i.ou = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.nz)
  %i.ov = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ob)
  %i.ow = fadd fast <8 x float> %i.ou, %i.nz
  %i.ox = fadd fast <8 x float> %i.ov, %i.ob
  %i.oy = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ow)
  %i.oz = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ox)
  %i.pa = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.oy, <8 x i32> %i.oz)
  %i.pb = bitcast <16 x i16> %i.pa to <4 x i64>
  %i.pc = shufflevector <4 x i64> %i.pb, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.pd = bitcast <4 x i64> %i.pc to <16 x i16>
  %i.pe = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.pd, <16 x i16> splat (i16 -127))
  %i.pf = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.pe, <16 x i16> splat (i16 127))
  %i.pg = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.pf, <16 x i16> poison)
  %i.ph = bitcast <32 x i8> %i.pg to <4 x i64>
  %i.pi = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.oc)
  %i.pj = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.oe)
  %i.pk = fadd fast <8 x float> %i.pi, %i.oc
  %i.pl = fadd fast <8 x float> %i.pj, %i.oe
  %i.pm = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.pk)
  %i.pn = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.pl)
  %i.po = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.pm, <8 x i32> %i.pn)
  %i.pp = bitcast <16 x i16> %i.po to <4 x i64>
  %i.pq = shufflevector <4 x i64> %i.pp, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.pr = bitcast <4 x i64> %i.pq to <16 x i16>
  %i.ps = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.pr, <16 x i16> splat (i16 -127))
  %i.pt = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.ps, <16 x i16> splat (i16 127))
  %i.pu = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.pt, <16 x i16> poison)
  %i.pv = bitcast <32 x i8> %i.pu to <4 x i64>
  %i.pw = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.od)
  %i.px = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.of)
  %i.py = fadd fast <8 x float> %i.pw, %i.od
  %i.pz = fadd fast <8 x float> %i.px, %i.of
  %i.qa = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.py)
  %i.qb = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.pz)
  %i.qc = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.qa, <8 x i32> %i.qb)
  %i.qd = bitcast <16 x i16> %i.qc to <4 x i64>
  %i.qe = shufflevector <4 x i64> %i.qd, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.qf = bitcast <4 x i64> %i.qe to <16 x i16>
  %i.qg = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.qf, <16 x i16> splat (i16 -127))
  %i.qh = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.qg, <16 x i16> splat (i16 127))
  %i.qi = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.qh, <16 x i16> poison)
  %i.qj = bitcast <32 x i8> %i.qi to <4 x i64>
  %i.qk = shufflevector <4 x i64> %i.ot, <4 x i64> %i.pv, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ql = shufflevector <4 x i64> %i.ph, <4 x i64> %i.qj, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.qm = bitcast <4 x i64> %i.qk to <8 x i32>    ; 2 uses
  %i.qn = bitcast <4 x i64> %i.ql to <8 x i32>    ; 2 uses
  %i.qo = shufflevector <8 x i32> %i.qm, <8 x i32> %i.qn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.qp = bitcast <8 x i32> %i.qo to <4 x i64>    ; 2 uses
  %i.qq = shufflevector <8 x i32> %i.qm, <8 x i32> %i.qn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.qr = bitcast <8 x i32> %i.qq to <4 x i64>    ; 2 uses
  %i.qs = shufflevector <4 x i64> %i.qp, <4 x i64> %i.qr, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.qt = shufflevector <4 x i64> %i.qp, <4 x i64> %i.qr, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.qu = bitcast <4 x i64> %i.qs to <32 x i8>
  %i.qv = add <32 x i8> %i.qu, splat (i8 127)
  %i.qw = bitcast <4 x i64> %i.qt to <32 x i8>
  %i.qx = add <32 x i8> %i.qw, splat (i8 127)
  store <32 x i8> %i.qv, ptr %.1428666.i, align 32, !tbaa !17
  %i.qy = getelementptr inbounds nuw i8, ptr %.1428666.i, i64 32
  store <32 x i8> %i.qx, ptr %i.qy, align 32, !tbaa !17
  %i.qz = getelementptr inbounds nuw i8, ptr %.1428666.i, i64 64 ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.0441665.i, i64 %.idx496.i
  %i.rb = add nuw nsw i32 %.0448664.i, 8          ; 2 uses
  %i.rc = or disjoint i32 %i.rb, 7
  %i.rd = icmp slt i32 %i.rc, %5
  br i1 %i.rd, label %.lr.ph.i, label %.loopexit660.i.loopexit13, !llvm.loop !301

.loopexit660.i.loopexit13:                        ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.re = or disjoint i64 %indvars.iv.next.i, 7
  %i.rf = icmp samesign ult i64 %i.re, %i.x
  br i1 %i.rf, label %.lr.ph.i.preheader, label %.preheader658.loopexit.i, !llvm.loop !294

.preheader652.loopexit.i:                         ; preds = %.loopexit654.i.loopexit11, %.loopexit654.i.loopexit10.us, %.loopexit654.i.us.us.us, %.loopexit657.i.us.us.preheader
  %.us-phi47 = phi ptr [ %.0427.lcssa.i, %.loopexit657.i.us.us.preheader ], [ %i.my, %.loopexit654.i.loopexit10.us ], [ %.17.i.us.us.us, %.loopexit654.i.us.us.us ], [ %i.ys, %.loopexit654.i.loopexit11 ]
  %.us-phi48 = phi i64 [ %i.he, %.loopexit657.i.us.us.preheader ], [ %indvars.iv.next866.i.us, %.loopexit654.i.loopexit10.us ], [ %indvars.iv.next866.i.us.us.us, %.loopexit654.i.us.us.us ], [ %indvars.iv.next866.i, %.loopexit654.i.loopexit11 ]
  %i.rg = trunc nuw nsw i64 %.us-phi48 to i32
  br label %.preheader652.i

.preheader652.i:                                  ; preds = %.preheader652.loopexit.i, %.preheader658.i
  %.1431.lcssa.i = phi i32 [ %.0430.lcssa.i, %.preheader658.i ], [ %i.rg, %.preheader652.loopexit.i ] ; 3 uses
  %.9.lcssa.i = phi ptr [ %.0427.lcssa.i, %.preheader658.i ], [ %.us-phi47, %.preheader652.loopexit.i ] ; 5 uses
  %i.rh = or disjoint i32 %.1431.lcssa.i, 1
  %i.ri = icmp slt i32 %i.rh, %3
  br i1 %i.ri, label %.lr.ph767.i, label %.preheader645.i

.lr.ph767.i:                                      ; preds = %.preheader652.i
  %i.rj = sext i32 %4 to i64
  %i.rk = mul i64 %i.l, %i.rj                     ; 3 uses
  %i.rl = icmp ne i32 %i.c, 8
  %i.rm = insertelement <8 x float> poison, float %6, i64 0
  %i.rn = shufflevector <8 x float> %i.rm, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ro = icmp slt i32 %5, 8
  %.idx484.i = shl i64 %i.l, 5
  %i.rp = insertelement <4 x float> poison, float %6, i64 0
  %i.rq = shufflevector <4 x float> %i.rp, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %.idx483.i = shl i64 %i.l, 4                    ; 2 uses
  %i.rr = icmp eq i32 %i.c, 1
  %i.rs = icmp sgt i32 %5, 3
  %.idx480.i = shl i64 %i.l, 3                    ; 2 uses
  %.idx481.i = mul i64 %i.l, 12
  %i.rt = and i32 %5, -4
  %i.ru = zext i32 %.1431.lcssa.i to i64          ; 6 uses
  %i.rv = sext i32 %3 to i64
  %i.rw = sext i32 %2 to i64                      ; 3 uses
  %i.rx = sext i32 %i.c to i64                    ; 3 uses
  %brmerge810.i = or i1 %i.ro, %i.rl
  %invariant.op943.i = add nsw i64 %i.rv, -1      ; 4 uses
  br i1 %brmerge810.i, label %.lr.ph767.i.split.us, label %.lr.ph737.i.preheader

.lr.ph767.i.split.us:                             ; preds = %.lr.ph767.i
  %i.ry = icmp slt i32 %5, 4
  %i.rz = icmp ne i32 %i.c, 4
  %brmerge813.i = or i1 %i.ry, %i.rz
  br i1 %brmerge813.i, label %.lr.ph767.i.split.us.split.us, label %.loopexit651.i.us

.lr.ph767.i.split.us.split.us:                    ; preds = %.lr.ph767.i.split.us
  br i1 %i.rr, label %.loopexit651.i.us.us.us, label %.loopexit651.i.us.us.preheader

.loopexit651.i.us.us.preheader:                   ; preds = %.lr.ph767.i.split.us.split.us
  %i.sa = add nuw nsw i64 %i.ru, 2
  %smax98 = tail call i64 @llvm.smax.i64(i64 %invariant.op943.i, i64 %i.sa)
  %i.sb = xor i64 %i.ru, -1
  %i.sc = add nsw i64 %smax98, %i.sb
  %i.sd = and i64 %i.sc, -2
  %i.se = add i64 %i.sd, %i.ru
  %i.sf = add i64 %i.se, 2
  br label %.preheader645.loopexit.i

.loopexit651.i.us.us.us:                          ; preds = %.lr.ph767.i.split.us.split.us, %.loopexit648.i.us.us.us
  %indvars.iv869.i.us.us.us = phi i64 [ %indvars.iv.next870.i.us.us.us, %.loopexit648.i.us.us.us ], [ %i.ru, %.lr.ph767.i.split.us.split.us ] ; 2 uses
  %.18766.i.us.us.us = phi ptr [ %.26.i.us.us.us, %.loopexit648.i.us.us.us ], [ %.9.lcssa.i, %.lr.ph767.i.split.us.split.us ] ; 2 uses
  %i.sg = load ptr, ptr %0, align 8, !tbaa !14
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %i.rk
  %i.si = add nsw i64 %indvars.iv869.i.us.us.us, %i.rw
  %i.sj = mul nuw nsw i64 %i.si, %i.rx
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.sh, i64 %i.sj ; 2 uses
  br i1 %i.rs, label %.lr.ph749.i.us.us.us, label %.preheader649.i.us.us.us

.lr.ph749.i.us.us.us:                             ; preds = %.loopexit651.i.us.us.us, %.lr.ph749.i.us.us.us
  %.23748.i.us.us.us = phi ptr [ %i.ts, %.lr.ph749.i.us.us.us ], [ %.18766.i.us.us.us, %.loopexit651.i.us.us.us ] ; 2 uses
  %.0453747.i.us.us.us = phi i32 [ %i.tu, %.lr.ph749.i.us.us.us ], [ 0, %.loopexit651.i.us.us.us ]
  %.4469746.i.us.us.us = phi ptr [ %i.tt, %.lr.ph749.i.us.us.us ], [ %i.sk, %.loopexit651.i.us.us.us ] ; 5 uses
  %i.sl = load i64, ptr %.4469746.i.us.us.us, align 1, !tbaa !17
  %i.sm = insertelement <2 x i64> poison, i64 %i.sl, i64 0
  %i.sn = bitcast <2 x i64> %i.sm to <4 x float>
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %.4469746.i.us.us.us, i64 %i.l
  %i.sp = load i64, ptr %i.so, align 1, !tbaa !17
  %i.sq = insertelement <2 x i64> poison, i64 %i.sp, i64 0
  %i.sr = bitcast <2 x i64> %i.sq to <4 x float>
  %i.ss = getelementptr inbounds nuw i8, ptr %.4469746.i.us.us.us, i64 %.idx480.i
  %i.st = load i64, ptr %i.ss, align 1, !tbaa !17
  %i.su = insertelement <2 x i64> poison, i64 %i.st, i64 0
  %i.sv = bitcast <2 x i64> %i.su to <4 x float>
  %i.sw = getelementptr inbounds nuw i8, ptr %.4469746.i.us.us.us, i64 %.idx481.i
  %i.sx = load i64, ptr %i.sw, align 1, !tbaa !17
  %i.sy = insertelement <2 x i64> poison, i64 %i.sx, i64 0
  %i.sz = bitcast <2 x i64> %i.sy to <4 x float>
  %i.ta = shufflevector <4 x float> %i.sn, <4 x float> %i.sr, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.tb = shufflevector <4 x float> %i.sv, <4 x float> %i.sz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.tc = shufflevector <4 x float> %i.ta, <4 x float> %i.tb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.td = shufflevector <4 x float> %i.ta, <4 x float> %i.tb, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.te = fmul fast <4 x float> %i.rq, %i.tc      ; 2 uses
  %i.tf = fmul fast <4 x float> %i.rq, %i.td      ; 2 uses
  %i.tg = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.te)
  %i.th = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.tf)
  %i.ti = fadd fast <4 x float> %i.tg, %i.te
  %i.tj = fadd fast <4 x float> %i.th, %i.tf
  %i.tk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ti)
  %i.tl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.tj)
  %i.tm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.tk, <4 x i32> %i.tl)
  %i.tn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tm, <8 x i16> splat (i16 -127))
  %i.to = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.tn, <8 x i16> splat (i16 127))
  %i.tp = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.to, <8 x i16> poison)
  %i.tq = shufflevector <16 x i8> %i.tp, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.tr = add <8 x i8> %i.tq, splat (i8 127)
  store <8 x i8> %i.tr, ptr %.23748.i.us.us.us, align 1, !tbaa !17
  %i.ts = getelementptr inbounds nuw i8, ptr %.23748.i.us.us.us, i64 8 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.4469746.i.us.us.us, i64 %.idx483.i ; 2 uses
  %i.tu = add nuw nsw i32 %.0453747.i.us.us.us, 4 ; 2 uses
  %i.tv = or disjoint i32 %i.tu, 3
  %i.tw = icmp slt i32 %i.tv, %5
  br i1 %i.tw, label %.lr.ph749.i.us.us.us, label %.preheader649.i.us.us.us, !llvm.loop !302

.preheader649.i.us.us.us:                         ; preds = %.lr.ph749.i.us.us.us, %.loopexit651.i.us.us.us
  %.4469.lcssa.i.us.us.us = phi ptr [ %i.sk, %.loopexit651.i.us.us.us ], [ %i.tt, %.lr.ph749.i.us.us.us ] ; 2 uses
  %.0453.lcssa.i.us.us.us = phi i32 [ 0, %.loopexit651.i.us.us.us ], [ %i.rt, %.lr.ph749.i.us.us.us ] ; 3 uses
  %.23.lcssa.i.us.us.us = phi ptr [ %.18766.i.us.us.us, %.loopexit651.i.us.us.us ], [ %i.ts, %.lr.ph749.i.us.us.us ] ; 2 uses
  %i.tx = or disjoint i32 %.0453.lcssa.i.us.us.us, 1
  %i.ty = icmp slt i32 %i.tx, %5
  br i1 %i.ty, label %.lr.ph756.i.us.us.us, label %.preheader647.i.us.us.us

.lr.ph756.i.us.us.us:                             ; preds = %.preheader649.i.us.us.us, %.lr.ph756.i.us.us.us
  %.24755.i.us.us.us = phi ptr [ %i.ur, %.lr.ph756.i.us.us.us ], [ %.23.lcssa.i.us.us.us, %.preheader649.i.us.us.us ] ; 2 uses
  %.1454754.i.us.us.us = phi i32 [ %i.ut, %.lr.ph756.i.us.us.us ], [ %.0453.lcssa.i.us.us.us, %.preheader649.i.us.us.us ]
  %.5470753.i.us.us.us = phi ptr [ %i.us, %.lr.ph756.i.us.us.us ], [ %.4469.lcssa.i.us.us.us, %.preheader649.i.us.us.us ] ; 3 uses
  %i.tz = load i64, ptr %.5470753.i.us.us.us, align 1, !tbaa !17
  %i.ua = insertelement <2 x i64> poison, i64 %i.tz, i64 0
  %i.ub = bitcast <2 x i64> %i.ua to <4 x float>
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %.5470753.i.us.us.us, i64 %i.l
  %i.ud = load i64, ptr %i.uc, align 1, !tbaa !17
  %i.ue = insertelement <2 x i64> poison, i64 %i.ud, i64 0
  %i.uf = bitcast <2 x i64> %i.ue to <4 x float>
  %i.ug = shufflevector <4 x float> %i.ub, <4 x float> %i.uf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.uh = fmul fast <4 x float> %i.ug, %i.rq      ; 2 uses
  %i.ui = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.uh)
  %i.uj = fadd fast <4 x float> %i.ui, %i.uh
  %i.uk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.uj) ; 2 uses
  %i.ul = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.uk, <4 x i32> %i.uk)
  %i.um = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ul, <8 x i16> splat (i16 -127))
  %i.un = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.um, <8 x i16> splat (i16 127))
  %i.uo = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.un, <8 x i16> poison)
  %i.up = bitcast <16 x i8> %i.uo to <4 x i32>
  %i.uq = extractelement <4 x i32> %i.up, i64 0
  store i32 %i.uq, ptr %.24755.i.us.us.us, align 4, !tbaa !23
  %i.ur = getelementptr inbounds nuw i8, ptr %.24755.i.us.us.us, i64 4 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.5470753.i.us.us.us, i64 %.idx480.i ; 2 uses
  %i.ut = add nuw nsw i32 %.1454754.i.us.us.us, 2 ; 3 uses
  %i.uu = or disjoint i32 %i.ut, 1
  %i.uv = icmp slt i32 %i.uu, %5
  br i1 %i.uv, label %.lr.ph756.i.us.us.us, label %.preheader647.i.us.us.us, !llvm.loop !303

.preheader647.i.us.us.us:                         ; preds = %.lr.ph756.i.us.us.us, %.preheader649.i.us.us.us
  %.5470.lcssa.i.us.us.us = phi ptr [ %.4469.lcssa.i.us.us.us, %.preheader649.i.us.us.us ], [ %i.us, %.lr.ph756.i.us.us.us ]
  %.1454.lcssa.i.us.us.us = phi i32 [ %.0453.lcssa.i.us.us.us, %.preheader649.i.us.us.us ], [ %i.ut, %.lr.ph756.i.us.us.us ] ; 2 uses
  %.24.lcssa.i.us.us.us = phi ptr [ %.23.lcssa.i.us.us.us, %.preheader649.i.us.us.us ], [ %i.ur, %.lr.ph756.i.us.us.us ] ; 2 uses
  %i.uw = icmp slt i32 %.1454.lcssa.i.us.us.us, %5
  br i1 %i.uw, label %.lr.ph763.i.us.us.us, label %.loopexit648.i.us.us.us

.lr.ph763.i.us.us.us:                             ; preds = %.preheader647.i.us.us.us, %.lr.ph763.i.us.us.us
  %.25762.i.us.us.us = phi ptr [ %i.vh, %.lr.ph763.i.us.us.us ], [ %.24.lcssa.i.us.us.us, %.preheader647.i.us.us.us ] ; 3 uses
  %.2455761.i.us.us.us = phi i32 [ %i.vj, %.lr.ph763.i.us.us.us ], [ %.1454.lcssa.i.us.us.us, %.preheader647.i.us.us.us ]
  %.6471760.i.us.us.us = phi ptr [ %i.vi, %.lr.ph763.i.us.us.us ], [ %.5470.lcssa.i.us.us.us, %.preheader647.i.us.us.us ] ; 3 uses
  %i.ux = load float, ptr %.6471760.i.us.us.us, align 4, !tbaa !32
  %i.uy = fmul fast float %i.ux, %6
  %i.uz = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.uy)
  %i.va = fptosi float %i.uz to i32
  %spec.select.i499639.i.us.us.us = tail call i32 @llvm.smax.i32(i32 %i.va, i32 -127)
  %.0.i500640.i.us.us.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i499639.i.us.us.us, i32 127)
  %.0.i500.i.us.us.us = trunc nsw i32 %.0.i500640.i.us.us.us to i8
  store i8 %.0.i500.i.us.us.us, ptr %.25762.i.us.us.us, align 1, !tbaa !17
  %i.vb = getelementptr inbounds nuw i8, ptr %.6471760.i.us.us.us, i64 4
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !32
  %i.vd = fmul fast float %i.vc, %6
  %i.ve = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.vd)
  %i.vf = fptosi float %i.ve to i32
  %spec.select.i497641.i.us.us.us = tail call i32 @llvm.smax.i32(i32 %i.vf, i32 -127)
  %.0.i498642.i.us.us.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i497641.i.us.us.us, i32 127)
  %.0.i498.i.us.us.us = trunc nsw i32 %.0.i498642.i.us.us.us to i8
  %i.vg = getelementptr inbounds nuw i8, ptr %.25762.i.us.us.us, i64 1
  store i8 %.0.i498.i.us.us.us, ptr %i.vg, align 1, !tbaa !17
  %i.vh = getelementptr inbounds nuw i8, ptr %.25762.i.us.us.us, i64 2 ; 2 uses
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %.6471760.i.us.us.us, i64 %i.l
  %i.vj = add nuw nsw i32 %.2455761.i.us.us.us, 1 ; 2 uses
  %exitcond868.not.i.us.us.us = icmp eq i32 %i.vj, %5
  br i1 %exitcond868.not.i.us.us.us, label %.loopexit648.i.us.us.us, label %.lr.ph763.i.us.us.us, !llvm.loop !304

.loopexit648.i.us.us.us:                          ; preds = %.lr.ph763.i.us.us.us, %.preheader647.i.us.us.us
  %.26.i.us.us.us = phi ptr [ %.24.lcssa.i.us.us.us, %.preheader647.i.us.us.us ], [ %i.vh, %.lr.ph763.i.us.us.us ] ; 2 uses
  %indvars.iv.next870.i.us.us.us = add nuw nsw i64 %indvars.iv869.i.us.us.us, 2 ; 3 uses
  %i.vk = icmp slt i64 %indvars.iv.next870.i.us.us.us, %invariant.op943.i
  br i1 %i.vk, label %.loopexit651.i.us.us.us, label %.preheader645.loopexit.i, !llvm.loop !305

.loopexit651.i.us:                                ; preds = %.lr.ph767.i.split.us, %.loopexit648.i.loopexit8.us
  %indvars.iv869.i.us = phi i64 [ %indvars.iv.next870.i.us, %.loopexit648.i.loopexit8.us ], [ %i.ru, %.lr.ph767.i.split.us ] ; 2 uses
  %.18766.i.us = phi ptr [ %i.wh, %.loopexit648.i.loopexit8.us ], [ %.9.lcssa.i, %.lr.ph767.i.split.us ]
  %i.vl = load ptr, ptr %0, align 8, !tbaa !14
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %i.rk
  %i.vn = add nsw i64 %indvars.iv869.i.us, %i.rw
  %i.vo = mul nsw i64 %i.vn, %i.rx
  %i.vp = getelementptr inbounds [4 x i8], ptr %i.vm, i64 %i.vo
  br label %.lr.ph743.i.us

.lr.ph743.i.us:                                   ; preds = %.loopexit651.i.us, %.lr.ph743.i.us
  %.21742.i.us = phi ptr [ %i.wh, %.lr.ph743.i.us ], [ %.18766.i.us, %.loopexit651.i.us ] ; 2 uses
  %.0463741.i.us = phi i32 [ %i.wj, %.lr.ph743.i.us ], [ 0, %.loopexit651.i.us ]
  %.2467740.i.us = phi ptr [ %i.wi, %.lr.ph743.i.us ], [ %i.vp, %.loopexit651.i.us ] ; 3 uses
  %i.vq = load <4 x float>, ptr %.2467740.i.us, align 16, !tbaa !17
  %i.vr = getelementptr inbounds nuw i8, ptr %.2467740.i.us, i64 16
  %i.vs = load <4 x float>, ptr %i.vr, align 16, !tbaa !17
  %i.vt = fmul fast <4 x float> %i.vq, %i.rq      ; 2 uses
  %i.vu = fmul fast <4 x float> %i.vs, %i.rq      ; 2 uses
  %i.vv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.vt)
  %i.vw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.vu)
  %i.vx = fadd fast <4 x float> %i.vv, %i.vt
  %i.vy = fadd fast <4 x float> %i.vw, %i.vu
  %i.vz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vx)
  %i.wa = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vy)
  %i.wb = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.vz, <4 x i32> %i.wa)
  %i.wc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wb, <8 x i16> splat (i16 -127))
  %i.wd = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.wc, <8 x i16> splat (i16 127))
  %i.we = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.wd, <8 x i16> poison)
  %i.wf = shufflevector <16 x i8> %i.we, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wg = add <8 x i8> %i.wf, splat (i8 127)
  store <8 x i8> %i.wg, ptr %.21742.i.us, align 1, !tbaa !17
  %i.wh = getelementptr inbounds nuw i8, ptr %.21742.i.us, i64 8 ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.2467740.i.us, i64 %.idx483.i
  %i.wj = add nuw nsw i32 %.0463741.i.us, 4       ; 2 uses
  %i.wk = or disjoint i32 %i.wj, 3
  %i.wl = icmp slt i32 %i.wk, %5
  br i1 %i.wl, label %.lr.ph743.i.us, label %.loopexit648.i.loopexit8.us, !llvm.loop !306

.loopexit648.i.loopexit8.us:                      ; preds = %.lr.ph743.i.us
  %indvars.iv.next870.i.us = add nuw nsw i64 %indvars.iv869.i.us, 2 ; 3 uses
  %i.wm = icmp slt i64 %indvars.iv.next870.i.us, %invariant.op943.i
  br i1 %i.wm, label %.loopexit651.i.us, label %.preheader645.loopexit.i, !llvm.loop !305

.lr.ph701.i.preheader:                            ; preds = %.lr.ph731.i, %.loopexit654.i.loopexit11
  %indvars.iv865.i = phi i64 [ %indvars.iv.next866.i, %.loopexit654.i.loopexit11 ], [ %i.gt, %.lr.ph731.i ] ; 2 uses
  %.9730.i = phi ptr [ %i.ys, %.loopexit654.i.loopexit11 ], [ %.0427.lcssa.i, %.lr.ph731.i ]
  %i.wn = load ptr, ptr %0, align 8, !tbaa !14
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %i.gj
  %i.wp = add nsw i64 %indvars.iv865.i, %i.gv
  %i.wq = mul nsw i64 %i.wp, %i.gw
  %i.wr = getelementptr inbounds [4 x i8], ptr %i.wo, i64 %i.wq
  br label %.lr.ph701.i

.lr.ph701.i:                                      ; preds = %.lr.ph701.i.preheader, %.lr.ph701.i
  %.10700.i = phi ptr [ %i.ys, %.lr.ph701.i ], [ %.9730.i, %.lr.ph701.i.preheader ] ; 3 uses
  %.0456699.i = phi ptr [ %i.yt, %.lr.ph701.i ], [ %i.wr, %.lr.ph701.i.preheader ] ; 5 uses
  %.0472698.i = phi i32 [ %i.yu, %.lr.ph701.i ], [ 0, %.lr.ph701.i.preheader ]
  %i.ws = load <8 x float>, ptr %.0456699.i, align 32, !tbaa !17
  %i.wt = getelementptr inbounds nuw i8, ptr %.0456699.i, i64 32
  %i.wu = load <8 x float>, ptr %i.wt, align 32, !tbaa !17
  %i.wv = getelementptr inbounds nuw i8, ptr %.0456699.i, i64 64
  %i.ww = load <8 x float>, ptr %i.wv, align 32, !tbaa !17
  %i.wx = getelementptr inbounds nuw i8, ptr %.0456699.i, i64 96
  %i.wy = load <8 x float>, ptr %i.wx, align 32, !tbaa !17
  %i.wz = fmul fast <8 x float> %i.ws, %i.gm      ; 2 uses
  %i.xa = fmul fast <8 x float> %i.wu, %i.gm      ; 2 uses
  %i.xb = fmul fast <8 x float> %i.ww, %i.gm      ; 2 uses
  %i.xc = fmul fast <8 x float> %i.wy, %i.gm      ; 2 uses
  %i.xd = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.wz)
  %i.xe = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.xb)
  %i.xf = fadd fast <8 x float> %i.xd, %i.wz
  %i.xg = fadd fast <8 x float> %i.xe, %i.xb
  %i.xh = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xf)
  %i.xi = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xg)
  %i.xj = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.xh, <8 x i32> %i.xi)
  %i.xk = bitcast <16 x i16> %i.xj to <4 x i64>
  %i.xl = shufflevector <4 x i64> %i.xk, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.xm = bitcast <4 x i64> %i.xl to <16 x i16>
  %i.xn = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.xm, <16 x i16> splat (i16 -127))
  %i.xo = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.xn, <16 x i16> splat (i16 127))
  %i.xp = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.xo, <16 x i16> poison)
  %i.xq = bitcast <32 x i8> %i.xp to <8 x i32>
  %i.xr = shufflevector <8 x i32> %i.xq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.xs = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.xa)
  %i.xt = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.xc)
  %i.xu = fadd fast <8 x float> %i.xs, %i.xa
  %i.xv = fadd fast <8 x float> %i.xt, %i.xc
  %i.xw = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xu)
  %i.xx = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xv)
  %i.xy = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.xw, <8 x i32> %i.xx)
  %i.xz = bitcast <16 x i16> %i.xy to <4 x i64>
  %i.ya = shufflevector <4 x i64> %i.xz, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.yb = bitcast <4 x i64> %i.ya to <16 x i16>
  %i.yc = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.yb, <16 x i16> splat (i16 -127))
  %i.yd = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.yc, <16 x i16> splat (i16 127))
  %i.ye = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.yd, <16 x i16> poison)
  %i.yf = bitcast <32 x i8> %i.ye to <8 x i32>
  %i.yg = shufflevector <8 x i32> %i.yf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.yh = shufflevector <4 x i32> %i.xr, <4 x i32> %i.yg, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.yi = bitcast <4 x i32> %i.yh to <2 x i64>    ; 2 uses
  %i.yj = shufflevector <4 x i32> %i.xr, <4 x i32> %i.yg, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.yk = bitcast <4 x i32> %i.yj to <2 x i64>    ; 2 uses
  %i.yl = shufflevector <2 x i64> %i.yi, <2 x i64> %i.yk, <2 x i32> <i32 0, i32 2>
  %i.ym = shufflevector <2 x i64> %i.yi, <2 x i64> %i.yk, <2 x i32> <i32 1, i32 3>
  %i.yn = bitcast <2 x i64> %i.yl to <16 x i8>
  %i.yo = add <16 x i8> %i.yn, splat (i8 127)
  %i.yp = bitcast <2 x i64> %i.ym to <16 x i8>
  %i.yq = add <16 x i8> %i.yp, splat (i8 127)
  store <16 x i8> %i.yo, ptr %.10700.i, align 16, !tbaa !17
  %i.yr = getelementptr inbounds nuw i8, ptr %.10700.i, i64 16
  store <16 x i8> %i.yq, ptr %i.yr, align 16, !tbaa !17
  %i.ys = getelementptr inbounds nuw i8, ptr %.10700.i, i64 32 ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.0456699.i, i64 %.idx490.i
  %i.yu = add nuw nsw i32 %.0472698.i, 8          ; 2 uses
  %i.yv = or disjoint i32 %i.yu, 7
  %i.yw = icmp slt i32 %i.yv, %5
  br i1 %i.yw, label %.lr.ph701.i, label %.loopexit654.i.loopexit11, !llvm.loop !307

.loopexit654.i.loopexit11:                        ; preds = %.lr.ph701.i
  %indvars.iv.next866.i = add nuw nsw i64 %indvars.iv865.i, 4 ; 3 uses
  %i.yx = icmp slt i64 %indvars.iv.next866.i, %invariant.op.i
  br i1 %i.yx, label %.lr.ph701.i.preheader, label %.preheader652.loopexit.i, !llvm.loop !299

.preheader645.loopexit.i:                         ; preds = %.loopexit648.i.loopexit9, %.loopexit648.i.loopexit8.us, %.loopexit648.i.us.us.us, %.loopexit651.i.us.us.preheader
  %.us-phi53 = phi ptr [ %.9.lcssa.i, %.loopexit651.i.us.us.preheader ], [ %i.wh, %.loopexit648.i.loopexit8.us ], [ %.26.i.us.us.us, %.loopexit648.i.us.us.us ], [ %i.adc, %.loopexit648.i.loopexit9 ]
  %.us-phi54 = phi i64 [ %i.sf, %.loopexit651.i.us.us.preheader ], [ %indvars.iv.next870.i.us, %.loopexit648.i.loopexit8.us ], [ %indvars.iv.next870.i.us.us.us, %.loopexit648.i.us.us.us ], [ %indvars.iv.next870.i, %.loopexit648.i.loopexit9 ]
  %i.yy = trunc nsw i64 %.us-phi54 to i32
  br label %.preheader645.i

.preheader645.i:                                  ; preds = %.preheader645.loopexit.i, %.preheader652.i
  %.2432.lcssa.i = phi i32 [ %.1431.lcssa.i, %.preheader652.i ], [ %i.yy, %.preheader645.loopexit.i ] ; 2 uses
  %.18.lcssa.i = phi ptr [ %.9.lcssa.i, %.preheader652.i ], [ %.us-phi53, %.preheader645.loopexit.i ] ; 2 uses
  %i.yz = icmp slt i32 %.2432.lcssa.i, %3
  br i1 %i.yz, label %.lr.ph796.i, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

.lr.ph796.i:                                      ; preds = %.preheader645.i
  %i.za = sext i32 %4 to i64
  %i.zb = mul i64 %i.l, %i.za                     ; 2 uses
  %i.zc = icmp ne i32 %i.c, 8
  %i.zd = insertelement <8 x float> poison, float %6, i64 0
  %i.ze = shufflevector <8 x float> %i.zd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.zf = icmp slt i32 %5, 8
  %.idx478.i = shl i64 %i.l, 5
  %i.zg = icmp ne i32 %i.c, 4
  %i.zh = insertelement <4 x float> poison, float %6, i64 0
  %i.zi = shufflevector <4 x float> %i.zh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.zj = icmp slt i32 %5, 4
  %.idx477.i = shl i64 %i.l, 4                    ; 2 uses
  %i.zk = icmp eq i32 %i.c, 1
  %i.zl = icmp sgt i32 %5, 3
  %i.zm = trunc i64 %i.l to i32
  %i.zn = insertelement <4 x i32> poison, i32 %i.zm, i64 0
  %i.zo = shufflevector <4 x i32> %i.zn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zp = mul <4 x i32> %i.zo, <i32 0, i32 1, i32 2, i32 3>
  %i.zq = and i32 %5, -4
  %i.zr = sext i32 %.2432.lcssa.i to i64          ; 2 uses
  %i.zs = sext i32 %2 to i64                      ; 2 uses
  %i.zt = sext i32 %i.c to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %3 to i64         ; 2 uses
  %brmerge816.i = or i1 %i.zf, %i.zc
  %brmerge819.i = or i1 %i.zj, %i.zg
  br i1 %brmerge816.i, label %.loopexit644.i.us.preheader, label %.lr.ph773.i.preheader

.loopexit644.i.us.preheader:                      ; preds = %.lr.ph796.i
  %xtraiter211 = and i32 %5, 1
  %lcmp.mod212.not = icmp eq i32 %xtraiter211, 0
  br label %.loopexit644.i.us

.loopexit644.i.us:                                ; preds = %.loopexit644.i.us.preheader, %.loopexit.i.us
  %indvars.iv873.i.us = phi i64 [ %indvars.iv.next874.i.us, %.loopexit.i.us ], [ %i.zr, %.loopexit644.i.us.preheader ] ; 2 uses
  %.27795.i.us = phi ptr [ %.34.i.us, %.loopexit.i.us ], [ %.18.lcssa.i, %.loopexit644.i.us.preheader ] ; 4 uses
  %i.zu = load ptr, ptr %0, align 8, !tbaa !14
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %i.zb
  %i.zw = add nsw i64 %indvars.iv873.i.us, %i.zs
  %i.zx = mul nsw i64 %i.zw, %i.zt
  %i.zy = getelementptr inbounds [4 x i8], ptr %i.zv, i64 %i.zx ; 3 uses
  br i1 %brmerge819.i, label %.loopexit643.i.us, label %.lr.ph779.i.us

.lr.ph779.i.us:                                   ; preds = %.loopexit644.i.us, %.lr.ph779.i.us
  %.30778.i.us = phi ptr [ %i.aak, %.lr.ph779.i.us ], [ %.27795.i.us, %.loopexit644.i.us ] ; 2 uses
  %.0429777.i.us = phi i32 [ %i.aam, %.lr.ph779.i.us ], [ 0, %.loopexit644.i.us ]
  %.2437776.i.us = phi ptr [ %i.aal, %.lr.ph779.i.us ], [ %i.zy, %.loopexit644.i.us ] ; 2 uses
  %i.zz = load <4 x float>, ptr %.2437776.i.us, align 16, !tbaa !17
  %i.aaa = fmul fast <4 x float> %i.zz, %i.zi     ; 2 uses
  %i.aab = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aaa)
  %i.aac = fadd fast <4 x float> %i.aab, %i.aaa
  %i.aad = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aac) ; 2 uses
  %i.aae = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aad, <4 x i32> %i.aad)
  %i.aaf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aae, <8 x i16> splat (i16 -127))
  %i.aag = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aaf, <8 x i16> splat (i16 127))
  %i.aah = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aag, <8 x i16> poison)
  %i.aai = shufflevector <16 x i8> %i.aah, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aaj = add <4 x i8> %i.aai, splat (i8 127)
  store <4 x i8> %i.aaj, ptr %.30778.i.us, align 1, !tbaa !17
  %i.aak = getelementptr inbounds nuw i8, ptr %.30778.i.us, i64 4 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.2437776.i.us, i64 %.idx477.i
  %i.aam = add nuw nsw i32 %.0429777.i.us, 4      ; 2 uses
  %i.aan = or disjoint i32 %i.aam, 3
  %i.aao = icmp slt i32 %i.aan, %5
  br i1 %i.aao, label %.lr.ph779.i.us, label %.loopexit.i.us, !llvm.loop !308

.loopexit643.i.us:                                ; preds = %.loopexit644.i.us
  br i1 %i.zk, label %bb.g, label %.loopexit.i.us

bb.g:                                             ; preds = %.loopexit643.i.us
  br i1 %i.zl, label %.lr.ph785.i.us, label %.preheader.i.us

.lr.ph785.i.us:                                   ; preds = %bb.g, %.lr.ph785.i.us
  %.0784.i.us = phi i32 [ %i.abc, %.lr.ph785.i.us ], [ 0, %bb.g ]
  %.32783.i.us = phi ptr [ %i.aba, %.lr.ph785.i.us ], [ %.27795.i.us, %bb.g ] ; 2 uses
end_hunk_0
