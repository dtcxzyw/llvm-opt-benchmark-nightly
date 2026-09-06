Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512vnni?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN4ncnn45transpose_pack_A_tile_fp32_to_int8_avx512vnniERKNS_3MatERS0_iiiiS2_:bb.a
.lr.ph603.i.us.preheader:                         ; preds = %.preheader543.i.us
  %i.do = sub i32 %5, %.1947.lcssa.i.us
  %.neg = add i32 %.1947.lcssa.i.us, 1
  %xtraiter = and i32 %i.do, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph603.i.us.prol.loopexit, label %.lr.ph603.i.us.prol

.lr.ph603.i.us.prol:                              ; preds = %.lr.ph603.i.us.preheader
  %i.dp = load <16 x float>, ptr %.7934.lcssa.i.us, align 1, !tbaa !17
  %i.dq = fmul fast <16 x float> %i.dp, %i.ah     ; 2 uses
  %i.dr = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.dq)
  %i.ds = fadd fast <16 x float> %i.dr, %i.dq
  %i.dt = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ds, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.du = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.dt, <16 x i8> zeroinitializer, i16 -1)
  %i.dv = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.du, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.dv, ptr %.12.lcssa.i.us, align 16, !tbaa !17
  %i.dw = getelementptr inbounds nuw i8, ptr %.12.lcssa.i.us, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.7934.lcssa.i.us, i64 %i.k
  %i.dy = add nuw nsw i32 %.1947.lcssa.i.us, 1
  br label %.lr.ph603.i.us.prol.loopexit

.lr.ph603.i.us.prol.loopexit:                     ; preds = %.lr.ph603.i.us.prol, %.lr.ph603.i.us.preheader
  %.lcssa329.unr = phi ptr [ poison, %.lr.ph603.i.us.preheader ], [ %i.dw, %.lr.ph603.i.us.prol ]
  %.13602.i.us.unr = phi ptr [ %.12.lcssa.i.us, %.lr.ph603.i.us.preheader ], [ %i.dw, %.lr.ph603.i.us.prol ]
  %.8935601.i.us.unr = phi ptr [ %.7934.lcssa.i.us, %.lr.ph603.i.us.preheader ], [ %i.dx, %.lr.ph603.i.us.prol ]
  %.2948600.i.us.unr = phi i32 [ %.1947.lcssa.i.us, %.lr.ph603.i.us.preheader ], [ %i.dy, %.lr.ph603.i.us.prol ]
  %i.dz = icmp eq i32 %5, %.neg
  br i1 %i.dz, label %.loopexit544.i.us, label %.lr.ph603.i.us

.lr.ph603.i.us:                                   ; preds = %.lr.ph603.i.us.prol.loopexit, %.lr.ph603.i.us
  %.13602.i.us = phi ptr [ %i.eq, %.lr.ph603.i.us ], [ %.13602.i.us.unr, %.lr.ph603.i.us.prol.loopexit ] ; 3 uses
  %.8935601.i.us = phi ptr [ %i.er, %.lr.ph603.i.us ], [ %.8935601.i.us.unr, %.lr.ph603.i.us.prol.loopexit ] ; 2 uses
  %.2948600.i.us = phi i32 [ %i.es, %.lr.ph603.i.us ], [ %.2948600.i.us.unr, %.lr.ph603.i.us.prol.loopexit ]
  %i.ea = load <16 x float>, ptr %.8935601.i.us, align 1, !tbaa !17
  %i.eb = fmul fast <16 x float> %i.ea, %i.ah     ; 2 uses
  %i.ec = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.eb)
  %i.ed = fadd fast <16 x float> %i.ec, %i.eb
  %i.ee = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ed, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ef = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ee, <16 x i8> zeroinitializer, i16 -1)
  %i.eg = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ef, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.eg, ptr %.13602.i.us, align 16, !tbaa !17
  %i.eh = getelementptr inbounds nuw i8, ptr %.13602.i.us, i64 16
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.8935601.i.us, i64 %i.k ; 2 uses
  %i.ej = load <16 x float>, ptr %i.ei, align 1, !tbaa !17
  %i.ek = fmul fast <16 x float> %i.ej, %i.ah     ; 2 uses
  %i.el = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ek)
  %i.em = fadd fast <16 x float> %i.el, %i.ek
  %i.en = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.em, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.eo = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.en, <16 x i8> zeroinitializer, i16 -1)
  %i.ep = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.eo, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.ep, ptr %i.eh, align 16, !tbaa !17
  %i.eq = getelementptr inbounds nuw i8, ptr %.13602.i.us, i64 32 ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.k
  %i.es = add nuw nsw i32 %.2948600.i.us, 2       ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i32 %i.es, %5
  br i1 %exitcond.not.i.us.1, label %.loopexit544.i.us, label %.lr.ph603.i.us, !llvm.loop !265

bb.c:                                             ; preds = %.split.i.us
  %i.et = shufflevector <16 x float> %i.ah, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.eu = shufflevector <16 x float> %i.ah, <16 x float> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7>
  %i.ev = shufflevector <16 x float> %i.ah, <16 x float> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 10, i32 10, i32 10, i32 10, i32 11, i32 11, i32 11, i32 11>
  %i.ew = shufflevector <16 x float> %i.ah, <16 x float> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 14, i32 14, i32 14, i32 14, i32 15, i32 15, i32 15, i32 15>
  br i1 %i.q, label %.lr.ph578.i.us, label %.loopexit544.i.us

.lr.ph578.i.us:                                   ; preds = %bb.c, %.lr.ph578.i.us
  %.7576.i.us = phi ptr [ %i.gm, %.lr.ph578.i.us ], [ %.0907606.i.us, %bb.c ] ; 3 uses
  %.4931575.i.us = phi ptr [ %i.gn, %.lr.ph578.i.us ], [ %i.ad, %bb.c ] ; 5 uses
  %i.ex = phi <16 x i32> [ %i.gl, %.lr.ph578.i.us ], [ zeroinitializer, %bb.c ]
  %.0945574.i.us = phi i32 [ %i.go, %.lr.ph578.i.us ], [ 0, %bb.c ]
  %i.ey = load <16 x float>, ptr %.4931575.i.us, align 1, !tbaa !17
  %i.ez = getelementptr inbounds nuw i8, ptr %.4931575.i.us, i64 64
  %i.fa = load <16 x float>, ptr %i.ez, align 1, !tbaa !17
  %i.fb = getelementptr inbounds nuw i8, ptr %.4931575.i.us, i64 128
  %i.fc = load <16 x float>, ptr %i.fb, align 1, !tbaa !17
  %i.fd = getelementptr inbounds nuw i8, ptr %.4931575.i.us, i64 192
  %i.fe = load <16 x float>, ptr %i.fd, align 1, !tbaa !17
  %i.ff = fmul fast <16 x float> %i.ey, %i.et     ; 2 uses
  %i.fg = fmul fast <16 x float> %i.fa, %i.eu     ; 2 uses
  %i.fh = fmul fast <16 x float> %i.fc, %i.ev     ; 2 uses
  %i.fi = fmul fast <16 x float> %i.fe, %i.ew     ; 2 uses
  %i.fj = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ff)
  %i.fk = fadd fast <16 x float> %i.fj, %i.ff
  %i.fl = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fk, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fm = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.fl, <16 x i8> zeroinitializer, i16 -1)
  %i.fn = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.fm, <16 x i8> splat (i8 -127))
  %i.fo = bitcast <16 x i8> %i.fn to <2 x i64>
  %i.fp = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fg)
  %i.fq = fadd fast <16 x float> %i.fp, %i.fg
  %i.fr = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fs = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.fr, <16 x i8> zeroinitializer, i16 -1)
  %i.ft = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.fs, <16 x i8> splat (i8 -127))
  %i.fu = bitcast <16 x i8> %i.ft to <2 x i64>
  %i.fv = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fh)
  %i.fw = fadd fast <16 x float> %i.fv, %i.fh
  %i.fx = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fw, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fy = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.fx, <16 x i8> zeroinitializer, i16 -1)
  %i.fz = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fi)
  %i.ga = fadd fast <16 x float> %i.fz, %i.fi
  %i.gb = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ga, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gc = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gb, <16 x i8> zeroinitializer, i16 -1)
  %i.gd = shufflevector <16 x i8> %i.fy, <16 x i8> %i.gc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ge = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.gd, <32 x i8> splat (i8 -127))
  %i.gf = shufflevector <2 x i64> %i.fo, <2 x i64> %i.fu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gg = bitcast <8 x i64> %i.gf to <16 x i32>
  %i.gh = bitcast <32 x i8> %i.ge to <8 x i32>
  %i.gi = shufflevector <8 x i32> %i.gh, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gj = shufflevector <16 x i32> %i.gg, <16 x i32> %i.gi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.gk = bitcast <16 x i32> %i.gj to <64 x i8>
  %i.gl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ex, <64 x i8> splat (i8 127), <64 x i8> %i.gk) ; 2 uses
  store <16 x i32> %i.gj, ptr %.7576.i.us, align 64, !tbaa !17
  %i.gm = getelementptr inbounds nuw i8, ptr %.7576.i.us, i64 64 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.4931575.i.us, i64 %.idx1047.i
  %i.go = add nuw nsw i32 %.0945574.i.us, 4       ; 2 uses
  %i.gp = or disjoint i32 %i.go, 3
  %i.gq = icmp slt i32 %i.gp, %5
  br i1 %i.gq, label %.lr.ph578.i.us, label %bb.d, !llvm.loop !266

bb.d:                                             ; preds = %.lr.ph578.i.us
  store <16 x i32> %i.gl, ptr %i.gm, align 64, !tbaa !17
  %i.gr = getelementptr inbounds nuw i8, ptr %.7576.i.us, i64 128
  br label %.loopexit544.i.us

bb.e:                                             ; preds = %.split.i.us
  %i.gs = shufflevector <16 x float> %i.ah, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.gt = shufflevector <16 x float> %i.ah, <16 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.gu = shufflevector <16 x float> %i.ah, <16 x float> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.gv = shufflevector <16 x float> %i.ah, <16 x float> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.gw = shufflevector <16 x float> %i.ah, <16 x float> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %i.gx = shufflevector <16 x float> %i.ah, <16 x float> poison, <16 x i32> <i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11>
  %i.gy = shufflevector <16 x float> %i.ah, <16 x float> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  %i.gz = shufflevector <16 x float> %i.ah, <16 x float> poison, <16 x i32> <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15>
  br i1 %i.r, label %.lr.ph569.i.us, label %._crit_edge570.i.us

._crit_edge570.i.us:                              ; preds = %bb.e
  br i1 %i.q, label %._crit_edge570.thread.i.us, label %.loopexit544.i.us

.lr.ph569.i.us:                                   ; preds = %bb.e, %.lr.ph569.i.us
  %.4567.i.us = phi ptr [ %i.kg, %.lr.ph569.i.us ], [ %.0907606.i.us, %bb.e ] ; 3 uses
  %.2929566.i.us = phi ptr [ %i.kh, %.lr.ph569.i.us ], [ %i.ad, %bb.e ] ; 9 uses
  %i.ha = phi <16 x i32> [ %i.ke, %.lr.ph569.i.us ], [ zeroinitializer, %bb.e ]
  %.0944565.i.us = phi i32 [ %i.ki, %.lr.ph569.i.us ], [ 0, %bb.e ]
  %i.hb = load <16 x float>, ptr %.2929566.i.us, align 1, !tbaa !17
  %i.hc = getelementptr inbounds nuw i8, ptr %.2929566.i.us, i64 64
  %i.hd = load <16 x float>, ptr %i.hc, align 1, !tbaa !17
  %i.he = getelementptr inbounds nuw i8, ptr %.2929566.i.us, i64 128
  %i.hf = load <16 x float>, ptr %i.he, align 1, !tbaa !17
  %i.hg = getelementptr inbounds nuw i8, ptr %.2929566.i.us, i64 192
  %i.hh = load <16 x float>, ptr %i.hg, align 1, !tbaa !17
  %i.hi = getelementptr inbounds nuw i8, ptr %.2929566.i.us, i64 256
  %i.hj = load <16 x float>, ptr %i.hi, align 1, !tbaa !17
  %i.hk = getelementptr inbounds nuw i8, ptr %.2929566.i.us, i64 320
  %i.hl = load <16 x float>, ptr %i.hk, align 1, !tbaa !17
  %i.hm = getelementptr inbounds nuw i8, ptr %.2929566.i.us, i64 384
  %i.hn = load <16 x float>, ptr %i.hm, align 1, !tbaa !17
  %i.ho = getelementptr inbounds nuw i8, ptr %.2929566.i.us, i64 448
  %i.hp = load <16 x float>, ptr %i.ho, align 1, !tbaa !17
  %i.hq = fmul fast <16 x float> %i.hb, %i.gs     ; 2 uses
  %i.hr = fmul fast <16 x float> %i.hd, %i.gt     ; 2 uses
  %i.hs = fmul fast <16 x float> %i.hf, %i.gu     ; 2 uses
  %i.ht = fmul fast <16 x float> %i.hh, %i.gv     ; 2 uses
  %i.hu = fmul fast <16 x float> %i.hj, %i.gw     ; 2 uses
  %i.hv = fmul fast <16 x float> %i.hl, %i.gx     ; 2 uses
  %i.hw = fmul fast <16 x float> %i.hn, %i.gy     ; 2 uses
  %i.hx = fmul fast <16 x float> %i.hp, %i.gz     ; 2 uses
  %i.hy = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hq)
  %i.hz = fadd fast <16 x float> %i.hy, %i.hq
  %i.ia = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.hz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ib = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ia, <16 x i8> zeroinitializer, i16 -1)
  %i.ic = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ib, <16 x i8> splat (i8 -127))
  %i.id = bitcast <16 x i8> %i.ic to <2 x i64>
  %i.ie = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hr)
  %i.if = fadd fast <16 x float> %i.ie, %i.hr
  %i.ig = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.if, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ih = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ig, <16 x i8> zeroinitializer, i16 -1)
  %i.ii = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ih, <16 x i8> splat (i8 -127))
  %i.ij = bitcast <16 x i8> %i.ii to <2 x i64>
  %i.ik = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hs)
  %i.il = fadd fast <16 x float> %i.ik, %i.hs
  %i.im = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.il, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.in = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.im, <16 x i8> zeroinitializer, i16 -1)
  %i.io = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.in, <16 x i8> splat (i8 -127))
  %i.ip = bitcast <16 x i8> %i.io to <2 x i64>
  %i.iq = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ht)
  %i.ir = fadd fast <16 x float> %i.iq, %i.ht
  %i.is = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ir, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.it = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.is, <16 x i8> zeroinitializer, i16 -1)
  %i.iu = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.it, <16 x i8> splat (i8 -127))
  %i.iv = bitcast <16 x i8> %i.iu to <2 x i64>
  %i.iw = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hu)
  %i.ix = fadd fast <16 x float> %i.iw, %i.hu
  %i.iy = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ix, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.iz = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.iy, <16 x i8> zeroinitializer, i16 -1)
  %i.ja = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hv)
  %i.jb = fadd fast <16 x float> %i.ja, %i.hv
  %i.jc = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.jb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.jd = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.jc, <16 x i8> zeroinitializer, i16 -1)
  %i.je = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hw)
  %i.jf = fadd fast <16 x float> %i.je, %i.hw
  %i.jg = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.jf, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.jh = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.jg, <16 x i8> zeroinitializer, i16 -1)
  %i.ji = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hx)
  %i.jj = fadd fast <16 x float> %i.ji, %i.hx
  %i.jk = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.jj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.jl = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.jk, <16 x i8> zeroinitializer, i16 -1)
  %i.jm = shufflevector <16 x i8> %i.iz, <16 x i8> %i.jh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jn = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.jm, <32 x i8> splat (i8 -127))
  %i.jo = shufflevector <2 x i64> %i.id, <2 x i64> %i.ip, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jp = bitcast <8 x i64> %i.jo to <16 x i32>
  %i.jq = bitcast <32 x i8> %i.jn to <8 x i32>
  %i.jr = shufflevector <8 x i32> %i.jq, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.js = shufflevector <16 x i32> %i.jp, <16 x i32> %i.jr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %7 = shufflevector <16 x i8> %i.jd, <16 x i8> %i.jl, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jt = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %7, <32 x i8> splat (i8 -127))
  %i.ju = shufflevector <2 x i64> %i.ij, <2 x i64> %i.iv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jv = bitcast <8 x i64> %i.ju to <16 x i32>
  %i.jw = bitcast <32 x i8> %i.jt to <8 x i32>
  %i.jx = shufflevector <8 x i32> %i.jw, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jy = shufflevector <16 x i32> %i.jv, <16 x i32> %i.jx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.jz = shufflevector <16 x i32> %i.js, <16 x i32> %i.jy, <16 x i32> <i32 0, i32 2, i32 16, i32 18, i32 4, i32 6, i32 20, i32 22, i32 8, i32 10, i32 24, i32 26, i32 12, i32 14, i32 28, i32 30> ; 2 uses
  %i.ka = shufflevector <16 x i32> %i.js, <16 x i32> %i.jy, <16 x i32> <i32 1, i32 3, i32 17, i32 19, i32 5, i32 7, i32 21, i32 23, i32 9, i32 11, i32 25, i32 27, i32 13, i32 15, i32 29, i32 31> ; 2 uses
  %i.kb = bitcast <16 x i32> %i.jz to <64 x i8>
  %i.kc = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ha, <64 x i8> splat (i8 127), <64 x i8> %i.kb)
  %i.kd = bitcast <16 x i32> %i.ka to <64 x i8>
  %i.ke = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kc, <64 x i8> splat (i8 127), <64 x i8> %i.kd) ; 2 uses
  store <16 x i32> %i.jz, ptr %.4567.i.us, align 64, !tbaa !17
  %i.kf = getelementptr inbounds nuw i8, ptr %.4567.i.us, i64 64
  store <16 x i32> %i.ka, ptr %i.kf, align 64, !tbaa !17
  %i.kg = getelementptr inbounds nuw i8, ptr %.4567.i.us, i64 128 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.2929566.i.us, i64 %.idx1048.i
  %i.ki = add nuw nsw i32 %.0944565.i.us, 8       ; 2 uses
  %i.kj = or disjoint i32 %i.ki, 7
  %i.kk = icmp slt i32 %i.kj, %5
  br i1 %i.kk, label %.lr.ph569.i.us, label %._crit_edge570.thread.i.us, !llvm.loop !267

._crit_edge570.thread.i.us:                       ; preds = %.lr.ph569.i.us, %._crit_edge570.i.us
  %.4.lcssa964.i.us = phi ptr [ %.0907606.i.us, %._crit_edge570.i.us ], [ %i.kg, %.lr.ph569.i.us ] ; 2 uses
  %.lcssa557962.i.us = phi <16 x i32> [ zeroinitializer, %._crit_edge570.i.us ], [ %i.ke, %.lr.ph569.i.us ]
  store <16 x i32> %.lcssa557962.i.us, ptr %.4.lcssa964.i.us, align 64, !tbaa !17
  %i.kl = getelementptr inbounds nuw i8, ptr %.4.lcssa964.i.us, i64 64
  br label %.loopexit544.i.us

.preheader546.i.us:                               ; preds = %.split.i.us
  br i1 %i.p, label %.lr.ph.i.us, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %.preheader546.i.us
  br i1 %i.q, label %._crit_edge.thread.i.us, label %.loopexit544.i.us

.lr.ph.i.us:                                      ; preds = %.preheader546.i.us, %.lr.ph.i.us
  %.1908562.i.us = phi ptr [ %i.tp, %.lr.ph.i.us ], [ %.0907606.i.us, %.preheader546.i.us ] ; 5 uses
  %.0927561.i.us = phi ptr [ %i.tq, %.lr.ph.i.us ], [ %i.ad, %.preheader546.i.us ] ; 17 uses
  %i.km = phi <16 x i32> [ %i.tl, %.lr.ph.i.us ], [ zeroinitializer, %.preheader546.i.us ]
  %.0943560.i.us = phi i32 [ %i.tr, %.lr.ph.i.us ], [ 0, %.preheader546.i.us ]
  %i.kn = load <16 x float>, ptr %.0927561.i.us, align 64, !tbaa !17
  %i.ko = getelementptr inbounds nuw i8, ptr %.0927561.i.us, i64 64
  %i.kp = load <16 x float>, ptr %i.ko, align 64, !tbaa !17
  %i.kq = getelementptr inbounds nuw i8, ptr %.0927561.i.us, i64 128
  %i.kr = load <16 x float>, ptr %i.kq, align 64, !tbaa !17
  %i.ks = getelementptr inbounds nuw i8, ptr %.0927561.i.us, i64 192
  %i.kt = load <16 x float>, ptr %i.ks, align 64, !tbaa !17
  %i.ku = getelementptr inbounds nuw i8, ptr %.0927561.i.us, i64 256
  %i.kv = load <16 x float>, ptr %i.ku, align 64, !tbaa !17
  %i.kw = getelementptr inbounds nuw i8, ptr %.0927561.i.us, i64 320
  %i.kx = load <16 x float>, ptr %i.kw, align 64, !tbaa !17
  %i.ky = getelementptr inbounds nuw i8, ptr %.0927561.i.us, i64 384
  %i.kz = load <16 x float>, ptr %i.ky, align 64, !tbaa !17
  %i.la = getelementptr inbounds nuw i8, ptr %.0927561.i.us, i64 448
  %i.lb = load <16 x float>, ptr %i.la, align 64, !tbaa !17
  %i.lc = getelementptr inbounds nuw i8, ptr %.0927561.i.us, i64 512
  %i.ld = load <16 x float>, ptr %i.lc, align 64, !tbaa !17
  %i.le = getelementptr inbounds nuw i8, ptr %.0927561.i.us, i64 576
  %i.lf = load <16 x float>, ptr %i.le, align 64, !tbaa !17
  %i.lg = getelementptr inbounds nuw i8, ptr %.0927561.i.us, i64 640
  %i.lh = load <16 x float>, ptr %i.lg, align 64, !tbaa !17
  %i.li = getelementptr inbounds nuw i8, ptr %.0927561.i.us, i64 704
  %i.lj = load <16 x float>, ptr %i.li, align 64, !tbaa !17
  %i.lk = getelementptr inbounds nuw i8, ptr %.0927561.i.us, i64 768
  %i.ll = load <16 x float>, ptr %i.lk, align 64, !tbaa !17
  %i.lm = getelementptr inbounds nuw i8, ptr %.0927561.i.us, i64 832
  %i.ln = load <16 x float>, ptr %i.lm, align 64, !tbaa !17
  %i.lo = getelementptr inbounds nuw i8, ptr %.0927561.i.us, i64 896
  %i.lp = load <16 x float>, ptr %i.lo, align 64, !tbaa !17
  %i.lq = getelementptr inbounds nuw i8, ptr %.0927561.i.us, i64 960
  %i.lr = load <16 x float>, ptr %i.lq, align 64, !tbaa !17
  %i.ls = load ptr, ptr %6, align 8, !tbaa !14
  %i.lt = getelementptr [4 x i8], ptr %i.ls, i64 %i.ab ; 16 uses
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !31
  %i.lv = insertelement <16 x float> poison, float %i.lu, i64 0
  %i.lw = shufflevector <16 x float> %i.lv, <16 x float> poison, <16 x i32> zeroinitializer
  %i.lx = fmul fast <16 x float> %i.lw, %i.kn     ; 2 uses
  %i.ly = getelementptr i8, ptr %i.lt, i64 4
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !31
  %i.ma = insertelement <16 x float> poison, float %i.lz, i64 0
  %i.mb = shufflevector <16 x float> %i.ma, <16 x float> poison, <16 x i32> zeroinitializer
  %i.mc = fmul fast <16 x float> %i.mb, %i.kp     ; 2 uses
  %i.md = getelementptr i8, ptr %i.lt, i64 8
  %i.me = load float, ptr %i.md, align 4, !tbaa !31
  %i.mf = insertelement <16 x float> poison, float %i.me, i64 0
  %i.mg = shufflevector <16 x float> %i.mf, <16 x float> poison, <16 x i32> zeroinitializer
  %i.mh = fmul fast <16 x float> %i.mg, %i.kr     ; 2 uses
  %i.mi = getelementptr i8, ptr %i.lt, i64 12
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !31
  %i.mk = insertelement <16 x float> poison, float %i.mj, i64 0
  %i.ml = shufflevector <16 x float> %i.mk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.mm = fmul fast <16 x float> %i.ml, %i.kt     ; 2 uses
  %i.mn = getelementptr i8, ptr %i.lt, i64 16
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !31
  %i.mp = insertelement <16 x float> poison, float %i.mo, i64 0
  %i.mq = shufflevector <16 x float> %i.mp, <16 x float> poison, <16 x i32> zeroinitializer
  %i.mr = fmul fast <16 x float> %i.mq, %i.kv     ; 2 uses
  %i.ms = getelementptr i8, ptr %i.lt, i64 20
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !31
  %i.mu = insertelement <16 x float> poison, float %i.mt, i64 0
  %i.mv = shufflevector <16 x float> %i.mu, <16 x float> poison, <16 x i32> zeroinitializer
  %i.mw = fmul fast <16 x float> %i.mv, %i.kx     ; 2 uses
  %i.mx = getelementptr i8, ptr %i.lt, i64 24
  %i.my = load float, ptr %i.mx, align 4, !tbaa !31
  %i.mz = insertelement <16 x float> poison, float %i.my, i64 0
  %i.na = shufflevector <16 x float> %i.mz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.nb = fmul fast <16 x float> %i.na, %i.kz     ; 2 uses
  %i.nc = getelementptr i8, ptr %i.lt, i64 28
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !31
  %i.ne = insertelement <16 x float> poison, float %i.nd, i64 0
  %i.nf = shufflevector <16 x float> %i.ne, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ng = fmul fast <16 x float> %i.nf, %i.lb     ; 2 uses
  %i.nh = getelementptr i8, ptr %i.lt, i64 32
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !31
  %i.nj = insertelement <16 x float> poison, float %i.ni, i64 0
  %i.nk = shufflevector <16 x float> %i.nj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.nl = fmul fast <16 x float> %i.nk, %i.ld     ; 2 uses
  %i.nm = getelementptr i8, ptr %i.lt, i64 36
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !31
  %i.no = insertelement <16 x float> poison, float %i.nn, i64 0
  %i.np = shufflevector <16 x float> %i.no, <16 x float> poison, <16 x i32> zeroinitializer
  %i.nq = fmul fast <16 x float> %i.np, %i.lf     ; 2 uses
  %i.nr = getelementptr i8, ptr %i.lt, i64 40
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !31
  %i.nt = insertelement <16 x float> poison, float %i.ns, i64 0
  %i.nu = shufflevector <16 x float> %i.nt, <16 x float> poison, <16 x i32> zeroinitializer
  %i.nv = fmul fast <16 x float> %i.nu, %i.lh     ; 2 uses
  %i.nw = getelementptr i8, ptr %i.lt, i64 44
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !31
  %i.ny = insertelement <16 x float> poison, float %i.nx, i64 0
  %i.nz = shufflevector <16 x float> %i.ny, <16 x float> poison, <16 x i32> zeroinitializer
  %i.oa = fmul fast <16 x float> %i.nz, %i.lj     ; 2 uses
  %i.ob = getelementptr i8, ptr %i.lt, i64 48
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !31
  %i.od = insertelement <16 x float> poison, float %i.oc, i64 0
  %i.oe = shufflevector <16 x float> %i.od, <16 x float> poison, <16 x i32> zeroinitializer
  %i.of = fmul fast <16 x float> %i.oe, %i.ll     ; 2 uses
  %i.og = getelementptr i8, ptr %i.lt, i64 52
  %i.oh = load float, ptr %i.og, align 4, !tbaa !31
  %i.oi = insertelement <16 x float> poison, float %i.oh, i64 0
  %i.oj = shufflevector <16 x float> %i.oi, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ok = fmul fast <16 x float> %i.oj, %i.ln     ; 2 uses
  %i.ol = getelementptr i8, ptr %i.lt, i64 56
  %i.om = load float, ptr %i.ol, align 4, !tbaa !31
  %i.on = insertelement <16 x float> poison, float %i.om, i64 0
  %i.oo = shufflevector <16 x float> %i.on, <16 x float> poison, <16 x i32> zeroinitializer
  %i.op = fmul fast <16 x float> %i.oo, %i.lp     ; 2 uses
  %i.oq = getelementptr i8, ptr %i.lt, i64 60
  %i.or = load float, ptr %i.oq, align 4, !tbaa !31
  %i.os = insertelement <16 x float> poison, float %i.or, i64 0
  %i.ot = shufflevector <16 x float> %i.os, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ou = fmul fast <16 x float> %i.ot, %i.lr     ; 2 uses
  %i.ov = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.lx)
  %i.ow = fadd fast <16 x float> %i.ov, %i.lx
  %i.ox = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ow, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.oy = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ox, <16 x i8> zeroinitializer, i16 -1)
  %i.oz = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.oy, <16 x i8> splat (i8 -127))
  %i.pa = bitcast <16 x i8> %i.oz to <2 x i64>
  %i.pb = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.mc)
  %i.pc = fadd fast <16 x float> %i.pb, %i.mc
  %i.pd = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.pc, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.pe = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.pd, <16 x i8> zeroinitializer, i16 -1)
  %i.pf = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.pe, <16 x i8> splat (i8 -127))
  %i.pg = bitcast <16 x i8> %i.pf to <2 x i64>
  %i.ph = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.mh)
  %i.pi = fadd fast <16 x float> %i.ph, %i.mh
  %i.pj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.pi, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.pk = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.pj, <16 x i8> zeroinitializer, i16 -1)
  %i.pl = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.pk, <16 x i8> splat (i8 -127))
  %i.pm = bitcast <16 x i8> %i.pl to <2 x i64>
  %i.pn = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.mm)
  %i.po = fadd fast <16 x float> %i.pn, %i.mm
  %i.pp = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.po, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.pq = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.pp, <16 x i8> zeroinitializer, i16 -1)
  %i.pr = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.pq, <16 x i8> splat (i8 -127))
  %i.ps = bitcast <16 x i8> %i.pr to <2 x i64>
  %i.pt = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.mr)
  %i.pu = fadd fast <16 x float> %i.pt, %i.mr
  %i.pv = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.pu, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.pw = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.pv, <16 x i8> zeroinitializer, i16 -1)
  %i.px = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.pw, <16 x i8> splat (i8 -127))
  %i.py = bitcast <16 x i8> %i.px to <2 x i64>
  %i.pz = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.mw)
  %i.qa = fadd fast <16 x float> %i.pz, %i.mw
  %i.qb = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.qa, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.qc = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.qb, <16 x i8> zeroinitializer, i16 -1)
  %i.qd = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.qc, <16 x i8> splat (i8 -127))
  %i.qe = bitcast <16 x i8> %i.qd to <2 x i64>
  %i.qf = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.nb)
  %i.qg = fadd fast <16 x float> %i.qf, %i.nb
  %i.qh = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.qg, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.qi = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.qh, <16 x i8> zeroinitializer, i16 -1)
  %i.qj = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.qi, <16 x i8> splat (i8 -127))
  %i.qk = bitcast <16 x i8> %i.qj to <2 x i64>
  %i.ql = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ng)
  %i.qm = fadd fast <16 x float> %i.ql, %i.ng
  %i.qn = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.qm, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.qo = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.qn, <16 x i8> zeroinitializer, i16 -1)
  %i.qp = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.qo, <16 x i8> splat (i8 -127))
  %i.qq = bitcast <16 x i8> %i.qp to <2 x i64>
  %i.qr = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.nl)
  %i.qs = fadd fast <16 x float> %i.qr, %i.nl
  %i.qt = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.qs, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.qu = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.qt, <16 x i8> zeroinitializer, i16 -1)
  %i.qv = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.nq)
  %i.qw = fadd fast <16 x float> %i.qv, %i.nq
  %i.qx = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.qw, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.qy = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.qx, <16 x i8> zeroinitializer, i16 -1)
  %i.qz = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.nv)
  %i.ra = fadd fast <16 x float> %i.qz, %i.nv
  %i.rb = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ra, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.rc = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.rb, <16 x i8> zeroinitializer, i16 -1)
  %i.rd = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.oa)
  %i.re = fadd fast <16 x float> %i.rd, %i.oa
  %i.rf = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.re, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.rg = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.rf, <16 x i8> zeroinitializer, i16 -1)
  %i.rh = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.of)
  %i.ri = fadd fast <16 x float> %i.rh, %i.of
  %i.rj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ri, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.rk = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.rj, <16 x i8> zeroinitializer, i16 -1)
  %i.rl = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ok)
  %i.rm = fadd fast <16 x float> %i.rl, %i.ok
  %i.rn = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.rm, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ro = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.rn, <16 x i8> zeroinitializer, i16 -1)
  %i.rp = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.op)
  %i.rq = fadd fast <16 x float> %i.rp, %i.op
  %i.rr = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.rq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.rs = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.rr, <16 x i8> zeroinitializer, i16 -1)
  %i.rt = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ou)
  %i.ru = fadd fast <16 x float> %i.rt, %i.ou
  %i.rv = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ru, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.rw = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.rv, <16 x i8> zeroinitializer, i16 -1)
  %i.rx = shufflevector <16 x i8> %i.qu, <16 x i8> %i.rk, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ry = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.rx, <32 x i8> splat (i8 -127))
  %i.rz = shufflevector <2 x i64> %i.pa, <2 x i64> %i.py, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sa = bitcast <8 x i64> %i.rz to <16 x i32>
  %i.sb = bitcast <32 x i8> %i.ry to <8 x i32>
  %i.sc = shufflevector <8 x i32> %i.sb, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sd = shufflevector <16 x i32> %i.sa, <16 x i32> %i.sc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %8 = shufflevector <16 x i8> %i.qy, <16 x i8> %i.ro, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.se = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %8, <32 x i8> splat (i8 -127))
  %i.sf = shufflevector <2 x i64> %i.pg, <2 x i64> %i.qe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sg = bitcast <8 x i64> %i.sf to <16 x i32>
  %i.sh = bitcast <32 x i8> %i.se to <8 x i32>
  %i.si = shufflevector <8 x i32> %i.sh, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sj = shufflevector <16 x i32> %i.sg, <16 x i32> %i.si, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %9 = shufflevector <16 x i8> %i.rc, <16 x i8> %i.rs, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.sk = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %9, <32 x i8> splat (i8 -127))
  %i.sl = shufflevector <2 x i64> %i.pm, <2 x i64> %i.qk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sm = bitcast <8 x i64> %i.sl to <16 x i32>
  %i.sn = bitcast <32 x i8> %i.sk to <8 x i32>
  %i.so = shufflevector <8 x i32> %i.sn, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sp = shufflevector <16 x i32> %i.sm, <16 x i32> %i.so, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %10 = shufflevector <16 x i8> %i.rg, <16 x i8> %i.rw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.sq = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %10, <32 x i8> splat (i8 -127))
  %i.sr = shufflevector <2 x i64> %i.ps, <2 x i64> %i.qq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ss = bitcast <8 x i64> %i.sr to <16 x i32>
  %i.st = bitcast <32 x i8> %i.sq to <8 x i32>
  %i.su = shufflevector <8 x i32> %i.st, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sv = shufflevector <16 x i32> %i.ss, <16 x i32> %i.su, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.sw = shufflevector <16 x i32> %i.sd, <16 x i32> %i.sj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.sx = shufflevector <16 x i32> %i.sd, <16 x i32> %i.sj, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.sy = shufflevector <16 x i32> %i.sp, <16 x i32> %i.sv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.sz = shufflevector <16 x i32> %i.sp, <16 x i32> %i.sv, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ta = shufflevector <16 x i32> %i.sw, <16 x i32> %i.sy, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.tb = shufflevector <16 x i32> %i.sw, <16 x i32> %i.sy, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.tc = shufflevector <16 x i32> %i.sx, <16 x i32> %i.sz, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.td = shufflevector <16 x i32> %i.sx, <16 x i32> %i.sz, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.te = bitcast <16 x i32> %i.ta to <64 x i8>
  %i.tf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.km, <64 x i8> splat (i8 127), <64 x i8> %i.te)
  %i.tg = bitcast <16 x i32> %i.tb to <64 x i8>
  %i.th = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tf, <64 x i8> splat (i8 127), <64 x i8> %i.tg)
  %i.ti = bitcast <16 x i32> %i.tc to <64 x i8>
  %i.tj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.th, <64 x i8> splat (i8 127), <64 x i8> %i.ti)
  %i.tk = bitcast <16 x i32> %i.td to <64 x i8>
  %i.tl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tj, <64 x i8> splat (i8 127), <64 x i8> %i.tk) ; 2 uses
  store <16 x i32> %i.ta, ptr %.1908562.i.us, align 64, !tbaa !17
  %i.tm = getelementptr inbounds nuw i8, ptr %.1908562.i.us, i64 64
  store <16 x i32> %i.tb, ptr %i.tm, align 64, !tbaa !17
  %i.tn = getelementptr inbounds nuw i8, ptr %.1908562.i.us, i64 128
  store <16 x i32> %i.tc, ptr %i.tn, align 64, !tbaa !17
  %i.to = getelementptr inbounds nuw i8, ptr %.1908562.i.us, i64 192
  store <16 x i32> %i.td, ptr %i.to, align 64, !tbaa !17
  %i.tp = getelementptr inbounds nuw i8, ptr %.1908562.i.us, i64 256 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.0927561.i.us, i64 %.idx1049.i
  %i.tr = add nuw nsw i32 %.0943560.i.us, 16      ; 2 uses
  %i.ts = or disjoint i32 %i.tr, 15
  %i.tt = icmp slt i32 %i.ts, %5
  br i1 %i.tt, label %.lr.ph.i.us, label %._crit_edge.thread.i.us, !llvm.loop !268

._crit_edge.thread.i.us:                          ; preds = %.lr.ph.i.us, %._crit_edge.i.us
  %.1908.lcssa956.i.us = phi ptr [ %.0907606.i.us, %._crit_edge.i.us ], [ %i.tp, %.lr.ph.i.us ] ; 2 uses
  %.lcssa556954.i.us = phi <16 x i32> [ zeroinitializer, %._crit_edge.i.us ], [ %i.tl, %.lr.ph.i.us ]
  store <16 x i32> %.lcssa556954.i.us, ptr %.1908.lcssa956.i.us, align 64, !tbaa !17
  %i.tu = getelementptr inbounds nuw i8, ptr %.1908.lcssa956.i.us, i64 64
  br label %.loopexit544.i.us

.loopexit544.i.us:                                ; preds = %.lr.ph603.i.us.prol.loopexit, %.lr.ph603.i.us, %._crit_edge.thread.i.us, %._crit_edge.i.us, %._crit_edge570.thread.i.us, %._crit_edge570.i.us, %bb.d, %bb.c, %.preheader543.i.us, %.split.i.us
  %.14.i.us = phi ptr [ %.0907606.i.us, %.split.i.us ], [ %.12.lcssa.i.us, %.preheader543.i.us ], [ %i.tu, %._crit_edge.thread.i.us ], [ %.0907606.i.us, %bb.c ], [ %i.gr, %bb.d ], [ %i.kl, %._crit_edge570.thread.i.us ], [ %.0907606.i.us, %._crit_edge570.i.us ], [ %.0907606.i.us, %._crit_edge.i.us ], [ %.lcssa329.unr, %.lr.ph603.i.us.prol.loopexit ], [ %i.eq, %.lr.ph603.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 16 ; 3 uses
  %i.tv = or disjoint i64 %indvars.iv.next.i.us, 15
  %i.tw = icmp samesign ult i64 %i.tv, %i.t
  br i1 %i.tw, label %.split.i.us, label %.preheader542.loopexit.i, !llvm.loop !269

.preheader542.loopexit.i:                         ; preds = %.loopexit544.i.us, %.loopexit544.i.preheader
  %.us-phi = phi ptr [ %.val, %.loopexit544.i.preheader ], [ %.14.i.us, %.loopexit544.i.us ]
  %.us-phi69 = phi i64 [ %i.y, %.loopexit544.i.preheader ], [ %indvars.iv.next.i.us, %.loopexit544.i.us ]
  %i.tx = trunc nuw nsw i64 %.us-phi69 to i32
  br label %.preheader542.i

.preheader542.i:                                  ; preds = %.preheader542.loopexit.i, %bb.a
  %.0911.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.tx, %.preheader542.loopexit.i ] ; 3 uses
  %.0907.lcssa.i = phi ptr [ %.val, %bb.a ], [ %.us-phi, %.preheader542.loopexit.i ] ; 2 uses
  %i.ty = or disjoint i32 %.0911.lcssa.i, 7
  %i.tz = icmp slt i32 %i.ty, %3
  br i1 %i.tz, label %.lr.ph660.i, label %.preheader536.i

.lr.ph660.i:                                      ; preds = %.preheader542.i
  %i.ua = sext i32 %4 to i64
  %i.ub = mul i64 %i.k, %i.ua
  %i.uc = sext i32 %2 to i64                      ; 2 uses
  %i.ud = icmp sgt i32 %5, 15
  %.idx1042.i = shl i64 %i.k, 6
  %i.ue = icmp sgt i32 %5, 3                      ; 4 uses
  %i.uf = icmp sgt i32 %5, 7
  %.idx1041.i = shl i64 %i.k, 5
  %.idx1040.i = shl i64 %i.k, 4                   ; 2 uses
  %.idx1037.i = shl i64 %i.k, 3                   ; 2 uses
  %.idx1038.i = mul i64 %i.k, 12
  %i.ug = and i32 %5, -4
  %i.uh = zext nneg i32 %.0911.lcssa.i to i64
  %i.ui = sext i32 %3 to i64
  %i.uj = sext i32 %i.b to i64
  %invariant.op.i = add nsw i64 %i.ui, -7
  %i.uk = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.ul = icmp eq i32 %i.uk, 1
  %i.um = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  br label %bb.l

.preheader536.loopexit.i:                         ; preds = %.loopexit538.i
  %i.un = trunc nuw nsw i64 %indvars.iv.next921.i to i32
  br label %.preheader536.i

.preheader536.i:                                  ; preds = %.preheader536.loopexit.i, %.preheader542.i
  %.1912.lcssa.i = phi i32 [ %.0911.lcssa.i, %.preheader542.i ], [ %i.un, %.preheader536.loopexit.i ] ; 3 uses
  %.15.lcssa.i = phi ptr [ %.0907.lcssa.i, %.preheader542.i ], [ %.29.i, %.preheader536.loopexit.i ] ; 3 uses
  %i.uo = or disjoint i32 %.1912.lcssa.i, 3
  %i.up = icmp slt i32 %i.uo, %3
  br i1 %i.up, label %.lr.ph715.i, label %.preheader533.i

.lr.ph715.i:                                      ; preds = %.preheader536.i
  %i.uq = sext i32 %4 to i64
  %i.ur = mul i64 %i.k, %i.uq
  %i.us = icmp sgt i32 %5, 15
  %.idx1035.i = shl i64 %i.k, 6
  %i.ut = icmp sgt i32 %5, 3                      ; 4 uses
  %i.uu = icmp sgt i32 %5, 7
  %.idx1034.i = shl i64 %i.k, 5
  %.idx1033.i = shl i64 %i.k, 4                   ; 2 uses
  %i.uv = sext i32 %2 to i64                      ; 2 uses
  %.idx1030.i = shl i64 %i.k, 3                   ; 2 uses
  %.idx1031.i = mul i64 %i.k, 12
  %i.uw = and i32 %5, -4
  %i.ux = zext i32 %.1912.lcssa.i to i64          ; 4 uses
  %i.uy = sext i32 %3 to i64
  %i.uz = sext i32 %i.b to i64
  %invariant.op1217.i = add nsw i64 %i.uy, -3     ; 2 uses
  %i.va = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.vb = icmp eq i32 %i.va, 1
  %i.vc = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  br i1 %i.vb, label %.split1220.i.us, label %.loopexit535.i.preheader

.loopexit535.i.preheader:                         ; preds = %.lr.ph715.i
  %i.vd = add nuw nsw i64 %i.ux, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op1217.i, i64 %i.vd)
  %i.ve = xor i64 %i.ux, -1
  %i.vf = add nsw i64 %smax, %i.ve
  %i.vg = and i64 %i.vf, -4
  %i.vh = add i64 %i.vg, %i.ux
  %i.vi = add i64 %i.vh, 4
  br label %.preheader533.loopexit.i

.split1220.i.us:                                  ; preds = %.lr.ph715.i, %.loopexit535.i.us
  %indvars.iv924.i.us = phi i64 [ %indvars.iv.next925.i.us, %.loopexit535.i.us ], [ %i.ux, %.lr.ph715.i ] ; 3 uses
  %.30714.i.us = phi ptr [ %.44.i.us, %.loopexit535.i.us ], [ %.15.lcssa.i, %.lr.ph715.i ] ; 11 uses
  %i.vj = load ptr, ptr %0, align 8, !tbaa !14
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.ur
  %i.vl = add nsw i64 %indvars.iv924.i.us, %i.uv  ; 4 uses
  %i.vm = mul nsw i64 %i.vl, %i.uz
  %i.vn = getelementptr inbounds [4 x i8], ptr %i.vk, i64 %i.vm ; 5 uses
  switch i32 %i.vc, label %.loopexit535.i.us [
    i32 4, label %bb.k
    i32 3, label %bb.j
    i32 2, label %bb.h
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %.split1220.i.us
  %i.vo = load ptr, ptr %6, align 8, !tbaa !14
  %i.vp = getelementptr inbounds [4 x i8], ptr %i.vo, i64 %i.uv
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv924.i.us
  %i.vr = load <4 x float>, ptr %i.vq, align 16, !tbaa !17 ; 9 uses
  br i1 %i.ut, label %.lr.ph694.i.us, label %._crit_edge695.i.us

.lr.ph694.i.us:                                   ; preds = %bb.f, %.lr.ph694.i.us
  %.40692.i.us = phi ptr [ %i.wz, %.lr.ph694.i.us ], [ %.30714.i.us, %bb.f ] ; 3 uses
  %.0984691.i.us = phi i32 [ %i.xb, %.lr.ph694.i.us ], [ 0, %bb.f ]
  %.6994690.i.us = phi ptr [ %i.xa, %.lr.ph694.i.us ], [ %i.vn, %bb.f ] ; 5 uses
  %i.vs = phi <4 x i32> [ %i.wy, %.lr.ph694.i.us ], [ zeroinitializer, %bb.f ]
  %i.vt = load <4 x float>, ptr %.6994690.i.us, align 1, !tbaa !17
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %.6994690.i.us, i64 %i.k
  %i.vv = load <4 x float>, ptr %i.vu, align 1, !tbaa !17
  %i.vw = getelementptr inbounds nuw i8, ptr %.6994690.i.us, i64 %.idx1030.i
  %i.vx = load <4 x float>, ptr %i.vw, align 1, !tbaa !17
  %i.vy = getelementptr inbounds nuw i8, ptr %.6994690.i.us, i64 %.idx1031.i
  %i.vz = load <4 x float>, ptr %i.vy, align 1, !tbaa !17
  %i.wa = fmul fast <4 x float> %i.vt, %i.vr      ; 2 uses
  %i.wb = fmul fast <4 x float> %i.vv, %i.vr      ; 2 uses
  %i.wc = fmul fast <4 x float> %i.vx, %i.vr      ; 2 uses
  %i.wd = fmul fast <4 x float> %i.vz, %i.vr      ; 2 uses
  %i.we = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.wa)
  %i.wf = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.wb)
  %i.wg = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.wc)
  %i.wh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.wd)
  %i.wi = fadd fast <4 x float> %i.we, %i.wa
  %i.wj = fadd fast <4 x float> %i.wf, %i.wb
  %i.wk = fadd fast <4 x float> %i.wg, %i.wc
  %i.wl = fadd fast <4 x float> %i.wh, %i.wd
  %i.wm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wi)
  %i.wn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wj)
  %i.wo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wk)
  %i.wp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wl)
  %i.wq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.wm, <4 x i32> %i.wn)
  %i.wr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.wo, <4 x i32> %i.wp)
  %i.ws = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wq, <8 x i16> splat (i16 -127))
  %i.wt = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ws, <8 x i16> splat (i16 127))
  %i.wu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wr, <8 x i16> splat (i16 -127))
  %i.wv = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.wu, <8 x i16> splat (i16 127))
  %i.ww = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.wt, <8 x i16> %i.wv)
  %i.wx = shufflevector <16 x i8> %i.ww, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15> ; 2 uses
  %i.wy = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.vs, <16 x i8> splat (i8 127), <16 x i8> %i.wx) ; 2 uses
  store <16 x i8> %i.wx, ptr %.40692.i.us, align 1, !tbaa !17
  %i.wz = getelementptr inbounds nuw i8, ptr %.40692.i.us, i64 16 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %.6994690.i.us, i64 %.idx1033.i ; 2 uses
  %i.xb = add nuw nsw i32 %.0984691.i.us, 4       ; 2 uses
  %i.xc = or disjoint i32 %i.xb, 3
  %i.xd = icmp slt i32 %i.xc, %5
  br i1 %i.xd, label %.lr.ph694.i.us, label %bb.g, !llvm.loop !270

bb.g:                                             ; preds = %.lr.ph694.i.us
  store <4 x i32> %i.wy, ptr %i.wz, align 1, !tbaa !17
  %i.xe = getelementptr inbounds nuw i8, ptr %.40692.i.us, i64 32
  br label %._crit_edge695.i.us

._crit_edge695.i.us:                              ; preds = %bb.g, %bb.f
end_hunk_0
begin_hunk_1_@_ZN4ncnn35pack_B_tile_fp32_to_int8_avx512vnniERKNS_3MatERS0_iiiif:bb.a

.lr.ph407.i.us:                                   ; preds = %.lr.ph407.i.us.prol.loopexit, %.lr.ph407.i.us
  %.15406.i.us = phi ptr [ %i.fm, %.lr.ph407.i.us ], [ %.15406.i.us.unr, %.lr.ph407.i.us.prol.loopexit ] ; 3 uses
  %.14626405.i.us = phi ptr [ %i.fn, %.lr.ph407.i.us ], [ %.14626405.i.us.unr, %.lr.ph407.i.us.prol.loopexit ] ; 3 uses
  %.2644404.i.us = phi i32 [ %i.fo, %.lr.ph407.i.us ], [ %.2644404.i.us.unr, %.lr.ph407.i.us.prol.loopexit ]
  %i.ew = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.14626405.i.us, <16 x i32> %i.u, <16 x i1> splat (i1 true), i32 4)
  %i.ex = fmul fast <16 x float> %i.ew, %i.p      ; 2 uses
  %i.ey = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ex)
  %i.ez = fadd fast <16 x float> %i.ey, %i.ex
  %i.fa = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ez, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fb = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.fa, <16 x i8> zeroinitializer, i16 -1)
  %i.fc = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.fb, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.fc, ptr %.15406.i.us, align 16, !tbaa !17
  %i.fd = getelementptr inbounds nuw i8, ptr %.15406.i.us, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %.14626405.i.us, i64 4
  %i.ff = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.fe, <16 x i32> %i.u, <16 x i1> splat (i1 true), i32 4)
  %i.fg = fmul fast <16 x float> %i.ff, %i.p      ; 2 uses
  %i.fh = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fg)
  %i.fi = fadd fast <16 x float> %i.fh, %i.fg
  %i.fj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fi, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fk = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.fj, <16 x i8> zeroinitializer, i16 -1)
  %i.fl = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.fk, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.fl, ptr %i.fd, align 16, !tbaa !17
  %i.fm = getelementptr inbounds nuw i8, ptr %.15406.i.us, i64 32 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.14626405.i.us, i64 8
  %i.fo = add nuw nsw i32 %.2644404.i.us, 2       ; 2 uses
  %exitcond649.not.i.us.1 = icmp eq i32 %i.fo, %5
  br i1 %exitcond649.not.i.us.1, label %.loopexit317.i.us, label %.lr.ph407.i.us, !llvm.loop !299

.preheader323.i.us:                               ; preds = %.split.i.us
  br i1 %i.q, label %.lr.ph373.i.us, label %.preheader322.i.us

.lr.ph373.i.us:                                   ; preds = %.preheader323.i.us, %.lr.ph373.i.us
  %.9372.i.us = phi ptr [ %i.he, %.lr.ph373.i.us ], [ %.0605410.i.us, %.preheader323.i.us ] ; 2 uses
  %.8620371.i.us = phi ptr [ %i.hf, %.lr.ph373.i.us ], [ %i.ag, %.preheader323.i.us ] ; 5 uses
  %.0639370.i.us = phi i32 [ %i.hg, %.lr.ph373.i.us ], [ 0, %.preheader323.i.us ]
  %i.fp = load <16 x float>, ptr %.8620371.i.us, align 1, !tbaa !17
  %i.fq = getelementptr inbounds nuw i8, ptr %.8620371.i.us, i64 %.idx708.i
  %i.fr = load <16 x float>, ptr %i.fq, align 1, !tbaa !17
  %i.fs = getelementptr inbounds nuw i8, ptr %.8620371.i.us, i64 %.idx713.i
  %i.ft = load <16 x float>, ptr %i.fs, align 1, !tbaa !17
  %i.fu = getelementptr inbounds nuw i8, ptr %.8620371.i.us, i64 %.idx710.i
  %i.fv = load <16 x float>, ptr %i.fu, align 1, !tbaa !17
  %i.fw = fmul fast <16 x float> %i.fp, %i.p      ; 2 uses
  %i.fx = fmul fast <16 x float> %i.fr, %i.p      ; 2 uses
  %i.fy = fmul fast <16 x float> %i.ft, %i.p      ; 2 uses
  %i.fz = fmul fast <16 x float> %i.fv, %i.p      ; 2 uses
  %i.ga = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fw)
  %i.gb = fadd fast <16 x float> %i.ga, %i.fw
  %i.gc = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gd = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gc, <16 x i8> zeroinitializer, i16 -1)
  %i.ge = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.gd, <16 x i8> splat (i8 -127))
  %i.gf = bitcast <16 x i8> %i.ge to <2 x i64>
  %i.gg = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fx)
  %i.gh = fadd fast <16 x float> %i.gg, %i.fx
  %i.gi = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gj = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gi, <16 x i8> zeroinitializer, i16 -1)
  %i.gk = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.gj, <16 x i8> splat (i8 -127))
  %i.gl = bitcast <16 x i8> %i.gk to <2 x i64>
  %i.gm = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fy)
  %i.gn = fadd fast <16 x float> %i.gm, %i.fy
  %i.go = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gn, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gp = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.go, <16 x i8> zeroinitializer, i16 -1)
  %i.gq = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fz)
  %i.gr = fadd fast <16 x float> %i.gq, %i.fz
  %i.gs = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gr, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gt = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gs, <16 x i8> zeroinitializer, i16 -1)
  %i.gu = shufflevector <16 x i8> %i.gp, <16 x i8> %i.gt, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gv = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.gu, <32 x i8> splat (i8 -127))
  %i.gw = shufflevector <2 x i64> %i.gf, <2 x i64> %i.gl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gx = bitcast <8 x i64> %i.gw to <16 x i32>
  %i.gy = bitcast <32 x i8> %i.gv to <8 x i32>
  %i.gz = shufflevector <8 x i32> %i.gy, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ha = shufflevector <16 x i32> %i.gx, <16 x i32> %i.gz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.hb = bitcast <16 x i32> %i.ha to <64 x i8>
  %i.hc = add <64 x i8> %i.hb, splat (i8 127)
  %i.hd = shufflevector <64 x i8> %i.hc, <64 x i8> poison, <64 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15, i32 16, i32 20, i32 24, i32 28, i32 17, i32 21, i32 25, i32 29, i32 18, i32 22, i32 26, i32 30, i32 19, i32 23, i32 27, i32 31, i32 32, i32 36, i32 40, i32 44, i32 33, i32 37, i32 41, i32 45, i32 34, i32 38, i32 42, i32 46, i32 35, i32 39, i32 43, i32 47, i32 48, i32 52, i32 56, i32 60, i32 49, i32 53, i32 57, i32 61, i32 50, i32 54, i32 58, i32 62, i32 51, i32 55, i32 59, i32 63>
  store <64 x i8> %i.hd, ptr %.9372.i.us, align 1, !tbaa !17
  %i.he = getelementptr inbounds nuw i8, ptr %.9372.i.us, i64 64 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.8620371.i.us, i64 64 ; 2 uses
  %i.hg = add nuw nsw i32 %.0639370.i.us, 4       ; 2 uses
  %i.hh = or disjoint i32 %i.hg, 3
  %i.hi = icmp slt i32 %i.hh, %5
  br i1 %i.hi, label %.lr.ph373.i.us, label %.preheader322.i.us, !llvm.loop !300

.preheader322.i.us:                               ; preds = %.lr.ph373.i.us, %.preheader323.i.us
  %.0639.lcssa.i.us = phi i32 [ 0, %.preheader323.i.us ], [ %i.v, %.lr.ph373.i.us ] ; 3 uses
  %.8620.lcssa.i.us = phi ptr [ %i.ag, %.preheader323.i.us ], [ %i.hf, %.lr.ph373.i.us ] ; 2 uses
  %.9.lcssa.i.us = phi ptr [ %.0605410.i.us, %.preheader323.i.us ], [ %i.he, %.lr.ph373.i.us ] ; 2 uses
  %i.hj = or disjoint i32 %.0639.lcssa.i.us, 1
  %i.hk = icmp slt i32 %i.hj, %5
  br i1 %i.hk, label %.lr.ph380.i.us, label %.preheader320.i.us

.lr.ph380.i.us:                                   ; preds = %.preheader322.i.us, %.lr.ph380.i.us
  %.10379.i.us = phi ptr [ %i.ij, %.lr.ph380.i.us ], [ %.9.lcssa.i.us, %.preheader322.i.us ] ; 3 uses
  %.9621378.i.us = phi ptr [ %i.ik, %.lr.ph380.i.us ], [ %.8620.lcssa.i.us, %.preheader322.i.us ] ; 5 uses
  %.1640377.i.us = phi i32 [ %i.il, %.lr.ph380.i.us ], [ %.0639.lcssa.i.us, %.preheader322.i.us ]
  %i.hl = load <8 x float>, ptr %.9621378.i.us, align 1, !tbaa !17
  %i.hm = getelementptr inbounds nuw i8, ptr %.9621378.i.us, i64 %.idx708.i
  %i.hn = load <8 x float>, ptr %i.hm, align 1, !tbaa !17
  %i.ho = getelementptr inbounds nuw i8, ptr %.9621378.i.us, i64 %.idx713.i
  %i.hp = load <8 x float>, ptr %i.ho, align 1, !tbaa !17
  %i.hq = getelementptr inbounds nuw i8, ptr %.9621378.i.us, i64 %.idx710.i
  %i.hr = load <8 x float>, ptr %i.hq, align 1, !tbaa !17
  %i.hs = shufflevector <8 x float> %i.hl, <8 x float> %i.hn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ht = shufflevector <8 x float> %i.hp, <8 x float> %i.hr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hu = fmul fast <16 x float> %i.hs, %i.p      ; 2 uses
  %i.hv = fmul fast <16 x float> %i.ht, %i.p      ; 2 uses
  %i.hw = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hu)
  %i.hx = fadd fast <16 x float> %i.hw, %i.hu
  %i.hy = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.hx, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.hz = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.hy, <16 x i8> zeroinitializer, i16 -1)
  %i.ia = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hv)
  %i.ib = fadd fast <16 x float> %i.ia, %i.hv
  %i.ic = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ib, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.id = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ic, <16 x i8> zeroinitializer, i16 -1)
  %i.ie = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.hz, <16 x i8> splat (i8 -127))
  %i.if = shufflevector <16 x i8> %i.ie, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7, i32 8, i32 12, i32 9, i32 13, i32 10, i32 14, i32 11, i32 15>
  %i.ig = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.id, <16 x i8> splat (i8 -127))
  %i.ih = shufflevector <16 x i8> %i.ig, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7, i32 8, i32 12, i32 9, i32 13, i32 10, i32 14, i32 11, i32 15>
  store <16 x i8> %i.if, ptr %.10379.i.us, align 16, !tbaa !17
  %i.ii = getelementptr inbounds nuw i8, ptr %.10379.i.us, i64 16
  store <16 x i8> %i.ih, ptr %i.ii, align 16, !tbaa !17
  %i.ij = getelementptr inbounds nuw i8, ptr %.10379.i.us, i64 32 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.9621378.i.us, i64 32 ; 2 uses
  %i.il = add nuw nsw i32 %.1640377.i.us, 2       ; 3 uses
  %i.im = or disjoint i32 %i.il, 1
  %i.in = icmp slt i32 %i.im, %5
  br i1 %i.in, label %.lr.ph380.i.us, label %.preheader320.i.us, !llvm.loop !301

.preheader320.i.us:                               ; preds = %.lr.ph380.i.us, %.preheader322.i.us
  %.1640.lcssa.i.us = phi i32 [ %.0639.lcssa.i.us, %.preheader322.i.us ], [ %i.il, %.lr.ph380.i.us ] ; 2 uses
  %.9621.lcssa.i.us = phi ptr [ %.8620.lcssa.i.us, %.preheader322.i.us ], [ %i.ik, %.lr.ph380.i.us ]
  %.10.lcssa.i.us = phi ptr [ %.9.lcssa.i.us, %.preheader322.i.us ], [ %i.ij, %.lr.ph380.i.us ] ; 2 uses
  %i.io = icmp slt i32 %.1640.lcssa.i.us, %5
  br i1 %i.io, label %.lr.ph387.i.us, label %.loopexit317.i.us

.lr.ph387.i.us:                                   ; preds = %.preheader320.i.us, %.lr.ph387.i.us
  %.11386.i.us = phi ptr [ %i.jf, %.lr.ph387.i.us ], [ %.10.lcssa.i.us, %.preheader320.i.us ] ; 2 uses
  %.10622385.i.us = phi ptr [ %i.jg, %.lr.ph387.i.us ], [ %.9621.lcssa.i.us, %.preheader320.i.us ] ; 5 uses
  %.2641384.i.us = phi i32 [ %i.jh, %.lr.ph387.i.us ], [ %.1640.lcssa.i.us, %.preheader320.i.us ]
  %i.ip = load <4 x float>, ptr %.10622385.i.us, align 1, !tbaa !17
  %i.iq = getelementptr inbounds nuw i8, ptr %.10622385.i.us, i64 %.idx708.i
  %i.ir = load <4 x float>, ptr %i.iq, align 1, !tbaa !17
  %i.is = getelementptr inbounds nuw i8, ptr %.10622385.i.us, i64 %.idx713.i
  %i.it = load <4 x float>, ptr %i.is, align 1, !tbaa !17
  %i.iu = getelementptr inbounds nuw i8, ptr %.10622385.i.us, i64 %.idx710.i
  %i.iv = load <4 x float>, ptr %i.iu, align 1, !tbaa !17
  %i.iw = shufflevector <4 x float> %i.ip, <4 x float> %i.ir, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ix = shufflevector <4 x float> %i.it, <4 x float> %i.iv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iy = shufflevector <16 x float> %i.iw, <16 x float> %i.ix, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.iz = fmul fast <16 x float> %i.iy, %i.p      ; 2 uses
  %i.ja = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.iz)
  %i.jb = fadd fast <16 x float> %i.ja, %i.iz
  %i.jc = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.jb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.jd = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.jc, <16 x i8> zeroinitializer, i16 -1)
  %i.je = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.jd, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.je, ptr %.11386.i.us, align 16, !tbaa !17
  %i.jf = getelementptr inbounds nuw i8, ptr %.11386.i.us, i64 16 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.10622385.i.us, i64 16
  %i.jh = add nuw nsw i32 %.2641384.i.us, 1       ; 2 uses
  %exitcond648.not.i.us = icmp eq i32 %i.jh, %5
  br i1 %exitcond648.not.i.us, label %.loopexit317.i.us, label %.lr.ph387.i.us, !llvm.loop !302

.preheader327.i.us:                               ; preds = %.split.i.us
  br i1 %i.q, label %.lr.ph353.i.us, label %.preheader326.i.us

.lr.ph353.i.us:                                   ; preds = %.preheader327.i.us, %.lr.ph353.i.us
  %.5352.i.us = phi ptr [ %i.kx, %.lr.ph353.i.us ], [ %.0605410.i.us, %.preheader327.i.us ] ; 2 uses
  %.4616351.i.us = phi ptr [ %i.ky, %.lr.ph353.i.us ], [ %i.ag, %.preheader327.i.us ] ; 4 uses
  %.0636350.i.us = phi i32 [ %i.kz, %.lr.ph353.i.us ], [ 0, %.preheader327.i.us ]
  %i.ji = load <16 x float>, ptr %.4616351.i.us, align 1, !tbaa !17
  %i.jj = getelementptr inbounds nuw i8, ptr %.4616351.i.us, i64 64
  %i.jk = load <16 x float>, ptr %i.jj, align 1, !tbaa !17
  %i.jl = getelementptr inbounds nuw i8, ptr %.4616351.i.us, i64 %.idx713.i ; 2 uses
  %i.jm = load <16 x float>, ptr %i.jl, align 1, !tbaa !17
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 64
  %i.jo = load <16 x float>, ptr %i.jn, align 1, !tbaa !17
  %i.jp = fmul fast <16 x float> %i.ji, %i.p      ; 2 uses
  %i.jq = fmul fast <16 x float> %i.jk, %i.p      ; 2 uses
  %i.jr = fmul fast <16 x float> %i.jm, %i.p      ; 2 uses
  %i.js = fmul fast <16 x float> %i.jo, %i.p      ; 2 uses
  %i.jt = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.jp)
  %i.ju = fadd fast <16 x float> %i.jt, %i.jp
  %i.jv = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ju, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.jw = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.jv, <16 x i8> zeroinitializer, i16 -1)
  %i.jx = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.jw, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.jy = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.jq)
  %i.jz = fadd fast <16 x float> %i.jy, %i.jq
  %i.ka = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.jz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.kb = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ka, <16 x i8> zeroinitializer, i16 -1)
  %i.kc = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.kb, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.kd = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.jr)
  %i.ke = fadd fast <16 x float> %i.kd, %i.jr
  %i.kf = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ke, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.kg = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.kf, <16 x i8> zeroinitializer, i16 -1)
  %i.kh = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.js)
  %i.ki = fadd fast <16 x float> %i.kh, %i.js
  %i.kj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ki, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.kk = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.kj, <16 x i8> zeroinitializer, i16 -1)
  %i.kl = shufflevector <16 x i8> %i.jx, <16 x i8> %i.kc, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27>
  %i.km = bitcast <16 x i8> %i.kl to <2 x i64>
  %i.kn = shufflevector <16 x i8> %i.jx, <16 x i8> %i.kc, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %i.ko = bitcast <16 x i8> %i.kn to <2 x i64>
  %7 = shufflevector <16 x i8> %i.kg, <16 x i8> %i.kk, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %i.kp = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %7, <32 x i8> splat (i8 -127))
  %i.kq = shufflevector <2 x i64> %i.km, <2 x i64> %i.ko, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kr = bitcast <8 x i64> %i.kq to <16 x i32>
  %i.ks = bitcast <32 x i8> %i.kp to <8 x i32>
  %i.kt = shufflevector <8 x i32> %i.ks, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ku = shufflevector <16 x i32> %i.kr, <16 x i32> %i.kt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.kv = bitcast <16 x i32> %i.ku to <64 x i8>
  %i.kw = add <64 x i8> %i.kv, splat (i8 127)
  store <64 x i8> %i.kw, ptr %.5352.i.us, align 1, !tbaa !17
  %i.kx = getelementptr inbounds nuw i8, ptr %.5352.i.us, i64 64 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.4616351.i.us, i64 128 ; 2 uses
  %i.kz = add nuw nsw i32 %.0636350.i.us, 4       ; 2 uses
  %i.la = or disjoint i32 %i.kz, 3
  %i.lb = icmp slt i32 %i.la, %5
  br i1 %i.lb, label %.lr.ph353.i.us, label %.preheader326.i.us, !llvm.loop !303

.preheader326.i.us:                               ; preds = %.lr.ph353.i.us, %.preheader327.i.us
  %.0636.lcssa.i.us = phi i32 [ 0, %.preheader327.i.us ], [ %i.v, %.lr.ph353.i.us ] ; 3 uses
  %.4616.lcssa.i.us = phi ptr [ %i.ag, %.preheader327.i.us ], [ %i.ky, %.lr.ph353.i.us ] ; 2 uses
  %.5.lcssa.i.us = phi ptr [ %.0605410.i.us, %.preheader327.i.us ], [ %i.kx, %.lr.ph353.i.us ] ; 2 uses
  %i.lc = or disjoint i32 %.0636.lcssa.i.us, 1
  %i.ld = icmp slt i32 %i.lc, %5
  br i1 %i.ld, label %.lr.ph360.i.us, label %.preheader324.i.us

.lr.ph360.i.us:                                   ; preds = %.preheader326.i.us, %.lr.ph360.i.us
  %.6359.i.us = phi ptr [ %i.lw, %.lr.ph360.i.us ], [ %.5.lcssa.i.us, %.preheader326.i.us ] ; 3 uses
  %.5617358.i.us = phi ptr [ %i.lx, %.lr.ph360.i.us ], [ %.4616.lcssa.i.us, %.preheader326.i.us ] ; 3 uses
  %.1637357.i.us = phi i32 [ %i.ly, %.lr.ph360.i.us ], [ %.0636.lcssa.i.us, %.preheader326.i.us ]
  %i.le = load <16 x float>, ptr %.5617358.i.us, align 1, !tbaa !17
  %i.lf = getelementptr inbounds nuw i8, ptr %.5617358.i.us, i64 %.idx713.i
  %i.lg = load <16 x float>, ptr %i.lf, align 1, !tbaa !17
  %i.lh = fmul fast <16 x float> %i.le, %i.p      ; 2 uses
  %i.li = fmul fast <16 x float> %i.lg, %i.p      ; 2 uses
  %i.lj = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.lh)
  %i.lk = fadd fast <16 x float> %i.lj, %i.lh
  %i.ll = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.lk, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.lm = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ll, <16 x i8> zeroinitializer, i16 -1)
  %i.ln = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.li)
  %i.lo = fadd fast <16 x float> %i.ln, %i.li
  %i.lp = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.lo, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.lq = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.lp, <16 x i8> zeroinitializer, i16 -1)
  %i.lr = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.lm, <16 x i8> splat (i8 -127))
  %i.ls = shufflevector <16 x i8> %i.lr, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lt = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.lq, <16 x i8> splat (i8 -127))
  %i.lu = shufflevector <16 x i8> %i.lt, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.ls, ptr %.6359.i.us, align 16, !tbaa !17
  %i.lv = getelementptr inbounds nuw i8, ptr %.6359.i.us, i64 16
  store <16 x i8> %i.lu, ptr %i.lv, align 16, !tbaa !17
  %i.lw = getelementptr inbounds nuw i8, ptr %.6359.i.us, i64 32 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.5617358.i.us, i64 64 ; 2 uses
  %i.ly = add nuw nsw i32 %.1637357.i.us, 2       ; 3 uses
  %i.lz = or disjoint i32 %i.ly, 1
  %i.ma = icmp slt i32 %i.lz, %5
  br i1 %i.ma, label %.lr.ph360.i.us, label %.preheader324.i.us, !llvm.loop !304

.preheader324.i.us:                               ; preds = %.lr.ph360.i.us, %.preheader326.i.us
  %.1637.lcssa.i.us = phi i32 [ %.0636.lcssa.i.us, %.preheader326.i.us ], [ %i.ly, %.lr.ph360.i.us ] ; 5 uses
  %.5617.lcssa.i.us = phi ptr [ %.4616.lcssa.i.us, %.preheader326.i.us ], [ %i.lx, %.lr.ph360.i.us ] ; 4 uses
  %.6.lcssa.i.us = phi ptr [ %.5.lcssa.i.us, %.preheader326.i.us ], [ %i.lw, %.lr.ph360.i.us ] ; 4 uses
  %i.mb = icmp slt i32 %.1637.lcssa.i.us, %5
  br i1 %i.mb, label %.lr.ph367.i.us.preheader, label %.loopexit317.i.us

.lr.ph367.i.us.preheader:                         ; preds = %.preheader324.i.us
  %i.mc = sub i32 %5, %.1637.lcssa.i.us
  %.neg458 = add i32 %.1637.lcssa.i.us, 1
  %xtraiter442 = and i32 %i.mc, 1
  %lcmp.mod443.not = icmp eq i32 %xtraiter442, 0
  br i1 %lcmp.mod443.not, label %.lr.ph367.i.us.prol.loopexit, label %.lr.ph367.i.us.prol

.lr.ph367.i.us.prol:                              ; preds = %.lr.ph367.i.us.preheader
  %i.md = load <8 x float>, ptr %.5617.lcssa.i.us, align 1, !tbaa !17
  %i.me = getelementptr inbounds nuw i8, ptr %.5617.lcssa.i.us, i64 %.idx713.i
  %i.mf = load <8 x float>, ptr %i.me, align 1, !tbaa !17
  %i.mg = shufflevector <8 x float> %i.md, <8 x float> %i.mf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mh = fmul fast <16 x float> %i.mg, %i.p      ; 2 uses
  %i.mi = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.mh)
  %i.mj = fadd fast <16 x float> %i.mi, %i.mh
  %i.mk = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.mj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ml = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.mk, <16 x i8> zeroinitializer, i16 -1)
  %i.mm = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ml, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.mm, ptr %.6.lcssa.i.us, align 16, !tbaa !17
  %i.mn = getelementptr inbounds nuw i8, ptr %.6.lcssa.i.us, i64 16 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.5617.lcssa.i.us, i64 32
  %i.mp = add nuw nsw i32 %.1637.lcssa.i.us, 1
  br label %.lr.ph367.i.us.prol.loopexit

.lr.ph367.i.us.prol.loopexit:                     ; preds = %.lr.ph367.i.us.prol, %.lr.ph367.i.us.preheader
  %.lcssa435.unr = phi ptr [ poison, %.lr.ph367.i.us.preheader ], [ %i.mn, %.lr.ph367.i.us.prol ]
  %.7366.i.us.unr = phi ptr [ %.6.lcssa.i.us, %.lr.ph367.i.us.preheader ], [ %i.mn, %.lr.ph367.i.us.prol ]
  %.6618365.i.us.unr = phi ptr [ %.5617.lcssa.i.us, %.lr.ph367.i.us.preheader ], [ %i.mo, %.lr.ph367.i.us.prol ]
  %.2638364.i.us.unr = phi i32 [ %.1637.lcssa.i.us, %.lr.ph367.i.us.preheader ], [ %i.mp, %.lr.ph367.i.us.prol ]
  %i.mq = icmp eq i32 %5, %.neg458
  br i1 %i.mq, label %.loopexit317.i.us, label %.lr.ph367.i.us

.lr.ph367.i.us:                                   ; preds = %.lr.ph367.i.us.prol.loopexit, %.lr.ph367.i.us
  %.7366.i.us = phi ptr [ %i.nn, %.lr.ph367.i.us ], [ %.7366.i.us.unr, %.lr.ph367.i.us.prol.loopexit ] ; 3 uses
  %.6618365.i.us = phi ptr [ %i.no, %.lr.ph367.i.us ], [ %.6618365.i.us.unr, %.lr.ph367.i.us.prol.loopexit ] ; 4 uses
  %.2638364.i.us = phi i32 [ %i.np, %.lr.ph367.i.us ], [ %.2638364.i.us.unr, %.lr.ph367.i.us.prol.loopexit ]
  %i.mr = load <8 x float>, ptr %.6618365.i.us, align 1, !tbaa !17
  %i.ms = getelementptr inbounds nuw i8, ptr %.6618365.i.us, i64 %.idx713.i
  %i.mt = load <8 x float>, ptr %i.ms, align 1, !tbaa !17
  %i.mu = shufflevector <8 x float> %i.mr, <8 x float> %i.mt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mv = fmul fast <16 x float> %i.mu, %i.p      ; 2 uses
  %i.mw = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.mv)
  %i.mx = fadd fast <16 x float> %i.mw, %i.mv
  %i.my = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.mx, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.mz = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.my, <16 x i8> zeroinitializer, i16 -1)
  %i.na = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.mz, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.na, ptr %.7366.i.us, align 16, !tbaa !17
  %i.nb = getelementptr inbounds nuw i8, ptr %.7366.i.us, i64 16
  %i.nc = getelementptr inbounds nuw i8, ptr %.6618365.i.us, i64 32 ; 2 uses
  %i.nd = load <8 x float>, ptr %i.nc, align 1, !tbaa !17
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 %.idx713.i
  %i.nf = load <8 x float>, ptr %i.ne, align 1, !tbaa !17
  %i.ng = shufflevector <8 x float> %i.nd, <8 x float> %i.nf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nh = fmul fast <16 x float> %i.ng, %i.p      ; 2 uses
  %i.ni = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.nh)
  %i.nj = fadd fast <16 x float> %i.ni, %i.nh
  %i.nk = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.nj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.nl = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.nk, <16 x i8> zeroinitializer, i16 -1)
  %i.nm = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.nl, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.nm, ptr %i.nb, align 16, !tbaa !17
  %i.nn = getelementptr inbounds nuw i8, ptr %.7366.i.us, i64 32 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.6618365.i.us, i64 64
  %i.np = add nuw nsw i32 %.2638364.i.us, 2       ; 2 uses
  %exitcond647.not.i.us.1 = icmp eq i32 %i.np, %5
  br i1 %exitcond647.not.i.us.1, label %.loopexit317.i.us, label %.lr.ph367.i.us, !llvm.loop !305

.preheader331.i.us:                               ; preds = %.split.i.us
  br i1 %i.q, label %.lr.ph.i.us, label %.preheader330.i.us

.lr.ph.i.us:                                      ; preds = %.preheader331.i.us, %.lr.ph.i.us
  %.1606334.i.us = phi ptr [ %i.pp, %.lr.ph.i.us ], [ %.0605410.i.us, %.preheader331.i.us ] ; 2 uses
  %.0612333.i.us = phi ptr [ %i.pq, %.lr.ph.i.us ], [ %i.ag, %.preheader331.i.us ] ; 5 uses
  %.0633332.i.us = phi i32 [ %i.pr, %.lr.ph.i.us ], [ 0, %.preheader331.i.us ]
  %i.nq = load <16 x float>, ptr %.0612333.i.us, align 64, !tbaa !17
  %i.nr = getelementptr inbounds nuw i8, ptr %.0612333.i.us, i64 64
  %i.ns = load <16 x float>, ptr %i.nr, align 64, !tbaa !17
  %i.nt = getelementptr inbounds nuw i8, ptr %.0612333.i.us, i64 128
  %i.nu = load <16 x float>, ptr %i.nt, align 64, !tbaa !17
  %i.nv = getelementptr inbounds nuw i8, ptr %.0612333.i.us, i64 192
  %i.nw = load <16 x float>, ptr %i.nv, align 64, !tbaa !17
  %i.nx = fmul fast <16 x float> %i.nq, %i.p      ; 2 uses
  %i.ny = fmul fast <16 x float> %i.ns, %i.p      ; 2 uses
  %i.nz = fmul fast <16 x float> %i.nu, %i.p      ; 2 uses
  %i.oa = fmul fast <16 x float> %i.nw, %i.p      ; 2 uses
  %i.ob = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.nx)
  %i.oc = fadd fast <16 x float> %i.ob, %i.nx
  %i.od = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.oc, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.oe = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.od, <16 x i8> zeroinitializer, i16 -1)
  %i.of = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.oe, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.og = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ny)
  %i.oh = fadd fast <16 x float> %i.og, %i.ny
  %i.oi = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.oh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.oj = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.oi, <16 x i8> zeroinitializer, i16 -1)
  %i.ok = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.oj, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.ol = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.nz)
  %i.om = fadd fast <16 x float> %i.ol, %i.nz
  %i.on = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.om, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.oo = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.on, <16 x i8> zeroinitializer, i16 -1)
  %i.op = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.oo, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.oq = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.oa)
  %i.or = fadd fast <16 x float> %i.oq, %i.oa
  %i.os = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.or, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ot = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.os, <16 x i8> zeroinitializer, i16 -1)
  %i.ou = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ot, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.ov = shufflevector <16 x i8> %i.of, <16 x i8> %i.ok, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ow = shufflevector <16 x i8> %i.of, <16 x i8> %i.ok, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ox = shufflevector <16 x i8> %i.op, <16 x i8> %i.ou, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.oy = shufflevector <16 x i8> %i.op, <16 x i8> %i.ou, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.oz = bitcast <16 x i8> %i.ov to <8 x i16>    ; 2 uses
  %i.pa = bitcast <16 x i8> %i.ox to <8 x i16>    ; 2 uses
  %i.pb = shufflevector <8 x i16> %i.oz, <8 x i16> %i.pa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pc = bitcast <8 x i16> %i.pb to <2 x i64>
  %i.pd = shufflevector <8 x i16> %i.oz, <8 x i16> %i.pa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.pe = bitcast <8 x i16> %i.pd to <2 x i64>
  %i.pf = bitcast <16 x i8> %i.ow to <8 x i16>
  %i.pg = bitcast <16 x i8> %i.oy to <8 x i16>
  %i.ph = shufflevector <8 x i16> %i.pf, <8 x i16> %i.pg, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.pi = shufflevector <2 x i64> %i.pc, <2 x i64> %i.pe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pj = bitcast <8 x i64> %i.pi to <16 x i32>
  %i.pk = bitcast <16 x i16> %i.ph to <8 x i32>
  %i.pl = shufflevector <8 x i32> %i.pk, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pm = shufflevector <16 x i32> %i.pj, <16 x i32> %i.pl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.pn = bitcast <16 x i32> %i.pm to <64 x i8>
  %i.po = add <64 x i8> %i.pn, splat (i8 127)
  store <64 x i8> %i.po, ptr %.1606334.i.us, align 1, !tbaa !17
  %i.pp = getelementptr inbounds nuw i8, ptr %.1606334.i.us, i64 64 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.0612333.i.us, i64 256 ; 2 uses
  %i.pr = add nuw nsw i32 %.0633332.i.us, 4       ; 2 uses
  %i.ps = or disjoint i32 %i.pr, 3
  %i.pt = icmp slt i32 %i.ps, %5
  br i1 %i.pt, label %.lr.ph.i.us, label %.preheader330.i.us, !llvm.loop !306

.preheader330.i.us:                               ; preds = %.lr.ph.i.us, %.preheader331.i.us
  %.0633.lcssa.i.us = phi i32 [ 0, %.preheader331.i.us ], [ %i.v, %.lr.ph.i.us ] ; 3 uses
  %.0612.lcssa.i.us = phi ptr [ %i.ag, %.preheader331.i.us ], [ %i.pq, %.lr.ph.i.us ] ; 2 uses
  %.1606.lcssa.i.us = phi ptr [ %.0605410.i.us, %.preheader331.i.us ], [ %i.pp, %.lr.ph.i.us ] ; 2 uses
  %i.pu = or disjoint i32 %.0633.lcssa.i.us, 1
  %i.pv = icmp slt i32 %i.pu, %5
end_hunk_1
begin_hunk_2_@_ZN4ncnn45transpose_pack_B_tile_fp32_to_int8_avx512vnniERKNS_3MatERS0_iiiif:bb.a
  br i1 %lcmp.mod.not, label %.lr.ph459.i.us.us.us.us.prol.loopexit, label %.lr.ph459.i.us.us.us.us.prol

.lr.ph459.i.us.us.us.us.prol:                     ; preds = %.lr.ph459.i.us.us.us.us.preheader
  %i.dn = load <16 x float>, ptr %.7720.lcssa.i.us.us.us.us, align 1, !tbaa !17
  %i.do = fmul fast <16 x float> %i.dn, %i.p      ; 2 uses
  %i.dp = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.do)
  %i.dq = fadd fast <16 x float> %i.dp, %i.do
  %i.dr = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.dq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ds = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.dr, <16 x i8> zeroinitializer, i16 -1)
  %i.dt = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ds, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.dt, ptr %.8.lcssa.i.us.us.us.us, align 16, !tbaa !17
  %i.du = getelementptr inbounds nuw i8, ptr %.8.lcssa.i.us.us.us.us, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.7720.lcssa.i.us.us.us.us, i64 %i.k
  %i.dw = add nuw nsw i32 %.1735.lcssa.i.us.us.us.us, 1
  br label %.lr.ph459.i.us.us.us.us.prol.loopexit

.lr.ph459.i.us.us.us.us.prol.loopexit:            ; preds = %.lr.ph459.i.us.us.us.us.prol, %.lr.ph459.i.us.us.us.us.preheader
  %.lcssa303.unr = phi ptr [ poison, %.lr.ph459.i.us.us.us.us.preheader ], [ %i.du, %.lr.ph459.i.us.us.us.us.prol ]
  %.9458.i.us.us.us.us.unr = phi ptr [ %.8.lcssa.i.us.us.us.us, %.lr.ph459.i.us.us.us.us.preheader ], [ %i.du, %.lr.ph459.i.us.us.us.us.prol ]
  %.8721457.i.us.us.us.us.unr = phi ptr [ %.7720.lcssa.i.us.us.us.us, %.lr.ph459.i.us.us.us.us.preheader ], [ %i.dv, %.lr.ph459.i.us.us.us.us.prol ]
  %.2736456.i.us.us.us.us.unr = phi i32 [ %.1735.lcssa.i.us.us.us.us, %.lr.ph459.i.us.us.us.us.preheader ], [ %i.dw, %.lr.ph459.i.us.us.us.us.prol ]
  %i.dx = icmp eq i32 %5, %.neg
  br i1 %i.dx, label %.loopexit417.i.us.us.us.us, label %.lr.ph459.i.us.us.us.us

.lr.ph459.i.us.us.us.us:                          ; preds = %.lr.ph459.i.us.us.us.us.prol.loopexit, %.lr.ph459.i.us.us.us.us
  %.9458.i.us.us.us.us = phi ptr [ %i.eo, %.lr.ph459.i.us.us.us.us ], [ %.9458.i.us.us.us.us.unr, %.lr.ph459.i.us.us.us.us.prol.loopexit ] ; 3 uses
  %.8721457.i.us.us.us.us = phi ptr [ %i.ep, %.lr.ph459.i.us.us.us.us ], [ %.8721457.i.us.us.us.us.unr, %.lr.ph459.i.us.us.us.us.prol.loopexit ] ; 2 uses
  %.2736456.i.us.us.us.us = phi i32 [ %i.eq, %.lr.ph459.i.us.us.us.us ], [ %.2736456.i.us.us.us.us.unr, %.lr.ph459.i.us.us.us.us.prol.loopexit ]
  %i.dy = load <16 x float>, ptr %.8721457.i.us.us.us.us, align 1, !tbaa !17
  %i.dz = fmul fast <16 x float> %i.dy, %i.p      ; 2 uses
  %i.ea = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.dz)
  %i.eb = fadd fast <16 x float> %i.ea, %i.dz
  %i.ec = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.eb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ed = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ec, <16 x i8> zeroinitializer, i16 -1)
  %i.ee = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ed, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.ee, ptr %.9458.i.us.us.us.us, align 16, !tbaa !17
  %i.ef = getelementptr inbounds nuw i8, ptr %.9458.i.us.us.us.us, i64 16
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.8721457.i.us.us.us.us, i64 %i.k ; 2 uses
  %i.eh = load <16 x float>, ptr %i.eg, align 1, !tbaa !17
  %i.ei = fmul fast <16 x float> %i.eh, %i.p      ; 2 uses
  %i.ej = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ei)
  %i.ek = fadd fast <16 x float> %i.ej, %i.ei
  %i.el = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ek, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.em = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.el, <16 x i8> zeroinitializer, i16 -1)
  %i.en = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.em, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.en, ptr %i.ef, align 16, !tbaa !17
  %i.eo = getelementptr inbounds nuw i8, ptr %.9458.i.us.us.us.us, i64 32 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.k
  %i.eq = add nuw nsw i32 %.2736456.i.us.us.us.us, 2 ; 2 uses
  %exitcond.not.i.us.us.us.us.1 = icmp eq i32 %i.eq, %5
  br i1 %exitcond.not.i.us.us.us.us.1, label %.loopexit417.i.us.us.us.us, label %.lr.ph459.i.us.us.us.us, !llvm.loop !353

.loopexit417.i.us.us.us.us:                       ; preds = %.lr.ph459.i.us.us.us.us.prol.loopexit, %.lr.ph459.i.us.us.us.us, %.preheader416.i.us.us.us.us
  %.10.i.us.us.us.us = phi ptr [ %.8.lcssa.i.us.us.us.us, %.preheader416.i.us.us.us.us ], [ %.lcssa303.unr, %.lr.ph459.i.us.us.us.us.prol.loopexit ], [ %i.eo, %.lr.ph459.i.us.us.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us.us, 16 ; 3 uses
  %i.er = or disjoint i64 %indvars.iv.next.i.us.us.us.us, 15
  %i.es = icmp samesign ult i64 %i.er, %i.x
  br i1 %i.es, label %.loopexit425.i.us.us.us.us, label %.preheader415.loopexit.i, !llvm.loop !354

.loopexit425.i.us.us:                             ; preds = %.lr.ph463.i.split.us.split.us, %.loopexit417.i.loopexit18.us.us
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us, %.loopexit417.i.loopexit18.us.us ], [ 0, %.lr.ph463.i.split.us.split.us ] ; 2 uses
  %.0704462.i.us.us = phi ptr [ %i.gm, %.loopexit417.i.loopexit18.us.us ], [ %.val, %.lr.ph463.i.split.us.split.us ]
  %i.et = load ptr, ptr %0, align 8, !tbaa !14
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.n
  %i.ev = add nsw i64 %indvars.iv.i.us.us, %i.y
  %i.ew = mul nsw i64 %i.ev, %i.z
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.ew
  br label %.lr.ph439.i.us.us

.lr.ph439.i.us.us:                                ; preds = %.lr.ph439.i.us.us, %.loopexit425.i.us.us
  %.5438.i.us.us = phi ptr [ %i.gm, %.lr.ph439.i.us.us ], [ %.0704462.i.us.us, %.loopexit425.i.us.us ] ; 2 uses
  %.4717437.i.us.us = phi ptr [ %i.gn, %.lr.ph439.i.us.us ], [ %i.ex, %.loopexit425.i.us.us ] ; 5 uses
  %.0733436.i.us.us = phi i32 [ %i.go, %.lr.ph439.i.us.us ], [ 0, %.loopexit425.i.us.us ]
  %i.ey = load <16 x float>, ptr %.4717437.i.us.us, align 1, !tbaa !17
  %i.ez = getelementptr inbounds nuw i8, ptr %.4717437.i.us.us, i64 64
  %i.fa = load <16 x float>, ptr %i.ez, align 1, !tbaa !17
  %i.fb = getelementptr inbounds nuw i8, ptr %.4717437.i.us.us, i64 128
  %i.fc = load <16 x float>, ptr %i.fb, align 1, !tbaa !17
  %i.fd = getelementptr inbounds nuw i8, ptr %.4717437.i.us.us, i64 192
  %i.fe = load <16 x float>, ptr %i.fd, align 1, !tbaa !17
  %i.ff = fmul fast <16 x float> %i.ey, %i.p      ; 2 uses
  %i.fg = fmul fast <16 x float> %i.fa, %i.p      ; 2 uses
  %i.fh = fmul fast <16 x float> %i.fc, %i.p      ; 2 uses
  %i.fi = fmul fast <16 x float> %i.fe, %i.p      ; 2 uses
  %i.fj = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ff)
  %i.fk = fadd fast <16 x float> %i.fj, %i.ff
  %i.fl = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fk, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fm = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.fl, <16 x i8> zeroinitializer, i16 -1)
  %i.fn = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.fm, <16 x i8> splat (i8 -127))
  %i.fo = bitcast <16 x i8> %i.fn to <2 x i64>
  %i.fp = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fg)
  %i.fq = fadd fast <16 x float> %i.fp, %i.fg
  %i.fr = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fs = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.fr, <16 x i8> zeroinitializer, i16 -1)
  %i.ft = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.fs, <16 x i8> splat (i8 -127))
  %i.fu = bitcast <16 x i8> %i.ft to <2 x i64>
  %i.fv = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fh)
  %i.fw = fadd fast <16 x float> %i.fv, %i.fh
  %i.fx = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fw, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fy = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.fx, <16 x i8> zeroinitializer, i16 -1)
  %i.fz = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fi)
  %i.ga = fadd fast <16 x float> %i.fz, %i.fi
  %i.gb = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ga, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gc = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gb, <16 x i8> zeroinitializer, i16 -1)
  %i.gd = shufflevector <16 x i8> %i.fy, <16 x i8> %i.gc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ge = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.gd, <32 x i8> splat (i8 -127))
  %i.gf = shufflevector <2 x i64> %i.fo, <2 x i64> %i.fu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gg = bitcast <8 x i64> %i.gf to <16 x i32>
  %i.gh = bitcast <32 x i8> %i.ge to <8 x i32>
  %i.gi = shufflevector <8 x i32> %i.gh, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gj = shufflevector <16 x i32> %i.gg, <16 x i32> %i.gi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.gk = bitcast <16 x i32> %i.gj to <64 x i8>
  %i.gl = add <64 x i8> %i.gk, splat (i8 127)
  store <64 x i8> %i.gl, ptr %.5438.i.us.us, align 64, !tbaa !17
  %i.gm = getelementptr inbounds nuw i8, ptr %.5438.i.us.us, i64 64 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.4717437.i.us.us, i64 %.idx810.i
  %i.go = add nuw nsw i32 %.0733436.i.us.us, 4    ; 2 uses
  %i.gp = or disjoint i32 %i.go, 3
  %i.gq = icmp slt i32 %i.gp, %5
  br i1 %i.gq, label %.lr.ph439.i.us.us, label %.loopexit417.i.loopexit18.us.us, !llvm.loop !355

.loopexit417.i.loopexit18.us.us:                  ; preds = %.lr.ph439.i.us.us
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 16 ; 3 uses
  %i.gr = or disjoint i64 %indvars.iv.next.i.us.us, 15
  %i.gs = icmp samesign ult i64 %i.gr, %i.x
  br i1 %i.gs, label %.loopexit425.i.us.us, label %.preheader415.loopexit.i, !llvm.loop !354

.loopexit425.i.us:                                ; preds = %.lr.ph463.i.split.us, %.loopexit417.i.loopexit19.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit417.i.loopexit19.us ], [ 0, %.lr.ph463.i.split.us ] ; 2 uses
  %.0704462.i.us = phi ptr [ %i.kd, %.loopexit417.i.loopexit19.us ], [ %.val, %.lr.ph463.i.split.us ]
  %i.gt = load ptr, ptr %0, align 8, !tbaa !14
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.n
  %i.gv = add nsw i64 %indvars.iv.i.us, %i.y
  %i.gw = mul nsw i64 %i.gv, %i.z
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.gw
  br label %.lr.ph433.i.us

.lr.ph433.i.us:                                   ; preds = %.loopexit425.i.us, %.lr.ph433.i.us
  %.3432.i.us = phi ptr [ %i.kd, %.lr.ph433.i.us ], [ %.0704462.i.us, %.loopexit425.i.us ] ; 3 uses
  %.2715431.i.us = phi ptr [ %i.ke, %.lr.ph433.i.us ], [ %i.gx, %.loopexit425.i.us ] ; 9 uses
  %.0732430.i.us = phi i32 [ %i.kf, %.lr.ph433.i.us ], [ 0, %.loopexit425.i.us ]
  %i.gy = load <16 x float>, ptr %.2715431.i.us, align 1, !tbaa !17
  %i.gz = getelementptr inbounds nuw i8, ptr %.2715431.i.us, i64 64
  %i.ha = load <16 x float>, ptr %i.gz, align 1, !tbaa !17
  %i.hb = getelementptr inbounds nuw i8, ptr %.2715431.i.us, i64 128
  %i.hc = load <16 x float>, ptr %i.hb, align 1, !tbaa !17
  %i.hd = getelementptr inbounds nuw i8, ptr %.2715431.i.us, i64 192
  %i.he = load <16 x float>, ptr %i.hd, align 1, !tbaa !17
  %i.hf = getelementptr inbounds nuw i8, ptr %.2715431.i.us, i64 256
  %i.hg = load <16 x float>, ptr %i.hf, align 1, !tbaa !17
  %i.hh = getelementptr inbounds nuw i8, ptr %.2715431.i.us, i64 320
  %i.hi = load <16 x float>, ptr %i.hh, align 1, !tbaa !17
  %i.hj = getelementptr inbounds nuw i8, ptr %.2715431.i.us, i64 384
  %i.hk = load <16 x float>, ptr %i.hj, align 1, !tbaa !17
  %i.hl = getelementptr inbounds nuw i8, ptr %.2715431.i.us, i64 448
  %i.hm = load <16 x float>, ptr %i.hl, align 1, !tbaa !17
  %i.hn = fmul fast <16 x float> %i.gy, %i.p      ; 2 uses
  %i.ho = fmul fast <16 x float> %i.ha, %i.p      ; 2 uses
  %i.hp = fmul fast <16 x float> %i.hc, %i.p      ; 2 uses
  %i.hq = fmul fast <16 x float> %i.he, %i.p      ; 2 uses
  %i.hr = fmul fast <16 x float> %i.hg, %i.p      ; 2 uses
  %i.hs = fmul fast <16 x float> %i.hi, %i.p      ; 2 uses
  %i.ht = fmul fast <16 x float> %i.hk, %i.p      ; 2 uses
  %i.hu = fmul fast <16 x float> %i.hm, %i.p      ; 2 uses
  %i.hv = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hn)
  %i.hw = fadd fast <16 x float> %i.hv, %i.hn
  %i.hx = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.hw, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.hy = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.hx, <16 x i8> zeroinitializer, i16 -1)
  %i.hz = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.hy, <16 x i8> splat (i8 -127))
  %i.ia = bitcast <16 x i8> %i.hz to <2 x i64>
  %i.ib = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ho)
  %i.ic = fadd fast <16 x float> %i.ib, %i.ho
  %i.id = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ic, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ie = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.id, <16 x i8> zeroinitializer, i16 -1)
  %i.if = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ie, <16 x i8> splat (i8 -127))
  %i.ig = bitcast <16 x i8> %i.if to <2 x i64>
  %i.ih = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hp)
  %i.ii = fadd fast <16 x float> %i.ih, %i.hp
  %i.ij = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ii, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ik = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ij, <16 x i8> zeroinitializer, i16 -1)
  %i.il = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ik, <16 x i8> splat (i8 -127))
  %i.im = bitcast <16 x i8> %i.il to <2 x i64>
  %i.in = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hq)
  %i.io = fadd fast <16 x float> %i.in, %i.hq
  %i.ip = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.io, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.iq = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ip, <16 x i8> zeroinitializer, i16 -1)
  %i.ir = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.iq, <16 x i8> splat (i8 -127))
  %i.is = bitcast <16 x i8> %i.ir to <2 x i64>
  %i.it = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hr)
  %i.iu = fadd fast <16 x float> %i.it, %i.hr
  %i.iv = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.iu, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.iw = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.iv, <16 x i8> zeroinitializer, i16 -1)
  %i.ix = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hs)
  %i.iy = fadd fast <16 x float> %i.ix, %i.hs
  %i.iz = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.iy, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ja = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.iz, <16 x i8> zeroinitializer, i16 -1)
  %i.jb = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ht)
  %i.jc = fadd fast <16 x float> %i.jb, %i.ht
  %i.jd = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.jc, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.je = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.jd, <16 x i8> zeroinitializer, i16 -1)
  %i.jf = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hu)
  %i.jg = fadd fast <16 x float> %i.jf, %i.hu
  %i.jh = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.jg, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ji = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.jh, <16 x i8> zeroinitializer, i16 -1)
  %i.jj = shufflevector <16 x i8> %i.iw, <16 x i8> %i.je, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jk = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.jj, <32 x i8> splat (i8 -127))
  %i.jl = shufflevector <2 x i64> %i.ia, <2 x i64> %i.im, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jm = bitcast <8 x i64> %i.jl to <16 x i32>
  %i.jn = bitcast <32 x i8> %i.jk to <8 x i32>
  %i.jo = shufflevector <8 x i32> %i.jn, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jp = shufflevector <16 x i32> %i.jm, <16 x i32> %i.jo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %7 = shufflevector <16 x i8> %i.ja, <16 x i8> %i.ji, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jq = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %7, <32 x i8> splat (i8 -127))
  %i.jr = shufflevector <2 x i64> %i.ig, <2 x i64> %i.is, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.js = bitcast <8 x i64> %i.jr to <16 x i32>
  %i.jt = bitcast <32 x i8> %i.jq to <8 x i32>
  %i.ju = shufflevector <8 x i32> %i.jt, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jv = shufflevector <16 x i32> %i.js, <16 x i32> %i.ju, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.jw = shufflevector <16 x i32> %i.jp, <16 x i32> %i.jv, <16 x i32> <i32 0, i32 2, i32 16, i32 18, i32 4, i32 6, i32 20, i32 22, i32 8, i32 10, i32 24, i32 26, i32 12, i32 14, i32 28, i32 30>
  %i.jx = shufflevector <16 x i32> %i.jp, <16 x i32> %i.jv, <16 x i32> <i32 1, i32 3, i32 17, i32 19, i32 5, i32 7, i32 21, i32 23, i32 9, i32 11, i32 25, i32 27, i32 13, i32 15, i32 29, i32 31>
  %i.jy = bitcast <16 x i32> %i.jw to <64 x i8>
  %i.jz = add <64 x i8> %i.jy, splat (i8 127)
  %i.ka = bitcast <16 x i32> %i.jx to <64 x i8>
  %i.kb = add <64 x i8> %i.ka, splat (i8 127)
  store <64 x i8> %i.jz, ptr %.3432.i.us, align 64, !tbaa !17
  %i.kc = getelementptr inbounds nuw i8, ptr %.3432.i.us, i64 64
  store <64 x i8> %i.kb, ptr %i.kc, align 64, !tbaa !17
  %i.kd = getelementptr inbounds nuw i8, ptr %.3432.i.us, i64 128 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.2715431.i.us, i64 %.idx811.i
  %i.kf = add nuw nsw i32 %.0732430.i.us, 8       ; 2 uses
  %i.kg = or disjoint i32 %i.kf, 7
  %i.kh = icmp slt i32 %i.kg, %5
  br i1 %i.kh, label %.lr.ph433.i.us, label %.loopexit417.i.loopexit19.us, !llvm.loop !356

.loopexit417.i.loopexit19.us:                     ; preds = %.lr.ph433.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 16 ; 3 uses
  %i.ki = or disjoint i64 %indvars.iv.next.i.us, 15
  %i.kj = icmp samesign ult i64 %i.ki, %i.x
  br i1 %i.kj, label %.loopexit425.i.us, label %.preheader415.loopexit.i, !llvm.loop !354

.preheader415.loopexit.i:                         ; preds = %.loopexit417.i.loopexit20, %.loopexit417.i.loopexit19.us, %.loopexit417.i.loopexit18.us.us, %.loopexit417.i.us.us.us.us, %.loopexit425.i.us.us.us.preheader
  %.us-phi = phi ptr [ %.10.i.us.us.us.us, %.loopexit417.i.us.us.us.us ], [ %.val, %.loopexit425.i.us.us.us.preheader ], [ %i.kd, %.loopexit417.i.loopexit19.us ], [ %i.gm, %.loopexit417.i.loopexit18.us.us ], [ %i.adc, %.loopexit417.i.loopexit20 ]
  %.us-phi62 = phi i64 [ %indvars.iv.next.i.us.us.us.us, %.loopexit417.i.us.us.us.us ], [ %i.ac, %.loopexit425.i.us.us.us.preheader ], [ %indvars.iv.next.i.us, %.loopexit417.i.loopexit19.us ], [ %indvars.iv.next.i.us.us, %.loopexit417.i.loopexit18.us.us ], [ %indvars.iv.next.i, %.loopexit417.i.loopexit20 ]
  %i.kk = trunc nuw nsw i64 %.us-phi62 to i32
  br label %.preheader415.i

.preheader415.i:                                  ; preds = %.preheader415.loopexit.i, %bb.a
  %.0707.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.kk, %.preheader415.loopexit.i ] ; 3 uses
  %.0704.lcssa.i = phi ptr [ %.val, %bb.a ], [ %.us-phi, %.preheader415.loopexit.i ] ; 6 uses
  %i.kl = or disjoint i32 %.0707.lcssa.i, 7
  %i.km = icmp slt i32 %i.kl, %3
  br i1 %i.km, label %.lr.ph505.i, label %.preheader408.i

.lr.ph505.i:                                      ; preds = %.preheader415.i
  %i.kn = sext i32 %4 to i64
  %i.ko = mul i64 %i.k, %i.kn                     ; 4 uses
  %i.kp = icmp ne i32 %i.b, 16
  %i.kq = insertelement <16 x float> poison, float %6, i64 0
  %i.kr = shufflevector <16 x float> %i.kq, <16 x float> poison, <16 x i32> zeroinitializer ; 8 uses
  %i.ks = icmp slt i32 %5, 16
  %.idx805.i = shl i64 %i.k, 6
  %i.kt = insertelement <8 x float> poison, float %6, i64 0
  %i.ku = shufflevector <8 x float> %i.kt, <8 x float> poison, <8 x i32> zeroinitializer ; 21 uses
  %.idx804.i = shl i64 %i.k, 5
  %i.kv = icmp ne i32 %i.b, 4
  %i.kw = icmp slt i32 %5, 4
  %.idx803.i = shl i64 %i.k, 4                    ; 2 uses
  %i.kx = icmp eq i32 %i.b, 1
  %i.ky = icmp sgt i32 %5, 3
  %.idx800.i = shl i64 %i.k, 3                    ; 2 uses
  %.idx801.i = mul i64 %i.k, 12
  %i.kz = and i32 %5, -4
  %i.la = zext i32 %.0707.lcssa.i to i64          ; 7 uses
  %i.lb = sext i32 %3 to i64
  %i.lc = sext i32 %2 to i64                      ; 4 uses
  %i.ld = sext i32 %i.b to i64                    ; 4 uses
  %brmerge634.i = or i1 %i.ks, %i.kp
  %brmerge640.i = or i1 %i.kw, %i.kv
  %invariant.op.i = add nsw i64 %i.lb, -7         ; 5 uses
  br i1 %brmerge634.i, label %.lr.ph505.i.split.us, label %.lr.ph469.i.preheader

.lr.ph505.i.split.us:                             ; preds = %.lr.ph505.i
  %i.le = icmp slt i32 %5, 8
  %i.lf = icmp ne i32 %i.b, 8
  %brmerge637.i = or i1 %i.le, %i.lf
  br i1 %brmerge637.i, label %.lr.ph505.i.split.us.split.us, label %.loopexit414.i.us

.lr.ph505.i.split.us.split.us:                    ; preds = %.lr.ph505.i.split.us
  br i1 %brmerge640.i, label %.lr.ph505.i.split.us.split.us.split.us, label %.loopexit414.i.us.us

.lr.ph505.i.split.us.split.us.split.us:           ; preds = %.lr.ph505.i.split.us.split.us
  br i1 %i.kx, label %.loopexit414.i.us.us.us.us, label %.loopexit414.i.us.us.us.preheader

.loopexit414.i.us.us.us.preheader:                ; preds = %.lr.ph505.i.split.us.split.us.split.us
  %i.lg = add nuw nsw i64 %i.la, 8
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.lg)
  %i.lh = xor i64 %i.la, -1
  %i.li = add nsw i64 %smax, %i.lh
  %i.lj = and i64 %i.li, -8
  %i.lk = add i64 %i.lj, %i.la
  %i.ll = add i64 %i.lk, 8
  br label %.preheader408.loopexit.i

.loopexit414.i.us.us.us.us:                       ; preds = %.lr.ph505.i.split.us.split.us.split.us, %.loopexit410.i.us.us.us.us
  %indvars.iv735.i.us.us.us.us = phi i64 [ %indvars.iv.next736.i.us.us.us.us, %.loopexit410.i.us.us.us.us ], [ %i.la, %.lr.ph505.i.split.us.split.us.split.us ] ; 2 uses
  %.11504.i.us.us.us.us = phi ptr [ %.21.i.us.us.us.us, %.loopexit410.i.us.us.us.us ], [ %.0704.lcssa.i, %.lr.ph505.i.split.us.split.us.split.us ] ; 2 uses
  %i.lm = load ptr, ptr %0, align 8, !tbaa !14
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.ko
  %i.lo = add nsw i64 %indvars.iv735.i.us.us.us.us, %i.lc
  %i.lp = mul nuw nsw i64 %i.lo, %i.ld
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.ln, i64 %i.lp ; 2 uses
  br i1 %i.ky, label %.lr.ph487.i.us.us.us.us, label %.preheader411.i.us.us.us.us

.lr.ph487.i.us.us.us.us:                          ; preds = %.loopexit414.i.us.us.us.us, %.lr.ph487.i.us.us.us.us
  %.18486.i.us.us.us.us = phi ptr [ %i.np, %.lr.ph487.i.us.us.us.us ], [ %.11504.i.us.us.us.us, %.loopexit414.i.us.us.us.us ] ; 2 uses
  %.6743485.i.us.us.us.us = phi ptr [ %i.nq, %.lr.ph487.i.us.us.us.us ], [ %i.lq, %.loopexit414.i.us.us.us.us ] ; 5 uses
  %.0764484.i.us.us.us.us = phi i32 [ %i.nr, %.lr.ph487.i.us.us.us.us ], [ 0, %.loopexit414.i.us.us.us.us ]
  %i.lr = load <8 x float>, ptr %.6743485.i.us.us.us.us, align 1, !tbaa !17
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.6743485.i.us.us.us.us, i64 %i.k
  %i.lt = load <8 x float>, ptr %i.ls, align 1, !tbaa !17
  %i.lu = getelementptr inbounds nuw i8, ptr %.6743485.i.us.us.us.us, i64 %.idx800.i
  %i.lv = load <8 x float>, ptr %i.lu, align 1, !tbaa !17
  %i.lw = getelementptr inbounds nuw i8, ptr %.6743485.i.us.us.us.us, i64 %.idx801.i
  %i.lx = load <8 x float>, ptr %i.lw, align 1, !tbaa !17
  %i.ly = fmul fast <8 x float> %i.lr, %i.ku      ; 2 uses
  %i.lz = fmul fast <8 x float> %i.lt, %i.ku      ; 2 uses
  %i.ma = fmul fast <8 x float> %i.lv, %i.ku      ; 2 uses
  %i.mb = fmul fast <8 x float> %i.lx, %i.ku      ; 2 uses
  %i.mc = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ly)
  %i.md = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ma)
  %i.me = fadd fast <8 x float> %i.mc, %i.ly
  %i.mf = fadd fast <8 x float> %i.md, %i.ma
  %i.mg = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.me)
  %i.mh = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mf)
  %i.mi = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.mg, <8 x i32> %i.mh)
  %i.mj = bitcast <16 x i16> %i.mi to <4 x i64>
  %i.mk = shufflevector <4 x i64> %i.mj, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ml = bitcast <4 x i64> %i.mk to <16 x i16>
  %i.mm = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ml, <16 x i16> splat (i16 -127))
  %i.mn = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.mm, <16 x i16> splat (i16 127))
  %i.mo = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.mn, <16 x i16> poison)
  %i.mp = bitcast <32 x i8> %i.mo to <8 x i32>
  %i.mq = shufflevector <8 x i32> %i.mp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.mr = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.lz)
  %i.ms = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.mb)
  %i.mt = fadd fast <8 x float> %i.mr, %i.lz
  %i.mu = fadd fast <8 x float> %i.ms, %i.mb
  %i.mv = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mt)
  %i.mw = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mu)
  %i.mx = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.mv, <8 x i32> %i.mw)
  %i.my = bitcast <16 x i16> %i.mx to <4 x i64>
  %i.mz = shufflevector <4 x i64> %i.my, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.na = bitcast <4 x i64> %i.mz to <16 x i16>
  %i.nb = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.na, <16 x i16> splat (i16 -127))
  %i.nc = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.nb, <16 x i16> splat (i16 127))
  %i.nd = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.nc, <16 x i16> poison)
  %i.ne = bitcast <32 x i8> %i.nd to <8 x i32>
  %i.nf = shufflevector <8 x i32> %i.ne, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ng = bitcast <4 x i32> %i.mq to <16 x i8>    ; 2 uses
  %i.nh = bitcast <4 x i32> %i.nf to <16 x i8>    ; 2 uses
  %i.ni = shufflevector <16 x i8> %i.ng, <16 x i8> %i.nh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.nj = shufflevector <16 x i8> %i.ng, <16 x i8> %i.nh, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.nk = bitcast <16 x i8> %i.ni to <8 x i16>
  %i.nl = bitcast <16 x i8> %i.nj to <8 x i16>
  %i.nm = shufflevector <8 x i16> %i.nk, <8 x i16> %i.nl, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nn = bitcast <16 x i16> %i.nm to <32 x i8>
  %i.no = add <32 x i8> %i.nn, splat (i8 127)
  store <32 x i8> %i.no, ptr %.18486.i.us.us.us.us, align 1, !tbaa !17
  %i.np = getelementptr inbounds nuw i8, ptr %.18486.i.us.us.us.us, i64 32 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.6743485.i.us.us.us.us, i64 %.idx803.i ; 2 uses
  %i.nr = add nuw nsw i32 %.0764484.i.us.us.us.us, 4 ; 2 uses
  %i.ns = or disjoint i32 %i.nr, 3
  %i.nt = icmp slt i32 %i.ns, %5
  br i1 %i.nt, label %.lr.ph487.i.us.us.us.us, label %.preheader411.i.us.us.us.us, !llvm.loop !357

.preheader411.i.us.us.us.us:                      ; preds = %.lr.ph487.i.us.us.us.us, %.loopexit414.i.us.us.us.us
  %.0764.lcssa.i.us.us.us.us = phi i32 [ 0, %.loopexit414.i.us.us.us.us ], [ %i.kz, %.lr.ph487.i.us.us.us.us ] ; 3 uses
  %.6743.lcssa.i.us.us.us.us = phi ptr [ %i.lq, %.loopexit414.i.us.us.us.us ], [ %i.nq, %.lr.ph487.i.us.us.us.us ] ; 2 uses
  %.18.lcssa.i.us.us.us.us = phi ptr [ %.11504.i.us.us.us.us, %.loopexit414.i.us.us.us.us ], [ %i.np, %.lr.ph487.i.us.us.us.us ] ; 2 uses
  %i.nu = or disjoint i32 %.0764.lcssa.i.us.us.us.us, 1
  %i.nv = icmp slt i32 %i.nu, %5
  br i1 %i.nv, label %.lr.ph494.i.us.us.us.us, label %.preheader409.i.us.us.us.us

.lr.ph494.i.us.us.us.us:                          ; preds = %.preheader411.i.us.us.us.us, %.lr.ph494.i.us.us.us.us
  %.19493.i.us.us.us.us = phi ptr [ %i.os, %.lr.ph494.i.us.us.us.us ], [ %.18.lcssa.i.us.us.us.us, %.preheader411.i.us.us.us.us ] ; 2 uses
  %.7744492.i.us.us.us.us = phi ptr [ %i.ot, %.lr.ph494.i.us.us.us.us ], [ %.6743.lcssa.i.us.us.us.us, %.preheader411.i.us.us.us.us ] ; 3 uses
  %.1765491.i.us.us.us.us = phi i32 [ %i.ou, %.lr.ph494.i.us.us.us.us ], [ %.0764.lcssa.i.us.us.us.us, %.preheader411.i.us.us.us.us ]
  %i.nw = load <8 x float>, ptr %.7744492.i.us.us.us.us, align 1, !tbaa !17
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %.7744492.i.us.us.us.us, i64 %i.k
  %i.ny = load <8 x float>, ptr %i.nx, align 1, !tbaa !17
  %i.nz = fmul fast <8 x float> %i.nw, %i.ku      ; 2 uses
  %i.oa = fmul fast <8 x float> %i.ny, %i.ku      ; 2 uses
  %i.ob = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.nz)
  %i.oc = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.oa)
  %i.od = fadd fast <8 x float> %i.ob, %i.nz
  %i.oe = fadd fast <8 x float> %i.oc, %i.oa
  %i.of = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.od)
  %i.og = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.oe)
  %i.oh = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.of, <8 x i32> %i.og)
  %i.oi = bitcast <16 x i16> %i.oh to <4 x i64>
  %i.oj = shufflevector <4 x i64> %i.oi, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ok = bitcast <4 x i64> %i.oj to <16 x i16>
  %i.ol = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ok, <16 x i16> splat (i16 -127))
  %i.om = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.ol, <16 x i16> splat (i16 127))
  %i.on = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.om, <16 x i16> poison)
  %i.oo = bitcast <32 x i8> %i.on to <8 x i32>
  %i.op = shufflevector <8 x i32> %i.oo, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.oq = bitcast <4 x i32> %i.op to <16 x i8>
  %i.or = shufflevector <16 x i8> %i.oq, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.or, ptr %.19493.i.us.us.us.us, align 16, !tbaa !17
  %i.os = getelementptr inbounds nuw i8, ptr %.19493.i.us.us.us.us, i64 16 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.7744492.i.us.us.us.us, i64 %.idx800.i ; 2 uses
  %i.ou = add nuw nsw i32 %.1765491.i.us.us.us.us, 2 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnn45transpose_pack_B_tile_fp32_to_int8_avx512vnniERKNS_3MatERS0_iiiif:bb.a
  %i.tx = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.tw, <16 x i16> splat (i16 -127))
  %i.ty = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.tx, <16 x i16> splat (i16 127))
  %i.tz = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.ty, <16 x i16> poison)
  %i.ua = bitcast <32 x i8> %i.tz to <4 x i64>
  %i.ub = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tg)
  %i.uc = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ti)
  %i.ud = fadd fast <8 x float> %i.ub, %i.tg
  %i.ue = fadd fast <8 x float> %i.uc, %i.ti
  %i.uf = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ud)
  %i.ug = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ue)
  %i.uh = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.uf, <8 x i32> %i.ug)
  %i.ui = bitcast <16 x i16> %i.uh to <4 x i64>
  %i.uj = shufflevector <4 x i64> %i.ui, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.uk = bitcast <4 x i64> %i.uj to <16 x i16>
  %i.ul = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.uk, <16 x i16> splat (i16 -127))
  %i.um = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.ul, <16 x i16> splat (i16 127))
  %i.un = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.um, <16 x i16> poison)
  %i.uo = bitcast <32 x i8> %i.un to <4 x i64>
  %i.up = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tj)
  %i.uq = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tl)
  %i.ur = fadd fast <8 x float> %i.up, %i.tj
  %i.us = fadd fast <8 x float> %i.uq, %i.tl
  %i.ut = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ur)
  %i.uu = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.us)
  %i.uv = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ut, <8 x i32> %i.uu)
  %i.uw = bitcast <16 x i16> %i.uv to <4 x i64>
  %i.ux = shufflevector <4 x i64> %i.uw, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.uy = bitcast <4 x i64> %i.ux to <16 x i16>
  %i.uz = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.uy, <16 x i16> splat (i16 -127))
  %i.va = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.uz, <16 x i16> splat (i16 127))
  %i.vb = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.va, <16 x i16> poison)
  %i.vc = bitcast <32 x i8> %i.vb to <4 x i64>
  %i.vd = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tk)
  %i.ve = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tm)
  %i.vf = fadd fast <8 x float> %i.vd, %i.tk
  %i.vg = fadd fast <8 x float> %i.ve, %i.tm
  %i.vh = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vf)
  %i.vi = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vg)
  %i.vj = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.vh, <8 x i32> %i.vi)
  %i.vk = bitcast <16 x i16> %i.vj to <4 x i64>
  %i.vl = shufflevector <4 x i64> %i.vk, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.vm = bitcast <4 x i64> %i.vl to <16 x i16>
  %i.vn = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.vm, <16 x i16> splat (i16 -127))
  %i.vo = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.vn, <16 x i16> splat (i16 127))
  %i.vp = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.vo, <16 x i16> poison)
  %i.vq = bitcast <32 x i8> %i.vp to <4 x i64>
  %i.vr = shufflevector <4 x i64> %i.ua, <4 x i64> %i.vc, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.vs = shufflevector <4 x i64> %i.uo, <4 x i64> %i.vq, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.vt = bitcast <4 x i64> %i.vr to <8 x i32>    ; 2 uses
  %i.vu = bitcast <4 x i64> %i.vs to <8 x i32>    ; 2 uses
  %i.vv = shufflevector <8 x i32> %i.vt, <8 x i32> %i.vu, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.vw = shufflevector <8 x i32> %i.vt, <8 x i32> %i.vu, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.vx = bitcast <8 x i32> %i.vv to <32 x i8>
  %i.vy = add <32 x i8> %i.vx, splat (i8 127)
  %i.vz = bitcast <8 x i32> %i.vw to <32 x i8>
  %i.wa = add <32 x i8> %i.vz, splat (i8 127)
  store <32 x i8> %i.vy, ptr %.14474.i.us, align 32, !tbaa !17
  %i.wb = getelementptr inbounds nuw i8, ptr %.14474.i.us, i64 32
  store <32 x i8> %i.wa, ptr %i.wb, align 32, !tbaa !17
  %i.wc = getelementptr inbounds nuw i8, ptr %.14474.i.us, i64 64 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.2739473.i.us, i64 %.idx804.i
  %i.we = add nuw nsw i32 %.0752472.i.us, 8       ; 2 uses
  %i.wf = or disjoint i32 %i.we, 7
  %i.wg = icmp slt i32 %i.wf, %5
  br i1 %i.wg, label %.lr.ph475.i.us, label %.loopexit410.i.loopexit16.us, !llvm.loop !362

.loopexit410.i.loopexit16.us:                     ; preds = %.lr.ph475.i.us
  %indvars.iv.next736.i.us = add nuw nsw i64 %indvars.iv735.i.us, 8 ; 3 uses
  %i.wh = icmp slt i64 %indvars.iv.next736.i.us, %invariant.op.i
  br i1 %i.wh, label %.loopexit414.i.us, label %.preheader408.loopexit.i, !llvm.loop !360

.lr.ph.i.preheader:                               ; preds = %.lr.ph463.i, %.loopexit417.i.loopexit20
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit417.i.loopexit20 ], [ 0, %.lr.ph463.i ] ; 2 uses
  %.0704462.i = phi ptr [ %i.adc, %.loopexit417.i.loopexit20 ], [ %.val, %.lr.ph463.i ]
  %i.wi = load ptr, ptr %0, align 8, !tbaa !14
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %i.n
  %i.wk = add nsw i64 %indvars.iv.i, %i.y
  %i.wl = mul nsw i64 %i.wk, %i.z
  %i.wm = getelementptr inbounds [4 x i8], ptr %i.wj, i64 %i.wl
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.1705428.i = phi ptr [ %i.adc, %.lr.ph.i ], [ %.0704462.i, %.lr.ph.i.preheader ] ; 5 uses
  %.0713427.i = phi ptr [ %i.add, %.lr.ph.i ], [ %i.wm, %.lr.ph.i.preheader ] ; 17 uses
  %.0731426.i = phi i32 [ %i.ade, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.wn = load <16 x float>, ptr %.0713427.i, align 64, !tbaa !17
  %i.wo = getelementptr inbounds nuw i8, ptr %.0713427.i, i64 64
  %i.wp = load <16 x float>, ptr %i.wo, align 64, !tbaa !17
  %i.wq = getelementptr inbounds nuw i8, ptr %.0713427.i, i64 128
  %i.wr = load <16 x float>, ptr %i.wq, align 64, !tbaa !17
  %i.ws = getelementptr inbounds nuw i8, ptr %.0713427.i, i64 192
  %i.wt = load <16 x float>, ptr %i.ws, align 64, !tbaa !17
  %i.wu = getelementptr inbounds nuw i8, ptr %.0713427.i, i64 256
  %i.wv = load <16 x float>, ptr %i.wu, align 64, !tbaa !17
  %i.ww = getelementptr inbounds nuw i8, ptr %.0713427.i, i64 320
  %i.wx = load <16 x float>, ptr %i.ww, align 64, !tbaa !17
  %i.wy = getelementptr inbounds nuw i8, ptr %.0713427.i, i64 384
  %i.wz = load <16 x float>, ptr %i.wy, align 64, !tbaa !17
  %i.xa = getelementptr inbounds nuw i8, ptr %.0713427.i, i64 448
  %i.xb = load <16 x float>, ptr %i.xa, align 64, !tbaa !17
  %i.xc = getelementptr inbounds nuw i8, ptr %.0713427.i, i64 512
  %i.xd = load <16 x float>, ptr %i.xc, align 64, !tbaa !17
  %i.xe = getelementptr inbounds nuw i8, ptr %.0713427.i, i64 576
  %i.xf = load <16 x float>, ptr %i.xe, align 64, !tbaa !17
  %i.xg = getelementptr inbounds nuw i8, ptr %.0713427.i, i64 640
  %i.xh = load <16 x float>, ptr %i.xg, align 64, !tbaa !17
  %i.xi = getelementptr inbounds nuw i8, ptr %.0713427.i, i64 704
  %i.xj = load <16 x float>, ptr %i.xi, align 64, !tbaa !17
  %i.xk = getelementptr inbounds nuw i8, ptr %.0713427.i, i64 768
  %i.xl = load <16 x float>, ptr %i.xk, align 64, !tbaa !17
  %i.xm = getelementptr inbounds nuw i8, ptr %.0713427.i, i64 832
  %i.xn = load <16 x float>, ptr %i.xm, align 64, !tbaa !17
  %i.xo = getelementptr inbounds nuw i8, ptr %.0713427.i, i64 896
  %i.xp = load <16 x float>, ptr %i.xo, align 64, !tbaa !17
  %i.xq = getelementptr inbounds nuw i8, ptr %.0713427.i, i64 960
  %i.xr = load <16 x float>, ptr %i.xq, align 64, !tbaa !17
  %i.xs = fmul fast <16 x float> %i.wn, %i.p      ; 2 uses
  %i.xt = fmul fast <16 x float> %i.wp, %i.p      ; 2 uses
  %i.xu = fmul fast <16 x float> %i.wr, %i.p      ; 2 uses
  %i.xv = fmul fast <16 x float> %i.wt, %i.p      ; 2 uses
  %i.xw = fmul fast <16 x float> %i.wv, %i.p      ; 2 uses
  %i.xx = fmul fast <16 x float> %i.wx, %i.p      ; 2 uses
  %i.xy = fmul fast <16 x float> %i.wz, %i.p      ; 2 uses
  %i.xz = fmul fast <16 x float> %i.xb, %i.p      ; 2 uses
  %i.ya = fmul fast <16 x float> %i.xd, %i.p      ; 2 uses
  %i.yb = fmul fast <16 x float> %i.xf, %i.p      ; 2 uses
  %i.yc = fmul fast <16 x float> %i.xh, %i.p      ; 2 uses
  %i.yd = fmul fast <16 x float> %i.xj, %i.p      ; 2 uses
  %i.ye = fmul fast <16 x float> %i.xl, %i.p      ; 2 uses
  %i.yf = fmul fast <16 x float> %i.xn, %i.p      ; 2 uses
  %i.yg = fmul fast <16 x float> %i.xp, %i.p      ; 2 uses
  %i.yh = fmul fast <16 x float> %i.xr, %i.p      ; 2 uses
  %i.yi = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.xs)
  %i.yj = fadd fast <16 x float> %i.yi, %i.xs
  %i.yk = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.yj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.yl = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.yk, <16 x i8> zeroinitializer, i16 -1)
  %i.ym = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.yl, <16 x i8> splat (i8 -127))
  %i.yn = bitcast <16 x i8> %i.ym to <2 x i64>
  %i.yo = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.xt)
  %i.yp = fadd fast <16 x float> %i.yo, %i.xt
  %i.yq = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.yp, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.yr = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.yq, <16 x i8> zeroinitializer, i16 -1)
  %i.ys = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.yr, <16 x i8> splat (i8 -127))
  %i.yt = bitcast <16 x i8> %i.ys to <2 x i64>
  %i.yu = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.xu)
  %i.yv = fadd fast <16 x float> %i.yu, %i.xu
  %i.yw = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.yv, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.yx = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.yw, <16 x i8> zeroinitializer, i16 -1)
  %i.yy = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.yx, <16 x i8> splat (i8 -127))
  %i.yz = bitcast <16 x i8> %i.yy to <2 x i64>
  %i.za = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.xv)
  %i.zb = fadd fast <16 x float> %i.za, %i.xv
  %i.zc = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.zb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.zd = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.zc, <16 x i8> zeroinitializer, i16 -1)
  %i.ze = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.zd, <16 x i8> splat (i8 -127))
  %i.zf = bitcast <16 x i8> %i.ze to <2 x i64>
  %i.zg = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.xw)
  %i.zh = fadd fast <16 x float> %i.zg, %i.xw
  %i.zi = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.zh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.zj = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.zi, <16 x i8> zeroinitializer, i16 -1)
  %i.zk = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.zj, <16 x i8> splat (i8 -127))
  %i.zl = bitcast <16 x i8> %i.zk to <2 x i64>
  %i.zm = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.xx)
  %i.zn = fadd fast <16 x float> %i.zm, %i.xx
  %i.zo = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.zn, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.zp = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.zo, <16 x i8> zeroinitializer, i16 -1)
  %i.zq = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.zp, <16 x i8> splat (i8 -127))
  %i.zr = bitcast <16 x i8> %i.zq to <2 x i64>
  %i.zs = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.xy)
  %i.zt = fadd fast <16 x float> %i.zs, %i.xy
  %i.zu = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.zt, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.zv = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.zu, <16 x i8> zeroinitializer, i16 -1)
  %i.zw = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.zv, <16 x i8> splat (i8 -127))
  %i.zx = bitcast <16 x i8> %i.zw to <2 x i64>
  %i.zy = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.xz)
  %i.zz = fadd fast <16 x float> %i.zy, %i.xz
  %i.aaa = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.zz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aab = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aaa, <16 x i8> zeroinitializer, i16 -1)
  %i.aac = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.aab, <16 x i8> splat (i8 -127))
  %i.aad = bitcast <16 x i8> %i.aac to <2 x i64>
  %i.aae = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ya)
  %i.aaf = fadd fast <16 x float> %i.aae, %i.ya
  %i.aag = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aaf, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aah = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aag, <16 x i8> zeroinitializer, i16 -1)
  %i.aai = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.yb)
  %i.aaj = fadd fast <16 x float> %i.aai, %i.yb
  %i.aak = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aaj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aal = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aak, <16 x i8> zeroinitializer, i16 -1)
  %i.aam = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.yc)
  %i.aan = fadd fast <16 x float> %i.aam, %i.yc
  %i.aao = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aan, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aap = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aao, <16 x i8> zeroinitializer, i16 -1)
  %i.aaq = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.yd)
  %i.aar = fadd fast <16 x float> %i.aaq, %i.yd
  %i.aas = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aar, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aat = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aas, <16 x i8> zeroinitializer, i16 -1)
  %i.aau = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ye)
  %i.aav = fadd fast <16 x float> %i.aau, %i.ye
  %i.aaw = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aav, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aax = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aaw, <16 x i8> zeroinitializer, i16 -1)
  %i.aay = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.yf)
  %i.aaz = fadd fast <16 x float> %i.aay, %i.yf
  %i.aba = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aaz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.abb = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aba, <16 x i8> zeroinitializer, i16 -1)
  %i.abc = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.yg)
  %i.abd = fadd fast <16 x float> %i.abc, %i.yg
  %i.abe = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.abd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.abf = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.abe, <16 x i8> zeroinitializer, i16 -1)
  %i.abg = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.yh)
  %i.abh = fadd fast <16 x float> %i.abg, %i.yh
  %i.abi = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.abh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.abj = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.abi, <16 x i8> zeroinitializer, i16 -1)
  %i.abk = shufflevector <16 x i8> %i.aah, <16 x i8> %i.aax, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.abl = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.abk, <32 x i8> splat (i8 -127))
  %i.abm = shufflevector <2 x i64> %i.yn, <2 x i64> %i.zl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abn = bitcast <8 x i64> %i.abm to <16 x i32>
  %i.abo = bitcast <32 x i8> %i.abl to <8 x i32>
  %i.abp = shufflevector <8 x i32> %i.abo, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abq = shufflevector <16 x i32> %i.abn, <16 x i32> %i.abp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %8 = shufflevector <16 x i8> %i.aal, <16 x i8> %i.abb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.abr = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %8, <32 x i8> splat (i8 -127))
  %i.abs = shufflevector <2 x i64> %i.yt, <2 x i64> %i.zr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abt = bitcast <8 x i64> %i.abs to <16 x i32>
  %i.abu = bitcast <32 x i8> %i.abr to <8 x i32>
  %i.abv = shufflevector <8 x i32> %i.abu, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abw = shufflevector <16 x i32> %i.abt, <16 x i32> %i.abv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %9 = shufflevector <16 x i8> %i.aap, <16 x i8> %i.abf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.abx = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %9, <32 x i8> splat (i8 -127))
  %i.aby = shufflevector <2 x i64> %i.yz, <2 x i64> %i.zx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abz = bitcast <8 x i64> %i.aby to <16 x i32>
  %i.aca = bitcast <32 x i8> %i.abx to <8 x i32>
  %i.acb = shufflevector <8 x i32> %i.aca, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.acc = shufflevector <16 x i32> %i.abz, <16 x i32> %i.acb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %10 = shufflevector <16 x i8> %i.aat, <16 x i8> %i.abj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.acd = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %10, <32 x i8> splat (i8 -127))
  %i.ace = shufflevector <2 x i64> %i.zf, <2 x i64> %i.aad, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.acf = bitcast <8 x i64> %i.ace to <16 x i32>
  %i.acg = bitcast <32 x i8> %i.acd to <8 x i32>
  %i.ach = shufflevector <8 x i32> %i.acg, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aci = shufflevector <16 x i32> %i.acf, <16 x i32> %i.ach, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.acj = shufflevector <16 x i32> %i.abq, <16 x i32> %i.abw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ack = shufflevector <16 x i32> %i.abq, <16 x i32> %i.abw, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.acl = shufflevector <16 x i32> %i.acc, <16 x i32> %i.aci, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.acm = shufflevector <16 x i32> %i.acc, <16 x i32> %i.aci, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.acn = shufflevector <16 x i32> %i.acj, <16 x i32> %i.acl, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.aco = shufflevector <16 x i32> %i.acj, <16 x i32> %i.acl, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.acp = shufflevector <16 x i32> %i.ack, <16 x i32> %i.acm, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.acq = shufflevector <16 x i32> %i.ack, <16 x i32> %i.acm, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.acr = bitcast <16 x i32> %i.acn to <64 x i8>
  %i.acs = add <64 x i8> %i.acr, splat (i8 127)
  %i.act = bitcast <16 x i32> %i.aco to <64 x i8>
  %i.acu = add <64 x i8> %i.act, splat (i8 127)
  %i.acv = bitcast <16 x i32> %i.acp to <64 x i8>
  %i.acw = add <64 x i8> %i.acv, splat (i8 127)
  %i.acx = bitcast <16 x i32> %i.acq to <64 x i8>
  %i.acy = add <64 x i8> %i.acx, splat (i8 127)
  store <64 x i8> %i.acs, ptr %.1705428.i, align 64, !tbaa !17
  %i.acz = getelementptr inbounds nuw i8, ptr %.1705428.i, i64 64
  store <64 x i8> %i.acu, ptr %i.acz, align 64, !tbaa !17
  %i.ada = getelementptr inbounds nuw i8, ptr %.1705428.i, i64 128
  store <64 x i8> %i.acw, ptr %i.ada, align 64, !tbaa !17
  %i.adb = getelementptr inbounds nuw i8, ptr %.1705428.i, i64 192
  store <64 x i8> %i.acy, ptr %i.adb, align 64, !tbaa !17
  %i.adc = getelementptr inbounds nuw i8, ptr %.1705428.i, i64 256 ; 3 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.0713427.i, i64 %.idx812.i
  %i.ade = add nuw nsw i32 %.0731426.i, 16        ; 2 uses
  %i.adf = or disjoint i32 %i.ade, 15
  %i.adg = icmp slt i32 %i.adf, %5
  br i1 %i.adg, label %.lr.ph.i, label %.loopexit417.i.loopexit20, !llvm.loop !363

.loopexit417.i.loopexit20:                        ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 16 ; 3 uses
  %i.adh = or disjoint i64 %indvars.iv.next.i, 15
  %i.adi = icmp samesign ult i64 %i.adh, %i.x
  br i1 %i.adi, label %.lr.ph.i.preheader, label %.preheader415.loopexit.i, !llvm.loop !354

.preheader408.loopexit.i:                         ; preds = %.loopexit410.i.loopexit17, %.loopexit410.i.loopexit16.us, %.loopexit410.i.loopexit15.us.us, %.loopexit410.i.us.us.us.us, %.loopexit414.i.us.us.us.preheader
  %.us-phi69 = phi ptr [ %.21.i.us.us.us.us, %.loopexit410.i.us.us.us.us ], [ %.0704.lcssa.i, %.loopexit414.i.us.us.us.preheader ], [ %i.wc, %.loopexit410.i.loopexit16.us ], [ %i.sf, %.loopexit410.i.loopexit15.us.us ], [ %i.aqa, %.loopexit410.i.loopexit17 ]
  %.us-phi70 = phi i64 [ %indvars.iv.next736.i.us.us.us.us, %.loopexit410.i.us.us.us.us ], [ %i.ll, %.loopexit414.i.us.us.us.preheader ], [ %indvars.iv.next736.i.us, %.loopexit410.i.loopexit16.us ], [ %indvars.iv.next736.i.us.us, %.loopexit410.i.loopexit15.us.us ], [ %indvars.iv.next736.i, %.loopexit410.i.loopexit17 ]
  %i.adj = trunc nuw nsw i64 %.us-phi70 to i32
  br label %.preheader408.i

.preheader408.i:                                  ; preds = %.preheader408.loopexit.i, %.preheader415.i
  %.1708.lcssa.i = phi i32 [ %.0707.lcssa.i, %.preheader415.i ], [ %i.adj, %.preheader408.loopexit.i ] ; 3 uses
  %.11.lcssa.i = phi ptr [ %.0704.lcssa.i, %.preheader415.i ], [ %.us-phi69, %.preheader408.loopexit.i ] ; 3 uses
  %i.adk = or disjoint i32 %.1708.lcssa.i, 3
  %i.adl = icmp slt i32 %i.adk, %3
  br i1 %i.adl, label %.lr.ph547.i, label %.preheader401.i

.lr.ph547.i:                                      ; preds = %.preheader408.i
  %i.adm = sext i32 %4 to i64
  %i.adn = mul i64 %i.k, %i.adm                   ; 2 uses
  %i.ado = icmp ne i32 %i.b, 16
  %i.adp = insertelement <16 x float> poison, float %6, i64 0
  %i.adq = shufflevector <16 x float> %i.adp, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.adr = icmp slt i32 %5, 16
  %.idx798.i = shl i64 %i.k, 6
  %i.ads = icmp ne i32 %i.b, 8
  %i.adt = insertelement <8 x float> poison, float %6, i64 0
  %i.adu = shufflevector <8 x float> %i.adt, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.adv = icmp slt i32 %5, 8
  %.idx797.i = shl i64 %i.k, 5
  %i.adw = icmp ne i32 %i.b, 4
  %i.adx = insertelement <4 x float> poison, float %6, i64 0
  %i.ady = shufflevector <4 x float> %i.adx, <4 x float> poison, <4 x i32> zeroinitializer ; 13 uses
  %i.adz = icmp slt i32 %5, 4
  %.idx796.i = shl i64 %i.k, 4                    ; 2 uses
  %i.aea = icmp eq i32 %i.b, 1
  %i.aeb = icmp sgt i32 %5, 3
  %.idx793.i = shl i64 %i.k, 3                    ; 2 uses
  %.idx794.i = mul i64 %i.k, 12
  %i.aec = and i32 %5, -4
  %i.aed = zext nneg i32 %.1708.lcssa.i to i64    ; 2 uses
  %i.aee = sext i32 %3 to i64
  %i.aef = sext i32 %2 to i64                     ; 2 uses
  %i.aeg = sext i32 %i.b to i64                   ; 2 uses
  %brmerge643.i = or i1 %i.adr, %i.ado
  %brmerge646.i = or i1 %i.adv, %i.ads
  %brmerge649.i = or i1 %i.adz, %i.adw
  %invariant.op863.i = add nsw i64 %i.aee, -3     ; 2 uses
  br i1 %brmerge643.i, label %.loopexit407.i.us, label %.lr.ph511.i.preheader

.loopexit407.i.us:                                ; preds = %.lr.ph547.i, %.loopexit403.i.us
  %indvars.iv739.i.us = phi i64 [ %indvars.iv.next740.i.us, %.loopexit403.i.us ], [ %i.aed, %.lr.ph547.i ] ; 2 uses
  %.22546.i.us = phi ptr [ %.32.i.us, %.loopexit403.i.us ], [ %.11.lcssa.i, %.lr.ph547.i ] ; 5 uses
  %i.aeh = load ptr, ptr %0, align 8, !tbaa !14
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.aeh, i64 %i.adn
  %i.aej = add nsw i64 %indvars.iv739.i.us, %i.aef
  %i.aek = mul nsw i64 %i.aej, %i.aeg
  %i.ael = getelementptr inbounds [4 x i8], ptr %i.aei, i64 %i.aek ; 4 uses
  br i1 %brmerge646.i, label %.loopexit406.i.us, label %.lr.ph517.i.us

.lr.ph517.i.us:                                   ; preds = %.loopexit407.i.us, %.lr.ph517.i.us
  %.25516.i.us = phi ptr [ %i.agi, %.lr.ph517.i.us ], [ %.22546.i.us, %.loopexit407.i.us ] ; 3 uses
  %.2769515.i.us = phi ptr [ %i.agj, %.lr.ph517.i.us ], [ %i.ael, %.loopexit407.i.us ] ; 5 uses
  %.0781514.i.us = phi i32 [ %i.agk, %.lr.ph517.i.us ], [ 0, %.loopexit407.i.us ]
  %i.aem = load <8 x float>, ptr %.2769515.i.us, align 32, !tbaa !17
  %i.aen = getelementptr inbounds nuw i8, ptr %.2769515.i.us, i64 32
  %i.aeo = load <8 x float>, ptr %i.aen, align 32, !tbaa !17
  %i.aep = getelementptr inbounds nuw i8, ptr %.2769515.i.us, i64 64
  %i.aeq = load <8 x float>, ptr %i.aep, align 32, !tbaa !17
  %i.aer = getelementptr inbounds nuw i8, ptr %.2769515.i.us, i64 96
  %i.aes = load <8 x float>, ptr %i.aer, align 32, !tbaa !17
  %i.aet = fmul fast <8 x float> %i.aem, %i.adu   ; 2 uses
  %i.aeu = fmul fast <8 x float> %i.aeo, %i.adu   ; 2 uses
  %i.aev = fmul fast <8 x float> %i.aeq, %i.adu   ; 2 uses
  %i.aew = fmul fast <8 x float> %i.aes, %i.adu   ; 2 uses
  %i.aex = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.aet)
  %i.aey = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.aev)
  %i.aez = fadd fast <8 x float> %i.aex, %i.aet
  %i.afa = fadd fast <8 x float> %i.aey, %i.aev
  %i.afb = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aez)
  %i.afc = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.afa)
  %i.afd = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.afb, <8 x i32> %i.afc)
  %i.afe = bitcast <16 x i16> %i.afd to <4 x i64>
  %i.aff = shufflevector <4 x i64> %i.afe, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.afg = bitcast <4 x i64> %i.aff to <16 x i16>
  %i.afh = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.afg, <16 x i16> splat (i16 -127))
  %i.afi = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.afh, <16 x i16> splat (i16 127))
  %i.afj = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.afi, <16 x i16> poison)
  %i.afk = bitcast <32 x i8> %i.afj to <8 x i32>
  %i.afl = shufflevector <8 x i32> %i.afk, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.afm = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.aeu)
  %i.afn = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.aew)
  %i.afo = fadd fast <8 x float> %i.afm, %i.aeu
  %i.afp = fadd fast <8 x float> %i.afn, %i.aew
  %i.afq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.afo)
  %i.afr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.afp)
  %i.afs = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.afq, <8 x i32> %i.afr)
  %i.aft = bitcast <16 x i16> %i.afs to <4 x i64>
  %i.afu = shufflevector <4 x i64> %i.aft, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.afv = bitcast <4 x i64> %i.afu to <16 x i16>
  %i.afw = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.afv, <16 x i16> splat (i16 -127))
  %i.afx = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.afw, <16 x i16> splat (i16 127))
  %i.afy = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.afx, <16 x i16> poison)
  %i.afz = bitcast <32 x i8> %i.afy to <8 x i32>
  %i.aga = shufflevector <8 x i32> %i.afz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.agb = shufflevector <4 x i32> %i.afl, <4 x i32> %i.aga, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.agc = shufflevector <4 x i32> %i.afl, <4 x i32> %i.aga, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.agd = bitcast <4 x i32> %i.agb to <16 x i8>
  %i.age = add <16 x i8> %i.agd, splat (i8 127)
  %i.agf = bitcast <4 x i32> %i.agc to <16 x i8>
  %i.agg = add <16 x i8> %i.agf, splat (i8 127)
  store <16 x i8> %i.age, ptr %.25516.i.us, align 16, !tbaa !17
  %i.agh = getelementptr inbounds nuw i8, ptr %.25516.i.us, i64 16
  store <16 x i8> %i.agg, ptr %i.agh, align 16, !tbaa !17
  %i.agi = getelementptr inbounds nuw i8, ptr %.25516.i.us, i64 32 ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %.2769515.i.us, i64 %.idx797.i
  %i.agk = add nuw nsw i32 %.0781514.i.us, 8      ; 2 uses
  %i.agl = or disjoint i32 %i.agk, 7
  %i.agm = icmp slt i32 %i.agl, %5
  br i1 %i.agm, label %.lr.ph517.i.us, label %.loopexit403.i.us, !llvm.loop !364

.loopexit406.i.us:                                ; preds = %.loopexit407.i.us
  br i1 %brmerge649.i, label %.loopexit405.i.us, label %.lr.ph523.i.us

.lr.ph523.i.us:                                   ; preds = %.loopexit406.i.us, %.lr.ph523.i.us
  %.27522.i.us = phi ptr [ %i.ahs, %.lr.ph523.i.us ], [ %.22546.i.us, %.loopexit406.i.us ] ; 2 uses
  %.4771521.i.us = phi ptr [ %i.aht, %.lr.ph523.i.us ], [ %i.ael, %.loopexit406.i.us ] ; 5 uses
  %.0780520.i.us = phi i32 [ %i.ahu, %.lr.ph523.i.us ], [ 0, %.loopexit406.i.us ]
  %i.agn = load <4 x float>, ptr %.4771521.i.us, align 16, !tbaa !17
  %i.ago = getelementptr inbounds nuw i8, ptr %.4771521.i.us, i64 16
  %i.agp = load <4 x float>, ptr %i.ago, align 16, !tbaa !17
  %i.agq = getelementptr inbounds nuw i8, ptr %.4771521.i.us, i64 32
  %i.agr = load <4 x float>, ptr %i.agq, align 16, !tbaa !17
  %i.ags = getelementptr inbounds nuw i8, ptr %.4771521.i.us, i64 48
  %i.agt = load <4 x float>, ptr %i.ags, align 16, !tbaa !17
  %i.agu = fmul fast <4 x float> %i.agn, %i.ady   ; 2 uses
  %i.agv = fmul fast <4 x float> %i.agp, %i.ady   ; 2 uses
  %i.agw = fmul fast <4 x float> %i.agr, %i.ady   ; 2 uses
  %i.agx = fmul fast <4 x float> %i.agt, %i.ady   ; 2 uses
  %i.agy = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.agu)
  %i.agz = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.agv)
  %i.aha = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.agw)
  %i.ahb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.agx)
  %i.ahc = fadd fast <4 x float> %i.agy, %i.agu
  %i.ahd = fadd fast <4 x float> %i.agz, %i.agv
  %i.ahe = fadd fast <4 x float> %i.aha, %i.agw
  %i.ahf = fadd fast <4 x float> %i.ahb, %i.agx
  %i.ahg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ahc)
  %i.ahh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ahd)
  %i.ahi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ahe)
  %i.ahj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ahf)
  %i.ahk = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ahg, <4 x i32> %i.ahh)
  %i.ahl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ahi, <4 x i32> %i.ahj)
  %i.ahm = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ahk, <8 x i16> splat (i16 -127))
  %i.ahn = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ahm, <8 x i16> splat (i16 127))
  %i.aho = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ahl, <8 x i16> splat (i16 -127))
  %i.ahp = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aho, <8 x i16> splat (i16 127))
  %i.ahq = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ahn, <8 x i16> %i.ahp)
  %i.ahr = add <16 x i8> %i.ahq, splat (i8 127)
  store <16 x i8> %i.ahr, ptr %.27522.i.us, align 16, !tbaa !17
  %i.ahs = getelementptr inbounds nuw i8, ptr %.27522.i.us, i64 16 ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %.4771521.i.us, i64 %.idx796.i
  %i.ahu = add nuw nsw i32 %.0780520.i.us, 4      ; 2 uses
end_hunk_3
