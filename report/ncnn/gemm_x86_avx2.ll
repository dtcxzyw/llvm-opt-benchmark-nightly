Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx2?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4ncnn39transpose_pack_B_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiif:bb.a
  %i.eg = or disjoint i32 %i.ef, 3
  %i.eh = icmp slt i32 %i.eg, %5
  br i1 %i.eh, label %.lr.ph569.i.us, label %.loopexit559.i.loopexit12.us, !llvm.loop !232

.loopexit559.i.loopexit12.us:                     ; preds = %.lr.ph569.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 8 ; 3 uses
  %i.ei = or disjoint i64 %indvars.iv.next.i.us, 7
  %i.ej = icmp samesign ult i64 %i.ei, %i.y
  br i1 %i.ej, label %.loopexit561.i.us, label %.preheader557.loopexit.i, !llvm.loop !231

.preheader557.loopexit.i:                         ; preds = %.loopexit559.i.loopexit13, %.loopexit559.i.loopexit12.us, %.loopexit559.i.us.us.us, %.loopexit561.i.us.us.preheader
  %.us-phi = phi ptr [ %i.n, %.loopexit561.i.us.us.preheader ], [ %i.ed, %.loopexit559.i.loopexit12.us ], [ %.7.i.us.us.us, %.loopexit559.i.us.us.us ], [ %i.np, %.loopexit559.i.loopexit13 ]
  %.us-phi36 = phi i64 [ %i.ad, %.loopexit561.i.us.us.preheader ], [ %indvars.iv.next.i.us, %.loopexit559.i.loopexit12.us ], [ %indvars.iv.next.i.us.us.us, %.loopexit559.i.us.us.us ], [ %indvars.iv.next.i, %.loopexit559.i.loopexit13 ]
  %i.ek = trunc nuw nsw i64 %.us-phi36 to i32
  br label %.preheader557.i

.preheader557.i:                                  ; preds = %.preheader557.loopexit.i, %bb.h
  %.0376.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.ek, %.preheader557.loopexit.i ] ; 3 uses
  %.0373.lcssa.i = phi ptr [ %i.n, %bb.h ], [ %.us-phi, %.preheader557.loopexit.i ] ; 5 uses
  %i.el = or disjoint i32 %.0376.lcssa.i, 3
  %i.em = icmp slt i32 %i.el, %3
  br i1 %i.em, label %.lr.ph615.i, label %.preheader552.i

.lr.ph615.i:                                      ; preds = %.preheader557.i
  %i.en = sext i32 %4 to i64
  %i.eo = mul i64 %i.m, %i.en                     ; 3 uses
  %i.ep = icmp ne i32 %i.d, 8
  %i.eq = insertelement <8 x float> poison, float %6, i64 0
  %i.er = shufflevector <8 x float> %i.eq, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.es = icmp slt i32 %5, 8
  %.idx430.i = shl i64 %i.m, 5
  %i.et = insertelement <4 x float> poison, float %6, i64 0
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> zeroinitializer ; 9 uses
  %.idx429.i = shl i64 %i.m, 4
  %i.ev = icmp eq i32 %i.d, 1
  %i.ew = icmp sgt i32 %5, 1
  %.idx428.i = shl i64 %i.m, 3
  %i.ex = and i32 %5, -2
  %i.ey = zext i32 %.0376.lcssa.i to i64          ; 6 uses
  %i.ez = sext i32 %3 to i64
  %i.fa = sext i32 %2 to i64                      ; 3 uses
  %i.fb = sext i32 %i.d to i64                    ; 3 uses
  %brmerge688.i = or i1 %i.es, %i.ep
  %invariant.op.i = add nsw i64 %i.ez, -3         ; 4 uses
  br i1 %brmerge688.i, label %.lr.ph615.i.split.us, label %.lr.ph592.i.preheader

.lr.ph615.i.split.us:                             ; preds = %.lr.ph615.i
  %i.fc = icmp slt i32 %5, 4
  %i.fd = icmp ne i32 %i.d, 4
  %brmerge691.i = or i1 %i.fc, %i.fd
  br i1 %brmerge691.i, label %.lr.ph615.i.split.us.split.us, label %.loopexit556.i.us

.lr.ph615.i.split.us.split.us:                    ; preds = %.lr.ph615.i.split.us
  %i.fe = load ptr, ptr %0, align 8, !tbaa !14
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.eo
  br i1 %i.ev, label %.loopexit556.i.us.us.us.preheader, label %.loopexit556.i.us.us.preheader

.loopexit556.i.us.us.us.preheader:                ; preds = %.lr.ph615.i.split.us.split.us
  %xtraiter = and i32 %5, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %.loopexit556.i.us.us.us

.loopexit556.i.us.us.preheader:                   ; preds = %.lr.ph615.i.split.us.split.us
  %i.fg = add nuw nsw i64 %i.ey, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.fg)
  %i.fh = xor i64 %i.ey, -1
  %i.fi = add nsw i64 %smax, %i.fh
  %i.fj = and i64 %i.fi, -4
  %i.fk = add i64 %i.fj, %i.ey
  %i.fl = add i64 %i.fk, 4
  br label %.preheader552.loopexit.i

.loopexit556.i.us.us.us:                          ; preds = %.loopexit556.i.us.us.us.preheader, %.loopexit554.i.us.us.us
  %indvars.iv743.i.us.us.us = phi i64 [ %indvars.iv.next744.i.us.us.us, %.loopexit554.i.us.us.us ], [ %i.ey, %.loopexit556.i.us.us.us.preheader ] ; 2 uses
  %.8614.i.us.us.us = phi ptr [ %.15.i.us.us.us, %.loopexit554.i.us.us.us ], [ %.0373.lcssa.i, %.loopexit556.i.us.us.us.preheader ] ; 2 uses
  %i.fm = add nsw i64 %indvars.iv743.i.us.us.us, %i.fa
  %i.fn = mul nuw nsw i64 %i.fm, %i.fb
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.fn ; 2 uses
  br i1 %i.ew, label %.lr.ph604.i.us.us.us, label %.preheader553.i.us.us.us

.lr.ph604.i.us.us.us:                             ; preds = %.loopexit556.i.us.us.us, %.lr.ph604.i.us.us.us
  %.13603.i.us.us.us = phi ptr [ %i.gi, %.lr.ph604.i.us.us.us ], [ %.8614.i.us.us.us, %.loopexit556.i.us.us.us ] ; 2 uses
  %.4401602.i.us.us.us = phi ptr [ %i.gj, %.lr.ph604.i.us.us.us ], [ %i.fo, %.loopexit556.i.us.us.us ] ; 3 uses
  %.0409601.i.us.us.us = phi i32 [ %i.gk, %.lr.ph604.i.us.us.us ], [ 0, %.loopexit556.i.us.us.us ]
  %i.fp = load <4 x float>, ptr %.4401602.i.us.us.us, align 1, !tbaa !17
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.4401602.i.us.us.us, i64 %i.m
  %i.fr = load <4 x float>, ptr %i.fq, align 1, !tbaa !17
  %i.fs = fmul fast <4 x float> %i.fp, %i.eu      ; 2 uses
  %i.ft = fmul fast <4 x float> %i.fr, %i.eu      ; 2 uses
  %i.fu = shufflevector <4 x float> %i.fs, <4 x float> %i.ft, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.fv = shufflevector <4 x float> %i.fs, <4 x float> %i.ft, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.fw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.fu)
  %i.fx = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.fv)
  %i.fy = fadd fast <4 x float> %i.fw, %i.fu
  %i.fz = fadd fast <4 x float> %i.fx, %i.fv
  %i.ga = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fy)
  %i.gb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fz)
  %i.gc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ga, <4 x i32> %i.gb)
  %i.gd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.gc, <8 x i16> splat (i16 -127))
  %i.ge = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.gd, <8 x i16> splat (i16 127))
  %i.gf = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ge, <8 x i16> poison)
  %i.gg = bitcast <16 x i8> %i.gf to <2 x i64>
  %i.gh = extractelement <2 x i64> %i.gg, i64 0
  store i64 %i.gh, ptr %.13603.i.us.us.us, align 8, !tbaa !27
  %i.gi = getelementptr inbounds nuw i8, ptr %.13603.i.us.us.us, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.4401602.i.us.us.us, i64 %.idx428.i ; 2 uses
  %i.gk = add nuw nsw i32 %.0409601.i.us.us.us, 2 ; 2 uses
  %i.gl = or disjoint i32 %i.gk, 1
  %i.gm = icmp slt i32 %i.gl, %5
  br i1 %i.gm, label %.lr.ph604.i.us.us.us, label %.preheader553.i.us.us.us, !llvm.loop !233

.preheader553.i.us.us.us:                         ; preds = %.lr.ph604.i.us.us.us, %.loopexit556.i.us.us.us
  %.0409.lcssa.i.us.us.us = phi i32 [ 0, %.loopexit556.i.us.us.us ], [ %i.ex, %.lr.ph604.i.us.us.us ] ; 4 uses
  %.4401.lcssa.i.us.us.us = phi ptr [ %i.fo, %.loopexit556.i.us.us.us ], [ %i.gj, %.lr.ph604.i.us.us.us ] ; 3 uses
  %.13.lcssa.i.us.us.us = phi ptr [ %.8614.i.us.us.us, %.loopexit556.i.us.us.us ], [ %i.gi, %.lr.ph604.i.us.us.us ] ; 4 uses
  %i.gn = icmp slt i32 %.0409.lcssa.i.us.us.us, %5
  br i1 %i.gn, label %.lr.ph611.i.us.us.us.preheader, label %.loopexit554.i.us.us.us

.lr.ph611.i.us.us.us.preheader:                   ; preds = %.preheader553.i.us.us.us
  %.neg = or disjoint i32 %.0409.lcssa.i.us.us.us, 1
  br i1 %lcmp.mod.not, label %.lr.ph611.i.us.us.us.prol.loopexit, label %.lr.ph611.i.us.us.us.prol

.lr.ph611.i.us.us.us.prol:                        ; preds = %.lr.ph611.i.us.us.us.preheader
  %i.go = load <4 x float>, ptr %.4401.lcssa.i.us.us.us, align 1, !tbaa !17
  %i.gp = fmul fast <4 x float> %i.go, %i.eu      ; 2 uses
  %i.gq = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.gp)
  %i.gr = fadd fast <4 x float> %i.gq, %i.gp
  %i.gs = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gr) ; 2 uses
  %i.gt = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gs, <4 x i32> %i.gs)
  %i.gu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.gt, <8 x i16> splat (i16 -127))
  %i.gv = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.gu, <8 x i16> splat (i16 127))
  %i.gw = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.gv, <8 x i16> poison)
  %i.gx = bitcast <16 x i8> %i.gw to <4 x i32>
  %i.gy = extractelement <4 x i32> %i.gx, i64 0
  store i32 %i.gy, ptr %.13.lcssa.i.us.us.us, align 4, !tbaa !28
  %i.gz = getelementptr inbounds nuw i8, ptr %.13.lcssa.i.us.us.us, i64 4 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.4401.lcssa.i.us.us.us, i64 %i.m
  %i.hb = or disjoint i32 %.0409.lcssa.i.us.us.us, 1
  br label %.lr.ph611.i.us.us.us.prol.loopexit

.lr.ph611.i.us.us.us.prol.loopexit:               ; preds = %.lr.ph611.i.us.us.us.prol, %.lr.ph611.i.us.us.us.preheader
  %.lcssa170.unr = phi ptr [ poison, %.lr.ph611.i.us.us.us.preheader ], [ %i.gz, %.lr.ph611.i.us.us.us.prol ]
  %.14610.i.us.us.us.unr = phi ptr [ %.13.lcssa.i.us.us.us, %.lr.ph611.i.us.us.us.preheader ], [ %i.gz, %.lr.ph611.i.us.us.us.prol ]
  %.5402609.i.us.us.us.unr = phi ptr [ %.4401.lcssa.i.us.us.us, %.lr.ph611.i.us.us.us.preheader ], [ %i.ha, %.lr.ph611.i.us.us.us.prol ]
  %.1410608.i.us.us.us.unr = phi i32 [ %.0409.lcssa.i.us.us.us, %.lr.ph611.i.us.us.us.preheader ], [ %i.hb, %.lr.ph611.i.us.us.us.prol ]
  %i.hc = icmp eq i32 %5, %.neg
  br i1 %i.hc, label %.loopexit554.i.us.us.us, label %.lr.ph611.i.us.us.us

.lr.ph611.i.us.us.us:                             ; preds = %.lr.ph611.i.us.us.us.prol.loopexit, %.lr.ph611.i.us.us.us
  %.14610.i.us.us.us = phi ptr [ %i.ib, %.lr.ph611.i.us.us.us ], [ %.14610.i.us.us.us.unr, %.lr.ph611.i.us.us.us.prol.loopexit ] ; 3 uses
  %.5402609.i.us.us.us = phi ptr [ %i.ic, %.lr.ph611.i.us.us.us ], [ %.5402609.i.us.us.us.unr, %.lr.ph611.i.us.us.us.prol.loopexit ] ; 2 uses
  %.1410608.i.us.us.us = phi i32 [ %i.id, %.lr.ph611.i.us.us.us ], [ %.1410608.i.us.us.us.unr, %.lr.ph611.i.us.us.us.prol.loopexit ]
  %i.hd = load <4 x float>, ptr %.5402609.i.us.us.us, align 1, !tbaa !17
  %i.he = fmul fast <4 x float> %i.hd, %i.eu      ; 2 uses
  %i.hf = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.he)
  %i.hg = fadd fast <4 x float> %i.hf, %i.he
  %i.hh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hg) ; 2 uses
  %i.hi = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hh, <4 x i32> %i.hh)
  %i.hj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.hi, <8 x i16> splat (i16 -127))
  %i.hk = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.hj, <8 x i16> splat (i16 127))
  %i.hl = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.hk, <8 x i16> poison)
  %i.hm = bitcast <16 x i8> %i.hl to <4 x i32>
  %i.hn = extractelement <4 x i32> %i.hm, i64 0
  store i32 %i.hn, ptr %.14610.i.us.us.us, align 4, !tbaa !28
  %i.ho = getelementptr inbounds nuw i8, ptr %.14610.i.us.us.us, i64 4
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.5402609.i.us.us.us, i64 %i.m ; 2 uses
  %i.hq = load <4 x float>, ptr %i.hp, align 1, !tbaa !17
  %i.hr = fmul fast <4 x float> %i.hq, %i.eu      ; 2 uses
  %i.hs = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hr)
  %i.ht = fadd fast <4 x float> %i.hs, %i.hr
  %i.hu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ht) ; 2 uses
  %i.hv = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hu, <4 x i32> %i.hu)
  %i.hw = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.hv, <8 x i16> splat (i16 -127))
  %i.hx = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.hw, <8 x i16> splat (i16 127))
  %i.hy = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.hx, <8 x i16> poison)
  %i.hz = bitcast <16 x i8> %i.hy to <4 x i32>
  %i.ia = extractelement <4 x i32> %i.hz, i64 0
  store i32 %i.ia, ptr %i.ho, align 4, !tbaa !28
  %i.ib = getelementptr inbounds nuw i8, ptr %.14610.i.us.us.us, i64 8 ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.m
  %i.id = add nuw nsw i32 %.1410608.i.us.us.us, 2 ; 2 uses
  %exitcond742.not.i.us.us.us.1 = icmp eq i32 %i.id, %5
  br i1 %exitcond742.not.i.us.us.us.1, label %.loopexit554.i.us.us.us, label %.lr.ph611.i.us.us.us, !llvm.loop !234

.loopexit554.i.us.us.us:                          ; preds = %.lr.ph611.i.us.us.us.prol.loopexit, %.lr.ph611.i.us.us.us, %.preheader553.i.us.us.us
  %.15.i.us.us.us = phi ptr [ %.13.lcssa.i.us.us.us, %.preheader553.i.us.us.us ], [ %.lcssa170.unr, %.lr.ph611.i.us.us.us.prol.loopexit ], [ %i.ib, %.lr.ph611.i.us.us.us ] ; 2 uses
  %indvars.iv.next744.i.us.us.us = add nuw nsw i64 %indvars.iv743.i.us.us.us, 4 ; 3 uses
  %i.ie = icmp slt i64 %indvars.iv.next744.i.us.us.us, %invariant.op.i
  br i1 %i.ie, label %.loopexit556.i.us.us.us, label %.preheader552.loopexit.i, !llvm.loop !235

.loopexit556.i.us:                                ; preds = %.lr.ph615.i.split.us, %.loopexit554.i.loopexit10.us
  %indvars.iv743.i.us = phi i64 [ %indvars.iv.next744.i.us, %.loopexit554.i.loopexit10.us ], [ %i.ey, %.lr.ph615.i.split.us ] ; 2 uses
  %.8614.i.us = phi ptr [ %i.js, %.loopexit554.i.loopexit10.us ], [ %.0373.lcssa.i, %.lr.ph615.i.split.us ]
  %i.if = load ptr, ptr %0, align 8, !tbaa !14
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.eo
  %i.ih = add nsw i64 %indvars.iv743.i.us, %i.fa
  %i.ii = mul nsw i64 %i.ih, %i.fb
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.ii
  br label %.lr.ph598.i.us

.lr.ph598.i.us:                                   ; preds = %.loopexit556.i.us, %.lr.ph598.i.us
  %.11597.i.us = phi ptr [ %i.js, %.lr.ph598.i.us ], [ %.8614.i.us, %.loopexit556.i.us ] ; 2 uses
  %.2399596.i.us = phi ptr [ %i.jt, %.lr.ph598.i.us ], [ %i.ij, %.loopexit556.i.us ] ; 5 uses
  %.0407595.i.us = phi i32 [ %i.ju, %.lr.ph598.i.us ], [ 0, %.loopexit556.i.us ]
  %i.ik = load <4 x float>, ptr %.2399596.i.us, align 16, !tbaa !17
  %i.il = getelementptr inbounds nuw i8, ptr %.2399596.i.us, i64 16
  %i.im = load <4 x float>, ptr %i.il, align 16, !tbaa !17
  %i.in = getelementptr inbounds nuw i8, ptr %.2399596.i.us, i64 32
  %i.io = load <4 x float>, ptr %i.in, align 16, !tbaa !17
  %i.ip = getelementptr inbounds nuw i8, ptr %.2399596.i.us, i64 48
  %i.iq = load <4 x float>, ptr %i.ip, align 16, !tbaa !17
  %i.ir = fmul fast <4 x float> %i.ik, %i.eu      ; 2 uses
  %i.is = fmul fast <4 x float> %i.im, %i.eu      ; 2 uses
  %i.it = fmul fast <4 x float> %i.io, %i.eu      ; 2 uses
  %i.iu = fmul fast <4 x float> %i.iq, %i.eu      ; 2 uses
  %i.iv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ir)
  %i.iw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.is)
  %i.ix = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.it)
  %i.iy = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.iu)
  %i.iz = fadd fast <4 x float> %i.iv, %i.ir
  %i.ja = fadd fast <4 x float> %i.iw, %i.is
  %i.jb = fadd fast <4 x float> %i.ix, %i.it
  %i.jc = fadd fast <4 x float> %i.iy, %i.iu
  %i.jd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.iz)
  %i.je = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ja)
  %i.jf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jb)
  %i.jg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jc)
  %i.jh = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.jd, <4 x i32> %i.je)
  %i.ji = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.jf, <4 x i32> %i.jg)
  %i.jj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.jh, <8 x i16> splat (i16 -127))
  %i.jk = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.jj, <8 x i16> splat (i16 127))
  %i.jl = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ji, <8 x i16> splat (i16 -127))
  %i.jm = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.jl, <8 x i16> splat (i16 127))
  %i.jn = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.jk, <8 x i16> %i.jm)
  %i.jo = bitcast <16 x i8> %i.jn to <8 x i16>
  %i.jp = shufflevector <8 x i16> %i.jo, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.jq = bitcast <8 x i16> %i.jp to <4 x i32>
  %i.jr = shufflevector <4 x i32> %i.jq, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.jr, ptr %.11597.i.us, align 16, !tbaa !17
  %i.js = getelementptr inbounds nuw i8, ptr %.11597.i.us, i64 16 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.2399596.i.us, i64 %.idx429.i
  %i.ju = add nuw nsw i32 %.0407595.i.us, 4       ; 2 uses
  %i.jv = or disjoint i32 %i.ju, 3
  %i.jw = icmp slt i32 %i.jv, %5
  br i1 %i.jw, label %.lr.ph598.i.us, label %.loopexit554.i.loopexit10.us, !llvm.loop !236

.loopexit554.i.loopexit10.us:                     ; preds = %.lr.ph598.i.us
  %indvars.iv.next744.i.us = add nuw nsw i64 %indvars.iv743.i.us, 4 ; 3 uses
  %i.jx = icmp slt i64 %indvars.iv.next744.i.us, %invariant.op.i
  br i1 %i.jx, label %.loopexit556.i.us, label %.preheader552.loopexit.i, !llvm.loop !235

.lr.ph.i.preheader:                               ; preds = %.lr.ph586.i, %.loopexit559.i.loopexit13
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit559.i.loopexit13 ], [ 0, %.lr.ph586.i ] ; 2 uses
  %.0373585.i = phi ptr [ %i.np, %.loopexit559.i.loopexit13 ], [ %i.n, %.lr.ph586.i ]
  %i.jy = load ptr, ptr %0, align 8, !tbaa !14
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.q
  %i.ka = add nsw i64 %indvars.iv.i, %i.z
  %i.kb = mul nsw i64 %i.ka, %i.aa
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.kb
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.1374564.i = phi ptr [ %i.np, %.lr.ph.i ], [ %.0373585.i, %.lr.ph.i.preheader ] ; 3 uses
  %.0387563.i = phi ptr [ %i.nq, %.lr.ph.i ], [ %i.kc, %.lr.ph.i.preheader ] ; 9 uses
  %.0393562.i = phi i32 [ %i.nr, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.kd = load <8 x float>, ptr %.0387563.i, align 32, !tbaa !17
  %i.ke = getelementptr inbounds nuw i8, ptr %.0387563.i, i64 32
  %i.kf = load <8 x float>, ptr %i.ke, align 32, !tbaa !17
  %i.kg = getelementptr inbounds nuw i8, ptr %.0387563.i, i64 64
  %i.kh = load <8 x float>, ptr %i.kg, align 32, !tbaa !17
  %i.ki = getelementptr inbounds nuw i8, ptr %.0387563.i, i64 96
  %i.kj = load <8 x float>, ptr %i.ki, align 32, !tbaa !17
  %i.kk = getelementptr inbounds nuw i8, ptr %.0387563.i, i64 128
  %i.kl = load <8 x float>, ptr %i.kk, align 32, !tbaa !17
  %i.km = getelementptr inbounds nuw i8, ptr %.0387563.i, i64 160
  %i.kn = load <8 x float>, ptr %i.km, align 32, !tbaa !17
  %i.ko = getelementptr inbounds nuw i8, ptr %.0387563.i, i64 192
  %i.kp = load <8 x float>, ptr %i.ko, align 32, !tbaa !17
  %i.kq = getelementptr inbounds nuw i8, ptr %.0387563.i, i64 224
  %i.kr = load <8 x float>, ptr %i.kq, align 32, !tbaa !17
  %i.ks = fmul fast <8 x float> %i.kd, %i.t       ; 2 uses
  %i.kt = fmul fast <8 x float> %i.kf, %i.t       ; 2 uses
  %i.ku = fmul fast <8 x float> %i.kh, %i.t       ; 2 uses
  %i.kv = fmul fast <8 x float> %i.kj, %i.t       ; 2 uses
  %i.kw = fmul fast <8 x float> %i.kl, %i.t       ; 2 uses
  %i.kx = fmul fast <8 x float> %i.kn, %i.t       ; 2 uses
  %i.ky = fmul fast <8 x float> %i.kp, %i.t       ; 2 uses
  %i.kz = fmul fast <8 x float> %i.kr, %i.t       ; 2 uses
  %i.la = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ks)
  %i.lb = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ku)
  %i.lc = fadd fast <8 x float> %i.la, %i.ks
  %i.ld = fadd fast <8 x float> %i.lb, %i.ku
  %i.le = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lc)
  %i.lf = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ld)
  %i.lg = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.le, <8 x i32> %i.lf)
  %i.lh = bitcast <16 x i16> %i.lg to <4 x i64>
  %i.li = shufflevector <4 x i64> %i.lh, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.lj = bitcast <4 x i64> %i.li to <16 x i16>
  %i.lk = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.lj, <16 x i16> splat (i16 -127))
  %i.ll = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.lk, <16 x i16> splat (i16 127))
  %i.lm = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.ll, <16 x i16> poison)
  %i.ln = bitcast <32 x i8> %i.lm to <4 x i64>
  %i.lo = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.kt)
  %i.lp = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.kv)
  %i.lq = fadd fast <8 x float> %i.lo, %i.kt
  %i.lr = fadd fast <8 x float> %i.lp, %i.kv
  %i.ls = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lq)
  %i.lt = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lr)
  %i.lu = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ls, <8 x i32> %i.lt)
  %i.lv = bitcast <16 x i16> %i.lu to <4 x i64>
  %i.lw = shufflevector <4 x i64> %i.lv, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.lx = bitcast <4 x i64> %i.lw to <16 x i16>
  %i.ly = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.lx, <16 x i16> splat (i16 -127))
  %i.lz = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.ly, <16 x i16> splat (i16 127))
  %i.ma = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.lz, <16 x i16> poison)
  %i.mb = bitcast <32 x i8> %i.ma to <4 x i64>
  %i.mc = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.kw)
  %i.md = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ky)
  %i.me = fadd fast <8 x float> %i.mc, %i.kw
  %i.mf = fadd fast <8 x float> %i.md, %i.ky
  %i.mg = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.me)
  %i.mh = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mf)
  %i.mi = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.mg, <8 x i32> %i.mh)
  %i.mj = bitcast <16 x i16> %i.mi to <4 x i64>
  %i.mk = shufflevector <4 x i64> %i.mj, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ml = bitcast <4 x i64> %i.mk to <16 x i16>
  %i.mm = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ml, <16 x i16> splat (i16 -127))
  %i.mn = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.mm, <16 x i16> splat (i16 127))
  %i.mo = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.mn, <16 x i16> poison)
  %i.mp = bitcast <32 x i8> %i.mo to <4 x i64>
  %i.mq = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.kx)
  %i.mr = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.kz)
  %i.ms = fadd fast <8 x float> %i.mq, %i.kx
  %i.mt = fadd fast <8 x float> %i.mr, %i.kz
  %i.mu = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ms)
  %i.mv = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mt)
  %i.mw = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.mu, <8 x i32> %i.mv)
  %i.mx = bitcast <16 x i16> %i.mw to <4 x i64>
  %i.my = shufflevector <4 x i64> %i.mx, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.mz = bitcast <4 x i64> %i.my to <16 x i16>
  %i.na = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.mz, <16 x i16> splat (i16 -127))
  %i.nb = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.na, <16 x i16> splat (i16 127))
  %i.nc = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.nb, <16 x i16> poison)
  %i.nd = bitcast <32 x i8> %i.nc to <4 x i64>
  %i.ne = shufflevector <4 x i64> %i.ln, <4 x i64> %i.mp, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nf = shufflevector <4 x i64> %i.mb, <4 x i64> %i.nd, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ng = bitcast <4 x i64> %i.ne to <16 x i16>   ; 2 uses
  %i.nh = bitcast <4 x i64> %i.nf to <16 x i16>   ; 2 uses
  %i.ni = shufflevector <16 x i16> %i.ng, <16 x i16> %i.nh, <16 x i32> <i32 0, i32 16, i32 4, i32 20, i32 1, i32 17, i32 5, i32 21, i32 8, i32 24, i32 12, i32 28, i32 9, i32 25, i32 13, i32 29>
  %i.nj = bitcast <16 x i16> %i.ni to <4 x i64>
  %i.nk = shufflevector <16 x i16> %i.ng, <16 x i16> %i.nh, <16 x i32> <i32 2, i32 18, i32 6, i32 22, i32 3, i32 19, i32 7, i32 23, i32 10, i32 26, i32 14, i32 30, i32 11, i32 27, i32 15, i32 31>
  %i.nl = bitcast <16 x i16> %i.nk to <4 x i64>
  %i.nm = shufflevector <4 x i64> %i.nj, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.nn = shufflevector <4 x i64> %i.nl, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.nm, ptr %.1374564.i, align 32, !tbaa !17
  %i.no = getelementptr inbounds nuw i8, ptr %.1374564.i, i64 32
  store <4 x i64> %i.nn, ptr %i.no, align 32, !tbaa !17
  %i.np = getelementptr inbounds nuw i8, ptr %.1374564.i, i64 64 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.0387563.i, i64 %.idx433.i
  %i.nr = add nuw nsw i32 %.0393562.i, 8          ; 2 uses
  %i.ns = or disjoint i32 %i.nr, 7
  %i.nt = icmp slt i32 %i.ns, %5
  br i1 %i.nt, label %.lr.ph.i, label %.loopexit559.i.loopexit13, !llvm.loop !237

.loopexit559.i.loopexit13:                        ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.nu = or disjoint i64 %indvars.iv.next.i, 7
  %i.nv = icmp samesign ult i64 %i.nu, %i.y
  br i1 %i.nv, label %.lr.ph.i.preheader, label %.preheader557.loopexit.i, !llvm.loop !231

.preheader552.loopexit.i:                         ; preds = %.loopexit554.i.loopexit11, %.loopexit554.i.loopexit10.us, %.loopexit554.i.us.us.us, %.loopexit556.i.us.us.preheader
  %.us-phi41 = phi ptr [ %.0373.lcssa.i, %.loopexit556.i.us.us.preheader ], [ %i.js, %.loopexit554.i.loopexit10.us ], [ %.15.i.us.us.us, %.loopexit554.i.us.us.us ], [ %i.vj, %.loopexit554.i.loopexit11 ]
  %.us-phi42 = phi i64 [ %i.fl, %.loopexit556.i.us.us.preheader ], [ %indvars.iv.next744.i.us, %.loopexit554.i.loopexit10.us ], [ %indvars.iv.next744.i.us.us.us, %.loopexit554.i.us.us.us ], [ %indvars.iv.next744.i, %.loopexit554.i.loopexit11 ]
  %i.nw = trunc nuw nsw i64 %.us-phi42 to i32
  br label %.preheader552.i

.preheader552.i:                                  ; preds = %.preheader552.loopexit.i, %.preheader557.i
  %.1377.lcssa.i = phi i32 [ %.0376.lcssa.i, %.preheader557.i ], [ %i.nw, %.preheader552.loopexit.i ] ; 3 uses
  %.8.lcssa.i = phi ptr [ %.0373.lcssa.i, %.preheader557.i ], [ %.us-phi41, %.preheader552.loopexit.i ] ; 5 uses
  %i.nx = or disjoint i32 %.1377.lcssa.i, 1
  %i.ny = icmp slt i32 %i.nx, %3
  br i1 %i.ny, label %.lr.ph651.i, label %.preheader545.i

.lr.ph651.i:                                      ; preds = %.preheader552.i
  %i.nz = sext i32 %4 to i64
  %i.oa = mul i64 %i.m, %i.nz                     ; 3 uses
  %i.ob = icmp ne i32 %i.d, 8
  %i.oc = insertelement <8 x float> poison, float %6, i64 0
  %i.od = shufflevector <8 x float> %i.oc, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.oe = icmp slt i32 %5, 8
  %.idx427.i = shl i64 %i.m, 5
  %i.of = insertelement <4 x float> poison, float %6, i64 0
  %i.og = shufflevector <4 x float> %i.of, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %.idx426.i = shl i64 %i.m, 4                    ; 2 uses
  %i.oh = icmp eq i32 %i.d, 1
  %i.oi = icmp sgt i32 %5, 3
  %.idx423.i = shl i64 %i.m, 3                    ; 2 uses
  %.idx424.i = mul i64 %i.m, 12
  %i.oj = and i32 %5, -4
  %i.ok = zext i32 %.1377.lcssa.i to i64          ; 6 uses
  %i.ol = sext i32 %3 to i64
  %i.om = sext i32 %2 to i64                      ; 3 uses
  %i.on = sext i32 %i.d to i64                    ; 3 uses
  %brmerge694.i = or i1 %i.oe, %i.ob
  %invariant.op815.i = add nsw i64 %i.ol, -1      ; 4 uses
  br i1 %brmerge694.i, label %.lr.ph651.i.split.us, label %.lr.ph621.i.preheader

.lr.ph651.i.split.us:                             ; preds = %.lr.ph651.i
  %i.oo = icmp slt i32 %5, 4
  %i.op = icmp ne i32 %i.d, 4
  %brmerge697.i = or i1 %i.oo, %i.op
  br i1 %brmerge697.i, label %.lr.ph651.i.split.us.split.us, label %.loopexit551.i.us.preheader

.loopexit551.i.us.preheader:                      ; preds = %.lr.ph651.i.split.us
  %.pre = load ptr, ptr %0, align 8, !tbaa !14
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.oa
  br label %.loopexit551.i.us

.lr.ph651.i.split.us.split.us:                    ; preds = %.lr.ph651.i.split.us
  br i1 %i.oh, label %.loopexit551.i.us.us.us, label %.loopexit551.i.us.us.preheader

.loopexit551.i.us.us.preheader:                   ; preds = %.lr.ph651.i.split.us.split.us
  %i.or = add nuw nsw i64 %i.ok, 2
  %smax86 = tail call i64 @llvm.smax.i64(i64 %invariant.op815.i, i64 %i.or)
  %i.os = xor i64 %i.ok, -1
  %i.ot = add nsw i64 %smax86, %i.os
  %i.ou = and i64 %i.ot, -2
  %i.ov = add i64 %i.ou, %i.ok
  %i.ow = add i64 %i.ov, 2
  br label %.preheader545.loopexit.i

.loopexit551.i.us.us.us:                          ; preds = %.lr.ph651.i.split.us.split.us, %.loopexit548.i.us.us.us
  %indvars.iv747.i.us.us.us = phi i64 [ %indvars.iv.next748.i.us.us.us, %.loopexit548.i.us.us.us ], [ %i.ok, %.lr.ph651.i.split.us.split.us ] ; 2 uses
  %.16650.i.us.us.us = phi ptr [ %.24.i.us.us.us, %.loopexit548.i.us.us.us ], [ %.8.lcssa.i, %.lr.ph651.i.split.us.split.us ] ; 2 uses
  %i.ox = load ptr, ptr %0, align 8, !tbaa !14
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.oa
  %i.oz = add nsw i64 %indvars.iv747.i.us.us.us, %i.om
  %i.pa = mul nuw nsw i64 %i.oz, %i.on
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.oy, i64 %i.pa ; 2 uses
  br i1 %i.oi, label %.lr.ph633.i.us.us.us, label %.preheader549.i.us.us.us

.lr.ph633.i.us.us.us:                             ; preds = %.loopexit551.i.us.us.us, %.lr.ph633.i.us.us.us
  %.21632.i.us.us.us = phi ptr [ %i.ql, %.lr.ph633.i.us.us.us ], [ %.16650.i.us.us.us, %.loopexit551.i.us.us.us ] ; 2 uses
  %.0404631.i.us.us.us = phi i32 [ %i.qn, %.lr.ph633.i.us.us.us ], [ 0, %.loopexit551.i.us.us.us ]
  %.4416630.i.us.us.us = phi ptr [ %i.qm, %.lr.ph633.i.us.us.us ], [ %i.pb, %.loopexit551.i.us.us.us ] ; 5 uses
  %i.pc = load i64, ptr %.4416630.i.us.us.us, align 1, !tbaa !17
  %i.pd = insertelement <2 x i64> poison, i64 %i.pc, i64 0
  %i.pe = bitcast <2 x i64> %i.pd to <4 x float>
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %.4416630.i.us.us.us, i64 %i.m
  %i.pg = load i64, ptr %i.pf, align 1, !tbaa !17
  %i.ph = insertelement <2 x i64> poison, i64 %i.pg, i64 0
  %i.pi = bitcast <2 x i64> %i.ph to <4 x float>
  %i.pj = getelementptr inbounds nuw i8, ptr %.4416630.i.us.us.us, i64 %.idx423.i
  %i.pk = load i64, ptr %i.pj, align 1, !tbaa !17
  %i.pl = insertelement <2 x i64> poison, i64 %i.pk, i64 0
  %i.pm = bitcast <2 x i64> %i.pl to <4 x float>
  %i.pn = getelementptr inbounds nuw i8, ptr %.4416630.i.us.us.us, i64 %.idx424.i
  %i.po = load i64, ptr %i.pn, align 1, !tbaa !17
  %i.pp = insertelement <2 x i64> poison, i64 %i.po, i64 0
  %i.pq = bitcast <2 x i64> %i.pp to <4 x float>
  %i.pr = shufflevector <4 x float> %i.pe, <4 x float> %i.pi, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ps = shufflevector <4 x float> %i.pm, <4 x float> %i.pq, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.pt = shufflevector <4 x float> %i.pr, <4 x float> %i.ps, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.pu = shufflevector <4 x float> %i.pr, <4 x float> %i.ps, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.pv = fmul fast <4 x float> %i.og, %i.pt      ; 2 uses
  %i.pw = fmul fast <4 x float> %i.og, %i.pu      ; 2 uses
  %i.px = shufflevector <4 x float> %i.pv, <4 x float> %i.pw, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.py = shufflevector <4 x float> %i.pv, <4 x float> %i.pw, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.pz = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.px)
  %i.qa = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.py)
  %i.qb = fadd fast <4 x float> %i.pz, %i.px
  %i.qc = fadd fast <4 x float> %i.qa, %i.py
  %i.qd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qb)
  %i.qe = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qc)
  %i.qf = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.qd, <4 x i32> %i.qe)
  %i.qg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qf, <8 x i16> splat (i16 -127))
  %i.qh = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.qg, <8 x i16> splat (i16 127))
  %i.qi = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.qh, <8 x i16> poison)
  %i.qj = bitcast <16 x i8> %i.qi to <2 x i64>
  %i.qk = extractelement <2 x i64> %i.qj, i64 0
  store i64 %i.qk, ptr %.21632.i.us.us.us, align 8, !tbaa !27
  %i.ql = getelementptr inbounds nuw i8, ptr %.21632.i.us.us.us, i64 8 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.4416630.i.us.us.us, i64 %.idx426.i ; 2 uses
  %i.qn = add nuw nsw i32 %.0404631.i.us.us.us, 4 ; 2 uses
  %i.qo = or disjoint i32 %i.qn, 3
  %i.qp = icmp slt i32 %i.qo, %5
  br i1 %i.qp, label %.lr.ph633.i.us.us.us, label %.preheader549.i.us.us.us, !llvm.loop !238

.preheader549.i.us.us.us:                         ; preds = %.lr.ph633.i.us.us.us, %.loopexit551.i.us.us.us
  %.4416.lcssa.i.us.us.us = phi ptr [ %i.pb, %.loopexit551.i.us.us.us ], [ %i.qm, %.lr.ph633.i.us.us.us ] ; 2 uses
  %.0404.lcssa.i.us.us.us = phi i32 [ 0, %.loopexit551.i.us.us.us ], [ %i.oj, %.lr.ph633.i.us.us.us ] ; 3 uses
  %.21.lcssa.i.us.us.us = phi ptr [ %.16650.i.us.us.us, %.loopexit551.i.us.us.us ], [ %i.ql, %.lr.ph633.i.us.us.us ] ; 2 uses
  %i.qq = or disjoint i32 %.0404.lcssa.i.us.us.us, 1
  %i.qr = icmp slt i32 %i.qq, %5
  br i1 %i.qr, label %.lr.ph640.i.us.us.us, label %.preheader547.i.us.us.us

.lr.ph640.i.us.us.us:                             ; preds = %.preheader549.i.us.us.us, %.lr.ph640.i.us.us.us
  %.22639.i.us.us.us = phi ptr [ %i.rk, %.lr.ph640.i.us.us.us ], [ %.21.lcssa.i.us.us.us, %.preheader549.i.us.us.us ] ; 2 uses
  %.1405638.i.us.us.us = phi i32 [ %i.rm, %.lr.ph640.i.us.us.us ], [ %.0404.lcssa.i.us.us.us, %.preheader549.i.us.us.us ]
  %.5417637.i.us.us.us = phi ptr [ %i.rl, %.lr.ph640.i.us.us.us ], [ %.4416.lcssa.i.us.us.us, %.preheader549.i.us.us.us ] ; 3 uses
  %i.qs = load i64, ptr %.5417637.i.us.us.us, align 1, !tbaa !17
  %i.qt = insertelement <2 x i64> poison, i64 %i.qs, i64 0
  %i.qu = bitcast <2 x i64> %i.qt to <4 x float>
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %.5417637.i.us.us.us, i64 %i.m
  %i.qw = load i64, ptr %i.qv, align 1, !tbaa !17
  %i.qx = insertelement <2 x i64> poison, i64 %i.qw, i64 0
  %i.qy = bitcast <2 x i64> %i.qx to <4 x float>
  %i.qz = shufflevector <4 x float> %i.qu, <4 x float> %i.qy, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ra = fmul fast <4 x float> %i.qz, %i.og      ; 2 uses
  %i.rb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ra)
  %i.rc = fadd fast <4 x float> %i.rb, %i.ra
  %i.rd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rc) ; 2 uses
  %i.re = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.rd, <4 x i32> %i.rd)
  %i.rf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.re, <8 x i16> splat (i16 -127))
  %i.rg = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.rf, <8 x i16> splat (i16 127))
  %i.rh = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.rg, <8 x i16> poison)
  %i.ri = bitcast <16 x i8> %i.rh to <4 x i32>
  %i.rj = extractelement <4 x i32> %i.ri, i64 0
  store i32 %i.rj, ptr %.22639.i.us.us.us, align 4, !tbaa !28
  %i.rk = getelementptr inbounds nuw i8, ptr %.22639.i.us.us.us, i64 4 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.5417637.i.us.us.us, i64 %.idx423.i ; 2 uses
  %i.rm = add nuw nsw i32 %.1405638.i.us.us.us, 2 ; 3 uses
  %i.rn = or disjoint i32 %i.rm, 1
  %i.ro = icmp slt i32 %i.rn, %5
  br i1 %i.ro, label %.lr.ph640.i.us.us.us, label %.preheader547.i.us.us.us, !llvm.loop !239

.preheader547.i.us.us.us:                         ; preds = %.lr.ph640.i.us.us.us, %.preheader549.i.us.us.us
  %.5417.lcssa.i.us.us.us = phi ptr [ %.4416.lcssa.i.us.us.us, %.preheader549.i.us.us.us ], [ %i.rl, %.lr.ph640.i.us.us.us ]
  %.1405.lcssa.i.us.us.us = phi i32 [ %.0404.lcssa.i.us.us.us, %.preheader549.i.us.us.us ], [ %i.rm, %.lr.ph640.i.us.us.us ] ; 2 uses
  %.22.lcssa.i.us.us.us = phi ptr [ %.21.lcssa.i.us.us.us, %.preheader549.i.us.us.us ], [ %i.rk, %.lr.ph640.i.us.us.us ] ; 2 uses
  %i.rp = icmp slt i32 %.1405.lcssa.i.us.us.us, %5
  br i1 %i.rp, label %.lr.ph647.i.us.us.us, label %.loopexit548.i.us.us.us

.lr.ph647.i.us.us.us:                             ; preds = %.preheader547.i.us.us.us, %.lr.ph647.i.us.us.us
  %.23646.i.us.us.us = phi ptr [ %i.sa, %.lr.ph647.i.us.us.us ], [ %.22.lcssa.i.us.us.us, %.preheader547.i.us.us.us ] ; 3 uses
  %.2406645.i.us.us.us = phi i32 [ %i.sc, %.lr.ph647.i.us.us.us ], [ %.1405.lcssa.i.us.us.us, %.preheader547.i.us.us.us ]
  %.6418644.i.us.us.us = phi ptr [ %i.sb, %.lr.ph647.i.us.us.us ], [ %.5417.lcssa.i.us.us.us, %.preheader547.i.us.us.us ] ; 3 uses
  %i.rq = load float, ptr %.6418644.i.us.us.us, align 4, !tbaa !30
  %i.rr = fmul fast float %i.rq, %6
  %i.rs = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.rr)
  %i.rt = fptosi float %i.rs to i32
  %spec.select.i436539.i.us.us.us = tail call i32 @llvm.smax.i32(i32 %i.rt, i32 -127)
  %.0.i437540.i.us.us.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i436539.i.us.us.us, i32 127)
  %.0.i437.i.us.us.us = trunc nsw i32 %.0.i437540.i.us.us.us to i8
  store i8 %.0.i437.i.us.us.us, ptr %.23646.i.us.us.us, align 1, !tbaa !17
  %i.ru = getelementptr inbounds nuw i8, ptr %.6418644.i.us.us.us, i64 4
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !30
  %i.rw = fmul fast float %i.rv, %6
  %i.rx = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.rw)
  %i.ry = fptosi float %i.rx to i32
  %spec.select.i434541.i.us.us.us = tail call i32 @llvm.smax.i32(i32 %i.ry, i32 -127)
  %.0.i435542.i.us.us.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i434541.i.us.us.us, i32 127)
  %.0.i435.i.us.us.us = trunc nsw i32 %.0.i435542.i.us.us.us to i8
  %i.rz = getelementptr inbounds nuw i8, ptr %.23646.i.us.us.us, i64 1
  store i8 %.0.i435.i.us.us.us, ptr %i.rz, align 1, !tbaa !17
  %i.sa = getelementptr inbounds nuw i8, ptr %.23646.i.us.us.us, i64 2 ; 2 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %.6418644.i.us.us.us, i64 %i.m
  %i.sc = add nuw nsw i32 %.2406645.i.us.us.us, 1 ; 2 uses
  %exitcond746.not.i.us.us.us = icmp eq i32 %i.sc, %5
  br i1 %exitcond746.not.i.us.us.us, label %.loopexit548.i.us.us.us, label %.lr.ph647.i.us.us.us, !llvm.loop !240

.loopexit548.i.us.us.us:                          ; preds = %.lr.ph647.i.us.us.us, %.preheader547.i.us.us.us
  %.24.i.us.us.us = phi ptr [ %.22.lcssa.i.us.us.us, %.preheader547.i.us.us.us ], [ %i.sa, %.lr.ph647.i.us.us.us ] ; 2 uses
  %indvars.iv.next748.i.us.us.us = add nuw nsw i64 %indvars.iv747.i.us.us.us, 2 ; 3 uses
  %i.sd = icmp slt i64 %indvars.iv.next748.i.us.us.us, %invariant.op815.i
  br i1 %i.sd, label %.loopexit551.i.us.us.us, label %.preheader545.loopexit.i, !llvm.loop !241

.loopexit551.i.us:                                ; preds = %.loopexit551.i.us.preheader, %.loopexit548.i.loopexit8.us
  %indvars.iv747.i.us = phi i64 [ %indvars.iv.next748.i.us, %.loopexit548.i.loopexit8.us ], [ %i.ok, %.loopexit551.i.us.preheader ] ; 2 uses
  %.16650.i.us = phi ptr [ %i.ta, %.loopexit548.i.loopexit8.us ], [ %.8.lcssa.i, %.loopexit551.i.us.preheader ]
  %i.se = add nsw i64 %indvars.iv747.i.us, %i.om
  %i.sf = mul nsw i64 %i.se, %i.on
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.oq, i64 %i.sf
  br label %.lr.ph627.i.us

.lr.ph627.i.us:                                   ; preds = %.loopexit551.i.us, %.lr.ph627.i.us
  %.19626.i.us = phi ptr [ %i.ta, %.lr.ph627.i.us ], [ %.16650.i.us, %.loopexit551.i.us ] ; 2 uses
  %.0408625.i.us = phi i32 [ %i.tc, %.lr.ph627.i.us ], [ 0, %.loopexit551.i.us ]
  %.2414624.i.us = phi ptr [ %i.tb, %.lr.ph627.i.us ], [ %i.sg, %.loopexit551.i.us ] ; 3 uses
  %i.sh = load <4 x float>, ptr %.2414624.i.us, align 16, !tbaa !17
  %i.si = getelementptr inbounds nuw i8, ptr %.2414624.i.us, i64 16
  %i.sj = load <4 x float>, ptr %i.si, align 16, !tbaa !17
  %i.sk = fmul fast <4 x float> %i.sh, %i.og      ; 2 uses
  %i.sl = fmul fast <4 x float> %i.sj, %i.og      ; 2 uses
  %i.sm = shufflevector <4 x float> %i.sk, <4 x float> %i.sl, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.sn = shufflevector <4 x float> %i.sk, <4 x float> %i.sl, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.so = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sm)
  %i.sp = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sn)
  %i.sq = fadd fast <4 x float> %i.so, %i.sm
  %i.sr = fadd fast <4 x float> %i.sp, %i.sn
  %i.ss = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sq)
  %i.st = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sr)
  %i.su = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ss, <4 x i32> %i.st)
  %i.sv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.su, <8 x i16> splat (i16 -127))
  %i.sw = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.sv, <8 x i16> splat (i16 127))
  %i.sx = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.sw, <8 x i16> poison)
  %i.sy = bitcast <16 x i8> %i.sx to <2 x i64>
  %i.sz = extractelement <2 x i64> %i.sy, i64 0
  store i64 %i.sz, ptr %.19626.i.us, align 8, !tbaa !27
  %i.ta = getelementptr inbounds nuw i8, ptr %.19626.i.us, i64 8 ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.2414624.i.us, i64 %.idx426.i
  %i.tc = add nuw nsw i32 %.0408625.i.us, 4       ; 2 uses
  %i.td = or disjoint i32 %i.tc, 3
  %i.te = icmp slt i32 %i.td, %5
  br i1 %i.te, label %.lr.ph627.i.us, label %.loopexit548.i.loopexit8.us, !llvm.loop !242

.loopexit548.i.loopexit8.us:                      ; preds = %.lr.ph627.i.us
  %indvars.iv.next748.i.us = add nuw nsw i64 %indvars.iv747.i.us, 2 ; 3 uses
  %i.tf = icmp slt i64 %indvars.iv.next748.i.us, %invariant.op815.i
  br i1 %i.tf, label %.loopexit551.i.us, label %.preheader545.loopexit.i, !llvm.loop !241

.lr.ph592.i.preheader:                            ; preds = %.lr.ph615.i, %.loopexit554.i.loopexit11
  %indvars.iv743.i = phi i64 [ %indvars.iv.next744.i, %.loopexit554.i.loopexit11 ], [ %i.ey, %.lr.ph615.i ] ; 2 uses
  %.8614.i = phi ptr [ %i.vj, %.loopexit554.i.loopexit11 ], [ %.0373.lcssa.i, %.lr.ph615.i ]
  %i.tg = load ptr, ptr %0, align 8, !tbaa !14
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.eo
  %i.ti = add nsw i64 %indvars.iv743.i, %i.fa
  %i.tj = mul nsw i64 %i.ti, %i.fb
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.th, i64 %i.tj
  br label %.lr.ph592.i

.lr.ph592.i:                                      ; preds = %.lr.ph592.i.preheader, %.lr.ph592.i
  %.9591.i = phi ptr [ %i.vj, %.lr.ph592.i ], [ %.8614.i, %.lr.ph592.i.preheader ] ; 3 uses
  %.0397590.i = phi ptr [ %i.vk, %.lr.ph592.i ], [ %i.tk, %.lr.ph592.i.preheader ] ; 5 uses
  %.0403589.i = phi i32 [ %i.vl, %.lr.ph592.i ], [ 0, %.lr.ph592.i.preheader ]
  %i.tl = load <8 x float>, ptr %.0397590.i, align 32, !tbaa !17
  %i.tm = getelementptr inbounds nuw i8, ptr %.0397590.i, i64 32
  %i.tn = load <8 x float>, ptr %i.tm, align 32, !tbaa !17
  %i.to = getelementptr inbounds nuw i8, ptr %.0397590.i, i64 64
  %i.tp = load <8 x float>, ptr %i.to, align 32, !tbaa !17
  %i.tq = getelementptr inbounds nuw i8, ptr %.0397590.i, i64 96
  %i.tr = load <8 x float>, ptr %i.tq, align 32, !tbaa !17
  %i.ts = fmul fast <8 x float> %i.tl, %i.er      ; 2 uses
  %i.tt = fmul fast <8 x float> %i.tn, %i.er      ; 2 uses
  %i.tu = fmul fast <8 x float> %i.tp, %i.er      ; 2 uses
  %i.tv = fmul fast <8 x float> %i.tr, %i.er      ; 2 uses
  %i.tw = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ts)
  %i.tx = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tu)
  %i.ty = fadd fast <8 x float> %i.tw, %i.ts
  %i.tz = fadd fast <8 x float> %i.tx, %i.tu
  %i.ua = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ty)
  %i.ub = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.tz)
  %i.uc = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ua, <8 x i32> %i.ub)
  %i.ud = bitcast <16 x i16> %i.uc to <4 x i64>
  %i.ue = shufflevector <4 x i64> %i.ud, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.uf = bitcast <4 x i64> %i.ue to <16 x i16>
  %i.ug = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.uf, <16 x i16> splat (i16 -127))
  %i.uh = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.ug, <16 x i16> splat (i16 127))
  %i.ui = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.uh, <16 x i16> poison)
  %i.uj = bitcast <32 x i8> %i.ui to <8 x i32>
  %i.uk = shufflevector <8 x i32> %i.uj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ul = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tt)
  %i.um = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tv)
  %i.un = fadd fast <8 x float> %i.ul, %i.tt
  %i.uo = fadd fast <8 x float> %i.um, %i.tv
  %i.up = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.un)
  %i.uq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.uo)
  %i.ur = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.up, <8 x i32> %i.uq)
  %i.us = bitcast <16 x i16> %i.ur to <4 x i64>
  %i.ut = shufflevector <4 x i64> %i.us, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.uu = bitcast <4 x i64> %i.ut to <16 x i16>
  %i.uv = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.uu, <16 x i16> splat (i16 -127))
  %i.uw = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.uv, <16 x i16> splat (i16 127))
  %i.ux = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.uw, <16 x i16> poison)
  %i.uy = bitcast <32 x i8> %i.ux to <8 x i32>
  %i.uz = shufflevector <8 x i32> %i.uy, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.va = bitcast <4 x i32> %i.uk to <8 x i16>    ; 2 uses
  %i.vb = bitcast <4 x i32> %i.uz to <8 x i16>    ; 2 uses
  %i.vc = shufflevector <8 x i16> %i.va, <8 x i16> %i.vb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.vd = shufflevector <8 x i16> %i.va, <8 x i16> %i.vb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ve = bitcast <8 x i16> %i.vc to <4 x i32>    ; 2 uses
  %i.vf = bitcast <8 x i16> %i.vd to <4 x i32>    ; 2 uses
  %i.vg = shufflevector <4 x i32> %i.ve, <4 x i32> %i.vf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.vh = shufflevector <4 x i32> %i.ve, <4 x i32> %i.vf, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.vg, ptr %.9591.i, align 16, !tbaa !17
  %i.vi = getelementptr inbounds nuw i8, ptr %.9591.i, i64 16
  store <4 x i32> %i.vh, ptr %i.vi, align 16, !tbaa !17
  %i.vj = getelementptr inbounds nuw i8, ptr %.9591.i, i64 32 ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.0397590.i, i64 %.idx430.i
  %i.vl = add nuw nsw i32 %.0403589.i, 8          ; 2 uses
  %i.vm = or disjoint i32 %i.vl, 7
  %i.vn = icmp slt i32 %i.vm, %5
  br i1 %i.vn, label %.lr.ph592.i, label %.loopexit554.i.loopexit11, !llvm.loop !243

.loopexit554.i.loopexit11:                        ; preds = %.lr.ph592.i
  %indvars.iv.next744.i = add nuw nsw i64 %indvars.iv743.i, 4 ; 3 uses
  %i.vo = icmp slt i64 %indvars.iv.next744.i, %invariant.op.i
  br i1 %i.vo, label %.lr.ph592.i.preheader, label %.preheader552.loopexit.i, !llvm.loop !235

.preheader545.loopexit.i:                         ; preds = %.loopexit548.i.loopexit9, %.loopexit548.i.loopexit8.us, %.loopexit548.i.us.us.us, %.loopexit551.i.us.us.preheader
  %.us-phi47 = phi ptr [ %.8.lcssa.i, %.loopexit551.i.us.us.preheader ], [ %i.ta, %.loopexit548.i.loopexit8.us ], [ %.24.i.us.us.us, %.loopexit548.i.us.us.us ], [ %i.zu, %.loopexit548.i.loopexit9 ]
  %.us-phi48 = phi i64 [ %i.ow, %.loopexit551.i.us.us.preheader ], [ %indvars.iv.next748.i.us, %.loopexit548.i.loopexit8.us ], [ %indvars.iv.next748.i.us.us.us, %.loopexit548.i.us.us.us ], [ %indvars.iv.next748.i, %.loopexit548.i.loopexit9 ]
  %i.vp = trunc nsw i64 %.us-phi48 to i32
  br label %.preheader545.i

.preheader545.i:                                  ; preds = %.preheader545.loopexit.i, %.preheader552.i
  %.2378.lcssa.i = phi i32 [ %.1377.lcssa.i, %.preheader552.i ], [ %i.vp, %.preheader545.loopexit.i ] ; 2 uses
  %.16.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader552.i ], [ %.us-phi47, %.preheader545.loopexit.i ] ; 2 uses
  %i.vq = icmp slt i32 %.2378.lcssa.i, %3
  br i1 %i.vq, label %.lr.ph680.i, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

.lr.ph680.i:                                      ; preds = %.preheader545.i
  %i.vr = sext i32 %4 to i64
  %i.vs = mul i64 %i.m, %i.vr                     ; 2 uses
  %i.vt = icmp ne i32 %i.d, 8
  %i.vu = insertelement <8 x float> poison, float %6, i64 0
  %i.vv = shufflevector <8 x float> %i.vu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.vw = icmp slt i32 %5, 8
  %.idx421.i = shl i64 %i.m, 5
  %i.vx = icmp ne i32 %i.d, 4
  %i.vy = insertelement <4 x float> poison, float %6, i64 0
  %i.vz = shufflevector <4 x float> %i.vy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wa = icmp slt i32 %5, 4
  %.idx420.i = shl i64 %i.m, 4                    ; 2 uses
  %i.wb = icmp eq i32 %i.d, 1
  %i.wc = icmp sgt i32 %5, 3
  %i.wd = trunc i64 %i.m to i32
  %i.we = insertelement <4 x i32> poison, i32 %i.wd, i64 0
  %i.wf = shufflevector <4 x i32> %i.we, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.wg = mul <4 x i32> %i.wf, <i32 0, i32 1, i32 2, i32 3>
  %i.wh = and i32 %5, -4
  %i.wi = sext i32 %.2378.lcssa.i to i64          ; 2 uses
  %i.wj = sext i32 %2 to i64                      ; 2 uses
  %i.wk = sext i32 %i.d to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %3 to i64         ; 2 uses
  %brmerge700.i = or i1 %i.vw, %i.vt
  %brmerge703.i = or i1 %i.wa, %i.vx
  br i1 %brmerge700.i, label %.loopexit544.i.us.preheader, label %.lr.ph657.i.preheader.preheader

.loopexit544.i.us.preheader:                      ; preds = %.lr.ph680.i
  %xtraiter182 = and i32 %5, 1
  %lcmp.mod183.not = icmp eq i32 %xtraiter182, 0
  br label %.loopexit544.i.us

.lr.ph657.i.preheader.preheader:                  ; preds = %.lr.ph680.i
  %.pre87 = load ptr, ptr %0, align 8, !tbaa !14
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %.pre87, i64 %i.vs
  br label %.lr.ph657.i.preheader

.loopexit544.i.us:                                ; preds = %.loopexit544.i.us.preheader, %.loopexit.i.us
  %indvars.iv751.i.us = phi i64 [ %indvars.iv.next752.i.us, %.loopexit.i.us ], [ %i.wi, %.loopexit544.i.us.preheader ] ; 2 uses
  %.25679.i.us = phi ptr [ %.32.i.us, %.loopexit.i.us ], [ %.16.lcssa.i, %.loopexit544.i.us.preheader ] ; 4 uses
  %i.wm = load ptr, ptr %0, align 8, !tbaa !14
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %i.vs
  %i.wo = add nsw i64 %indvars.iv751.i.us, %i.wj
  %i.wp = mul nsw i64 %i.wo, %i.wk
  %i.wq = getelementptr inbounds [4 x i8], ptr %i.wn, i64 %i.wp ; 3 uses
  br i1 %brmerge703.i, label %.loopexit543.i.us, label %.lr.ph663.i.us

.lr.ph663.i.us:                                   ; preds = %.loopexit544.i.us, %.lr.ph663.i.us
  %.28662.i.us = phi ptr [ %i.xc, %.lr.ph663.i.us ], [ %.25679.i.us, %.loopexit544.i.us ] ; 2 uses
  %.0375661.i.us = phi i32 [ %i.xe, %.lr.ph663.i.us ], [ 0, %.loopexit544.i.us ]
  %.2383660.i.us = phi ptr [ %i.xd, %.lr.ph663.i.us ], [ %i.wq, %.loopexit544.i.us ] ; 2 uses
  %i.wr = load <4 x float>, ptr %.2383660.i.us, align 16, !tbaa !17
  %i.ws = fmul fast <4 x float> %i.wr, %i.vz      ; 2 uses
  %i.wt = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ws)
  %i.wu = fadd fast <4 x float> %i.wt, %i.ws
  %i.wv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wu) ; 2 uses
  %i.ww = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.wv, <4 x i32> %i.wv)
  %i.wx = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ww, <8 x i16> splat (i16 -127))
  %i.wy = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.wx, <8 x i16> splat (i16 127))
  %i.wz = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.wy, <8 x i16> poison)
  %i.xa = bitcast <16 x i8> %i.wz to <4 x i32>
  %i.xb = extractelement <4 x i32> %i.xa, i64 0
  store i32 %i.xb, ptr %.28662.i.us, align 4, !tbaa !28
  %i.xc = getelementptr inbounds nuw i8, ptr %.28662.i.us, i64 4 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.2383660.i.us, i64 %.idx420.i
  %i.xe = add nuw nsw i32 %.0375661.i.us, 4       ; 2 uses
  %i.xf = or disjoint i32 %i.xe, 3
  %i.xg = icmp slt i32 %i.xf, %5
  br i1 %i.xg, label %.lr.ph663.i.us, label %.loopexit.i.us, !llvm.loop !244

.loopexit543.i.us:                                ; preds = %.loopexit544.i.us
  br i1 %i.wb, label %bb.i, label %.loopexit.i.us

bb.i:                                             ; preds = %.loopexit543.i.us
end_hunk_0
