Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/softmax_x86_avx512?download=true
inline.NumInlined: 28
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN4ncnnL17softmax_bf16s_sseEPtii:bb.a
.thread315:                                       ; preds = %bb.d, %bb.e, %.thread, %bb.f
  %i.fg = phi i1 [ true, %bb.f ], [ false, %bb.d ], [ false, %.thread ], [ false, %bb.e ]
  %i.fh = phi i1 [ false, %bb.f ], [ false, %bb.d ], [ false, %.thread ], [ true, %bb.e ]
  %.1301 = phi nsz float [ %.sroa.speculated, %bb.f ], [ %.0300.lcssa, %bb.d ], [ %.0300.lcssa, %.thread ], [ %.0300.lcssa, %bb.e ] ; 3 uses
  %.2299 = phi nsz <4 x float> [ %i.fd, %bb.f ], [ %.0297.lcssa, %bb.d ], [ %.0297.lcssa, %.thread ], [ %i.dy, %bb.e ]
  %.3296 = phi nsz <8 x float> [ %i.fe, %bb.f ], [ %.0293.lcssa, %bb.d ], [ %i.dp, %.thread ], [ %i.dz, %bb.e ]
  %.3292 = phi nsz <16 x float> [ %i.ff, %bb.f ], [ %.0289.lcssa, %bb.d ], [ %i.dq, %.thread ], [ %i.ea, %bb.e ]
  br i1 %i.c, label %.lr.ph356, label %.preheader325

.preheader325.loopexit:                           ; preds = %.lr.ph356
  %i.fi = and i32 %i.b, 2147483632
  br label %.preheader325

.preheader325:                                    ; preds = %.preheader325.loopexit, %.thread315
  %.0302.lcssa = phi <16 x float> [ zeroinitializer, %.thread315 ], [ %i.gz, %.preheader325.loopexit ] ; 5 uses
  %.0123.lcssa = phi i32 [ 0, %.thread315 ], [ %i.fi, %.preheader325.loopexit ] ; 3 uses
  %.0119.lcssa = phi ptr [ %0, %.thread315 ], [ %i.ha, %.preheader325.loopexit ] ; 2 uses
  %i.fj = or disjoint i32 %.0123.lcssa, 7
  %i.fk = icmp slt i32 %i.fj, %i.b
  br i1 %i.fk, label %.lr.ph363, label %.preheader324

.lr.ph356:                                        ; preds = %.thread315, %.lr.ph356
  %.0119355 = phi ptr [ %i.ha, %.lr.ph356 ], [ %0, %.thread315 ] ; 3 uses
  %.0123354 = phi i32 [ %i.hb, %.lr.ph356 ], [ 0, %.thread315 ]
  %.0302353 = phi <16 x float> [ %i.gz, %.lr.ph356 ], [ zeroinitializer, %.thread315 ]
  %i.fl = load <16 x i16>, ptr %.0119355, align 1, !tbaa !49 ; 2 uses
  %i.fm = shufflevector <16 x i16> %i.fl, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.fn = shufflevector <16 x i16> %i.fl, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.fo = shufflevector <16 x i16> %i.fm, <16 x i16> %i.fn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fp = shufflevector <16 x i16> %i.fm, <16 x i16> %i.fn, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fq = bitcast <16 x i16> %i.fo to <8 x i32>
  %i.fr = bitcast <16 x i16> %i.fp to <8 x i32>
  %i.fs = shufflevector <8 x i32> %i.fq, <8 x i32> %i.fr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ft = bitcast <16 x i32> %i.fs to <16 x float>
  %i.fu = fsub fast <16 x float> %i.ft, %.3292
  %i.fv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fu, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.fw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fv, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.fx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fw, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fy = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.fx, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.fz = fcmp fast ogt <16 x float> %i.fy, %i.fx
  %i.ga = fadd fast <16 x float> %i.fy, splat (float -1.000000e+00)
  %i.gb = select fast <16 x i1> %i.fz, <16 x float> %i.ga, <16 x float> %i.fy ; 2 uses
  %i.gc = fneg fast <16 x float> %i.gb            ; 2 uses
  %i.gd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.gc, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fw)
  %i.ge = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.gc, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.gd) ; 8 uses
  %i.gf = fmul fast <16 x float> %i.ge, %i.ge
  %i.gg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ge, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.gh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gg, <16 x float> nofpclass(nan inf) %i.ge, <16 x float> splat (float f0x3C088908))
  %i.gi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gh, <16 x float> nofpclass(nan inf) %i.ge, <16 x float> splat (float f0x3D2AA9C1))
  %i.gj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gi, <16 x float> nofpclass(nan inf) %i.ge, <16 x float> splat (float f0x3E2AAAAA))
  %i.gk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gj, <16 x float> nofpclass(nan inf) %i.ge, <16 x float> splat (float 5.000000e-01))
  %i.gl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gk, <16 x float> nofpclass(nan inf) %i.gf, <16 x float> nofpclass(nan inf) %i.ge)
  %i.gm = fadd fast <16 x float> %i.gl, splat (float 1.000000e+00)
  %i.gn = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.go = shl <16 x i32> %i.gn, splat (i32 23)
  %i.gp = add <16 x i32> %i.go, splat (i32 1065353216)
  %i.gq = bitcast <16 x i32> %i.gp to <16 x float>
  %i.gr = fmul fast <16 x float> %i.gm, %i.gq     ; 2 uses
  %i.gs = bitcast <16 x float> %i.gr to <16 x i32>
  %i.gt = lshr <16 x i32> %i.gs, splat (i32 16)   ; 2 uses
  %i.gu = shufflevector <16 x i32> %i.gt, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gv = shufflevector <16 x i32> %i.gt, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gw = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.gu, <8 x i32> %i.gv)
  %i.gx = bitcast <16 x i16> %i.gw to <4 x i64>
  %i.gy = shufflevector <4 x i64> %i.gx, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.gy, ptr %.0119355, align 1, !tbaa !49
  %i.gz = fadd fast <16 x float> %i.gr, %.0302353 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.0119355, i64 32 ; 2 uses
  %i.hb = add nuw nsw i32 %.0123354, 16           ; 2 uses
  %i.hc = or disjoint i32 %i.hb, 15
  %i.hd = icmp slt i32 %i.hc, %i.b
  br i1 %i.hd, label %.lr.ph356, label %.preheader325.loopexit, !llvm.loop !238

.preheader324:                                    ; preds = %.lr.ph363, %.preheader325
  %.0306.lcssa = phi <8 x float> [ zeroinitializer, %.preheader325 ], [ %i.io, %.lr.ph363 ] ; 3 uses
  %.1124.lcssa = phi i32 [ %.0123.lcssa, %.preheader325 ], [ %i.iq, %.lr.ph363 ] ; 3 uses
  %.1120.lcssa = phi ptr [ %.0119.lcssa, %.preheader325 ], [ %i.ip, %.lr.ph363 ] ; 2 uses
  %i.he = or disjoint i32 %.1124.lcssa, 3
  %i.hf = icmp slt i32 %i.he, %i.b
  br i1 %i.hf, label %.lr.ph370, label %.preheader323

.lr.ph363:                                        ; preds = %.preheader325, %.lr.ph363
  %.1120362 = phi ptr [ %i.ip, %.lr.ph363 ], [ %.0119.lcssa, %.preheader325 ] ; 3 uses
  %.1124361 = phi i32 [ %i.iq, %.lr.ph363 ], [ %.0123.lcssa, %.preheader325 ]
  %.0306360 = phi <8 x float> [ %i.io, %.lr.ph363 ], [ zeroinitializer, %.preheader325 ]
  %i.hg = load <8 x i16>, ptr %.1120362, align 1, !tbaa !49 ; 2 uses
  %i.hh = shufflevector <8 x i16> %i.hg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.hi = shufflevector <8 x i16> %i.hg, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.hj = shufflevector <8 x i16> %i.hh, <8 x i16> %i.hi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hk = bitcast <16 x i16> %i.hj to <8 x float>
  %i.hl = fsub fast <8 x float> %i.hk, %.3296
  %i.hm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hl, <8 x float> splat (float f0x42B0C0A5))
  %i.hn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hm, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ho = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hn, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.hp = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ho, i32 1) ; 2 uses
  %i.hq = fcmp fast ogt <8 x float> %i.hp, %i.ho
  %i.hr = select <8 x i1> %i.hq, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.hs = fsub fast <8 x float> %i.hp, %i.hr      ; 2 uses
  %i.ht = fneg fast <8 x float> %i.hs             ; 2 uses
  %i.hu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ht, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hn)
  %i.hv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ht, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.hu) ; 8 uses
  %i.hw = fmul fast <8 x float> %i.hv, %i.hv
  %i.hx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hv, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.hy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hx, <8 x float> nofpclass(nan inf) %i.hv, <8 x float> splat (float f0x3C088908))
  %i.hz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hy, <8 x float> nofpclass(nan inf) %i.hv, <8 x float> splat (float f0x3D2AA9C1))
  %i.ia = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hz, <8 x float> nofpclass(nan inf) %i.hv, <8 x float> splat (float f0x3E2AAAAA))
  %i.ib = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ia, <8 x float> nofpclass(nan inf) %i.hv, <8 x float> splat (float 5.000000e-01))
  %i.ic = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ib, <8 x float> nofpclass(nan inf) %i.hw, <8 x float> nofpclass(nan inf) %i.hv)
  %i.id = fadd fast <8 x float> %i.ic, splat (float 1.000000e+00)
  %i.ie = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hs)
  %i.if = shl <8 x i32> %i.ie, splat (i32 23)
  %i.ig = add <8 x i32> %i.if, splat (i32 1065353216)
  %i.ih = bitcast <8 x i32> %i.ig to <8 x float>
  %i.ii = fmul fast <8 x float> %i.id, %i.ih      ; 2 uses
  %i.ij = bitcast <8 x float> %i.ii to <8 x i32>
  %i.ik = lshr <8 x i32> %i.ij, splat (i32 16)    ; 2 uses
  %i.il = shufflevector <8 x i32> %i.ik, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.im = shufflevector <8 x i32> %i.ik, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.in = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.il, <4 x i32> %i.im)
  store <8 x i16> %i.in, ptr %.1120362, align 1, !tbaa !49
  %i.io = fadd fast <8 x float> %i.ii, %.0306360  ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.1120362, i64 16 ; 2 uses
  %i.iq = add nuw nsw i32 %.1124361, 8            ; 3 uses
  %i.ir = or disjoint i32 %i.iq, 7
  %i.is = icmp slt i32 %i.ir, %i.b
  br i1 %i.is, label %.lr.ph363, label %.preheader324, !llvm.loop !239

.preheader323:                                    ; preds = %.lr.ph370, %.preheader324
  %.0310.lcssa = phi <4 x float> [ zeroinitializer, %.preheader324 ], [ %i.mu, %.lr.ph370 ] ; 2 uses
  %.2125.lcssa = phi i32 [ %.1124.lcssa, %.preheader324 ], [ %i.mw, %.lr.ph370 ] ; 5 uses
  %.2121.lcssa = phi ptr [ %.1120.lcssa, %.preheader324 ], [ %i.mv, %.lr.ph370 ] ; 5 uses
  %i.it = icmp slt i32 %.2125.lcssa, %i.b
  br i1 %i.it, label %iter.check512, label %._crit_edge378

iter.check512:                                    ; preds = %.preheader323
  %i.iu = xor i32 %.2125.lcssa, -1
  %i.iv = add i32 %i.b, %i.iu                     ; 3 uses
  %i.iw = zext i32 %i.iv to i64
  %i.ix = add nuw nsw i64 %i.iw, 1                ; 5 uses
  %min.iters.check489 = icmp ult i32 %i.iv, 7
  br i1 %min.iters.check489, label %.lr.ph377.preheader, label %vector.main.loop.iter.check490

vector.main.loop.iter.check490:                   ; preds = %iter.check512
  %min.iters.check491 = icmp ult i32 %i.iv, 63
  br i1 %min.iters.check491, label %vec.epilog.ph516, label %vector.ph492

vector.ph492:                                     ; preds = %vector.main.loop.iter.check490
  %i.iy = and i64 %i.ix, 56
  %n.vec493 = and i64 %i.ix, 8589934528           ; 5 uses
  %i.iz = shl nuw nsw i64 %n.vec493, 1
  %i.ja = getelementptr i8, ptr %.2121.lcssa, i64 %i.iz
  %i.jb = trunc i64 %n.vec493 to i32
  %i.jc = add i32 %.2125.lcssa, %i.jb
  %broadcast.splatinsert494 = insertelement <16 x float> poison, float %.1301, i64 0
  %broadcast.splat495 = shufflevector <16 x float> %broadcast.splatinsert494, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body496

vector.body496:                                   ; preds = %vector.ph492, %vector.body496
  %index497 = phi i64 [ 0, %vector.ph492 ], [ %index.next507, %vector.body496 ] ; 2 uses
  %vec.phi498 = phi <16 x float> [ zeroinitializer, %vector.ph492 ], [ %i.kn, %vector.body496 ]
  %vec.phi499 = phi <16 x float> [ zeroinitializer, %vector.ph492 ], [ %i.ko, %vector.body496 ]
  %vec.phi500 = phi <16 x float> [ zeroinitializer, %vector.ph492 ], [ %i.kp, %vector.body496 ]
  %vec.phi501 = phi <16 x float> [ zeroinitializer, %vector.ph492 ], [ %i.kq, %vector.body496 ]
  %i.jd = shl i64 %index497, 1
  %next.gep502 = getelementptr i8, ptr %.2121.lcssa, i64 %i.jd ; 5 uses
  %i.je = getelementptr i8, ptr %next.gep502, i64 32 ; 2 uses
  %i.jf = getelementptr i8, ptr %next.gep502, i64 64 ; 2 uses
  %i.jg = getelementptr i8, ptr %next.gep502, i64 96 ; 2 uses
  %wide.load503 = load <16 x i16>, ptr %next.gep502, align 2, !tbaa !62
  %wide.load504 = load <16 x i16>, ptr %i.je, align 2, !tbaa !62
  %wide.load505 = load <16 x i16>, ptr %i.jf, align 2, !tbaa !62
  %wide.load506 = load <16 x i16>, ptr %i.jg, align 2, !tbaa !62
  %i.jh = zext <16 x i16> %wide.load503 to <16 x i32>
  %i.ji = zext <16 x i16> %wide.load504 to <16 x i32>
  %i.jj = zext <16 x i16> %wide.load505 to <16 x i32>
  %i.jk = zext <16 x i16> %wide.load506 to <16 x i32>
  %i.jl = shl nuw <16 x i32> %i.jh, splat (i32 16)
  %i.jm = shl nuw <16 x i32> %i.ji, splat (i32 16)
  %i.jn = shl nuw <16 x i32> %i.jj, splat (i32 16)
  %i.jo = shl nuw <16 x i32> %i.jk, splat (i32 16)
  %i.jp = bitcast <16 x i32> %i.jl to <16 x float>
  %i.jq = bitcast <16 x i32> %i.jm to <16 x float>
  %i.jr = bitcast <16 x i32> %i.jn to <16 x float>
  %i.js = bitcast <16 x i32> %i.jo to <16 x float>
  %i.jt = fsub fast <16 x float> %i.jp, %broadcast.splat495
  %i.ju = fsub fast <16 x float> %i.jq, %broadcast.splat495
  %i.jv = fsub fast <16 x float> %i.jr, %broadcast.splat495
  %i.jw = fsub fast <16 x float> %i.js, %broadcast.splat495
  %i.jx = tail call fast <16 x float> @llvm.exp.v16f32(<16 x float> %i.jt) ; 2 uses
  %i.jy = tail call fast <16 x float> @llvm.exp.v16f32(<16 x float> %i.ju) ; 2 uses
  %i.jz = tail call fast <16 x float> @llvm.exp.v16f32(<16 x float> %i.jv) ; 2 uses
  %i.ka = tail call fast <16 x float> @llvm.exp.v16f32(<16 x float> %i.jw) ; 2 uses
  %i.kb = bitcast <16 x float> %i.jx to <16 x i32>
  %i.kc = bitcast <16 x float> %i.jy to <16 x i32>
  %i.kd = bitcast <16 x float> %i.jz to <16 x i32>
  %i.ke = bitcast <16 x float> %i.ka to <16 x i32>
  %i.kf = lshr <16 x i32> %i.kb, splat (i32 16)
  %i.kg = lshr <16 x i32> %i.kc, splat (i32 16)
  %i.kh = lshr <16 x i32> %i.kd, splat (i32 16)
  %i.ki = lshr <16 x i32> %i.ke, splat (i32 16)
  %i.kj = trunc nuw nsw <16 x i32> %i.kf to <16 x i16>
  %i.kk = trunc nuw nsw <16 x i32> %i.kg to <16 x i16>
  %i.kl = trunc nuw nsw <16 x i32> %i.kh to <16 x i16>
  %i.km = trunc nuw nsw <16 x i32> %i.ki to <16 x i16>
  store <16 x i16> %i.kj, ptr %next.gep502, align 2, !tbaa !62
  store <16 x i16> %i.kk, ptr %i.je, align 2, !tbaa !62
  store <16 x i16> %i.kl, ptr %i.jf, align 2, !tbaa !62
  store <16 x i16> %i.km, ptr %i.jg, align 2, !tbaa !62
  %i.kn = fadd fast <16 x float> %i.jx, %vec.phi498 ; 2 uses
  %i.ko = fadd fast <16 x float> %i.jy, %vec.phi499 ; 2 uses
  %i.kp = fadd fast <16 x float> %i.jz, %vec.phi500 ; 2 uses
  %i.kq = fadd fast <16 x float> %i.ka, %vec.phi501 ; 2 uses
  %index.next507 = add nuw i64 %index497, 64      ; 2 uses
  %i.kr = icmp eq i64 %index.next507, %n.vec493
  br i1 %i.kr, label %middle.block508, label %vector.body496, !llvm.loop !240

middle.block508:                                  ; preds = %vector.body496
  %bin.rdx = fadd fast <16 x float> %i.ko, %i.kn
  %bin.rdx509 = fadd fast <16 x float> %i.kp, %bin.rdx
  %bin.rdx510 = fadd fast <16 x float> %i.kq, %bin.rdx509
  %i.ks = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx510) ; 3 uses
  %cmp.n511 = icmp eq i64 %i.ix, %n.vec493
  br i1 %cmp.n511, label %._crit_edge378, label %vec.epilog.iter.check513

vec.epilog.iter.check513:                         ; preds = %middle.block508
  %min.epilog.iters.check515 = icmp eq i64 %i.iy, 0
  br i1 %min.epilog.iters.check515, label %.lr.ph377.preheader, label %vec.epilog.ph516, !prof !56

vec.epilog.ph516:                                 ; preds = %vector.main.loop.iter.check490, %vec.epilog.iter.check513
  %vec.epilog.resume.val517 = phi i64 [ %n.vec493, %vec.epilog.iter.check513 ], [ 0, %vector.main.loop.iter.check490 ]
  %bc.merge.rdx518 = phi float [ %i.ks, %vec.epilog.iter.check513 ], [ 0.000000e+00, %vector.main.loop.iter.check490 ]
  %n.vec519 = and i64 %i.ix, 8589934584           ; 4 uses
  %i.kt = shl nuw nsw i64 %n.vec519, 1
  %i.ku = getelementptr i8, ptr %.2121.lcssa, i64 %i.kt
  %i.kv = trunc i64 %n.vec519 to i32
  %i.kw = add i32 %.2125.lcssa, %i.kv
  %i.kx = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx518, i64 0
  %broadcast.splatinsert520 = insertelement <8 x float> poison, float %.1301, i64 0
  %broadcast.splat521 = shufflevector <8 x float> %broadcast.splatinsert520, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body522

vec.epilog.vector.body522:                        ; preds = %vec.epilog.vector.body522, %vec.epilog.ph516
  %index523 = phi i64 [ %vec.epilog.resume.val517, %vec.epilog.ph516 ], [ %index.next527, %vec.epilog.vector.body522 ] ; 2 uses
  %vec.phi524 = phi <8 x float> [ %i.kx, %vec.epilog.ph516 ], [ %i.lh, %vec.epilog.vector.body522 ]
  %i.ky = shl i64 %index523, 1
  %next.gep525 = getelementptr i8, ptr %.2121.lcssa, i64 %i.ky ; 2 uses
  %wide.load526 = load <8 x i16>, ptr %next.gep525, align 2, !tbaa !62
  %i.kz = zext <8 x i16> %wide.load526 to <8 x i32>
  %i.la = shl nuw <8 x i32> %i.kz, splat (i32 16)
  %i.lb = bitcast <8 x i32> %i.la to <8 x float>
  %i.lc = fsub fast <8 x float> %i.lb, %broadcast.splat521
  %i.ld = tail call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.lc) ; 2 uses
  %i.le = bitcast <8 x float> %i.ld to <8 x i32>
  %i.lf = lshr <8 x i32> %i.le, splat (i32 16)
  %i.lg = trunc nuw nsw <8 x i32> %i.lf to <8 x i16>
  store <8 x i16> %i.lg, ptr %next.gep525, align 2, !tbaa !62
  %i.lh = fadd fast <8 x float> %i.ld, %vec.phi524 ; 2 uses
  %index.next527 = add nuw i64 %index523, 8       ; 2 uses
  %i.li = icmp eq i64 %index.next527, %n.vec519
  br i1 %i.li, label %vec.epilog.middle.block528, label %vec.epilog.vector.body522, !llvm.loop !241

vec.epilog.middle.block528:                       ; preds = %vec.epilog.vector.body522
  %i.lj = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.lh) ; 2 uses
  %cmp.n529 = icmp eq i64 %i.ix, %n.vec519
  br i1 %cmp.n529, label %._crit_edge378, label %.lr.ph377.preheader

.lr.ph377.preheader:                              ; preds = %iter.check512, %vec.epilog.iter.check513, %vec.epilog.middle.block528
  %.0117376.ph = phi float [ 0.000000e+00, %iter.check512 ], [ %i.ks, %vec.epilog.iter.check513 ], [ %i.lj, %vec.epilog.middle.block528 ]
  %.3122375.ph = phi ptr [ %.2121.lcssa, %iter.check512 ], [ %i.ja, %vec.epilog.iter.check513 ], [ %i.ku, %vec.epilog.middle.block528 ]
  %.3126374.ph = phi i32 [ %.2125.lcssa, %iter.check512 ], [ %i.jc, %vec.epilog.iter.check513 ], [ %i.kw, %vec.epilog.middle.block528 ]
  br label %.lr.ph377

.lr.ph370:                                        ; preds = %.preheader324, %.lr.ph370
  %.2121369 = phi ptr [ %i.mv, %.lr.ph370 ], [ %.1120.lcssa, %.preheader324 ] ; 3 uses
  %.2125368 = phi i32 [ %i.mw, %.lr.ph370 ], [ %.1124.lcssa, %.preheader324 ]
  %.0310367 = phi <4 x float> [ %i.mu, %.lr.ph370 ], [ zeroinitializer, %.preheader324 ]
  %i.lk = load i64, ptr %.2121369, align 1, !tbaa !49
  %i.ll = insertelement <2 x i64> poison, i64 %i.lk, i64 0
  %i.lm = bitcast <2 x i64> %i.ll to <8 x i16>
  %i.ln = shufflevector <8 x i16> %i.lm, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.lo = bitcast <8 x i16> %i.ln to <4 x float>
  %i.lp = fsub fast <4 x float> %i.lo, %.2299
  %i.lq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lp, <4 x float> splat (float f0x42B0C0A5))
  %i.lr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ls = fmul fast <4 x float> %i.lr, splat (float f0x3FB8AA3B)
  %i.lt = fadd fast <4 x float> %i.ls, splat (float 5.000000e-01) ; 2 uses
  %i.lu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lt)
  %i.lv = sitofp fast <4 x i32> %i.lu to <4 x float> ; 2 uses
  %i.lw = fcmp fast olt <4 x float> %i.lt, %i.lv
  %i.lx = select <4 x i1> %i.lw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ly = fsub fast <4 x float> %i.lv, %i.lx      ; 2 uses
  %i.lz = fneg fast <4 x float> %i.ly             ; 2 uses
  %i.ma = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.lz, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.lr)
  %i.mb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.lz, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ma) ; 8 uses
  %i.mc = fmul fast <4 x float> %i.mb, %i.mb
  %i.md = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mb, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.me = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.md, <4 x float> nofpclass(nan inf) %i.mb, <4 x float> splat (float f0x3C088908))
  %i.mf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.me, <4 x float> nofpclass(nan inf) %i.mb, <4 x float> splat (float f0x3D2AA9C1))
  %i.mg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mf, <4 x float> nofpclass(nan inf) %i.mb, <4 x float> splat (float f0x3E2AAAAA))
  %i.mh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mg, <4 x float> nofpclass(nan inf) %i.mb, <4 x float> splat (float 5.000000e-01))
  %i.mi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mh, <4 x float> nofpclass(nan inf) %i.mc, <4 x float> nofpclass(nan inf) %i.mb)
  %i.mj = fadd fast <4 x float> %i.mi, splat (float 1.000000e+00)
  %i.mk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ly)
  %i.ml = shl <4 x i32> %i.mk, splat (i32 23)
  %i.mm = add <4 x i32> %i.ml, splat (i32 1065353216)
  %i.mn = bitcast <4 x i32> %i.mm to <4 x float>
  %i.mo = fmul fast <4 x float> %i.mj, %i.mn      ; 2 uses
  %i.mp = bitcast <4 x float> %i.mo to <4 x i32>
  %i.mq = lshr <4 x i32> %i.mp, splat (i32 16)
  %i.mr = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.mq, <4 x i32> poison)
  %i.ms = bitcast <8 x i16> %i.mr to <2 x i64>
  %i.mt = extractelement <2 x i64> %i.ms, i64 0
  store i64 %i.mt, ptr %.2121369, align 1, !tbaa !49
  %i.mu = fadd fast <4 x float> %i.mo, %.0310367  ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.2121369, i64 8 ; 2 uses
  %i.mw = add nuw nsw i32 %.2125368, 4            ; 3 uses
  %i.mx = or disjoint i32 %i.mw, 3
  %i.my = icmp slt i32 %i.mx, %i.b
  br i1 %i.my, label %.lr.ph370, label %.preheader323, !llvm.loop !242

.lr.ph377:                                        ; preds = %.lr.ph377.preheader, %.lr.ph377
  %.0117376 = phi float [ %i.ni, %.lr.ph377 ], [ %.0117376.ph, %.lr.ph377.preheader ]
  %.3122375 = phi ptr [ %i.nj, %.lr.ph377 ], [ %.3122375.ph, %.lr.ph377.preheader ] ; 3 uses
  %.3126374 = phi i32 [ %i.nk, %.lr.ph377 ], [ %.3126374.ph, %.lr.ph377.preheader ]
  %i.mz = load i16, ptr %.3122375, align 2, !tbaa !62
  %i.na = zext i16 %i.mz to i32
  %i.nb = shl nuw i32 %i.na, 16
  %i.nc = bitcast i32 %i.nb to float
  %i.nd = fsub fast float %i.nc, %.1301
  %i.ne = tail call fast float @llvm.exp.f32(float %i.nd) ; 2 uses
  %i.nf = bitcast float %i.ne to i32
  %i.ng = lshr i32 %i.nf, 16
  %i.nh = trunc nuw nsw i32 %i.ng to i16
  store i16 %i.nh, ptr %.3122375, align 2, !tbaa !62
  %i.ni = fadd fast float %i.ne, %.0117376        ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.3122375, i64 2
  %i.nk = add nuw nsw i32 %.3126374, 1            ; 2 uses
  %exitcond423.not = icmp eq i32 %i.nk, %i.b
  br i1 %exitcond423.not, label %._crit_edge378, label %.lr.ph377, !llvm.loop !243

._crit_edge378:                                   ; preds = %.lr.ph377, %middle.block508, %vec.epilog.middle.block528, %.preheader323
  %.0117.lcssa = phi float [ 0.000000e+00, %.preheader323 ], [ %i.lj, %vec.epilog.middle.block528 ], [ %i.ks, %middle.block508 ], [ %i.ni, %.lr.ph377 ] ; 2 uses
  %i.nl = icmp eq i32 %2, 16
  br i1 %i.nl, label %.thread319, label %bb.g

.thread319:                                       ; preds = %._crit_edge378
  %i.nm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> nofpclass(nan inf) %.0302.lcssa, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.nn = fneg fast <16 x float> %.0302.lcssa
  %i.no = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.nn, <16 x float> nofpclass(nan inf) %i.nm, <16 x float> splat (float 2.000000e+00))
  %i.np = fmul fast <16 x float> %i.no, %i.nm
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge378
  br i1 %i.dl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.nq = shufflevector <16 x float> %.0302.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.nr = shufflevector <16 x float> %.0302.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ns = fadd fast <8 x float> %i.nq, %i.nr
  %i.nt = fadd fast <8 x float> %i.ns, %.0306.lcssa ; 2 uses
  %i.nu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.nt) ; 2 uses
  %i.nv = fneg fast <8 x float> %i.nt
  %i.nw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.nv, <8 x float> nofpclass(nan inf) %i.nu, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.nx = fmul fast <8 x float> %i.nw, %i.nu      ; 2 uses
  %i.ny = shufflevector <8 x float> %i.nx, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.i

bb.i:                                             ; preds = %.thread319, %bb.h, %bb.g
  %.1307 = phi nsz <8 x float> [ %i.nx, %bb.h ], [ %.0306.lcssa, %bb.g ], [ %.0306.lcssa, %.thread319 ] ; 2 uses
  %.2304 = phi nsz <16 x float> [ %i.ny, %bb.h ], [ %.0302.lcssa, %bb.g ], [ %i.np, %.thread319 ] ; 3 uses
  br i1 %i.fh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.nz = shufflevector <16 x float> %.2304, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.oa = shufflevector <16 x float> %.2304, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ob = fadd fast <8 x float> %i.nz, %.1307
  %i.oc = fadd fast <8 x float> %i.ob, %i.oa      ; 2 uses
  %i.od = shufflevector <8 x float> %i.oc, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.oe = shufflevector <8 x float> %i.oc, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.of = fadd fast <4 x float> %i.od, %.0310.lcssa
  %i.og = fadd fast <4 x float> %i.of, %i.oe      ; 2 uses
  %i.oh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.og) ; 2 uses
  %i.oi = fneg fast <4 x float> %i.og
  %i.oj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.oi, <4 x float> nofpclass(nan inf) %i.oh, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.ok = fmul fast <4 x float> %i.oj, %i.oh      ; 3 uses
  %i.ol = shufflevector <4 x float> %i.ok, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.om = shufflevector <4 x float> %i.ok, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1311 = phi nsz <4 x float> [ %i.ok, %bb.j ], [ %.0310.lcssa, %bb.i ] ; 3 uses
  %.2308 = phi nsz <8 x float> [ %i.ol, %bb.j ], [ %.1307, %bb.i ] ; 3 uses
  %.3305 = phi nsz <16 x float> [ %i.om, %bb.j ], [ %.2304, %bb.i ] ; 3 uses
  br i1 %i.fg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.on = shufflevector <16 x float> %.3305, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.oo = shufflevector <16 x float> %.3305, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.op = fadd fast <8 x float> %i.on, %i.oo      ; 2 uses
  %i.oq = shufflevector <8 x float> %i.op, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.or = shufflevector <8 x float> %i.op, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.os = fadd fast <4 x float> %i.oq, %i.or      ; 2 uses
  %i.ot = shufflevector <8 x float> %.2308, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ou = shufflevector <8 x float> %.2308, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ov = fadd fast <4 x float> %i.ot, %i.ou      ; 2 uses
  %i.ow = shufflevector <4 x float> %.1311, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ox = fadd fast <4 x float> %i.ow, %.1311     ; 2 uses
  %i.oy = extractelement <4 x float> %i.ox, i64 1
  %i.oz = extractelement <4 x float> %i.ox, i64 0
  %i.pa = shufflevector <4 x float> %i.os, <4 x float> %i.ov, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.pb = shufflevector <4 x float> %i.os, <4 x float> %i.ov, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.pc = fadd fast <4 x float> %i.pa, %i.pb
  %op.rdx = tail call fast float @llvm.vector.reduce.fadd.v4f32(float %i.oy, <4 x float> %i.pc)
  %op.rdx568 = fadd fast float %i.oz, %.0117.lcssa
  %op.rdx569 = fadd fast float %op.rdx, %op.rdx568
  %i.pd = fdiv fast float 1.000000e+00, %op.rdx569 ; 2 uses
  %i.pe = insertelement <4 x float> poison, float %i.pd, i64 0 ; 3 uses
  %i.pf = shufflevector <4 x float> %i.pe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pg = shufflevector <4 x float> %i.pe, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ph = shufflevector <4 x float> %i.pe, <4 x float> poison, <16 x i32> zeroinitializer
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2312 = phi nsz <4 x float> [ %i.pf, %bb.l ], [ %.1311, %bb.k ]
  %.3309 = phi nsz <8 x float> [ %i.pg, %bb.l ], [ %.2308, %bb.k ]
  %.4 = phi nsz <16 x float> [ %i.ph, %bb.l ], [ %.3305, %bb.k ]
  %.1118 = phi nsz float [ %i.pd, %bb.l ], [ %.0117.lcssa, %bb.k ] ; 3 uses
  br i1 %i.c, label %.lr.ph383, label %.preheader322

.preheader322.loopexit:                           ; preds = %.lr.ph383
  %i.pi = and i32 %i.b, 2147483632
  br label %.preheader322

.preheader322:                                    ; preds = %.preheader322.loopexit, %bb.m
  %.0105.lcssa = phi ptr [ %0, %bb.m ], [ %i.qc, %.preheader322.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.m ], [ %i.pi, %.preheader322.loopexit ] ; 3 uses
  %i.pj = or disjoint i32 %.0.lcssa, 7
  %i.pk = icmp slt i32 %i.pj, %i.b
  br i1 %i.pk, label %.lr.ph388, label %.preheader321

.lr.ph383:                                        ; preds = %bb.m, %.lr.ph383
  %.0381 = phi i32 [ %i.qd, %.lr.ph383 ], [ 0, %bb.m ]
  %.0105380 = phi ptr [ %i.qc, %.lr.ph383 ], [ %0, %bb.m ] ; 3 uses
  %i.pl = load <16 x i16>, ptr %.0105380, align 1, !tbaa !49 ; 2 uses
  %i.pm = shufflevector <16 x i16> %i.pl, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.pn = shufflevector <16 x i16> %i.pl, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.po = shufflevector <16 x i16> %i.pm, <16 x i16> %i.pn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.pp = shufflevector <16 x i16> %i.pm, <16 x i16> %i.pn, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pq = bitcast <16 x i16> %i.po to <8 x i32>
  %i.pr = bitcast <16 x i16> %i.pp to <8 x i32>
  %i.ps = shufflevector <8 x i32> %i.pq, <8 x i32> %i.pr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pt = bitcast <16 x i32> %i.ps to <16 x float>
  %i.pu = fmul fast <16 x float> %.4, %i.pt
  %i.pv = bitcast <16 x float> %i.pu to <16 x i32>
  %i.pw = lshr <16 x i32> %i.pv, splat (i32 16)   ; 2 uses
  %i.px = shufflevector <16 x i32> %i.pw, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.py = shufflevector <16 x i32> %i.pw, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pz = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.px, <8 x i32> %i.py)
  %i.qa = bitcast <16 x i16> %i.pz to <4 x i64>
  %i.qb = shufflevector <4 x i64> %i.qa, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.qb, ptr %.0105380, align 1, !tbaa !49
  %i.qc = getelementptr inbounds nuw i8, ptr %.0105380, i64 32 ; 2 uses
  %i.qd = add nuw nsw i32 %.0381, 16              ; 2 uses
  %i.qe = or disjoint i32 %i.qd, 15
  %i.qf = icmp slt i32 %i.qe, %i.b
  br i1 %i.qf, label %.lr.ph383, label %.preheader322.loopexit, !llvm.loop !244

.preheader321:                                    ; preds = %.lr.ph388, %.preheader322
  %.1106.lcssa = phi ptr [ %.0105.lcssa, %.preheader322 ], [ %i.qt, %.lr.ph388 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader322 ], [ %i.qu, %.lr.ph388 ] ; 3 uses
  %i.qg = or disjoint i32 %.1.lcssa, 3
  %i.qh = icmp slt i32 %i.qg, %i.b
  br i1 %i.qh, label %.lr.ph393, label %.preheader

.lr.ph388:                                        ; preds = %.preheader322, %.lr.ph388
  %.1387 = phi i32 [ %i.qu, %.lr.ph388 ], [ %.0.lcssa, %.preheader322 ]
  %.1106386 = phi ptr [ %i.qt, %.lr.ph388 ], [ %.0105.lcssa, %.preheader322 ] ; 3 uses
  %i.qi = load <8 x i16>, ptr %.1106386, align 1, !tbaa !49 ; 2 uses
  %i.qj = shufflevector <8 x i16> %i.qi, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.qk = shufflevector <8 x i16> %i.qi, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ql = shufflevector <8 x i16> %i.qj, <8 x i16> %i.qk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qm = bitcast <16 x i16> %i.ql to <8 x float>
  %i.qn = fmul fast <8 x float> %.3309, %i.qm
  %i.qo = bitcast <8 x float> %i.qn to <8 x i32>
  %i.qp = lshr <8 x i32> %i.qo, splat (i32 16)    ; 2 uses
  %i.qq = shufflevector <8 x i32> %i.qp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.qr = shufflevector <8 x i32> %i.qp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.qs = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.qq, <4 x i32> %i.qr)
  store <8 x i16> %i.qs, ptr %.1106386, align 1, !tbaa !49
  %i.qt = getelementptr inbounds nuw i8, ptr %.1106386, i64 16 ; 2 uses
  %i.qu = add nuw nsw i32 %.1387, 8               ; 3 uses
  %i.qv = or disjoint i32 %i.qu, 7
  %i.qw = icmp slt i32 %i.qv, %i.b
  br i1 %i.qw, label %.lr.ph388, label %.preheader321, !llvm.loop !245

.preheader:                                       ; preds = %.lr.ph393, %.preheader321
  %.2107.lcssa = phi ptr [ %.1106.lcssa, %.preheader321 ], [ %i.tm, %.lr.ph393 ] ; 5 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader321 ], [ %i.tn, %.lr.ph393 ] ; 5 uses
  %i.qx = icmp slt i32 %.2.lcssa, %i.b
  br i1 %i.qx, label %iter.check550, label %.loopexit

iter.check550:                                    ; preds = %.preheader
  %i.qy = xor i32 %.2.lcssa, -1
  %i.qz = add i32 %i.b, %i.qy                     ; 3 uses
  %i.ra = zext i32 %i.qz to i64
  %i.rb = add nuw nsw i64 %i.ra, 1                ; 5 uses
  %min.iters.check533 = icmp ult i32 %i.qz, 15
  br i1 %min.iters.check533, label %.lr.ph398.preheader, label %vector.main.loop.iter.check534

vector.main.loop.iter.check534:                   ; preds = %iter.check550
  %min.iters.check535 = icmp ult i32 %i.qz, 127
  br i1 %min.iters.check535, label %vec.epilog.ph554, label %vector.ph536

vector.ph536:                                     ; preds = %vector.main.loop.iter.check534
  %i.rc = and i64 %i.rb, 112
  %n.vec537 = and i64 %i.rb, 8589934464           ; 5 uses
  %i.rd = trunc i64 %n.vec537 to i32
  %i.re = add i32 %.2.lcssa, %i.rd
  %i.rf = shl nuw nsw i64 %n.vec537, 1
  %i.rg = getelementptr i8, ptr %.2107.lcssa, i64 %i.rf
  %broadcast.splatinsert538 = insertelement <32 x float> poison, float %.1118, i64 0
  %broadcast.splat539 = shufflevector <32 x float> %broadcast.splatinsert538, <32 x float> poison, <32 x i32> zeroinitializer ; 4 uses
  br label %vector.body540

vector.body540:                                   ; preds = %vector.ph536, %vector.body540
  %index541 = phi i64 [ 0, %vector.ph536 ], [ %index.next547, %vector.body540 ] ; 2 uses
  %i.rh = shl i64 %index541, 1
  %next.gep542 = getelementptr i8, ptr %.2107.lcssa, i64 %i.rh ; 5 uses
  %i.ri = getelementptr i8, ptr %next.gep542, i64 64 ; 2 uses
  %i.rj = getelementptr i8, ptr %next.gep542, i64 128 ; 2 uses
  %i.rk = getelementptr i8, ptr %next.gep542, i64 192 ; 2 uses
  %wide.load543 = load <32 x i16>, ptr %next.gep542, align 2, !tbaa !62
  %wide.load544 = load <32 x i16>, ptr %i.ri, align 2, !tbaa !62
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_:bb.a
  br i1 %i.adm, label %.lr.ph401.i.epil.preheader, label %.lr.ph401.i.preheader.new

.lr.ph401.i.preheader.new:                        ; preds = %.lr.ph401.i.preheader
  %unroll_iter734 = and i32 %i.adl, 536870910
  br label %.lr.ph401.i

.preheader333.i:                                  ; preds = %._crit_edge.i130, %._crit_edge396.i
  %indvars.iv484.i = phi i64 [ %indvars.iv.next485.i, %._crit_edge396.i ], [ 0, %._crit_edge.i130 ] ; 2 uses
  %i.adn = mul i64 %indvars.iv484.i, %3
  %i.ado = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.adn ; 2 uses
  br i1 %i.a, label %.lr.ph368.i, label %.preheader332.i

.preheader332.i:                                  ; preds = %.lr.ph368.i, %.preheader333.i
  %.0225.lcssa.i = phi i32 [ 0, %.preheader333.i ], [ %i.zc, %.lr.ph368.i ] ; 3 uses
  %.0221.lcssa.i = phi ptr [ %6, %.preheader333.i ], [ %i.afk, %.lr.ph368.i ] ; 2 uses
  %.0217.lcssa.i = phi ptr [ %5, %.preheader333.i ], [ %i.afj, %.lr.ph368.i ] ; 2 uses
  %.0213.lcssa.i = phi ptr [ %i.ado, %.preheader333.i ], [ %i.afi, %.lr.ph368.i ] ; 2 uses
  %i.adp = or disjoint i32 %.0225.lcssa.i, 7
  %i.adq = icmp slt i32 %i.adp, %4
  br i1 %i.adq, label %.lr.ph377.i, label %.preheader331.i

.lr.ph368.i:                                      ; preds = %.preheader333.i, %.lr.ph368.i
  %.0213366.i = phi ptr [ %i.afi, %.lr.ph368.i ], [ %i.ado, %.preheader333.i ] ; 3 uses
  %.0217365.i = phi ptr [ %i.afj, %.lr.ph368.i ], [ %5, %.preheader333.i ] ; 2 uses
  %.0221364.i = phi ptr [ %i.afk, %.lr.ph368.i ], [ %6, %.preheader333.i ] ; 3 uses
  %.0225363.i = phi i32 [ %i.afl, %.lr.ph368.i ], [ 0, %.preheader333.i ]
  %i.adr = load <16 x i16>, ptr %.0213366.i, align 1, !tbaa !49 ; 2 uses
  %i.ads = shufflevector <16 x i16> %i.adr, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %i.adt = shufflevector <16 x i16> %i.adr, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.adu = shufflevector <16 x i16> %i.ads, <16 x i16> %i.adt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.adv = shufflevector <16 x i16> %i.ads, <16 x i16> %i.adt, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.adw = bitcast <16 x i16> %i.adu to <8 x i32>
  %i.adx = bitcast <16 x i16> %i.adv to <8 x i32>
  %i.ady = shufflevector <8 x i32> %i.adw, <8 x i32> %i.adx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.adz = bitcast <16 x i32> %i.ady to <16 x float>
  %i.aea = load <16 x float>, ptr %.0217365.i, align 1, !tbaa !49
  %i.aeb = load <16 x float>, ptr %.0221364.i, align 1, !tbaa !49
  %i.aec = fsub fast <16 x float> %i.adz, %i.aea
  %i.aed = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.aec, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.aee = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.aed, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.aef = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aee, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.aeg = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aef, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.aeh = fcmp fast ogt <16 x float> %i.aeg, %i.aef
  %i.aei = fadd fast <16 x float> %i.aeg, splat (float -1.000000e+00)
  %i.aej = select fast <16 x i1> %i.aeh, <16 x float> %i.aei, <16 x float> %i.aeg ; 2 uses
  %i.aek = fneg fast <16 x float> %i.aej          ; 2 uses
  %i.ael = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.aek, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.aee)
  %i.aem = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.aek, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ael) ; 8 uses
  %i.aen = fmul fast <16 x float> %i.aem, %i.aem
  %i.aeo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aem, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.aep = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aeo, <16 x float> nofpclass(nan inf) %i.aem, <16 x float> splat (float f0x3C088908))
  %i.aeq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aep, <16 x float> nofpclass(nan inf) %i.aem, <16 x float> splat (float f0x3D2AA9C1))
  %i.aer = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aeq, <16 x float> nofpclass(nan inf) %i.aem, <16 x float> splat (float f0x3E2AAAAA))
  %i.aes = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aer, <16 x float> nofpclass(nan inf) %i.aem, <16 x float> splat (float 5.000000e-01))
  %i.aet = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aes, <16 x float> nofpclass(nan inf) %i.aen, <16 x float> nofpclass(nan inf) %i.aem)
  %i.aeu = fadd fast <16 x float> %i.aet, splat (float 1.000000e+00)
  %i.aev = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aej, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aew = shl <16 x i32> %i.aev, splat (i32 23)
  %i.aex = add <16 x i32> %i.aew, splat (i32 1065353216)
  %i.aey = bitcast <16 x i32> %i.aex to <16 x float>
  %i.aez = fmul fast <16 x float> %i.aeu, %i.aey  ; 2 uses
  %i.afa = bitcast <16 x float> %i.aez to <16 x i32>
  %i.afb = lshr <16 x i32> %i.afa, splat (i32 16) ; 2 uses
  %i.afc = shufflevector <16 x i32> %i.afb, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afd = shufflevector <16 x i32> %i.afb, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afe = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.afc, <8 x i32> %i.afd)
  %i.aff = bitcast <16 x i16> %i.afe to <4 x i64>
  %i.afg = shufflevector <4 x i64> %i.aff, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.afg, ptr %.0213366.i, align 1, !tbaa !49
  %i.afh = fadd fast <16 x float> %i.aez, %i.aeb
  store <16 x float> %i.afh, ptr %.0221364.i, align 1, !tbaa !49
  %i.afi = getelementptr inbounds nuw i8, ptr %.0213366.i, i64 32 ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %.0217365.i, i64 64 ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %.0221364.i, i64 64 ; 2 uses
  %i.afl = add nuw nsw i32 %.0225363.i, 16        ; 2 uses
  %i.afm = or disjoint i32 %i.afl, 15
  %i.afn = icmp slt i32 %i.afm, %4
  br i1 %i.afn, label %.lr.ph368.i, label %.preheader332.i, !llvm.loop !304

.preheader331.i:                                  ; preds = %.lr.ph377.i, %.preheader332.i
  %.1226.lcssa.i = phi i32 [ %.0225.lcssa.i, %.preheader332.i ], [ %i.ahe, %.lr.ph377.i ] ; 3 uses
  %.1222.lcssa.i = phi ptr [ %.0221.lcssa.i, %.preheader332.i ], [ %i.ahd, %.lr.ph377.i ] ; 2 uses
  %.1218.lcssa.i = phi ptr [ %.0217.lcssa.i, %.preheader332.i ], [ %i.ahc, %.lr.ph377.i ] ; 2 uses
  %.1214.lcssa.i = phi ptr [ %.0213.lcssa.i, %.preheader332.i ], [ %i.ahb, %.lr.ph377.i ] ; 2 uses
  %i.afo = or disjoint i32 %.1226.lcssa.i, 3
  %i.afp = icmp slt i32 %i.afo, %4
  br i1 %i.afp, label %.lr.ph386.i, label %.preheader330.i

.lr.ph377.i:                                      ; preds = %.preheader332.i, %.lr.ph377.i
  %.1214376.i = phi ptr [ %i.ahb, %.lr.ph377.i ], [ %.0213.lcssa.i, %.preheader332.i ] ; 3 uses
  %.1218375.i = phi ptr [ %i.ahc, %.lr.ph377.i ], [ %.0217.lcssa.i, %.preheader332.i ] ; 2 uses
  %.1222374.i = phi ptr [ %i.ahd, %.lr.ph377.i ], [ %.0221.lcssa.i, %.preheader332.i ] ; 3 uses
  %.1226373.i = phi i32 [ %i.ahe, %.lr.ph377.i ], [ %.0225.lcssa.i, %.preheader332.i ]
  %i.afq = load <8 x i16>, ptr %.1214376.i, align 1, !tbaa !49 ; 2 uses
  %i.afr = shufflevector <8 x i16> %i.afq, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.afs = shufflevector <8 x i16> %i.afq, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.aft = shufflevector <8 x i16> %i.afr, <8 x i16> %i.afs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afu = bitcast <16 x i16> %i.aft to <8 x float>
  %i.afv = load <8 x float>, ptr %.1218375.i, align 1, !tbaa !49
  %i.afw = load <8 x float>, ptr %.1222374.i, align 1, !tbaa !49
  %i.afx = fsub fast <8 x float> %i.afu, %i.afv
  %i.afy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.afx, <8 x float> splat (float f0x42B0C0A5))
  %i.afz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.afy, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aga = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afz, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.agb = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aga, i32 1) ; 2 uses
  %i.agc = fcmp fast ogt <8 x float> %i.agb, %i.aga
  %i.agd = select <8 x i1> %i.agc, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.age = fsub fast <8 x float> %i.agb, %i.agd   ; 2 uses
  %i.agf = fneg fast <8 x float> %i.age           ; 2 uses
  %i.agg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.agf, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.afz)
  %i.agh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.agf, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.agg) ; 8 uses
  %i.agi = fmul fast <8 x float> %i.agh, %i.agh
  %i.agj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agh, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.agk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agj, <8 x float> nofpclass(nan inf) %i.agh, <8 x float> splat (float f0x3C088908))
  %i.agl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agk, <8 x float> nofpclass(nan inf) %i.agh, <8 x float> splat (float f0x3D2AA9C1))
  %i.agm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agl, <8 x float> nofpclass(nan inf) %i.agh, <8 x float> splat (float f0x3E2AAAAA))
  %i.agn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agm, <8 x float> nofpclass(nan inf) %i.agh, <8 x float> splat (float 5.000000e-01))
  %i.ago = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agn, <8 x float> nofpclass(nan inf) %i.agi, <8 x float> nofpclass(nan inf) %i.agh)
  %i.agp = fadd fast <8 x float> %i.ago, splat (float 1.000000e+00)
  %i.agq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.age)
  %i.agr = shl <8 x i32> %i.agq, splat (i32 23)
  %i.ags = add <8 x i32> %i.agr, splat (i32 1065353216)
  %i.agt = bitcast <8 x i32> %i.ags to <8 x float>
  %i.agu = fmul fast <8 x float> %i.agp, %i.agt   ; 2 uses
  %i.agv = bitcast <8 x float> %i.agu to <8 x i32>
  %i.agw = lshr <8 x i32> %i.agv, splat (i32 16)  ; 2 uses
  %i.agx = shufflevector <8 x i32> %i.agw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.agy = shufflevector <8 x i32> %i.agw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.agz = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.agx, <4 x i32> %i.agy)
  store <8 x i16> %i.agz, ptr %.1214376.i, align 1, !tbaa !49
  %i.aha = fadd fast <8 x float> %i.agu, %i.afw
  store <8 x float> %i.aha, ptr %.1222374.i, align 1, !tbaa !49
  %i.ahb = getelementptr inbounds nuw i8, ptr %.1214376.i, i64 16 ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %.1218375.i, i64 32 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %.1222374.i, i64 32 ; 2 uses
  %i.ahe = add nuw nsw i32 %.1226373.i, 8         ; 3 uses
  %i.ahf = or disjoint i32 %i.ahe, 7
  %i.ahg = icmp slt i32 %i.ahf, %4
  br i1 %i.ahg, label %.lr.ph377.i, label %.preheader331.i, !llvm.loop !305

.preheader330.i:                                  ; preds = %.lr.ph386.i, %.preheader331.i
  %.2227.lcssa.i = phi i32 [ %.1226.lcssa.i, %.preheader331.i ], [ %i.aln, %.lr.ph386.i ] ; 7 uses
  %.2223.lcssa.i = phi ptr [ %.1222.lcssa.i, %.preheader331.i ], [ %i.alm, %.lr.ph386.i ] ; 8 uses
  %.2219.lcssa.i = phi ptr [ %.1218.lcssa.i, %.preheader331.i ], [ %i.all, %.lr.ph386.i ] ; 8 uses
  %.2215.lcssa.i = phi ptr [ %.1214.lcssa.i, %.preheader331.i ], [ %i.alk, %.lr.ph386.i ] ; 6 uses
  %i.ahh = icmp slt i32 %.2227.lcssa.i, %4
  br i1 %i.ahh, label %iter.check548, label %._crit_edge396.i

iter.check548:                                    ; preds = %.preheader330.i
  %i.ahi = xor i32 %.2227.lcssa.i, -1
  %i.ahj = add i32 %4, %i.ahi                     ; 3 uses
  %i.ahk = zext i32 %i.ahj to i64
  %i.ahl = add nuw nsw i64 %i.ahk, 1              ; 5 uses
  %min.iters.check532 = icmp ult i32 %i.ahj, 3
  br i1 %min.iters.check532, label %.lr.ph395.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check548
  %i.ahm = sub i32 %i.zd, %.2227.lcssa.i
  %i.ahn = zext i32 %i.ahm to i64
  %i.aho = shl nuw nsw i64 %i.ahn, 2
  %i.ahp = add nuw nsw i64 %i.aho, 4              ; 2 uses
  %i.ahq = getelementptr i8, ptr %.2223.lcssa.i, i64 %i.ahp
  %i.ahr = getelementptr i8, ptr %.2219.lcssa.i, i64 %i.ahp
  %bound0 = icmp ult ptr %.2223.lcssa.i, %i.ahr
  %bound1 = icmp ult ptr %.2219.lcssa.i, %i.ahq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph395.i.preheader, label %vector.main.loop.iter.check533

vector.main.loop.iter.check533:                   ; preds = %vector.memcheck
  %min.iters.check534 = icmp ult i32 %i.ahj, 15
  br i1 %min.iters.check534, label %vec.epilog.ph552, label %vector.ph535

vector.ph535:                                     ; preds = %vector.main.loop.iter.check533
  %i.ahs = and i64 %i.ahl, 12
  %n.vec536 = and i64 %i.ahl, 8589934576          ; 6 uses
  %i.aht = shl nuw nsw i64 %n.vec536, 1
  %i.ahu = getelementptr i8, ptr %.2215.lcssa.i, i64 %i.aht
  %i.ahv = shl nuw nsw i64 %n.vec536, 2           ; 2 uses
  %i.ahw = getelementptr i8, ptr %.2219.lcssa.i, i64 %i.ahv
  %i.ahx = getelementptr i8, ptr %.2223.lcssa.i, i64 %i.ahv
  %i.ahy = trunc i64 %n.vec536 to i32
  %i.ahz = add i32 %.2227.lcssa.i, %i.ahy
  br label %vector.body537

vector.body537:                                   ; preds = %vector.ph535, %vector.body537
  %index538 = phi i64 [ 0, %vector.ph535 ], [ %index.next545, %vector.body537 ] ; 3 uses
  %i.aia = shl i64 %index538, 1
  %next.gep539 = getelementptr i8, ptr %.2215.lcssa.i, i64 %i.aia ; 2 uses
  %i.aib = shl i64 %index538, 2                   ; 2 uses
  %next.gep540 = getelementptr i8, ptr %.2219.lcssa.i, i64 %i.aib
  %next.gep541 = getelementptr i8, ptr %.2223.lcssa.i, i64 %i.aib ; 2 uses
  %wide.load542 = load <16 x i16>, ptr %next.gep539, align 2, !tbaa !62
  %i.aic = zext <16 x i16> %wide.load542 to <16 x i32>
  %i.aid = shl nuw <16 x i32> %i.aic, splat (i32 16)
  %i.aie = bitcast <16 x i32> %i.aid to <16 x float>
  %wide.load543 = load <16 x float>, ptr %next.gep540, align 4, !tbaa !53, !alias.scope !327
  %i.aif = fsub fast <16 x float> %i.aie, %wide.load543
  %i.aig = tail call fast <16 x float> @llvm.exp.v16f32(<16 x float> %i.aif) ; 2 uses
  %i.aih = bitcast <16 x float> %i.aig to <16 x i32>
  %i.aii = lshr <16 x i32> %i.aih, splat (i32 16)
  %i.aij = trunc nuw nsw <16 x i32> %i.aii to <16 x i16>
  store <16 x i16> %i.aij, ptr %next.gep539, align 2, !tbaa !62
  %wide.load544 = load <16 x float>, ptr %next.gep541, align 4, !tbaa !53, !alias.scope !328, !noalias !327
  %i.aik = fadd fast <16 x float> %i.aig, %wide.load544
  store <16 x float> %i.aik, ptr %next.gep541, align 4, !tbaa !53, !alias.scope !328, !noalias !327
  %index.next545 = add nuw i64 %index538, 16      ; 2 uses
  %i.ail = icmp eq i64 %index.next545, %n.vec536
  br i1 %i.ail, label %middle.block546, label %vector.body537, !llvm.loop !309

middle.block546:                                  ; preds = %vector.body537
  %cmp.n547 = icmp eq i64 %i.ahl, %n.vec536
  br i1 %cmp.n547, label %._crit_edge396.i, label %vec.epilog.iter.check549

vec.epilog.iter.check549:                         ; preds = %middle.block546
  %min.epilog.iters.check551 = icmp eq i64 %i.ahs, 0
  br i1 %min.epilog.iters.check551, label %.lr.ph395.i.preheader, label %vec.epilog.ph552, !prof !57

vec.epilog.ph552:                                 ; preds = %vector.main.loop.iter.check533, %vec.epilog.iter.check549
  %vec.epilog.resume.val553 = phi i64 [ %n.vec536, %vec.epilog.iter.check549 ], [ 0, %vector.main.loop.iter.check533 ]
  %n.vec554 = and i64 %i.ahl, 8589934588          ; 5 uses
  %i.aim = shl nuw nsw i64 %n.vec554, 1
  %i.ain = getelementptr i8, ptr %.2215.lcssa.i, i64 %i.aim
  %i.aio = shl nuw nsw i64 %n.vec554, 2           ; 2 uses
  %i.aip = getelementptr i8, ptr %.2219.lcssa.i, i64 %i.aio
  %i.aiq = getelementptr i8, ptr %.2223.lcssa.i, i64 %i.aio
  %i.air = trunc i64 %n.vec554 to i32
  %i.ais = add i32 %.2227.lcssa.i, %i.air
  br label %vec.epilog.vector.body555

vec.epilog.vector.body555:                        ; preds = %vec.epilog.vector.body555, %vec.epilog.ph552
  %index556 = phi i64 [ %vec.epilog.resume.val553, %vec.epilog.ph552 ], [ %index.next563, %vec.epilog.vector.body555 ] ; 3 uses
  %i.ait = shl i64 %index556, 1
  %next.gep557 = getelementptr i8, ptr %.2215.lcssa.i, i64 %i.ait ; 2 uses
  %i.aiu = shl i64 %index556, 2                   ; 2 uses
  %next.gep558 = getelementptr i8, ptr %.2219.lcssa.i, i64 %i.aiu
  %next.gep559 = getelementptr i8, ptr %.2223.lcssa.i, i64 %i.aiu ; 2 uses
  %wide.load560 = load <4 x i16>, ptr %next.gep557, align 2, !tbaa !62
  %i.aiv = zext <4 x i16> %wide.load560 to <4 x i32>
  %i.aiw = shl nuw <4 x i32> %i.aiv, splat (i32 16)
  %i.aix = bitcast <4 x i32> %i.aiw to <4 x float>
  %wide.load561 = load <4 x float>, ptr %next.gep558, align 4, !tbaa !53, !alias.scope !327
  %i.aiy = fsub fast <4 x float> %i.aix, %wide.load561
  %i.aiz = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.aiy) ; 2 uses
  %i.aja = bitcast <4 x float> %i.aiz to <4 x i32>
  %i.ajb = lshr <4 x i32> %i.aja, splat (i32 16)
  %i.ajc = trunc nuw nsw <4 x i32> %i.ajb to <4 x i16>
  store <4 x i16> %i.ajc, ptr %next.gep557, align 2, !tbaa !62
  %wide.load562 = load <4 x float>, ptr %next.gep559, align 4, !tbaa !53, !alias.scope !328, !noalias !327
  %i.ajd = fadd fast <4 x float> %i.aiz, %wide.load562
  store <4 x float> %i.ajd, ptr %next.gep559, align 4, !tbaa !53, !alias.scope !328, !noalias !327
  %index.next563 = add nuw i64 %index556, 4       ; 2 uses
  %i.aje = icmp eq i64 %index.next563, %n.vec554
  br i1 %i.aje, label %vec.epilog.middle.block564, label %vec.epilog.vector.body555, !llvm.loop !310

vec.epilog.middle.block564:                       ; preds = %vec.epilog.vector.body555
  %cmp.n565 = icmp eq i64 %i.ahl, %n.vec554
  br i1 %cmp.n565, label %._crit_edge396.i, label %.lr.ph395.i.preheader

.lr.ph395.i.preheader:                            ; preds = %iter.check548, %vector.memcheck, %vec.epilog.iter.check549, %vec.epilog.middle.block564
  %.3216394.i.ph = phi ptr [ %.2215.lcssa.i, %iter.check548 ], [ %.2215.lcssa.i, %vector.memcheck ], [ %i.ahu, %vec.epilog.iter.check549 ], [ %i.ain, %vec.epilog.middle.block564 ] ; 4 uses
  %.3220393.i.ph = phi ptr [ %.2219.lcssa.i, %iter.check548 ], [ %.2219.lcssa.i, %vector.memcheck ], [ %i.ahw, %vec.epilog.iter.check549 ], [ %i.aip, %vec.epilog.middle.block564 ] ; 3 uses
  %.3224392.i.ph = phi ptr [ %.2223.lcssa.i, %iter.check548 ], [ %.2223.lcssa.i, %vector.memcheck ], [ %i.ahx, %vec.epilog.iter.check549 ], [ %i.aiq, %vec.epilog.middle.block564 ] ; 4 uses
  %.3228391.i.ph = phi i32 [ %.2227.lcssa.i, %iter.check548 ], [ %.2227.lcssa.i, %vector.memcheck ], [ %i.ahz, %vec.epilog.iter.check549 ], [ %i.ais, %vec.epilog.middle.block564 ] ; 4 uses
  %i.ajf = sub i32 %4, %.3228391.i.ph
  %.neg = add i32 %.3228391.i.ph, 1
  %xtraiter727 = and i32 %i.ajf, 1
  %lcmp.mod728.not = icmp eq i32 %xtraiter727, 0
  br i1 %lcmp.mod728.not, label %.lr.ph395.i.prol.loopexit, label %.lr.ph395.i.prol

.lr.ph395.i.prol:                                 ; preds = %.lr.ph395.i.preheader
  %i.ajg = load i16, ptr %.3216394.i.ph, align 2, !tbaa !62
  %i.ajh = zext i16 %i.ajg to i32
  %i.aji = shl nuw i32 %i.ajh, 16
  %i.ajj = bitcast i32 %i.aji to float
  %i.ajk = load float, ptr %.3220393.i.ph, align 4, !tbaa !53
  %i.ajl = fsub fast float %i.ajj, %i.ajk
  %i.ajm = tail call fast float @llvm.exp.f32(float %i.ajl) ; 2 uses
  %i.ajn = bitcast float %i.ajm to i32
  %i.ajo = lshr i32 %i.ajn, 16
  %i.ajp = trunc nuw nsw i32 %i.ajo to i16
  store i16 %i.ajp, ptr %.3216394.i.ph, align 2, !tbaa !62
  %i.ajq = load float, ptr %.3224392.i.ph, align 4, !tbaa !53
  %i.ajr = fadd fast float %i.ajm, %i.ajq
  store float %i.ajr, ptr %.3224392.i.ph, align 4, !tbaa !53
  %i.ajs = getelementptr inbounds nuw i8, ptr %.3216394.i.ph, i64 2
  %i.ajt = getelementptr inbounds nuw i8, ptr %.3220393.i.ph, i64 4
  %i.aju = getelementptr inbounds nuw i8, ptr %.3224392.i.ph, i64 4
  %i.ajv = add nuw nsw i32 %.3228391.i.ph, 1
  br label %.lr.ph395.i.prol.loopexit

.lr.ph395.i.prol.loopexit:                        ; preds = %.lr.ph395.i.prol, %.lr.ph395.i.preheader
  %.3216394.i.unr = phi ptr [ %.3216394.i.ph, %.lr.ph395.i.preheader ], [ %i.ajs, %.lr.ph395.i.prol ]
  %.3220393.i.unr = phi ptr [ %.3220393.i.ph, %.lr.ph395.i.preheader ], [ %i.ajt, %.lr.ph395.i.prol ]
  %.3224392.i.unr = phi ptr [ %.3224392.i.ph, %.lr.ph395.i.preheader ], [ %i.aju, %.lr.ph395.i.prol ]
  %.3228391.i.unr = phi i32 [ %.3228391.i.ph, %.lr.ph395.i.preheader ], [ %i.ajv, %.lr.ph395.i.prol ]
  %i.ajw = icmp eq i32 %4, %.neg
  br i1 %i.ajw, label %._crit_edge396.i, label %.lr.ph395.i

.lr.ph386.i:                                      ; preds = %.preheader331.i, %.lr.ph386.i
  %.2215385.i = phi ptr [ %i.alk, %.lr.ph386.i ], [ %.1214.lcssa.i, %.preheader331.i ] ; 3 uses
  %.2219384.i = phi ptr [ %i.all, %.lr.ph386.i ], [ %.1218.lcssa.i, %.preheader331.i ] ; 2 uses
  %.2223383.i = phi ptr [ %i.alm, %.lr.ph386.i ], [ %.1222.lcssa.i, %.preheader331.i ] ; 3 uses
  %.2227382.i = phi i32 [ %i.aln, %.lr.ph386.i ], [ %.1226.lcssa.i, %.preheader331.i ]
  %i.ajx = load i64, ptr %.2215385.i, align 1, !tbaa !49
  %i.ajy = insertelement <2 x i64> poison, i64 %i.ajx, i64 0
  %i.ajz = bitcast <2 x i64> %i.ajy to <8 x i16>
  %i.aka = shufflevector <8 x i16> %i.ajz, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.akb = bitcast <8 x i16> %i.aka to <4 x float>
  %i.akc = load <4 x float>, ptr %.2219384.i, align 1, !tbaa !49
  %i.akd = load <4 x float>, ptr %.2223383.i, align 1, !tbaa !49
  %i.ake = fsub fast <4 x float> %i.akb, %i.akc
  %i.akf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ake, <4 x float> splat (float f0x42B0C0A5))
  %i.akg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.akf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.akh = fmul fast <4 x float> %i.akg, splat (float f0x3FB8AA3B)
  %i.aki = fadd fast <4 x float> %i.akh, splat (float 5.000000e-01) ; 2 uses
  %i.akj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aki)
  %i.akk = sitofp fast <4 x i32> %i.akj to <4 x float> ; 2 uses
  %i.akl = fcmp fast olt <4 x float> %i.aki, %i.akk
  %i.akm = select <4 x i1> %i.akl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.akn = fsub fast <4 x float> %i.akk, %i.akm   ; 2 uses
  %i.ako = fneg fast <4 x float> %i.akn           ; 2 uses
  %i.akp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ako, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.akg)
  %i.akq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ako, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.akp) ; 8 uses
  %i.akr = fmul fast <4 x float> %i.akq, %i.akq
  %i.aks = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akq, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.akt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aks, <4 x float> nofpclass(nan inf) %i.akq, <4 x float> splat (float f0x3C088908))
  %i.aku = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akt, <4 x float> nofpclass(nan inf) %i.akq, <4 x float> splat (float f0x3D2AA9C1))
  %i.akv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aku, <4 x float> nofpclass(nan inf) %i.akq, <4 x float> splat (float f0x3E2AAAAA))
  %i.akw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akv, <4 x float> nofpclass(nan inf) %i.akq, <4 x float> splat (float 5.000000e-01))
  %i.akx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akw, <4 x float> nofpclass(nan inf) %i.akr, <4 x float> nofpclass(nan inf) %i.akq)
  %i.aky = fadd fast <4 x float> %i.akx, splat (float 1.000000e+00)
  %i.akz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.akn)
  %i.ala = shl <4 x i32> %i.akz, splat (i32 23)
  %i.alb = add <4 x i32> %i.ala, splat (i32 1065353216)
  %i.alc = bitcast <4 x i32> %i.alb to <4 x float>
  %i.ald = fmul fast <4 x float> %i.aky, %i.alc   ; 2 uses
  %i.ale = bitcast <4 x float> %i.ald to <4 x i32>
  %i.alf = lshr <4 x i32> %i.ale, splat (i32 16)
  %i.alg = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.alf, <4 x i32> poison)
  %i.alh = bitcast <8 x i16> %i.alg to <2 x i64>
  %i.ali = extractelement <2 x i64> %i.alh, i64 0
  store i64 %i.ali, ptr %.2215385.i, align 1, !tbaa !49
  %i.alj = fadd fast <4 x float> %i.ald, %i.akd
  store <4 x float> %i.alj, ptr %.2223383.i, align 1, !tbaa !49
  %i.alk = getelementptr inbounds nuw i8, ptr %.2215385.i, i64 8 ; 2 uses
  %i.all = getelementptr inbounds nuw i8, ptr %.2219384.i, i64 16 ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %.2223383.i, i64 16 ; 2 uses
  %i.aln = add nuw nsw i32 %.2227382.i, 4         ; 3 uses
  %i.alo = or disjoint i32 %i.aln, 3
  %i.alp = icmp slt i32 %i.alo, %4
  br i1 %i.alp, label %.lr.ph386.i, label %.preheader330.i, !llvm.loop !311

.lr.ph395.i:                                      ; preds = %.lr.ph395.i.prol.loopexit, %.lr.ph395.i
  %.3216394.i = phi ptr [ %i.amr, %.lr.ph395.i ], [ %.3216394.i.unr, %.lr.ph395.i.prol.loopexit ] ; 4 uses
  %.3220393.i = phi ptr [ %i.ams, %.lr.ph395.i ], [ %.3220393.i.unr, %.lr.ph395.i.prol.loopexit ] ; 3 uses
  %.3224392.i = phi ptr [ %i.amt, %.lr.ph395.i ], [ %.3224392.i.unr, %.lr.ph395.i.prol.loopexit ] ; 4 uses
  %.3228391.i = phi i32 [ %i.amu, %.lr.ph395.i ], [ %.3228391.i.unr, %.lr.ph395.i.prol.loopexit ]
  %i.alq = load i16, ptr %.3216394.i, align 2, !tbaa !62
  %i.alr = zext i16 %i.alq to i32
  %i.als = shl nuw i32 %i.alr, 16
  %i.alt = bitcast i32 %i.als to float
  %i.alu = load float, ptr %.3220393.i, align 4, !tbaa !53
  %i.alv = fsub fast float %i.alt, %i.alu
  %i.alw = tail call fast float @llvm.exp.f32(float %i.alv) ; 2 uses
  %i.alx = bitcast float %i.alw to i32
  %i.aly = lshr i32 %i.alx, 16
  %i.alz = trunc nuw nsw i32 %i.aly to i16
  store i16 %i.alz, ptr %.3216394.i, align 2, !tbaa !62
  %i.ama = load float, ptr %.3224392.i, align 4, !tbaa !53
  %i.amb = fadd fast float %i.alw, %i.ama
  store float %i.amb, ptr %.3224392.i, align 4, !tbaa !53
  %i.amc = getelementptr inbounds nuw i8, ptr %.3216394.i, i64 2 ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %.3220393.i, i64 4
  %i.ame = getelementptr inbounds nuw i8, ptr %.3224392.i, i64 4 ; 2 uses
  %i.amf = load i16, ptr %i.amc, align 2, !tbaa !62
  %i.amg = zext i16 %i.amf to i32
  %i.amh = shl nuw i32 %i.amg, 16
  %i.ami = bitcast i32 %i.amh to float
  %i.amj = load float, ptr %i.amd, align 4, !tbaa !53
  %i.amk = fsub fast float %i.ami, %i.amj
  %i.aml = tail call fast float @llvm.exp.f32(float %i.amk) ; 2 uses
  %i.amm = bitcast float %i.aml to i32
  %i.amn = lshr i32 %i.amm, 16
  %i.amo = trunc nuw nsw i32 %i.amn to i16
  store i16 %i.amo, ptr %i.amc, align 2, !tbaa !62
  %i.amp = load float, ptr %i.ame, align 4, !tbaa !53
  %i.amq = fadd fast float %i.aml, %i.amp
  store float %i.amq, ptr %i.ame, align 4, !tbaa !53
  %i.amr = getelementptr inbounds nuw i8, ptr %.3216394.i, i64 4
  %i.ams = getelementptr inbounds nuw i8, ptr %.3220393.i, i64 8
  %i.amt = getelementptr inbounds nuw i8, ptr %.3224392.i, i64 8
  %i.amu = add nuw nsw i32 %.3228391.i, 2         ; 2 uses
  %exitcond483.not.i.1 = icmp eq i32 %i.amu, %4
  br i1 %exitcond483.not.i.1, label %._crit_edge396.i, label %.lr.ph395.i, !llvm.loop !312

._crit_edge396.i:                                 ; preds = %.lr.ph395.i.prol.loopexit, %.lr.ph395.i, %middle.block546, %vec.epilog.middle.block564, %.preheader330.i
  %indvars.iv.next485.i = add nuw nsw i64 %indvars.iv484.i, 1 ; 2 uses
  %exitcond488.not.i = icmp eq i64 %indvars.iv.next485.i, %wide.trip.count.i126
  br i1 %exitcond488.not.i, label %.preheader329.i, label %.preheader333.i, !llvm.loop !313

.preheader328.loopexit.i.unr-lcssa:               ; preds = %.lr.ph401.i
  %i.amv = and i32 %i.adj, 16
  %lcmp.mod731.not.not = icmp eq i32 %i.amv, 0
  br i1 %lcmp.mod731.not.not, label %.lr.ph401.i.epil.preheader, label %.preheader328.loopexit.i

.lr.ph401.i.epil.preheader:                       ; preds = %.preheader328.loopexit.i.unr-lcssa, %.lr.ph401.i.preheader
  %.0204399.i.epil.init = phi ptr [ %6, %.lr.ph401.i.preheader ], [ %i.anq, %.preheader328.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod733 = trunc i32 %i.adl to i1
  tail call void @llvm.assume(i1 %lcmp.mod733)
  %i.amw = load <16 x float>, ptr %.0204399.i.epil.init, align 1, !tbaa !49 ; 2 uses
  %i.amx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> nofpclass(nan inf) %i.amw, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.amy = fneg fast <16 x float> %i.amw
  %i.amz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.amy, <16 x float> nofpclass(nan inf) %i.amx, <16 x float> splat (float 2.000000e+00))
  %i.ana = fmul fast <16 x float> %i.amz, %i.amx
  store <16 x float> %i.ana, ptr %.0204399.i.epil.init, align 1, !tbaa !49
  %i.anb = getelementptr inbounds nuw i8, ptr %.0204399.i.epil.init, i64 64
  br label %.preheader328.loopexit.i

.preheader328.loopexit.i:                         ; preds = %.preheader328.loopexit.i.unr-lcssa, %.lr.ph401.i.epil.preheader
  %.lcssa651 = phi ptr [ %i.anq, %.preheader328.loopexit.i.unr-lcssa ], [ %i.anb, %.lr.ph401.i.epil.preheader ]
  %i.anc = and i32 %4, 2147483632
  br label %.preheader328.i

.preheader328.i:                                  ; preds = %.preheader328.loopexit.i, %.preheader329.i
  %.0204.lcssa.i = phi ptr [ %6, %.preheader329.i ], [ %.lcssa651, %.preheader328.loopexit.i ] ; 2 uses
  %.0200.lcssa.i = phi i32 [ 0, %.preheader329.i ], [ %i.anc, %.preheader328.loopexit.i ] ; 3 uses
  %i.and = or disjoint i32 %.0200.lcssa.i, 7
  %i.ane = icmp slt i32 %i.and, %4
  br i1 %i.ane, label %.lr.ph406.i, label %.preheader327.i

.lr.ph401.i:                                      ; preds = %.lr.ph401.i, %.lr.ph401.i.preheader.new
  %.0204399.i = phi ptr [ %6, %.lr.ph401.i.preheader.new ], [ %i.anq, %.lr.ph401.i ] ; 4 uses
  %niter735 = phi i32 [ 0, %.lr.ph401.i.preheader.new ], [ %niter735.next.1, %.lr.ph401.i ]
  %i.anf = load <16 x float>, ptr %.0204399.i, align 1, !tbaa !49 ; 2 uses
  %i.ang = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> nofpclass(nan inf) %i.anf, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.anh = fneg fast <16 x float> %i.anf
  %i.ani = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.anh, <16 x float> nofpclass(nan inf) %i.ang, <16 x float> splat (float 2.000000e+00))
  %i.anj = fmul fast <16 x float> %i.ani, %i.ang
  store <16 x float> %i.anj, ptr %.0204399.i, align 1, !tbaa !49
  %i.ank = getelementptr inbounds nuw i8, ptr %.0204399.i, i64 64 ; 2 uses
  %i.anl = load <16 x float>, ptr %i.ank, align 1, !tbaa !49 ; 2 uses
  %i.anm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> nofpclass(nan inf) %i.anl, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.ann = fneg fast <16 x float> %i.anl
  %i.ano = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ann, <16 x float> nofpclass(nan inf) %i.anm, <16 x float> splat (float 2.000000e+00))
  %i.anp = fmul fast <16 x float> %i.ano, %i.anm
  store <16 x float> %i.anp, ptr %i.ank, align 1, !tbaa !49
  %i.anq = getelementptr inbounds nuw i8, ptr %.0204399.i, i64 128 ; 3 uses
  %niter735.next.1 = add i32 %niter735, 2         ; 2 uses
  %niter735.ncmp.1.not = icmp eq i32 %niter735.next.1, %unroll_iter734
  br i1 %niter735.ncmp.1.not, label %.preheader328.loopexit.i.unr-lcssa, label %.lr.ph401.i, !llvm.loop !314

.preheader327.i:                                  ; preds = %.lr.ph406.i, %.preheader328.i
  %.1205.lcssa.i = phi ptr [ %.0204.lcssa.i, %.preheader328.i ], [ %i.any, %.lr.ph406.i ] ; 2 uses
  %.1201.lcssa.i = phi i32 [ %.0200.lcssa.i, %.preheader328.i ], [ %i.anz, %.lr.ph406.i ] ; 3 uses
  %i.anr = or disjoint i32 %.1201.lcssa.i, 3
  %i.ans = icmp slt i32 %i.anr, %4
  br i1 %i.ans, label %.lr.ph411.i, label %.preheader326.i

.lr.ph406.i:                                      ; preds = %.preheader328.i, %.lr.ph406.i
  %.1201405.i = phi i32 [ %i.anz, %.lr.ph406.i ], [ %.0200.lcssa.i, %.preheader328.i ]
  %.1205404.i = phi ptr [ %i.any, %.lr.ph406.i ], [ %.0204.lcssa.i, %.preheader328.i ] ; 3 uses
  %i.ant = load <8 x float>, ptr %.1205404.i, align 1, !tbaa !49 ; 2 uses
  %i.anu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.ant) ; 2 uses
  %i.anv = fneg fast <8 x float> %i.ant
  %i.anw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.anv, <8 x float> nofpclass(nan inf) %i.anu, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.anx = fmul fast <8 x float> %i.anw, %i.anu
  store <8 x float> %i.anx, ptr %.1205404.i, align 1, !tbaa !49
  %i.any = getelementptr inbounds nuw i8, ptr %.1205404.i, i64 32 ; 2 uses
  %i.anz = add nuw nsw i32 %.1201405.i, 8         ; 3 uses
  %i.aoa = or disjoint i32 %i.anz, 7
  %i.aob = icmp slt i32 %i.aoa, %4
  br i1 %i.aob, label %.lr.ph406.i, label %.preheader327.i, !llvm.loop !315

.preheader326.i:                                  ; preds = %.lr.ph411.i, %.preheader327.i
  %.2206.lcssa.i = phi ptr [ %.1205.lcssa.i, %.preheader327.i ], [ %i.aph, %.lr.ph411.i ] ; 5 uses
  %.2202.lcssa.i = phi i32 [ %.1201.lcssa.i, %.preheader327.i ], [ %i.api, %.lr.ph411.i ] ; 5 uses
  %i.aoc = icmp slt i32 %.2202.lcssa.i, %4
  br i1 %i.aoc, label %iter.check585, label %.preheader325.i

iter.check585:                                    ; preds = %.preheader326.i
  %i.aod = xor i32 %.2202.lcssa.i, -1
  %i.aoe = add i32 %4, %i.aod                     ; 3 uses
  %i.aof = zext i32 %i.aoe to i64
  %i.aog = add nuw nsw i64 %i.aof, 1              ; 5 uses
  %min.iters.check570 = icmp ult i32 %i.aoe, 7
  br i1 %min.iters.check570, label %.lr.ph416.i.preheader, label %vector.main.loop.iter.check571

vector.main.loop.iter.check571:                   ; preds = %iter.check585
  %min.iters.check572 = icmp ult i32 %i.aoe, 63
  br i1 %min.iters.check572, label %vec.epilog.ph589, label %vector.ph573

vector.ph573:                                     ; preds = %vector.main.loop.iter.check571
  %i.aoh = and i64 %i.aog, 56
  %n.vec574 = and i64 %i.aog, 8589934528          ; 5 uses
  %i.aoi = trunc i64 %n.vec574 to i32
  %i.aoj = add i32 %.2202.lcssa.i, %i.aoi
  %i.aok = shl nuw nsw i64 %n.vec574, 2
  %i.aol = getelementptr i8, ptr %.2206.lcssa.i, i64 %i.aok
  br label %vector.body575

vector.body575:                                   ; preds = %vector.ph573, %vector.body575
  %index576 = phi i64 [ 0, %vector.ph573 ], [ %index.next582, %vector.body575 ] ; 2 uses
  %i.aom = shl i64 %index576, 2
  %next.gep577 = getelementptr i8, ptr %.2206.lcssa.i, i64 %i.aom ; 5 uses
  %i.aon = getelementptr i8, ptr %next.gep577, i64 64 ; 2 uses
  %i.aoo = getelementptr i8, ptr %next.gep577, i64 128 ; 2 uses
  %i.aop = getelementptr i8, ptr %next.gep577, i64 192 ; 2 uses
  %wide.load578 = load <16 x float>, ptr %next.gep577, align 4, !tbaa !53
  %wide.load579 = load <16 x float>, ptr %i.aon, align 4, !tbaa !53
  %wide.load580 = load <16 x float>, ptr %i.aoo, align 4, !tbaa !53
  %wide.load581 = load <16 x float>, ptr %i.aop, align 4, !tbaa !53
  %i.aoq = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load578
  %i.aor = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load579
  %i.aos = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load580
  %i.aot = fdiv fast <16 x float> splat (float 1.000000e+00), %wide.load581
  store <16 x float> %i.aoq, ptr %next.gep577, align 4, !tbaa !53
  store <16 x float> %i.aor, ptr %i.aon, align 4, !tbaa !53
  store <16 x float> %i.aos, ptr %i.aoo, align 4, !tbaa !53
  store <16 x float> %i.aot, ptr %i.aop, align 4, !tbaa !53
  %index.next582 = add nuw i64 %index576, 64      ; 2 uses
  %i.aou = icmp eq i64 %index.next582, %n.vec574
  br i1 %i.aou, label %middle.block583, label %vector.body575, !llvm.loop !316

middle.block583:                                  ; preds = %vector.body575
  %cmp.n584 = icmp eq i64 %i.aog, %n.vec574
  br i1 %cmp.n584, label %.preheader325.i, label %vec.epilog.iter.check586

vec.epilog.iter.check586:                         ; preds = %middle.block583
  %min.epilog.iters.check588 = icmp eq i64 %i.aoh, 0
  br i1 %min.epilog.iters.check588, label %.lr.ph416.i.preheader, label %vec.epilog.ph589, !prof !56

vec.epilog.ph589:                                 ; preds = %vector.main.loop.iter.check571, %vec.epilog.iter.check586
  %vec.epilog.resume.val590 = phi i64 [ %n.vec574, %vec.epilog.iter.check586 ], [ 0, %vector.main.loop.iter.check571 ]
  %n.vec591 = and i64 %i.aog, 8589934584          ; 4 uses
  %i.aov = trunc i64 %n.vec591 to i32
  %i.aow = add i32 %.2202.lcssa.i, %i.aov
  %i.aox = shl nuw nsw i64 %n.vec591, 2
  %i.aoy = getelementptr i8, ptr %.2206.lcssa.i, i64 %i.aox
  br label %vec.epilog.vector.body592

vec.epilog.vector.body592:                        ; preds = %vec.epilog.vector.body592, %vec.epilog.ph589
  %index593 = phi i64 [ %vec.epilog.resume.val590, %vec.epilog.ph589 ], [ %index.next596, %vec.epilog.vector.body592 ] ; 2 uses
  %i.aoz = shl i64 %index593, 2
  %next.gep594 = getelementptr i8, ptr %.2206.lcssa.i, i64 %i.aoz ; 2 uses
  %wide.load595 = load <8 x float>, ptr %next.gep594, align 4, !tbaa !53
  %i.apa = fdiv fast <8 x float> splat (float 1.000000e+00), %wide.load595
  store <8 x float> %i.apa, ptr %next.gep594, align 4, !tbaa !53
  %index.next596 = add nuw i64 %index593, 8       ; 2 uses
  %i.apb = icmp eq i64 %index.next596, %n.vec591
  br i1 %i.apb, label %vec.epilog.middle.block597, label %vec.epilog.vector.body592, !llvm.loop !317

vec.epilog.middle.block597:                       ; preds = %vec.epilog.vector.body592
  %cmp.n598 = icmp eq i64 %i.aog, %n.vec591
  br i1 %cmp.n598, label %.preheader325.i, label %.lr.ph416.i.preheader

.lr.ph416.i.preheader:                            ; preds = %iter.check585, %vec.epilog.iter.check586, %vec.epilog.middle.block597
  %.3203415.i.ph = phi i32 [ %.2202.lcssa.i, %iter.check585 ], [ %i.aoj, %vec.epilog.iter.check586 ], [ %i.aow, %vec.epilog.middle.block597 ]
  %.3207414.i.ph = phi ptr [ %.2206.lcssa.i, %iter.check585 ], [ %i.aol, %vec.epilog.iter.check586 ], [ %i.aoy, %vec.epilog.middle.block597 ]
  br label %.lr.ph416.i

.lr.ph411.i:                                      ; preds = %.preheader327.i, %.lr.ph411.i
  %.2202410.i = phi i32 [ %i.api, %.lr.ph411.i ], [ %.1201.lcssa.i, %.preheader327.i ]
  %.2206409.i = phi ptr [ %i.aph, %.lr.ph411.i ], [ %.1205.lcssa.i, %.preheader327.i ] ; 3 uses
  %i.apc = load <4 x float>, ptr %.2206409.i, align 1, !tbaa !49 ; 2 uses
  %i.apd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.apc) ; 2 uses
  %i.ape = fneg fast <4 x float> %i.apc
  %i.apf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ape, <4 x float> nofpclass(nan inf) %i.apd, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.apg = fmul fast <4 x float> %i.apf, %i.apd
  store <4 x float> %i.apg, ptr %.2206409.i, align 1, !tbaa !49
  %i.aph = getelementptr inbounds nuw i8, ptr %.2206409.i, i64 16 ; 2 uses
  %i.api = add nuw nsw i32 %.2202410.i, 4         ; 3 uses
  %i.apj = or disjoint i32 %i.api, 3
  %i.apk = icmp slt i32 %i.apj, %4
  br i1 %i.apk, label %.lr.ph411.i, label %.preheader326.i, !llvm.loop !318

.preheader325.i:                                  ; preds = %.lr.ph416.i, %middle.block583, %vec.epilog.middle.block597, %.preheader326.i
  br i1 %i.zb, label %.lr.ph445.i, label %_ZN4ncnnL23softmax_bf16s_pack1_sseEPtimiPfS1_.exit

.lr.ph445.i:                                      ; preds = %.preheader325.i
  %i.apl = and i32 %4, -16
  %wide.trip.count494.i = zext nneg i32 %1 to i64
  br label %bb.r

.lr.ph416.i:                                      ; preds = %.lr.ph416.i.preheader, %.lr.ph416.i
end_hunk_1
