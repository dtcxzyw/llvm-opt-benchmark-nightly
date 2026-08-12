inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN4ncnn45transpose_pack_A_tile_fp32_to_int8_avx512vnniERKNS_3MatERS0_iiiiS2_:bb.a
  %i.pw = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.pv, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.px = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.pw, <16 x i8> zeroinitializer, i16 -1)
  %i.py = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.px, <16 x i8> splat (i8 -127))
  %i.pz = bitcast <16 x i8> %i.py to <2 x i64>
  %i.qa = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.mx)
  %i.qb = fadd fast <16 x float> %i.qa, %i.mx
  %i.qc = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.qb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.qd = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.qc, <16 x i8> zeroinitializer, i16 -1)
  %i.qe = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.qd, <16 x i8> splat (i8 -127))
  %i.qf = bitcast <16 x i8> %i.qe to <2 x i64>
  %i.qg = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.nc)
  %i.qh = fadd fast <16 x float> %i.qg, %i.nc
  %i.qi = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.qh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.qj = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.qi, <16 x i8> zeroinitializer, i16 -1)
  %i.qk = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.qj, <16 x i8> splat (i8 -127))
  %i.ql = bitcast <16 x i8> %i.qk to <2 x i64>
  %i.qm = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.nh)
  %i.qn = fadd fast <16 x float> %i.qm, %i.nh
  %i.qo = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.qn, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.qp = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.qo, <16 x i8> zeroinitializer, i16 -1)
  %i.qq = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.qp, <16 x i8> splat (i8 -127))
  %i.qr = bitcast <16 x i8> %i.qq to <2 x i64>
  %i.qs = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.nm)
  %i.qt = fadd fast <16 x float> %i.qs, %i.nm
  %i.qu = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.qt, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.qv = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.qu, <16 x i8> zeroinitializer, i16 -1)
  %i.qw = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.nr)
  %i.qx = fadd fast <16 x float> %i.qw, %i.nr
  %i.qy = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.qx, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.qz = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.qy, <16 x i8> zeroinitializer, i16 -1)
  %i.ra = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.nw)
  %i.rb = fadd fast <16 x float> %i.ra, %i.nw
  %i.rc = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.rb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.rd = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.rc, <16 x i8> zeroinitializer, i16 -1)
  %i.re = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ob)
  %i.rf = fadd fast <16 x float> %i.re, %i.ob
  %i.rg = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.rf, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.rh = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.rg, <16 x i8> zeroinitializer, i16 -1)
  %i.ri = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.og)
  %i.rj = fadd fast <16 x float> %i.ri, %i.og
  %i.rk = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.rj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.rl = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.rk, <16 x i8> zeroinitializer, i16 -1)
  %i.rm = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ol)
  %i.rn = fadd fast <16 x float> %i.rm, %i.ol
  %i.ro = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.rn, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.rp = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ro, <16 x i8> zeroinitializer, i16 -1)
  %i.rq = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.oq)
  %i.rr = fadd fast <16 x float> %i.rq, %i.oq
  %i.rs = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.rr, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.rt = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.rs, <16 x i8> zeroinitializer, i16 -1)
  %i.ru = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ov)
  %i.rv = fadd fast <16 x float> %i.ru, %i.ov
  %i.rw = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.rv, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.rx = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.rw, <16 x i8> zeroinitializer, i16 -1)
  %i.ry = shufflevector <16 x i8> %i.qv, <16 x i8> %i.rl, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.rz = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.ry, <32 x i8> splat (i8 -127))
  %i.sa = shufflevector <2 x i64> %i.pb, <2 x i64> %i.pz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sb = bitcast <8 x i64> %i.sa to <16 x i32>
  %i.sc = bitcast <32 x i8> %i.rz to <8 x i32>
  %i.sd = shufflevector <8 x i32> %i.sc, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.se = shufflevector <16 x i32> %i.sb, <16 x i32> %i.sd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.sf = shufflevector <16 x i8> %i.qz, <16 x i8> %i.rp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.sg = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.sf, <32 x i8> splat (i8 -127))
  %i.sh = shufflevector <2 x i64> %i.ph, <2 x i64> %i.qf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.si = bitcast <8 x i64> %i.sh to <16 x i32>
  %i.sj = bitcast <32 x i8> %i.sg to <8 x i32>
  %i.sk = shufflevector <8 x i32> %i.sj, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sl = shufflevector <16 x i32> %i.si, <16 x i32> %i.sk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.sm = shufflevector <16 x i8> %i.rd, <16 x i8> %i.rt, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.sn = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.sm, <32 x i8> splat (i8 -127))
  %i.so = shufflevector <2 x i64> %i.pn, <2 x i64> %i.ql, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sp = bitcast <8 x i64> %i.so to <16 x i32>
  %i.sq = bitcast <32 x i8> %i.sn to <8 x i32>
  %i.sr = shufflevector <8 x i32> %i.sq, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ss = shufflevector <16 x i32> %i.sp, <16 x i32> %i.sr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.st = shufflevector <16 x i8> %i.rh, <16 x i8> %i.rx, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.su = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.st, <32 x i8> splat (i8 -127))
  %i.sv = shufflevector <2 x i64> %i.pt, <2 x i64> %i.qr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sw = bitcast <8 x i64> %i.sv to <16 x i32>
  %i.sx = bitcast <32 x i8> %i.su to <8 x i32>
  %i.sy = shufflevector <8 x i32> %i.sx, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sz = shufflevector <16 x i32> %i.sw, <16 x i32> %i.sy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.ta = shufflevector <16 x i32> %i.se, <16 x i32> %i.sl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.tb = shufflevector <16 x i32> %i.se, <16 x i32> %i.sl, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.tc = shufflevector <16 x i32> %i.ss, <16 x i32> %i.sz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.td = shufflevector <16 x i32> %i.ss, <16 x i32> %i.sz, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.te = shufflevector <16 x i32> %i.ta, <16 x i32> %i.tc, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.tf = shufflevector <16 x i32> %i.ta, <16 x i32> %i.tc, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.tg = shufflevector <16 x i32> %i.tb, <16 x i32> %i.td, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.th = shufflevector <16 x i32> %i.tb, <16 x i32> %i.td, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ti = bitcast <16 x i32> %i.te to <64 x i8>
  %i.tj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kn, <64 x i8> splat (i8 127), <64 x i8> %i.ti)
  %i.tk = bitcast <16 x i32> %i.tf to <64 x i8>
  %i.tl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tj, <64 x i8> splat (i8 127), <64 x i8> %i.tk)
  %i.tm = bitcast <16 x i32> %i.tg to <64 x i8>
  %i.tn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tl, <64 x i8> splat (i8 127), <64 x i8> %i.tm)
  %i.to = bitcast <16 x i32> %i.th to <64 x i8>
  %i.tp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tn, <64 x i8> splat (i8 127), <64 x i8> %i.to) ; 2 uses
  store <16 x i32> %i.te, ptr %.1565.i.us, align 64, !tbaa !17
  %i.tq = getelementptr inbounds nuw i8, ptr %.1565.i.us, i64 64
  store <16 x i32> %i.tf, ptr %i.tq, align 64, !tbaa !17
  %i.tr = getelementptr inbounds nuw i8, ptr %.1565.i.us, i64 128
  store <16 x i32> %i.tg, ptr %i.tr, align 64, !tbaa !17
  %i.ts = getelementptr inbounds nuw i8, ptr %.1565.i.us, i64 192
  store <16 x i32> %i.th, ptr %i.ts, align 64, !tbaa !17
  %i.tt = getelementptr inbounds nuw i8, ptr %.1565.i.us, i64 256 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.0912564.i.us, i64 %.idx1049.i
  %i.tv = add nuw nsw i32 %.0932563.i.us, 16      ; 2 uses
  %i.tw = or disjoint i32 %i.tv, 15
  %i.tx = icmp slt i32 %i.tw, %5
  br i1 %i.tx, label %.lr.ph.i.us, label %._crit_edge.thread.i.us, !llvm.loop !268

._crit_edge.thread.i.us:                          ; preds = %.lr.ph.i.us, %._crit_edge.i.us
  %.1.lcssa959.i.us = phi ptr [ %.0609.i.us, %._crit_edge.i.us ], [ %i.tt, %.lr.ph.i.us ] ; 2 uses
  %.lcssa559957.i.us = phi <16 x i32> [ zeroinitializer, %._crit_edge.i.us ], [ %i.tp, %.lr.ph.i.us ]
  store <16 x i32> %.lcssa559957.i.us, ptr %.1.lcssa959.i.us, align 64, !tbaa !17
  %i.ty = getelementptr inbounds nuw i8, ptr %.1.lcssa959.i.us, i64 64
  br label %.loopexit547.i.us

.loopexit547.i.us:                                ; preds = %.lr.ph606.i.us.prol.loopexit, %.lr.ph606.i.us, %._crit_edge.thread.i.us, %._crit_edge.i.us, %._crit_edge573.thread.i.us, %._crit_edge573.i.us, %bb.d, %bb.c, %.preheader546.i.us, %.split.i.us
  %.14.i.us = phi ptr [ %.0609.i.us, %.split.i.us ], [ %.12.lcssa.i.us, %.preheader546.i.us ], [ %i.ty, %._crit_edge.thread.i.us ], [ %.0609.i.us, %bb.c ], [ %i.gr, %bb.d ], [ %i.km, %._crit_edge573.thread.i.us ], [ %.0609.i.us, %._crit_edge573.i.us ], [ %.0609.i.us, %._crit_edge.i.us ], [ %.lcssa329.unr, %.lr.ph606.i.us.prol.loopexit ], [ %i.eq, %.lr.ph606.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 16 ; 3 uses
  %i.tz = or disjoint i64 %indvars.iv.next.i.us, 15
  %i.ua = icmp samesign ult i64 %i.tz, %i.t
  br i1 %i.ua, label %.split.i.us, label %.preheader545.loopexit.i, !llvm.loop !269

.preheader545.loopexit.i:                         ; preds = %.loopexit547.i.us, %.loopexit547.i.preheader
  %.us-phi = phi ptr [ %.val, %.loopexit547.i.preheader ], [ %.14.i.us, %.loopexit547.i.us ]
  %.us-phi69 = phi i64 [ %i.y, %.loopexit547.i.preheader ], [ %indvars.iv.next.i.us, %.loopexit547.i.us ]
  %i.ub = trunc nuw nsw i64 %.us-phi69 to i32
  br label %.preheader545.i

.preheader545.i:                                  ; preds = %.preheader545.loopexit.i, %bb.a
  %.0906.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.ub, %.preheader545.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.val, %bb.a ], [ %.us-phi, %.preheader545.loopexit.i ] ; 2 uses
  %i.uc = or disjoint i32 %.0906.lcssa.i, 7
  %i.ud = icmp slt i32 %i.uc, %3
  br i1 %i.ud, label %.lr.ph663.i, label %.preheader539.i

.lr.ph663.i:                                      ; preds = %.preheader545.i
  %i.ue = sext i32 %4 to i64
  %i.uf = mul i64 %i.k, %i.ue
  %i.ug = sext i32 %2 to i64                      ; 2 uses
  %i.uh = icmp sgt i32 %5, 15
  %.idx1042.i = shl i64 %i.k, 6
  %i.ui = icmp sgt i32 %5, 3                      ; 4 uses
  %i.uj = icmp sgt i32 %5, 7
  %.idx1041.i = shl i64 %i.k, 5
  %.idx1040.i = shl i64 %i.k, 4                   ; 2 uses
  %.idx1037.i = shl i64 %i.k, 3                   ; 2 uses
  %.idx1038.i = mul i64 %i.k, 12
  %i.uk = and i32 %5, -4
  %i.ul = zext nneg i32 %.0906.lcssa.i to i64
  %i.um = sext i32 %3 to i64
  %i.un = sext i32 %i.b to i64
  %invariant.op.i = add nsw i64 %i.um, -7
  %i.uo = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.up = icmp eq i32 %i.uo, 1
  %i.uq = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  br label %bb.l

.preheader539.loopexit.i:                         ; preds = %.loopexit541.i
  %i.ur = trunc nuw nsw i64 %indvars.iv.next924.i to i32
  br label %.preheader539.i

.preheader539.i:                                  ; preds = %.preheader539.loopexit.i, %.preheader545.i
  %.1907.lcssa.i = phi i32 [ %.0906.lcssa.i, %.preheader545.i ], [ %i.ur, %.preheader539.loopexit.i ] ; 3 uses
  %.15.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader545.i ], [ %.29.i, %.preheader539.loopexit.i ] ; 3 uses
  %i.us = or disjoint i32 %.1907.lcssa.i, 3
  %i.ut = icmp slt i32 %i.us, %3
  br i1 %i.ut, label %.lr.ph718.i, label %.preheader536.i

.lr.ph718.i:                                      ; preds = %.preheader539.i
  %i.uu = sext i32 %4 to i64
  %i.uv = mul i64 %i.k, %i.uu
  %i.uw = icmp sgt i32 %5, 15
  %.idx1035.i = shl i64 %i.k, 6
  %i.ux = icmp sgt i32 %5, 3                      ; 4 uses
  %i.uy = icmp sgt i32 %5, 7
  %.idx1034.i = shl i64 %i.k, 5
  %.idx1033.i = shl i64 %i.k, 4                   ; 2 uses
  %i.uz = sext i32 %2 to i64                      ; 2 uses
  %.idx1030.i = shl i64 %i.k, 3                   ; 2 uses
  %.idx1031.i = mul i64 %i.k, 12
  %i.va = and i32 %5, -4
  %i.vb = zext i32 %.1907.lcssa.i to i64          ; 4 uses
  %i.vc = sext i32 %3 to i64
  %i.vd = sext i32 %i.b to i64
  %invariant.op1220.i = add nsw i64 %i.vc, -3     ; 2 uses
  %i.ve = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.vf = icmp eq i32 %i.ve, 1
  %i.vg = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  br i1 %i.vf, label %.split1223.i.us, label %.loopexit538.i.preheader

.loopexit538.i.preheader:                         ; preds = %.lr.ph718.i
  %i.vh = add nuw nsw i64 %i.vb, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op1220.i, i64 %i.vh)
  %i.vi = xor i64 %i.vb, -1
  %i.vj = add nsw i64 %smax, %i.vi
  %i.vk = and i64 %i.vj, -4
  %i.vl = add nuw i64 %i.vk, %i.vb
  %i.vm = add nuw i64 %i.vl, 4
  br label %.preheader536.loopexit.i

.split1223.i.us:                                  ; preds = %.lr.ph718.i, %.loopexit538.i.us
  %indvars.iv927.i.us = phi i64 [ %indvars.iv.next928.i.us, %.loopexit538.i.us ], [ %i.vb, %.lr.ph718.i ] ; 3 uses
  %.30717.i.us = phi ptr [ %.44.i.us, %.loopexit538.i.us ], [ %.15.lcssa.i, %.lr.ph718.i ] ; 11 uses
  %i.vn = load ptr, ptr %0, align 8, !tbaa !9
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %i.uv
  %i.vp = add nsw i64 %indvars.iv927.i.us, %i.uz  ; 4 uses
  %i.vq = mul nsw i64 %i.vp, %i.vd
  %i.vr = getelementptr inbounds [4 x i8], ptr %i.vo, i64 %i.vq ; 5 uses
  switch i32 %i.vg, label %.loopexit538.i.us [
    i32 4, label %bb.k
    i32 3, label %bb.j
    i32 2, label %bb.h
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %.split1223.i.us
  %i.vs = load ptr, ptr %6, align 8, !tbaa !9
  %i.vt = getelementptr inbounds [4 x i8], ptr %i.vs, i64 %i.uz
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %indvars.iv927.i.us
  %i.vv = load <4 x float>, ptr %i.vu, align 16, !tbaa !17 ; 9 uses
  br i1 %i.ux, label %.lr.ph697.i.us, label %._crit_edge698.i.us

.lr.ph697.i.us:                                   ; preds = %bb.f, %.lr.ph697.i.us
  %.40695.i.us = phi ptr [ %i.xd, %.lr.ph697.i.us ], [ %.30717.i.us, %bb.f ] ; 3 uses
  %.6971694.i.us = phi ptr [ %i.xe, %.lr.ph697.i.us ], [ %i.vr, %bb.f ] ; 5 uses
  %.0979693.i.us = phi i32 [ %i.xf, %.lr.ph697.i.us ], [ 0, %bb.f ]
  %i.vw = phi <4 x i32> [ %i.xc, %.lr.ph697.i.us ], [ zeroinitializer, %bb.f ]
  %i.vx = load <4 x float>, ptr %.6971694.i.us, align 1, !tbaa !17
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %.6971694.i.us, i64 %i.k
  %i.vz = load <4 x float>, ptr %i.vy, align 1, !tbaa !17
  %i.wa = getelementptr inbounds nuw i8, ptr %.6971694.i.us, i64 %.idx1030.i
  %i.wb = load <4 x float>, ptr %i.wa, align 1, !tbaa !17
  %i.wc = getelementptr inbounds nuw i8, ptr %.6971694.i.us, i64 %.idx1031.i
  %i.wd = load <4 x float>, ptr %i.wc, align 1, !tbaa !17
  %i.we = fmul fast <4 x float> %i.vx, %i.vv      ; 2 uses
  %i.wf = fmul fast <4 x float> %i.vz, %i.vv      ; 2 uses
  %i.wg = fmul fast <4 x float> %i.wb, %i.vv      ; 2 uses
  %i.wh = fmul fast <4 x float> %i.wd, %i.vv      ; 2 uses
  %i.wi = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.we)
  %i.wj = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.wf)
  %i.wk = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.wg)
  %i.wl = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.wh)
  %i.wm = fadd fast <4 x float> %i.wi, %i.we
  %i.wn = fadd fast <4 x float> %i.wj, %i.wf
  %i.wo = fadd fast <4 x float> %i.wk, %i.wg
  %i.wp = fadd fast <4 x float> %i.wl, %i.wh
  %i.wq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wm)
  %i.wr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wn)
  %i.ws = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wo)
  %i.wt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wp)
  %i.wu = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.wq, <4 x i32> %i.wr)
  %i.wv = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ws, <4 x i32> %i.wt)
  %i.ww = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wu, <8 x i16> splat (i16 -127))
  %i.wx = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ww, <8 x i16> splat (i16 127))
  %i.wy = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wv, <8 x i16> splat (i16 -127))
  %i.wz = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.wy, <8 x i16> splat (i16 127))
  %i.xa = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.wx, <8 x i16> %i.wz)
  %i.xb = shufflevector <16 x i8> %i.xa, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15> ; 2 uses
  %i.xc = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.vw, <16 x i8> splat (i8 127), <16 x i8> %i.xb) ; 2 uses
  store <16 x i8> %i.xb, ptr %.40695.i.us, align 1, !tbaa !17
  %i.xd = getelementptr inbounds nuw i8, ptr %.40695.i.us, i64 16 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.6971694.i.us, i64 %.idx1033.i ; 2 uses
  %i.xf = add nuw nsw i32 %.0979693.i.us, 4       ; 2 uses
  %i.xg = or disjoint i32 %i.xf, 3
  %i.xh = icmp slt i32 %i.xg, %5
  br i1 %i.xh, label %.lr.ph697.i.us, label %bb.g, !llvm.loop !270

bb.g:                                             ; preds = %.lr.ph697.i.us
  store <4 x i32> %i.xc, ptr %i.xd, align 1, !tbaa !17
  %i.xi = getelementptr inbounds nuw i8, ptr %.40695.i.us, i64 32
  br label %._crit_edge698.i.us

._crit_edge698.i.us:                              ; preds = %bb.g, %bb.f
  %.6971.lcssa1072.i.us = phi ptr [ %i.xe, %bb.g ], [ %i.vr, %bb.f ] ; 2 uses
  %.0979.lcssa1070.i.us = phi i32 [ %i.va, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %.41.i.us = phi ptr [ %i.xi, %bb.g ], [ %.30717.i.us, %bb.f ] ; 2 uses
  %i.xj = or disjoint i32 %.0979.lcssa1070.i.us, 1
  %i.xk = icmp slt i32 %i.xj, %5
  br i1 %i.xk, label %.lr.ph707.i.us, label %.preheader537.i.us

.lr.ph707.i.us:                                   ; preds = %._crit_edge698.i.us, %.lr.ph707.i.us
  %.42705.i.us = phi ptr [ %i.ye, %.lr.ph707.i.us ], [ %.41.i.us, %._crit_edge698.i.us ] ; 2 uses
  %.7972704.i.us = phi ptr [ %i.yf, %.lr.ph707.i.us ], [ %.6971.lcssa1072.i.us, %._crit_edge698.i.us ] ; 3 uses
  %.1980703.i.us = phi i32 [ %i.yg, %.lr.ph707.i.us ], [ %.0979.lcssa1070.i.us, %._crit_edge698.i.us ]
  %i.xl = load <4 x float>, ptr %.7972704.i.us, align 1, !tbaa !17
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %.7972704.i.us, i64 %i.k
  %i.xn = load <4 x float>, ptr %i.xm, align 1, !tbaa !17
  %i.xo = fmul fast <4 x float> %i.xl, %i.vv      ; 2 uses
  %i.xp = fmul fast <4 x float> %i.xn, %i.vv      ; 2 uses
  %i.xq = shufflevector <4 x float> %i.xo, <4 x float> %i.xp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.xr = shufflevector <4 x float> %i.xo, <4 x float> %i.xp, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.xs = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.xq)
  %i.xt = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.xr)
  %i.xu = fadd fast <4 x float> %i.xs, %i.xq
  %i.xv = fadd fast <4 x float> %i.xt, %i.xr
  %i.xw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xu)
  %i.xx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xv)
  %i.xy = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.xw, <4 x i32> %i.xx)
  %i.xz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.xy, <8 x i16> splat (i16 -127))
  %i.ya = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.xz, <8 x i16> splat (i16 127))
  %i.yb = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ya, <8 x i16> poison)
  %i.yc = bitcast <16 x i8> %i.yb to <2 x i64>
  %i.yd = extractelement <2 x i64> %i.yc, i64 0
  store i64 %i.yd, ptr %.42705.i.us, align 8, !tbaa !219
  %i.ye = getelementptr inbounds nuw i8, ptr %.42705.i.us, i64 8 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.7972704.i.us, i64 %.idx1030.i ; 2 uses
  %i.yg = add nuw nsw i32 %.1980703.i.us, 2       ; 3 uses
  %i.yh = or disjoint i32 %i.yg, 1
  %i.yi = icmp slt i32 %i.yh, %5
  br i1 %i.yi, label %.lr.ph707.i.us, label %.preheader537.i.us, !llvm.loop !271

.preheader537.i.us:                               ; preds = %.lr.ph707.i.us, %._crit_edge698.i.us
  %.1980.lcssa.i.us = phi i32 [ %.0979.lcssa1070.i.us, %._crit_edge698.i.us ], [ %i.yg, %.lr.ph707.i.us ] ; 5 uses
  %.7972.lcssa.i.us = phi ptr [ %.6971.lcssa1072.i.us, %._crit_edge698.i.us ], [ %i.yf, %.lr.ph707.i.us ] ; 3 uses
  %.42.lcssa.i.us = phi ptr [ %.41.i.us, %._crit_edge698.i.us ], [ %i.ye, %.lr.ph707.i.us ] ; 4 uses
  %i.yj = icmp slt i32 %.1980.lcssa.i.us, %5
  br i1 %i.yj, label %.lr.ph714.i.us.preheader, label %.loopexit538.i.us

.lr.ph714.i.us.preheader:                         ; preds = %.preheader537.i.us
  %i.yk = sub i32 %5, %.1980.lcssa.i.us
  %.neg348 = add i32 %.1980.lcssa.i.us, 1
  %xtraiter338 = and i32 %i.yk, 1
  %lcmp.mod339.not = icmp eq i32 %xtraiter338, 0
  br i1 %lcmp.mod339.not, label %.lr.ph714.i.us.prol.loopexit, label %.lr.ph714.i.us.prol

.lr.ph714.i.us.prol:                              ; preds = %.lr.ph714.i.us.preheader
  %i.yl = load <4 x float>, ptr %.7972.lcssa.i.us, align 1, !tbaa !17
  %i.ym = fmul fast <4 x float> %i.yl, %i.vv      ; 2 uses
  %i.yn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ym)
  %i.yo = fadd fast <4 x float> %i.yn, %i.ym
  %i.yp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yo) ; 2 uses
  %i.yq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.yp, <4 x i32> %i.yp)
  %i.yr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yq, <8 x i16> splat (i16 -127))
  %i.ys = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.yr, <8 x i16> splat (i16 127))
  %i.yt = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ys, <8 x i16> poison)
  %i.yu = bitcast <16 x i8> %i.yt to <4 x i32>
  %i.yv = extractelement <4 x i32> %i.yu, i64 0
  store i32 %i.yv, ptr %.42.lcssa.i.us, align 4, !tbaa !49
  %i.yw = getelementptr inbounds nuw i8, ptr %.42.lcssa.i.us, i64 4 ; 2 uses
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %.7972.lcssa.i.us, i64 %i.k
  %i.yy = add nuw nsw i32 %.1980.lcssa.i.us, 1
  br label %.lr.ph714.i.us.prol.loopexit

.lr.ph714.i.us.prol.loopexit:                     ; preds = %.lr.ph714.i.us.prol, %.lr.ph714.i.us.preheader
  %.lcssa303.unr = phi ptr [ poison, %.lr.ph714.i.us.preheader ], [ %i.yw, %.lr.ph714.i.us.prol ]
  %.43713.i.us.unr = phi ptr [ %.42.lcssa.i.us, %.lr.ph714.i.us.preheader ], [ %i.yw, %.lr.ph714.i.us.prol ]
  %.8973712.i.us.unr = phi ptr [ %.7972.lcssa.i.us, %.lr.ph714.i.us.preheader ], [ %i.yx, %.lr.ph714.i.us.prol ]
  %.2981711.i.us.unr = phi i32 [ %.1980.lcssa.i.us, %.lr.ph714.i.us.preheader ], [ %i.yy, %.lr.ph714.i.us.prol ]
  %i.yz = icmp eq i32 %5, %.neg348
  br i1 %i.yz, label %.loopexit538.i.us, label %.lr.ph714.i.us

.lr.ph714.i.us:                                   ; preds = %.lr.ph714.i.us.prol.loopexit, %.lr.ph714.i.us
  %.43713.i.us = phi ptr [ %i.zy, %.lr.ph714.i.us ], [ %.43713.i.us.unr, %.lr.ph714.i.us.prol.loopexit ] ; 3 uses
  %.8973712.i.us = phi ptr [ %i.zz, %.lr.ph714.i.us ], [ %.8973712.i.us.unr, %.lr.ph714.i.us.prol.loopexit ] ; 2 uses
  %.2981711.i.us = phi i32 [ %i.aaa, %.lr.ph714.i.us ], [ %.2981711.i.us.unr, %.lr.ph714.i.us.prol.loopexit ]
  %i.za = load <4 x float>, ptr %.8973712.i.us, align 1, !tbaa !17
  %i.zb = fmul fast <4 x float> %i.za, %i.vv      ; 2 uses
  %i.zc = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.zb)
  %i.zd = fadd fast <4 x float> %i.zc, %i.zb
  %i.ze = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.zd) ; 2 uses
  %i.zf = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ze, <4 x i32> %i.ze)
  %i.zg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.zf, <8 x i16> splat (i16 -127))
  %i.zh = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.zg, <8 x i16> splat (i16 127))
  %i.zi = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.zh, <8 x i16> poison)
  %i.zj = bitcast <16 x i8> %i.zi to <4 x i32>
  %i.zk = extractelement <4 x i32> %i.zj, i64 0
  store i32 %i.zk, ptr %.43713.i.us, align 4, !tbaa !49
  %i.zl = getelementptr inbounds nuw i8, ptr %.43713.i.us, i64 4
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %.8973712.i.us, i64 %i.k ; 2 uses
  %i.zn = load <4 x float>, ptr %i.zm, align 1, !tbaa !17
  %i.zo = fmul fast <4 x float> %i.zn, %i.vv      ; 2 uses
  %i.zp = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.zo)
  %i.zq = fadd fast <4 x float> %i.zp, %i.zo
  %i.zr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.zq) ; 2 uses
  %i.zs = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.zr, <4 x i32> %i.zr)
  %i.zt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.zs, <8 x i16> splat (i16 -127))
  %i.zu = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.zt, <8 x i16> splat (i16 127))
  %i.zv = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.zu, <8 x i16> poison)
  %i.zw = bitcast <16 x i8> %i.zv to <4 x i32>
  %i.zx = extractelement <4 x i32> %i.zw, i64 0
  store i32 %i.zx, ptr %i.zl, align 4, !tbaa !49
  %i.zy = getelementptr inbounds nuw i8, ptr %.43713.i.us, i64 8 ; 2 uses
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %i.k
  %i.aaa = add nuw nsw i32 %.2981711.i.us, 2      ; 2 uses
  %exitcond926.not.i.us.1 = icmp eq i32 %i.aaa, %5
  br i1 %exitcond926.not.i.us.1, label %.loopexit538.i.us, label %.lr.ph714.i.us, !llvm.loop !272

bb.h:                                             ; preds = %.split1223.i.us
  %i.aab = load ptr, ptr %6, align 8, !tbaa !9
  %i.aac = getelementptr [4 x i8], ptr %i.aab, i64 %i.vp ; 4 uses
  %i.aad = load float, ptr %i.aac, align 4, !tbaa !236
  %i.aae = insertelement <4 x float> poison, float %i.aad, i64 0
  %i.aaf = shufflevector <4 x float> %i.aae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aag = getelementptr i8, ptr %i.aac, i64 4
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !236
  %i.aai = insertelement <4 x float> poison, float %i.aah, i64 0
  %i.aaj = shufflevector <4 x float> %i.aai, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aak = getelementptr i8, ptr %i.aac, i64 8
end_hunk_0
begin_hunk_1_@_ZN4ncnn35pack_B_tile_fp32_to_int8_avx512vnniERKNS_3MatERS0_iiiif:bb.a
  %i.pj = shufflevector <2 x i64> %i.pd, <2 x i64> %i.pf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pk = bitcast <8 x i64> %i.pj to <16 x i32>
  %i.pl = bitcast <16 x i16> %i.pi to <8 x i32>
  %i.pm = shufflevector <8 x i32> %i.pl, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pn = shufflevector <16 x i32> %i.pk, <16 x i32> %i.pm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.po = bitcast <16 x i32> %i.pn to <64 x i8>
  %i.pp = add <64 x i8> %i.po, splat (i8 127)
  store <64 x i8> %i.pp, ptr %.1334.i.us, align 1, !tbaa !17
  %i.pq = getelementptr inbounds nuw i8, ptr %.1334.i.us, i64 64 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.0612333.i.us, i64 256 ; 2 uses
  %i.ps = add nuw nsw i32 %.0627332.i.us, 4       ; 2 uses
  %i.pt = or disjoint i32 %i.ps, 3
  %i.pu = icmp slt i32 %i.pt, %5
  br i1 %i.pu, label %.lr.ph.i.us, label %.preheader330.i.us, !llvm.loop !306

.preheader330.i.us:                               ; preds = %.lr.ph.i.us, %.preheader331.i.us
  %.0627.lcssa.i.us = phi i32 [ 0, %.preheader331.i.us ], [ %i.v, %.lr.ph.i.us ] ; 3 uses
  %.0612.lcssa.i.us = phi ptr [ %i.ag, %.preheader331.i.us ], [ %i.pr, %.lr.ph.i.us ] ; 2 uses
  %.1.lcssa.i.us = phi ptr [ %.0410.i.us, %.preheader331.i.us ], [ %i.pq, %.lr.ph.i.us ] ; 2 uses
  %i.pv = or disjoint i32 %.0627.lcssa.i.us, 1
  %i.pw = icmp slt i32 %i.pv, %5
  br i1 %i.pw, label %.lr.ph340.i.us, label %.preheader328.i.us

.lr.ph340.i.us:                                   ; preds = %.preheader330.i.us, %.lr.ph340.i.us
  %.2339.i.us = phi ptr [ %i.qp, %.lr.ph340.i.us ], [ %.1.lcssa.i.us, %.preheader330.i.us ] ; 3 uses
  %.1613338.i.us = phi ptr [ %i.qq, %.lr.ph340.i.us ], [ %.0612.lcssa.i.us, %.preheader330.i.us ] ; 3 uses
  %.1628337.i.us = phi i32 [ %i.qr, %.lr.ph340.i.us ], [ %.0627.lcssa.i.us, %.preheader330.i.us ]
  %i.px = load <16 x float>, ptr %.1613338.i.us, align 64, !tbaa !17
  %i.py = getelementptr inbounds nuw i8, ptr %.1613338.i.us, i64 64
  %i.pz = load <16 x float>, ptr %i.py, align 64, !tbaa !17
  %i.qa = fmul fast <16 x float> %i.px, %i.p      ; 2 uses
  %i.qb = fmul fast <16 x float> %i.pz, %i.p      ; 2 uses
  %i.qc = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.qa)
  %i.qd = fadd fast <16 x float> %i.qc, %i.qa
  %i.qe = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.qd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.qf = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.qe, <16 x i8> zeroinitializer, i16 -1)
  %i.qg = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.qf, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.qh = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.qb)
  %i.qi = fadd fast <16 x float> %i.qh, %i.qb
  %i.qj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.qi, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.qk = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.qj, <16 x i8> zeroinitializer, i16 -1)
  %i.ql = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.qk, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.qm = shufflevector <16 x i8> %i.qg, <16 x i8> %i.ql, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.qn = shufflevector <16 x i8> %i.qg, <16 x i8> %i.ql, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.qm, ptr %.2339.i.us, align 16, !tbaa !17
  %i.qo = getelementptr inbounds nuw i8, ptr %.2339.i.us, i64 16
  store <16 x i8> %i.qn, ptr %i.qo, align 16, !tbaa !17
  %i.qp = getelementptr inbounds nuw i8, ptr %.2339.i.us, i64 32 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.1613338.i.us, i64 128 ; 2 uses
  %i.qr = add nuw nsw i32 %.1628337.i.us, 2       ; 3 uses
  %i.qs = or disjoint i32 %i.qr, 1
  %i.qt = icmp slt i32 %i.qs, %5
  br i1 %i.qt, label %.lr.ph340.i.us, label %.preheader328.i.us, !llvm.loop !307

.preheader328.i.us:                               ; preds = %.lr.ph340.i.us, %.preheader330.i.us
  %.1628.lcssa.i.us = phi i32 [ %.0627.lcssa.i.us, %.preheader330.i.us ], [ %i.qr, %.lr.ph340.i.us ] ; 5 uses
  %.1613.lcssa.i.us = phi ptr [ %.0612.lcssa.i.us, %.preheader330.i.us ], [ %i.qq, %.lr.ph340.i.us ] ; 3 uses
  %.2.lcssa.i.us = phi ptr [ %.1.lcssa.i.us, %.preheader330.i.us ], [ %i.qp, %.lr.ph340.i.us ] ; 4 uses
  %i.qu = icmp slt i32 %.1628.lcssa.i.us, %5
  br i1 %i.qu, label %.lr.ph347.i.us.preheader, label %.loopexit317.i.us

.lr.ph347.i.us.preheader:                         ; preds = %.preheader328.i.us
  %i.qv = sub i32 %5, %.1628.lcssa.i.us
  %.neg459 = add i32 %.1628.lcssa.i.us, 1
  %xtraiter444 = and i32 %i.qv, 1
  %lcmp.mod445.not = icmp eq i32 %xtraiter444, 0
  br i1 %lcmp.mod445.not, label %.lr.ph347.i.us.prol.loopexit, label %.lr.ph347.i.us.prol

.lr.ph347.i.us.prol:                              ; preds = %.lr.ph347.i.us.preheader
  %i.qw = load <16 x float>, ptr %.1613.lcssa.i.us, align 64, !tbaa !17
  %i.qx = fmul fast <16 x float> %i.qw, %i.p      ; 2 uses
  %i.qy = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.qx)
  %i.qz = fadd fast <16 x float> %i.qy, %i.qx
  %i.ra = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.qz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.rb = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ra, <16 x i8> zeroinitializer, i16 -1)
  %i.rc = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.rb, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.rc, ptr %.2.lcssa.i.us, align 16, !tbaa !17
  %i.rd = getelementptr inbounds nuw i8, ptr %.2.lcssa.i.us, i64 16 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.1613.lcssa.i.us, i64 64
  %i.rf = add nuw nsw i32 %.1628.lcssa.i.us, 1
  br label %.lr.ph347.i.us.prol.loopexit

.lr.ph347.i.us.prol.loopexit:                     ; preds = %.lr.ph347.i.us.prol, %.lr.ph347.i.us.preheader
  %.lcssa441.unr = phi ptr [ poison, %.lr.ph347.i.us.preheader ], [ %i.rd, %.lr.ph347.i.us.prol ]
  %.3346.i.us.unr = phi ptr [ %.2.lcssa.i.us, %.lr.ph347.i.us.preheader ], [ %i.rd, %.lr.ph347.i.us.prol ]
  %.2614345.i.us.unr = phi ptr [ %.1613.lcssa.i.us, %.lr.ph347.i.us.preheader ], [ %i.re, %.lr.ph347.i.us.prol ]
  %.2629344.i.us.unr = phi i32 [ %.1628.lcssa.i.us, %.lr.ph347.i.us.preheader ], [ %i.rf, %.lr.ph347.i.us.prol ]
  %i.rg = icmp eq i32 %5, %.neg459
  br i1 %i.rg, label %.loopexit317.i.us, label %.lr.ph347.i.us

.lr.ph347.i.us:                                   ; preds = %.lr.ph347.i.us.prol.loopexit, %.lr.ph347.i.us
  %.3346.i.us = phi ptr [ %i.rx, %.lr.ph347.i.us ], [ %.3346.i.us.unr, %.lr.ph347.i.us.prol.loopexit ] ; 3 uses
  %.2614345.i.us = phi ptr [ %i.ry, %.lr.ph347.i.us ], [ %.2614345.i.us.unr, %.lr.ph347.i.us.prol.loopexit ] ; 3 uses
  %.2629344.i.us = phi i32 [ %i.rz, %.lr.ph347.i.us ], [ %.2629344.i.us.unr, %.lr.ph347.i.us.prol.loopexit ]
  %i.rh = load <16 x float>, ptr %.2614345.i.us, align 64, !tbaa !17
  %i.ri = fmul fast <16 x float> %i.rh, %i.p      ; 2 uses
  %i.rj = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ri)
  %i.rk = fadd fast <16 x float> %i.rj, %i.ri
  %i.rl = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.rk, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.rm = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.rl, <16 x i8> zeroinitializer, i16 -1)
  %i.rn = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.rm, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.rn, ptr %.3346.i.us, align 16, !tbaa !17
  %i.ro = getelementptr inbounds nuw i8, ptr %.3346.i.us, i64 16
  %i.rp = getelementptr inbounds nuw i8, ptr %.2614345.i.us, i64 64
  %i.rq = load <16 x float>, ptr %i.rp, align 64, !tbaa !17
  %i.rr = fmul fast <16 x float> %i.rq, %i.p      ; 2 uses
  %i.rs = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.rr)
  %i.rt = fadd fast <16 x float> %i.rs, %i.rr
  %i.ru = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.rt, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.rv = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ru, <16 x i8> zeroinitializer, i16 -1)
  %i.rw = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.rv, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.rw, ptr %i.ro, align 16, !tbaa !17
  %i.rx = getelementptr inbounds nuw i8, ptr %.3346.i.us, i64 32 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.2614345.i.us, i64 128
  %i.rz = add nuw nsw i32 %.2629344.i.us, 2       ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i32 %i.rz, %5
  br i1 %exitcond.not.i.us.1, label %.loopexit317.i.us, label %.lr.ph347.i.us, !llvm.loop !308

.loopexit317.i.us:                                ; preds = %.lr.ph407.i.us.prol.loopexit, %.lr.ph407.i.us, %.lr.ph387.i.us, %.lr.ph367.i.us.prol.loopexit, %.lr.ph367.i.us, %.lr.ph347.i.us.prol.loopexit, %.lr.ph347.i.us, %.preheader328.i.us, %.preheader324.i.us, %.preheader320.i.us, %.preheader316.i.us, %.split.i.us
  %.16.i.us = phi ptr [ %.0410.i.us, %.split.i.us ], [ %.14.lcssa.i.us, %.preheader316.i.us ], [ %i.jf, %.lr.ph387.i.us ], [ %i.rx, %.lr.ph347.i.us ], [ %.10.lcssa.i.us, %.preheader320.i.us ], [ %i.no, %.lr.ph367.i.us ], [ %.6.lcssa.i.us, %.preheader324.i.us ], [ %.2.lcssa.i.us, %.preheader328.i.us ], [ %.lcssa441.unr, %.lr.ph347.i.us.prol.loopexit ], [ %.lcssa435.unr, %.lr.ph367.i.us.prol.loopexit ], [ %.lcssa423.unr, %.lr.ph407.i.us.prol.loopexit ], [ %i.fm, %.lr.ph407.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 16 ; 3 uses
  %i.sa = or disjoint i64 %indvars.iv.next.i.us, 15
  %i.sb = icmp samesign ult i64 %i.sa, %i.w
  br i1 %i.sb, label %.split.i.us, label %.preheader315.loopexit.i, !llvm.loop !309

.preheader315.loopexit.i:                         ; preds = %.loopexit317.i.us, %.loopexit317.i.preheader
  %.us-phi = phi ptr [ %.val, %.loopexit317.i.preheader ], [ %.16.i.us, %.loopexit317.i.us ]
  %.us-phi74 = phi i64 [ %i.ab, %.loopexit317.i.preheader ], [ %indvars.iv.next.i.us, %.loopexit317.i.us ]
  %i.sc = trunc nuw nsw i64 %.us-phi74 to i32
  br label %.preheader315.i

.preheader315.i:                                  ; preds = %.preheader315.loopexit.i, %bb.a
  %.0605.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.sc, %.preheader315.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.val, %bb.a ], [ %.us-phi, %.preheader315.loopexit.i ] ; 2 uses
  %i.sd = or disjoint i32 %.0605.lcssa.i, 7
  %i.se = icmp slt i32 %i.sd, %3
  br i1 %i.se, label %.lr.ph475.i, label %.preheader302.i

.lr.ph475.i:                                      ; preds = %.preheader315.i
  %i.sf = mul nsw i32 %i.b, %4
  %i.sg = sext i32 %i.sf to i64
  %i.sh = insertelement <8 x float> poison, float %6, i64 0
  %i.si = shufflevector <8 x float> %i.sh, <8 x float> poison, <8 x i32> zeroinitializer ; 27 uses
  %i.sj = icmp sgt i32 %5, 3                      ; 3 uses
  %.idx687.i = shl i64 %i.k, 4                    ; 6 uses
  %.idx679.i = shl i64 %i.k, 3
  %.idx680.i = mul i64 %i.k, 12
  %.idx682.i = mul i64 %i.k, 20
  %.idx683.i = mul i64 %i.k, 24
  %.idx684.i = mul i64 %i.k, 28
  %i.sk = trunc i64 %i.k to i32
  %i.sl = insertelement <8 x i32> poison, i32 %i.sk, i64 0
  %i.sm = shufflevector <8 x i32> %i.sl, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.sn = mul <8 x i32> %i.sm, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.so = and i32 %5, -4                          ; 3 uses
  %i.sp = zext nneg i32 %.0605.lcssa.i to i64
  %i.sq = sext i32 %3 to i64
  %i.sr = sext i32 %2 to i64
  %invariant.op.i = add nsw i64 %i.sq, -7
  br label %bb.b

.preheader302.loopexit.i:                         ; preds = %.loopexit304.i
  %i.ss = trunc nuw nsw i64 %indvars.iv.next655.i to i32
  br label %.preheader302.i

.preheader302.i:                                  ; preds = %.preheader302.loopexit.i, %.preheader315.i
  %.1606.lcssa.i = phi i32 [ %.0605.lcssa.i, %.preheader315.i ], [ %i.ss, %.preheader302.loopexit.i ] ; 3 uses
  %.17.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader315.i ], [ %.29.i, %.preheader302.loopexit.i ] ; 4 uses
  %i.st = or disjoint i32 %.1606.lcssa.i, 3
  %i.su = icmp slt i32 %i.st, %3
  br i1 %i.su, label %.lr.ph519.i, label %.preheader294.i

.lr.ph519.i:                                      ; preds = %.preheader302.i
  %i.sv = mul nsw i32 %i.b, %4
  %i.sw = sext i32 %i.sv to i64                   ; 2 uses
  %i.sx = insertelement <4 x float> poison, float %6, i64 0
  %i.sy = shufflevector <4 x float> %i.sx, <4 x float> poison, <4 x i32> zeroinitializer ; 18 uses
  %i.sz = icmp sgt i32 %5, 3                      ; 2 uses
  %.idx.i = shl i64 %i.k, 3
  %.idx678.i = mul i64 %i.k, 12
  %i.ta = trunc i64 %i.k to i32
  %i.tb = insertelement <4 x i32> poison, i32 %i.ta, i64 0
  %i.tc = shufflevector <4 x i32> %i.tb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.td = mul <4 x i32> %i.tc, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.te = and i32 %5, -4                          ; 2 uses
  %i.tf = zext i32 %.1606.lcssa.i to i64          ; 5 uses
  %i.tg = sext i32 %3 to i64
  %i.th = sext i32 %2 to i64                      ; 2 uses
  %invariant.op763.i = add nsw i64 %i.tg, -3      ; 3 uses
  switch i32 %i.b, label %.loopexit.i.preheader [
    i32 4, label %.preheader301.i.us
    i32 1, label %.preheader297.i.us
  ]

.loopexit.i.preheader:                            ; preds = %.lr.ph519.i
  %i.ti = add nuw nsw i64 %i.tf, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op763.i, i64 %i.ti)
  %i.tj = xor i64 %i.tf, -1
  %i.tk = add nsw i64 %smax, %i.tj
  %i.tl = and i64 %i.tk, -4
  %i.tm = add nuw i64 %i.tl, %i.tf
  %i.tn = add nuw i64 %i.tm, 4
  br label %.preheader294.loopexit.i

.preheader301.i.us:                               ; preds = %.lr.ph519.i, %.loopexit.i.us
  %indvars.iv659.i.us = phi i64 [ %indvars.iv.next660.i.us, %.loopexit.i.us ], [ %i.tf, %.lr.ph519.i ] ; 2 uses
  %.30518.i.us = phi ptr [ %.38.i.us, %.loopexit.i.us ], [ %.17.lcssa.i, %.lr.ph519.i ] ; 2 uses
  %i.to = load ptr, ptr %0, align 8, !tbaa !9
  %i.tp = add nsw i64 %indvars.iv659.i.us, %i.th
  %i.tq = mul i64 %i.tp, %i.k
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %i.tq
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.sw ; 2 uses
  br i1 %i.sz, label %.lr.ph481.i.us, label %.preheader300.i.us

.lr.ph481.i.us:                                   ; preds = %.preheader301.i.us, %.lr.ph481.i.us
  %.31480.i.us = phi ptr [ %i.uz, %.lr.ph481.i.us ], [ %.30518.i.us, %.preheader301.i.us ] ; 2 uses
  %.0665479.i.us = phi ptr [ %i.va, %.lr.ph481.i.us ], [ %i.ts, %.preheader301.i.us ] ; 5 uses
  %.0672478.i.us = phi i32 [ %i.vb, %.lr.ph481.i.us ], [ 0, %.preheader301.i.us ]
  %i.tt = load <4 x float>, ptr %.0665479.i.us, align 16, !tbaa !17
  %i.tu = getelementptr inbounds nuw i8, ptr %.0665479.i.us, i64 16
  %i.tv = load <4 x float>, ptr %i.tu, align 16, !tbaa !17
  %i.tw = getelementptr inbounds nuw i8, ptr %.0665479.i.us, i64 32
  %i.tx = load <4 x float>, ptr %i.tw, align 16, !tbaa !17
  %i.ty = getelementptr inbounds nuw i8, ptr %.0665479.i.us, i64 48
  %i.tz = load <4 x float>, ptr %i.ty, align 16, !tbaa !17
  %i.ua = fmul fast <4 x float> %i.tt, %i.sy      ; 2 uses
  %i.ub = fmul fast <4 x float> %i.tv, %i.sy      ; 2 uses
  %i.uc = fmul fast <4 x float> %i.tx, %i.sy      ; 2 uses
  %i.ud = fmul fast <4 x float> %i.tz, %i.sy      ; 2 uses
  %i.ue = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ua)
  %i.uf = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ub)
  %i.ug = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.uc)
  %i.uh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ud)
  %i.ui = fadd fast <4 x float> %i.ue, %i.ua
  %i.uj = fadd fast <4 x float> %i.uf, %i.ub
  %i.uk = fadd fast <4 x float> %i.ug, %i.uc
  %i.ul = fadd fast <4 x float> %i.uh, %i.ud
  %i.um = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ui)
  %i.un = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.uj)
  %i.uo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.uk)
  %i.up = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ul)
  %i.uq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.um, <4 x i32> %i.un)
  %i.ur = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.uo, <4 x i32> %i.up)
  %i.us = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.uq, <8 x i16> splat (i16 -127))
  %i.ut = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.us, <8 x i16> splat (i16 127))
  %i.uu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ur, <8 x i16> splat (i16 -127))
  %i.uv = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.uu, <8 x i16> splat (i16 127))
  %i.uw = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ut, <8 x i16> %i.uv)
  %i.ux = add <16 x i8> %i.uw, splat (i8 127)
  %i.uy = shufflevector <16 x i8> %i.ux, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %i.uy, ptr %.31480.i.us, align 1, !tbaa !17
  %i.uz = getelementptr inbounds nuw i8, ptr %.31480.i.us, i64 16 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.0665479.i.us, i64 64 ; 2 uses
  %i.vb = add nuw nsw i32 %.0672478.i.us, 4       ; 2 uses
  %i.vc = or disjoint i32 %i.vb, 3
  %i.vd = icmp slt i32 %i.vc, %5
  br i1 %i.vd, label %.lr.ph481.i.us, label %.preheader300.i.us, !llvm.loop !310

.preheader300.i.us:                               ; preds = %.lr.ph481.i.us, %.preheader301.i.us
  %.0672.lcssa.i.us = phi i32 [ 0, %.preheader301.i.us ], [ %i.te, %.lr.ph481.i.us ] ; 3 uses
  %.0665.lcssa.i.us = phi ptr [ %i.ts, %.preheader301.i.us ], [ %i.va, %.lr.ph481.i.us ] ; 2 uses
  %.31.lcssa.i.us = phi ptr [ %.30518.i.us, %.preheader301.i.us ], [ %i.uz, %.lr.ph481.i.us ] ; 2 uses
  %i.ve = or disjoint i32 %.0672.lcssa.i.us, 1
  %i.vf = icmp slt i32 %i.ve, %5
  br i1 %i.vf, label %.lr.ph488.i.us, label %.preheader298.i.us

.lr.ph488.i.us:                                   ; preds = %.preheader300.i.us, %.lr.ph488.i.us
  %.32487.i.us = phi ptr [ %i.vz, %.lr.ph488.i.us ], [ %.31.lcssa.i.us, %.preheader300.i.us ] ; 2 uses
  %.1666486.i.us = phi ptr [ %i.wa, %.lr.ph488.i.us ], [ %.0665.lcssa.i.us, %.preheader300.i.us ] ; 3 uses
  %.1673485.i.us = phi i32 [ %i.wb, %.lr.ph488.i.us ], [ %.0672.lcssa.i.us, %.preheader300.i.us ]
  %i.vg = load <4 x float>, ptr %.1666486.i.us, align 16, !tbaa !17
  %i.vh = getelementptr inbounds nuw i8, ptr %.1666486.i.us, i64 16
  %i.vi = load <4 x float>, ptr %i.vh, align 16, !tbaa !17
  %i.vj = fmul fast <4 x float> %i.vg, %i.sy      ; 2 uses
  %i.vk = fmul fast <4 x float> %i.vi, %i.sy      ; 2 uses
  %i.vl = shufflevector <4 x float> %i.vj, <4 x float> %i.vk, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.vm = shufflevector <4 x float> %i.vj, <4 x float> %i.vk, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.vn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.vl)
  %i.vo = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.vm)
  %i.vp = fadd fast <4 x float> %i.vn, %i.vl
  %i.vq = fadd fast <4 x float> %i.vo, %i.vm
  %i.vr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vp)
  %i.vs = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vq)
  %i.vt = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.vr, <4 x i32> %i.vs)
  %i.vu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vt, <8 x i16> splat (i16 -127))
  %i.vv = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.vu, <8 x i16> splat (i16 127))
  %i.vw = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.vv, <8 x i16> poison)
  %i.vx = bitcast <16 x i8> %i.vw to <2 x i64>
  %i.vy = extractelement <2 x i64> %i.vx, i64 0
  store i64 %i.vy, ptr %.32487.i.us, align 8, !tbaa !219
  %i.vz = getelementptr inbounds nuw i8, ptr %.32487.i.us, i64 8 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.1666486.i.us, i64 32 ; 2 uses
  %i.wb = add nuw nsw i32 %.1673485.i.us, 2       ; 3 uses
  %i.wc = or disjoint i32 %i.wb, 1
  %i.wd = icmp slt i32 %i.wc, %5
  br i1 %i.wd, label %.lr.ph488.i.us, label %.preheader298.i.us, !llvm.loop !311

.preheader298.i.us:                               ; preds = %.lr.ph488.i.us, %.preheader300.i.us
  %.1673.lcssa.i.us = phi i32 [ %.0672.lcssa.i.us, %.preheader300.i.us ], [ %i.wb, %.lr.ph488.i.us ] ; 5 uses
  %.1666.lcssa.i.us = phi ptr [ %.0665.lcssa.i.us, %.preheader300.i.us ], [ %i.wa, %.lr.ph488.i.us ] ; 3 uses
  %.32.lcssa.i.us = phi ptr [ %.31.lcssa.i.us, %.preheader300.i.us ], [ %i.vz, %.lr.ph488.i.us ] ; 4 uses
  %i.we = icmp slt i32 %.1673.lcssa.i.us, %5
  br i1 %i.we, label %.lr.ph495.i.us.preheader, label %.loopexit.i.us

.lr.ph495.i.us.preheader:                         ; preds = %.preheader298.i.us
  %i.wf = sub i32 %5, %.1673.lcssa.i.us
  %.neg464 = add i32 %.1673.lcssa.i.us, 1
  %xtraiter454 = and i32 %i.wf, 1
  %lcmp.mod455.not = icmp eq i32 %xtraiter454, 0
  br i1 %lcmp.mod455.not, label %.lr.ph495.i.us.prol.loopexit, label %.lr.ph495.i.us.prol

.lr.ph495.i.us.prol:                              ; preds = %.lr.ph495.i.us.preheader
  %i.wg = load <4 x float>, ptr %.1666.lcssa.i.us, align 16, !tbaa !17
  %i.wh = fmul fast <4 x float> %i.wg, %i.sy      ; 2 uses
  %i.wi = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.wh)
  %i.wj = fadd fast <4 x float> %i.wi, %i.wh
  %i.wk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wj) ; 2 uses
  %i.wl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.wk, <4 x i32> %i.wk)
  %i.wm = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wl, <8 x i16> splat (i16 -127))
  %i.wn = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.wm, <8 x i16> splat (i16 127))
  %i.wo = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.wn, <8 x i16> poison)
  %i.wp = bitcast <16 x i8> %i.wo to <4 x i32>
  %i.wq = extractelement <4 x i32> %i.wp, i64 0
  store i32 %i.wq, ptr %.32.lcssa.i.us, align 4, !tbaa !49
  %i.wr = getelementptr inbounds nuw i8, ptr %.32.lcssa.i.us, i64 4 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %.1666.lcssa.i.us, i64 16
  %i.wt = add nuw nsw i32 %.1673.lcssa.i.us, 1
  br label %.lr.ph495.i.us.prol.loopexit

.lr.ph495.i.us.prol.loopexit:                     ; preds = %.lr.ph495.i.us.prol, %.lr.ph495.i.us.preheader
  %.lcssa387.unr = phi ptr [ poison, %.lr.ph495.i.us.preheader ], [ %i.wr, %.lr.ph495.i.us.prol ]
  %.33494.i.us.unr = phi ptr [ %.32.lcssa.i.us, %.lr.ph495.i.us.preheader ], [ %i.wr, %.lr.ph495.i.us.prol ]
  %.2667493.i.us.unr = phi ptr [ %.1666.lcssa.i.us, %.lr.ph495.i.us.preheader ], [ %i.ws, %.lr.ph495.i.us.prol ]
  %.2674492.i.us.unr = phi i32 [ %.1673.lcssa.i.us, %.lr.ph495.i.us.preheader ], [ %i.wt, %.lr.ph495.i.us.prol ]
  %i.wu = icmp eq i32 %5, %.neg464
  br i1 %i.wu, label %.loopexit.i.us, label %.lr.ph495.i.us

.lr.ph495.i.us:                                   ; preds = %.lr.ph495.i.us.prol.loopexit, %.lr.ph495.i.us
  %.33494.i.us = phi ptr [ %i.xt, %.lr.ph495.i.us ], [ %.33494.i.us.unr, %.lr.ph495.i.us.prol.loopexit ] ; 3 uses
  %.2667493.i.us = phi ptr [ %i.xu, %.lr.ph495.i.us ], [ %.2667493.i.us.unr, %.lr.ph495.i.us.prol.loopexit ] ; 3 uses
  %.2674492.i.us = phi i32 [ %i.xv, %.lr.ph495.i.us ], [ %.2674492.i.us.unr, %.lr.ph495.i.us.prol.loopexit ]
  %i.wv = load <4 x float>, ptr %.2667493.i.us, align 16, !tbaa !17
  %i.ww = fmul fast <4 x float> %i.wv, %i.sy      ; 2 uses
  %i.wx = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ww)
  %i.wy = fadd fast <4 x float> %i.wx, %i.ww
  %i.wz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wy) ; 2 uses
  %i.xa = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.wz, <4 x i32> %i.wz)
  %i.xb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.xa, <8 x i16> splat (i16 -127))
  %i.xc = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.xb, <8 x i16> splat (i16 127))
  %i.xd = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.xc, <8 x i16> poison)
  %i.xe = bitcast <16 x i8> %i.xd to <4 x i32>
  %i.xf = extractelement <4 x i32> %i.xe, i64 0
  store i32 %i.xf, ptr %.33494.i.us, align 4, !tbaa !49
  %i.xg = getelementptr inbounds nuw i8, ptr %.33494.i.us, i64 4
  %i.xh = getelementptr inbounds nuw i8, ptr %.2667493.i.us, i64 16
  %i.xi = load <4 x float>, ptr %i.xh, align 16, !tbaa !17
  %i.xj = fmul fast <4 x float> %i.xi, %i.sy      ; 2 uses
  %i.xk = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.xj)
  %i.xl = fadd fast <4 x float> %i.xk, %i.xj
  %i.xm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xl) ; 2 uses
  %i.xn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.xm, <4 x i32> %i.xm)
  %i.xo = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.xn, <8 x i16> splat (i16 -127))
  %i.xp = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.xo, <8 x i16> splat (i16 127))
  %i.xq = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.xp, <8 x i16> poison)
  %i.xr = bitcast <16 x i8> %i.xq to <4 x i32>
  %i.xs = extractelement <4 x i32> %i.xr, i64 0
  store i32 %i.xs, ptr %i.xg, align 4, !tbaa !49
  %i.xt = getelementptr inbounds nuw i8, ptr %.33494.i.us, i64 8 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.2667493.i.us, i64 32
  %i.xv = add nuw nsw i32 %.2674492.i.us, 2       ; 2 uses
  %exitcond657.not.i.us.1 = icmp eq i32 %i.xv, %5
  br i1 %exitcond657.not.i.us.1, label %.loopexit.i.us, label %.lr.ph495.i.us, !llvm.loop !312

.loopexit.i.us:                                   ; preds = %.lr.ph495.i.us.prol.loopexit, %.lr.ph495.i.us, %.preheader298.i.us
  %.38.i.us = phi ptr [ %.32.lcssa.i.us, %.preheader298.i.us ], [ %.lcssa387.unr, %.lr.ph495.i.us.prol.loopexit ], [ %i.xt, %.lr.ph495.i.us ] ; 2 uses
  %indvars.iv.next660.i.us = add nuw nsw i64 %indvars.iv659.i.us, 4 ; 3 uses
  %i.xw = icmp slt i64 %indvars.iv.next660.i.us, %invariant.op763.i
  br i1 %i.xw, label %.preheader301.i.us, label %.preheader294.loopexit.i, !llvm.loop !313

.preheader297.i.us:                               ; preds = %.lr.ph519.i, %.loopexit.i.us80
  %indvars.iv659.i.us78 = phi i64 [ %indvars.iv.next660.i.us82, %.loopexit.i.us80 ], [ %i.tf, %.lr.ph519.i ] ; 2 uses
  %.30518.i.us79 = phi ptr [ %.38.i.us81, %.loopexit.i.us80 ], [ %.17.lcssa.i, %.lr.ph519.i ] ; 2 uses
  %i.xx = load ptr, ptr %0, align 8, !tbaa !9
  %i.xy = add nsw i64 %indvars.iv659.i.us78, %i.th
  %i.xz = mul i64 %i.xy, %i.k
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %i.xz
  %i.yb = getelementptr inbounds [4 x i8], ptr %i.ya, i64 %i.sw ; 2 uses
  br i1 %i.sz, label %.lr.ph501.i.us, label %.preheader296.i.us

.lr.ph501.i.us:                                   ; preds = %.preheader297.i.us, %.lr.ph501.i.us
  %.35500.i.us = phi ptr [ %i.zh, %.lr.ph501.i.us ], [ %.30518.i.us79, %.preheader297.i.us ] ; 2 uses
  %.4669499.i.us = phi ptr [ %i.zi, %.lr.ph501.i.us ], [ %i.yb, %.preheader297.i.us ] ; 5 uses
  %.0675498.i.us = phi i32 [ %i.zj, %.lr.ph501.i.us ], [ 0, %.preheader297.i.us ]
  %i.yc = load <4 x float>, ptr %.4669499.i.us, align 1, !tbaa !17
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %.4669499.i.us, i64 %i.k
  %i.ye = load <4 x float>, ptr %i.yd, align 1, !tbaa !17
  %i.yf = getelementptr inbounds nuw i8, ptr %.4669499.i.us, i64 %.idx.i
  %i.yg = load <4 x float>, ptr %i.yf, align 1, !tbaa !17
  %i.yh = getelementptr inbounds nuw i8, ptr %.4669499.i.us, i64 %.idx678.i
  %i.yi = load <4 x float>, ptr %i.yh, align 1, !tbaa !17
  %i.yj = fmul fast <4 x float> %i.yc, %i.sy      ; 2 uses
  %i.yk = fmul fast <4 x float> %i.ye, %i.sy      ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnn45transpose_pack_B_tile_fp32_to_int8_avx512vnniERKNS_3MatERS0_iiiif:bb.a
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
  %i.gn = getelementptr inbounds nuw i8, ptr %.4713437.i.us.us, i64 %.idx810.i
  %i.go = add nuw nsw i32 %.0723436.i.us.us, 4    ; 2 uses
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
  %.0462.i.us = phi ptr [ %i.ke, %.loopexit417.i.loopexit19.us ], [ %.val, %.lr.ph463.i.split.us ]
  %i.gt = load ptr, ptr %0, align 8, !tbaa !9
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.n
  %i.gv = add nsw i64 %indvars.iv.i.us, %i.y
  %i.gw = mul nsw i64 %i.gv, %i.z
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.gw
  br label %.lr.ph433.i.us

.lr.ph433.i.us:                                   ; preds = %.loopexit425.i.us, %.lr.ph433.i.us
  %.3432.i.us = phi ptr [ %i.ke, %.lr.ph433.i.us ], [ %.0462.i.us, %.loopexit425.i.us ] ; 3 uses
  %.2711431.i.us = phi ptr [ %i.kf, %.lr.ph433.i.us ], [ %i.gx, %.loopexit425.i.us ] ; 9 uses
  %.0722430.i.us = phi i32 [ %i.kg, %.lr.ph433.i.us ], [ 0, %.loopexit425.i.us ]
  %i.gy = load <16 x float>, ptr %.2711431.i.us, align 1, !tbaa !17
  %i.gz = getelementptr inbounds nuw i8, ptr %.2711431.i.us, i64 64
  %i.ha = load <16 x float>, ptr %i.gz, align 1, !tbaa !17
  %i.hb = getelementptr inbounds nuw i8, ptr %.2711431.i.us, i64 128
  %i.hc = load <16 x float>, ptr %i.hb, align 1, !tbaa !17
  %i.hd = getelementptr inbounds nuw i8, ptr %.2711431.i.us, i64 192
  %i.he = load <16 x float>, ptr %i.hd, align 1, !tbaa !17
  %i.hf = getelementptr inbounds nuw i8, ptr %.2711431.i.us, i64 256
  %i.hg = load <16 x float>, ptr %i.hf, align 1, !tbaa !17
  %i.hh = getelementptr inbounds nuw i8, ptr %.2711431.i.us, i64 320
  %i.hi = load <16 x float>, ptr %i.hh, align 1, !tbaa !17
  %i.hj = getelementptr inbounds nuw i8, ptr %.2711431.i.us, i64 384
  %i.hk = load <16 x float>, ptr %i.hj, align 1, !tbaa !17
  %i.hl = getelementptr inbounds nuw i8, ptr %.2711431.i.us, i64 448
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
  %i.jq = shufflevector <16 x i8> %i.ja, <16 x i8> %i.ji, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jr = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.jq, <32 x i8> splat (i8 -127))
  %i.js = shufflevector <2 x i64> %i.ig, <2 x i64> %i.is, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jt = bitcast <8 x i64> %i.js to <16 x i32>
  %i.ju = bitcast <32 x i8> %i.jr to <8 x i32>
  %i.jv = shufflevector <8 x i32> %i.ju, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jw = shufflevector <16 x i32> %i.jt, <16 x i32> %i.jv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.jx = shufflevector <16 x i32> %i.jp, <16 x i32> %i.jw, <16 x i32> <i32 0, i32 2, i32 16, i32 18, i32 4, i32 6, i32 20, i32 22, i32 8, i32 10, i32 24, i32 26, i32 12, i32 14, i32 28, i32 30>
  %i.jy = shufflevector <16 x i32> %i.jp, <16 x i32> %i.jw, <16 x i32> <i32 1, i32 3, i32 17, i32 19, i32 5, i32 7, i32 21, i32 23, i32 9, i32 11, i32 25, i32 27, i32 13, i32 15, i32 29, i32 31>
  %i.jz = bitcast <16 x i32> %i.jx to <64 x i8>
  %i.ka = add <64 x i8> %i.jz, splat (i8 127)
  %i.kb = bitcast <16 x i32> %i.jy to <64 x i8>
  %i.kc = add <64 x i8> %i.kb, splat (i8 127)
  store <64 x i8> %i.ka, ptr %.3432.i.us, align 64, !tbaa !17
  %i.kd = getelementptr inbounds nuw i8, ptr %.3432.i.us, i64 64
  store <64 x i8> %i.kc, ptr %i.kd, align 64, !tbaa !17
  %i.ke = getelementptr inbounds nuw i8, ptr %.3432.i.us, i64 128 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.2711431.i.us, i64 %.idx811.i
  %i.kg = add nuw nsw i32 %.0722430.i.us, 8       ; 2 uses
  %i.kh = or disjoint i32 %i.kg, 7
  %i.ki = icmp slt i32 %i.kh, %5
  br i1 %i.ki, label %.lr.ph433.i.us, label %.loopexit417.i.loopexit19.us, !llvm.loop !356

.loopexit417.i.loopexit19.us:                     ; preds = %.lr.ph433.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 16 ; 3 uses
  %i.kj = or disjoint i64 %indvars.iv.next.i.us, 15
  %i.kk = icmp samesign ult i64 %i.kj, %i.x
  br i1 %i.kk, label %.loopexit425.i.us, label %.preheader415.loopexit.i, !llvm.loop !354

.preheader415.loopexit.i:                         ; preds = %.loopexit417.i.loopexit20, %.loopexit417.i.loopexit19.us, %.loopexit417.i.loopexit18.us.us, %.loopexit417.i.us.us.us.us, %.loopexit425.i.us.us.us.preheader
  %.us-phi = phi ptr [ %.10.i.us.us.us.us, %.loopexit417.i.us.us.us.us ], [ %.val, %.loopexit425.i.us.us.us.preheader ], [ %i.ke, %.loopexit417.i.loopexit19.us ], [ %i.gm, %.loopexit417.i.loopexit18.us.us ], [ %i.adg, %.loopexit417.i.loopexit20 ]
  %.us-phi62 = phi i64 [ %indvars.iv.next.i.us.us.us.us, %.loopexit417.i.us.us.us.us ], [ %i.ac, %.loopexit425.i.us.us.us.preheader ], [ %indvars.iv.next.i.us, %.loopexit417.i.loopexit19.us ], [ %indvars.iv.next.i.us.us, %.loopexit417.i.loopexit18.us.us ], [ %indvars.iv.next.i, %.loopexit417.i.loopexit20 ]
  %i.kl = trunc nuw nsw i64 %.us-phi62 to i32
  br label %.preheader415.i

.preheader415.i:                                  ; preds = %.preheader415.loopexit.i, %bb.a
  %.0704.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.kl, %.preheader415.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.val, %bb.a ], [ %.us-phi, %.preheader415.loopexit.i ] ; 6 uses
  %i.km = or disjoint i32 %.0704.lcssa.i, 7
  %i.kn = icmp slt i32 %i.km, %3
  br i1 %i.kn, label %.lr.ph505.i, label %.preheader408.i

.lr.ph505.i:                                      ; preds = %.preheader415.i
  %i.ko = sext i32 %4 to i64
  %i.kp = mul i64 %i.k, %i.ko                     ; 4 uses
  %i.kq = icmp ne i32 %i.b, 16
  %i.kr = insertelement <16 x float> poison, float %6, i64 0
  %i.ks = shufflevector <16 x float> %i.kr, <16 x float> poison, <16 x i32> zeroinitializer ; 8 uses
  %i.kt = icmp slt i32 %5, 16
  %.idx805.i = shl i64 %i.k, 6
  %i.ku = insertelement <8 x float> poison, float %6, i64 0
  %i.kv = shufflevector <8 x float> %i.ku, <8 x float> poison, <8 x i32> zeroinitializer ; 21 uses
  %.idx804.i = shl i64 %i.k, 5
  %i.kw = icmp ne i32 %i.b, 4
  %i.kx = icmp slt i32 %5, 4
  %.idx803.i = shl i64 %i.k, 4                    ; 2 uses
  %i.ky = icmp eq i32 %i.b, 1
  %i.kz = icmp sgt i32 %5, 3
  %.idx800.i = shl i64 %i.k, 3                    ; 2 uses
  %.idx801.i = mul i64 %i.k, 12
  %i.la = and i32 %5, -4
  %i.lb = zext i32 %.0704.lcssa.i to i64          ; 7 uses
  %i.lc = sext i32 %3 to i64
  %i.ld = sext i32 %2 to i64                      ; 4 uses
  %i.le = sext i32 %i.b to i64                    ; 4 uses
  %brmerge634.i = or i1 %i.kt, %i.kq
  %brmerge640.i = or i1 %i.kx, %i.kw
  %invariant.op.i = add nsw i64 %i.lc, -7         ; 5 uses
  br i1 %brmerge634.i, label %.lr.ph505.i.split.us, label %.lr.ph469.i.preheader

.lr.ph505.i.split.us:                             ; preds = %.lr.ph505.i
  %i.lf = icmp slt i32 %5, 8
  %i.lg = icmp ne i32 %i.b, 8
  %brmerge637.i = or i1 %i.lf, %i.lg
  br i1 %brmerge637.i, label %.lr.ph505.i.split.us.split.us, label %.loopexit414.i.us

.lr.ph505.i.split.us.split.us:                    ; preds = %.lr.ph505.i.split.us
  br i1 %brmerge640.i, label %.lr.ph505.i.split.us.split.us.split.us, label %.loopexit414.i.us.us

.lr.ph505.i.split.us.split.us.split.us:           ; preds = %.lr.ph505.i.split.us.split.us
  br i1 %i.ky, label %.loopexit414.i.us.us.us.us, label %.loopexit414.i.us.us.us.preheader

.loopexit414.i.us.us.us.preheader:                ; preds = %.lr.ph505.i.split.us.split.us.split.us
  %i.lh = add nuw nsw i64 %i.lb, 8
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.lh)
  %i.li = xor i64 %i.lb, -1
  %i.lj = add nsw i64 %smax, %i.li
  %i.lk = and i64 %i.lj, -8
  %i.ll = add nuw i64 %i.lk, %i.lb
  %i.lm = add nuw i64 %i.ll, 8
  br label %.preheader408.loopexit.i

.loopexit414.i.us.us.us.us:                       ; preds = %.lr.ph505.i.split.us.split.us.split.us, %.loopexit410.i.us.us.us.us
  %indvars.iv735.i.us.us.us.us = phi i64 [ %indvars.iv.next736.i.us.us.us.us, %.loopexit410.i.us.us.us.us ], [ %i.lb, %.lr.ph505.i.split.us.split.us.split.us ] ; 2 uses
  %.11504.i.us.us.us.us = phi ptr [ %.21.i.us.us.us.us, %.loopexit410.i.us.us.us.us ], [ %.0.lcssa.i, %.lr.ph505.i.split.us.split.us.split.us ] ; 2 uses
  %i.ln = load ptr, ptr %0, align 8, !tbaa !9
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.kp
  %i.lp = add nsw i64 %indvars.iv735.i.us.us.us.us, %i.ld
  %i.lq = mul nuw nsw i64 %i.lp, %i.le
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.lo, i64 %i.lq ; 2 uses
  br i1 %i.kz, label %.lr.ph487.i.us.us.us.us, label %.preheader411.i.us.us.us.us

.lr.ph487.i.us.us.us.us:                          ; preds = %.loopexit414.i.us.us.us.us, %.lr.ph487.i.us.us.us.us
  %.18486.i.us.us.us.us = phi ptr [ %i.nq, %.lr.ph487.i.us.us.us.us ], [ %.11504.i.us.us.us.us, %.loopexit414.i.us.us.us.us ] ; 2 uses
  %.6734485.i.us.us.us.us = phi ptr [ %i.nr, %.lr.ph487.i.us.us.us.us ], [ %i.lr, %.loopexit414.i.us.us.us.us ] ; 5 uses
  %.0749484.i.us.us.us.us = phi i32 [ %i.ns, %.lr.ph487.i.us.us.us.us ], [ 0, %.loopexit414.i.us.us.us.us ]
  %i.ls = load <8 x float>, ptr %.6734485.i.us.us.us.us, align 1, !tbaa !17
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.6734485.i.us.us.us.us, i64 %i.k
  %i.lu = load <8 x float>, ptr %i.lt, align 1, !tbaa !17
  %i.lv = getelementptr inbounds nuw i8, ptr %.6734485.i.us.us.us.us, i64 %.idx800.i
  %i.lw = load <8 x float>, ptr %i.lv, align 1, !tbaa !17
  %i.lx = getelementptr inbounds nuw i8, ptr %.6734485.i.us.us.us.us, i64 %.idx801.i
  %i.ly = load <8 x float>, ptr %i.lx, align 1, !tbaa !17
  %i.lz = fmul fast <8 x float> %i.ls, %i.kv      ; 2 uses
  %i.ma = fmul fast <8 x float> %i.lu, %i.kv      ; 2 uses
  %i.mb = fmul fast <8 x float> %i.lw, %i.kv      ; 2 uses
  %i.mc = fmul fast <8 x float> %i.ly, %i.kv      ; 2 uses
  %i.md = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.lz)
  %i.me = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.mb)
  %i.mf = fadd fast <8 x float> %i.md, %i.lz
  %i.mg = fadd fast <8 x float> %i.me, %i.mb
  %i.mh = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mf)
  %i.mi = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mg)
  %i.mj = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.mh, <8 x i32> %i.mi)
  %i.mk = bitcast <16 x i16> %i.mj to <4 x i64>
  %i.ml = shufflevector <4 x i64> %i.mk, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.mm = bitcast <4 x i64> %i.ml to <16 x i16>
  %i.mn = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.mm, <16 x i16> splat (i16 -127))
  %i.mo = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.mn, <16 x i16> splat (i16 127))
  %i.mp = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.mo, <16 x i16> poison)
  %i.mq = bitcast <32 x i8> %i.mp to <8 x i32>
  %i.mr = shufflevector <8 x i32> %i.mq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ms = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ma)
  %i.mt = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.mc)
  %i.mu = fadd fast <8 x float> %i.ms, %i.ma
  %i.mv = fadd fast <8 x float> %i.mt, %i.mc
  %i.mw = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mu)
  %i.mx = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mv)
  %i.my = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.mw, <8 x i32> %i.mx)
  %i.mz = bitcast <16 x i16> %i.my to <4 x i64>
  %i.na = shufflevector <4 x i64> %i.mz, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.nb = bitcast <4 x i64> %i.na to <16 x i16>
  %i.nc = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.nb, <16 x i16> splat (i16 -127))
  %i.nd = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.nc, <16 x i16> splat (i16 127))
  %i.ne = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.nd, <16 x i16> poison)
  %i.nf = bitcast <32 x i8> %i.ne to <8 x i32>
  %i.ng = shufflevector <8 x i32> %i.nf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.nh = bitcast <4 x i32> %i.mr to <16 x i8>    ; 2 uses
  %i.ni = bitcast <4 x i32> %i.ng to <16 x i8>    ; 2 uses
  %i.nj = shufflevector <16 x i8> %i.nh, <16 x i8> %i.ni, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.nk = shufflevector <16 x i8> %i.nh, <16 x i8> %i.ni, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.nl = bitcast <16 x i8> %i.nj to <8 x i16>
  %i.nm = bitcast <16 x i8> %i.nk to <8 x i16>
  %i.nn = shufflevector <8 x i16> %i.nl, <8 x i16> %i.nm, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.no = bitcast <16 x i16> %i.nn to <32 x i8>
  %i.np = add <32 x i8> %i.no, splat (i8 127)
  store <32 x i8> %i.np, ptr %.18486.i.us.us.us.us, align 1, !tbaa !17
  %i.nq = getelementptr inbounds nuw i8, ptr %.18486.i.us.us.us.us, i64 32 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.6734485.i.us.us.us.us, i64 %.idx803.i ; 2 uses
  %i.ns = add nuw nsw i32 %.0749484.i.us.us.us.us, 4 ; 2 uses
  %i.nt = or disjoint i32 %i.ns, 3
  %i.nu = icmp slt i32 %i.nt, %5
  br i1 %i.nu, label %.lr.ph487.i.us.us.us.us, label %.preheader411.i.us.us.us.us, !llvm.loop !357

.preheader411.i.us.us.us.us:                      ; preds = %.lr.ph487.i.us.us.us.us, %.loopexit414.i.us.us.us.us
  %.0749.lcssa.i.us.us.us.us = phi i32 [ 0, %.loopexit414.i.us.us.us.us ], [ %i.la, %.lr.ph487.i.us.us.us.us ] ; 3 uses
  %.6734.lcssa.i.us.us.us.us = phi ptr [ %i.lr, %.loopexit414.i.us.us.us.us ], [ %i.nr, %.lr.ph487.i.us.us.us.us ] ; 2 uses
  %.18.lcssa.i.us.us.us.us = phi ptr [ %.11504.i.us.us.us.us, %.loopexit414.i.us.us.us.us ], [ %i.nq, %.lr.ph487.i.us.us.us.us ] ; 2 uses
  %i.nv = or disjoint i32 %.0749.lcssa.i.us.us.us.us, 1
  %i.nw = icmp slt i32 %i.nv, %5
  br i1 %i.nw, label %.lr.ph494.i.us.us.us.us, label %.preheader409.i.us.us.us.us

.lr.ph494.i.us.us.us.us:                          ; preds = %.preheader411.i.us.us.us.us, %.lr.ph494.i.us.us.us.us
  %.19493.i.us.us.us.us = phi ptr [ %i.ot, %.lr.ph494.i.us.us.us.us ], [ %.18.lcssa.i.us.us.us.us, %.preheader411.i.us.us.us.us ] ; 2 uses
  %.7735492.i.us.us.us.us = phi ptr [ %i.ou, %.lr.ph494.i.us.us.us.us ], [ %.6734.lcssa.i.us.us.us.us, %.preheader411.i.us.us.us.us ] ; 3 uses
  %.1750491.i.us.us.us.us = phi i32 [ %i.ov, %.lr.ph494.i.us.us.us.us ], [ %.0749.lcssa.i.us.us.us.us, %.preheader411.i.us.us.us.us ]
  %i.nx = load <8 x float>, ptr %.7735492.i.us.us.us.us, align 1, !tbaa !17
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.7735492.i.us.us.us.us, i64 %i.k
  %i.nz = load <8 x float>, ptr %i.ny, align 1, !tbaa !17
  %i.oa = fmul fast <8 x float> %i.nx, %i.kv      ; 2 uses
  %i.ob = fmul fast <8 x float> %i.nz, %i.kv      ; 2 uses
  %i.oc = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.oa)
  %i.od = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ob)
  %i.oe = fadd fast <8 x float> %i.oc, %i.oa
  %i.of = fadd fast <8 x float> %i.od, %i.ob
  %i.og = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.oe)
  %i.oh = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.of)
  %i.oi = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.og, <8 x i32> %i.oh)
  %i.oj = bitcast <16 x i16> %i.oi to <4 x i64>
  %i.ok = shufflevector <4 x i64> %i.oj, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ol = bitcast <4 x i64> %i.ok to <16 x i16>
  %i.om = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.ol, <16 x i16> splat (i16 -127))
  %i.on = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.om, <16 x i16> splat (i16 127))
  %i.oo = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.on, <16 x i16> poison)
  %i.op = bitcast <32 x i8> %i.oo to <8 x i32>
  %i.oq = shufflevector <8 x i32> %i.op, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.or = bitcast <4 x i32> %i.oq to <16 x i8>
  %i.os = shufflevector <16 x i8> %i.or, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.os, ptr %.19493.i.us.us.us.us, align 16, !tbaa !17
  %i.ot = getelementptr inbounds nuw i8, ptr %.19493.i.us.us.us.us, i64 16 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.7735492.i.us.us.us.us, i64 %.idx800.i ; 2 uses
  %i.ov = add nuw nsw i32 %.1750491.i.us.us.us.us, 2 ; 3 uses
  %i.ow = or disjoint i32 %i.ov, 1
  %i.ox = icmp slt i32 %i.ow, %5
  br i1 %i.ox, label %.lr.ph494.i.us.us.us.us, label %.preheader409.i.us.us.us.us, !llvm.loop !358

.preheader409.i.us.us.us.us:                      ; preds = %.lr.ph494.i.us.us.us.us, %.preheader411.i.us.us.us.us
  %.1750.lcssa.i.us.us.us.us = phi i32 [ %.0749.lcssa.i.us.us.us.us, %.preheader411.i.us.us.us.us ], [ %i.ov, %.lr.ph494.i.us.us.us.us ] ; 5 uses
  %.7735.lcssa.i.us.us.us.us = phi ptr [ %.6734.lcssa.i.us.us.us.us, %.preheader411.i.us.us.us.us ], [ %i.ou, %.lr.ph494.i.us.us.us.us ] ; 3 uses
  %.19.lcssa.i.us.us.us.us = phi ptr [ %.18.lcssa.i.us.us.us.us, %.preheader411.i.us.us.us.us ], [ %i.ot, %.lr.ph494.i.us.us.us.us ] ; 4 uses
  %i.oy = icmp slt i32 %.1750.lcssa.i.us.us.us.us, %5
  br i1 %i.oy, label %.lr.ph501.i.us.us.us.us.preheader, label %.loopexit410.i.us.us.us.us

.lr.ph501.i.us.us.us.us.preheader:                ; preds = %.preheader409.i.us.us.us.us
  %i.oz = sub i32 %5, %.1750.lcssa.i.us.us.us.us
  %.neg326 = add i32 %.1750.lcssa.i.us.us.us.us, 1
  %xtraiter310 = and i32 %i.oz, 1
  %lcmp.mod311.not = icmp eq i32 %xtraiter310, 0
  br i1 %lcmp.mod311.not, label %.lr.ph501.i.us.us.us.us.prol.loopexit, label %.lr.ph501.i.us.us.us.us.prol

.lr.ph501.i.us.us.us.us.prol:                     ; preds = %.lr.ph501.i.us.us.us.us.preheader
  %i.pa = load <8 x float>, ptr %.7735.lcssa.i.us.us.us.us, align 1, !tbaa !17
  %i.pb = fmul fast <8 x float> %i.pa, %i.kv      ; 2 uses
  %i.pc = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.pb)
  %i.pd = fadd fast <8 x float> %i.pc, %i.pb
  %i.pe = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.pd)
  %i.pf = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.pe, <16 x i8> zeroinitializer, i8 -1)
  %i.pg = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.pf, <16 x i8> splat (i8 -127))
  %i.ph = bitcast <16 x i8> %i.pg to <2 x i64>
  %i.pi = extractelement <2 x i64> %i.ph, i64 0
  store i64 %i.pi, ptr %.19.lcssa.i.us.us.us.us, align 8, !tbaa !219
  %i.pj = getelementptr inbounds nuw i8, ptr %.19.lcssa.i.us.us.us.us, i64 8 ; 2 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %.7735.lcssa.i.us.us.us.us, i64 %i.k
  %i.pl = add nuw nsw i32 %.1750.lcssa.i.us.us.us.us, 1
  br label %.lr.ph501.i.us.us.us.us.prol.loopexit

.lr.ph501.i.us.us.us.us.prol.loopexit:            ; preds = %.lr.ph501.i.us.us.us.us.prol, %.lr.ph501.i.us.us.us.us.preheader
  %.lcssa291.unr = phi ptr [ poison, %.lr.ph501.i.us.us.us.us.preheader ], [ %i.pj, %.lr.ph501.i.us.us.us.us.prol ]
  %.20500.i.us.us.us.us.unr = phi ptr [ %.19.lcssa.i.us.us.us.us, %.lr.ph501.i.us.us.us.us.preheader ], [ %i.pj, %.lr.ph501.i.us.us.us.us.prol ]
  %.8736499.i.us.us.us.us.unr = phi ptr [ %.7735.lcssa.i.us.us.us.us, %.lr.ph501.i.us.us.us.us.preheader ], [ %i.pk, %.lr.ph501.i.us.us.us.us.prol ]
  %.2751498.i.us.us.us.us.unr = phi i32 [ %.1750.lcssa.i.us.us.us.us, %.lr.ph501.i.us.us.us.us.preheader ], [ %i.pl, %.lr.ph501.i.us.us.us.us.prol ]
  %i.pm = icmp eq i32 %5, %.neg326
  br i1 %i.pm, label %.loopexit410.i.us.us.us.us, label %.lr.ph501.i.us.us.us.us

.lr.ph501.i.us.us.us.us:                          ; preds = %.lr.ph501.i.us.us.us.us.prol.loopexit, %.lr.ph501.i.us.us.us.us
  %.20500.i.us.us.us.us = phi ptr [ %i.qh, %.lr.ph501.i.us.us.us.us ], [ %.20500.i.us.us.us.us.unr, %.lr.ph501.i.us.us.us.us.prol.loopexit ] ; 3 uses
  %.8736499.i.us.us.us.us = phi ptr [ %i.qi, %.lr.ph501.i.us.us.us.us ], [ %.8736499.i.us.us.us.us.unr, %.lr.ph501.i.us.us.us.us.prol.loopexit ] ; 2 uses
  %.2751498.i.us.us.us.us = phi i32 [ %i.qj, %.lr.ph501.i.us.us.us.us ], [ %.2751498.i.us.us.us.us.unr, %.lr.ph501.i.us.us.us.us.prol.loopexit ]
  %i.pn = load <8 x float>, ptr %.8736499.i.us.us.us.us, align 1, !tbaa !17
  %i.po = fmul fast <8 x float> %i.pn, %i.kv      ; 2 uses
  %i.pp = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.po)
  %i.pq = fadd fast <8 x float> %i.pp, %i.po
  %i.pr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.pq)
  %i.ps = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.pr, <16 x i8> zeroinitializer, i8 -1)
  %i.pt = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ps, <16 x i8> splat (i8 -127))
  %i.pu = bitcast <16 x i8> %i.pt to <2 x i64>
  %i.pv = extractelement <2 x i64> %i.pu, i64 0
  store i64 %i.pv, ptr %.20500.i.us.us.us.us, align 8, !tbaa !219
  %i.pw = getelementptr inbounds nuw i8, ptr %.20500.i.us.us.us.us, i64 8
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.8736499.i.us.us.us.us, i64 %i.k ; 2 uses
  %i.py = load <8 x float>, ptr %i.px, align 1, !tbaa !17
  %i.pz = fmul fast <8 x float> %i.py, %i.kv      ; 2 uses
  %i.qa = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.pz)
  %i.qb = fadd fast <8 x float> %i.qa, %i.pz
  %i.qc = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qb)
  %i.qd = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.qc, <16 x i8> zeroinitializer, i8 -1)
  %i.qe = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.qd, <16 x i8> splat (i8 -127))
  %i.qf = bitcast <16 x i8> %i.qe to <2 x i64>
  %i.qg = extractelement <2 x i64> %i.qf, i64 0
  store i64 %i.qg, ptr %i.pw, align 8, !tbaa !219
  %i.qh = getelementptr inbounds nuw i8, ptr %.20500.i.us.us.us.us, i64 16 ; 2 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %i.k
  %i.qj = add nuw nsw i32 %.2751498.i.us.us.us.us, 2 ; 2 uses
  %exitcond734.not.i.us.us.us.us.1 = icmp eq i32 %i.qj, %5
  br i1 %exitcond734.not.i.us.us.us.us.1, label %.loopexit410.i.us.us.us.us, label %.lr.ph501.i.us.us.us.us, !llvm.loop !359

.loopexit410.i.us.us.us.us:                       ; preds = %.lr.ph501.i.us.us.us.us.prol.loopexit, %.lr.ph501.i.us.us.us.us, %.preheader409.i.us.us.us.us
  %.21.i.us.us.us.us = phi ptr [ %.19.lcssa.i.us.us.us.us, %.preheader409.i.us.us.us.us ], [ %.lcssa291.unr, %.lr.ph501.i.us.us.us.us.prol.loopexit ], [ %i.qh, %.lr.ph501.i.us.us.us.us ] ; 2 uses
  %indvars.iv.next736.i.us.us.us.us = add nuw nsw i64 %indvars.iv735.i.us.us.us.us, 8 ; 3 uses
  %i.qk = icmp slt i64 %indvars.iv.next736.i.us.us.us.us, %invariant.op.i
  br i1 %i.qk, label %.loopexit414.i.us.us.us.us, label %.preheader408.loopexit.i, !llvm.loop !360

.loopexit414.i.us.us:                             ; preds = %.lr.ph505.i.split.us.split.us, %.loopexit410.i.loopexit15.us.us
  %indvars.iv735.i.us.us = phi i64 [ %indvars.iv.next736.i.us.us, %.loopexit410.i.loopexit15.us.us ], [ %i.lb, %.lr.ph505.i.split.us.split.us ] ; 2 uses
  %.11504.i.us.us = phi ptr [ %i.sg, %.loopexit410.i.loopexit15.us.us ], [ %.0.lcssa.i, %.lr.ph505.i.split.us.split.us ]
  %i.ql = load ptr, ptr %0, align 8, !tbaa !9
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %i.kp
  %i.qn = add nsw i64 %indvars.iv735.i.us.us, %i.ld
  %i.qo = mul nsw i64 %i.qn, %i.le
  %i.qp = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %i.qo
end_hunk_2
begin_hunk_3_@_ZN4ncnn45transpose_pack_B_tile_fp32_to_int8_avx512vnniERKNS_3MatERS0_iiiif:bb.a
  %i.bct = getelementptr inbounds nuw i8, ptr %.2742598.i, i64 %.idx783.i ; 2 uses
  %i.bcu = load <8 x float>, ptr %i.bct, align 32, !tbaa !17
  %i.bcv = fmul fast <8 x float> %i.bcu, %i.auf   ; 2 uses
  %i.bcw = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bcv)
  %i.bcx = fadd fast <8 x float> %i.bcw, %i.bcv
  %i.bcy = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bcx)
  %i.bcz = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.bcy, <16 x i8> zeroinitializer, i8 -1)
  %i.bda = shufflevector <16 x i8> %i.bcz, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bdb = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %i.bda, <8 x i8> splat (i8 -127))
  %i.bdc = add <8 x i8> %i.bdb, splat (i8 127)
  store <8 x i8> %i.bdc, ptr %i.bcs, align 1, !tbaa !17
  %i.bdd = getelementptr inbounds nuw i8, ptr %.47600.i, i64 16 ; 3 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bct, i64 %.idx783.i ; 2 uses
  %niter323.next.1 = add i32 %niter323, 2         ; 2 uses
  %niter323.ncmp.1.not = icmp eq i32 %niter323.next.1, %unroll_iter322
  br i1 %niter323.ncmp.1.not, label %.loopexit.i.loopexit255.unr-lcssa, label %.lr.ph601.i, !llvm.loop !380

.loopexit392.i:                                   ; preds = %.loopexit393.i
  br i1 %brmerge667.i, label %.loopexit391.i, label %.lr.ph607.i

.lr.ph607.i:                                      ; preds = %.loopexit392.i, %.lr.ph607.i
  %.49606.i = phi ptr [ %i.bdq, %.lr.ph607.i ], [ %.44623.i, %.loopexit392.i ] ; 2 uses
  %.0721605.i = phi i32 [ %i.bds, %.lr.ph607.i ], [ 0, %.loopexit392.i ]
  %.4744604.i = phi ptr [ %i.bdr, %.lr.ph607.i ], [ %i.bbo, %.loopexit392.i ] ; 2 uses
  %i.bdf = load <4 x float>, ptr %.4744604.i, align 16, !tbaa !17
  %i.bdg = fmul fast <4 x float> %i.bdf, %i.auj   ; 2 uses
  %i.bdh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bdg)
  %i.bdi = fadd fast <4 x float> %i.bdh, %i.bdg
  %i.bdj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bdi) ; 2 uses
  %i.bdk = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bdj, <4 x i32> %i.bdj)
  %i.bdl = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bdk, <8 x i16> splat (i16 -127))
  %i.bdm = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bdl, <8 x i16> splat (i16 127))
  %i.bdn = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bdm, <8 x i16> poison)
  %i.bdo = shufflevector <16 x i8> %i.bdn, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bdp = add <4 x i8> %i.bdo, splat (i8 127)
  store <4 x i8> %i.bdp, ptr %.49606.i, align 1, !tbaa !17
  %i.bdq = getelementptr inbounds nuw i8, ptr %.49606.i, i64 4 ; 2 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %.4744604.i, i64 %.idx782.i
  %i.bds = add nuw nsw i32 %.0721605.i, 4         ; 2 uses
  %i.bdt = or disjoint i32 %i.bds, 3
  %i.bdu = icmp slt i32 %i.bdt, %5
  br i1 %i.bdu, label %.lr.ph607.i, label %.loopexit.i, !llvm.loop !381

.loopexit391.i:                                   ; preds = %.loopexit392.i
  br i1 %i.aul, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %.loopexit391.i
  br i1 %i.aum, label %.lr.ph613.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph613.i, %bb.f
  %.6746.lcssa.i = phi ptr [ %i.bbo, %bb.f ], [ %i.beq, %.lr.ph613.i ] ; 3 uses
  %.0718.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.aur, %.lr.ph613.i ] ; 4 uses
  %.51.lcssa.i = phi ptr [ %.44623.i, %bb.f ], [ %i.bep, %.lr.ph613.i ] ; 4 uses
  %i.bdv = icmp slt i32 %.0718.lcssa.i, %5
  br i1 %i.bdv, label %.lr.ph620.i.preheader, label %.loopexit.i

.lr.ph620.i.preheader:                            ; preds = %.preheader.i
  %.neg328 = or disjoint i32 %.0718.lcssa.i, 1
  br i1 %lcmp.mod325.not, label %.lr.ph620.i.prol.loopexit, label %.lr.ph620.i.prol

.lr.ph620.i.prol:                                 ; preds = %.lr.ph620.i.preheader
  %i.bdw = load float, ptr %.6746.lcssa.i, align 4, !tbaa !236
  %i.bdx = fmul fast float %i.bdw, %6
  %i.bdy = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bdx)
  %i.bdz = fptosi float %i.bdy to i32
  %spec.select.i385.i.prol = tail call i32 @llvm.smax.i32(i32 %i.bdz, i32 -127)
  %.0.i386.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i385.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i386.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.51.lcssa.i, align 1, !tbaa !17
  %i.bea = getelementptr inbounds nuw i8, ptr %.51.lcssa.i, i64 1 ; 2 uses
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %.6746.lcssa.i, i64 %i.k
  %i.bec = or disjoint i32 %.0718.lcssa.i, 1
  br label %.lr.ph620.i.prol.loopexit

.lr.ph620.i.prol.loopexit:                        ; preds = %.lr.ph620.i.prol, %.lr.ph620.i.preheader
  %.lcssa261.unr = phi ptr [ poison, %.lr.ph620.i.preheader ], [ %i.bea, %.lr.ph620.i.prol ]
  %.52619.i.unr = phi ptr [ %.51.lcssa.i, %.lr.ph620.i.preheader ], [ %i.bea, %.lr.ph620.i.prol ]
  %.1719618.i.unr = phi i32 [ %.0718.lcssa.i, %.lr.ph620.i.preheader ], [ %i.bec, %.lr.ph620.i.prol ]
  %.7747617.i.unr = phi ptr [ %.6746.lcssa.i, %.lr.ph620.i.preheader ], [ %i.beb, %.lr.ph620.i.prol ]
  %i.bed = icmp eq i32 %5, %.neg328
  br i1 %i.bed, label %.loopexit.i, label %.lr.ph620.i

.lr.ph613.i:                                      ; preds = %bb.f, %.lr.ph613.i
  %.51612.i = phi ptr [ %i.bep, %.lr.ph613.i ], [ %.44623.i, %bb.f ] ; 2 uses
  %.0718611.i = phi i32 [ %i.ber, %.lr.ph613.i ], [ 0, %bb.f ]
  %.6746610.i = phi ptr [ %i.beq, %.lr.ph613.i ], [ %i.bbo, %bb.f ] ; 2 uses
  %i.bee = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %.6746610.i, <4 x i32> %i.auq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bef = fmul fast <4 x float> %i.bee, %i.auj   ; 2 uses
  %i.beg = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bef)
  %i.beh = fadd fast <4 x float> %i.beg, %i.bef
  %i.bei = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.beh) ; 2 uses
  %i.bej = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bei, <4 x i32> %i.bei)
  %i.bek = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bej, <8 x i16> splat (i16 -127))
  %i.bel = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bek, <8 x i16> splat (i16 127))
  %i.bem = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bel, <8 x i16> poison)
  %i.ben = shufflevector <16 x i8> %i.bem, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.beo = add <4 x i8> %i.ben, splat (i8 127)
  store <4 x i8> %i.beo, ptr %.51612.i, align 1, !tbaa !17
  %i.bep = getelementptr inbounds nuw i8, ptr %.51612.i, i64 4 ; 2 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %.6746610.i, i64 %.idx782.i ; 2 uses
  %i.ber = add nuw nsw i32 %.0718611.i, 4         ; 2 uses
  %i.bes = or disjoint i32 %i.ber, 3
  %i.bet = icmp slt i32 %i.bes, %5
  br i1 %i.bet, label %.lr.ph613.i, label %.preheader.i, !llvm.loop !382

.lr.ph620.i:                                      ; preds = %.lr.ph620.i.prol.loopexit, %.lr.ph620.i
  %.52619.i = phi ptr [ %i.bfe, %.lr.ph620.i ], [ %.52619.i.unr, %.lr.ph620.i.prol.loopexit ] ; 3 uses
  %.1719618.i = phi i32 [ %i.bfg, %.lr.ph620.i ], [ %.1719618.i.unr, %.lr.ph620.i.prol.loopexit ]
  %.7747617.i = phi ptr [ %i.bff, %.lr.ph620.i ], [ %.7747617.i.unr, %.lr.ph620.i.prol.loopexit ] ; 2 uses
  %i.beu = load float, ptr %.7747617.i, align 4, !tbaa !236
  %i.bev = fmul fast float %i.beu, %6
  %i.bew = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bev)
  %i.bex = fptosi float %i.bew to i32
  %spec.select.i385.i = tail call i32 @llvm.smax.i32(i32 %i.bex, i32 -127)
  %.0.i386.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i385.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i386.i to i8
  store i8 %.0.i.i, ptr %.52619.i, align 1, !tbaa !17
  %i.bey = getelementptr inbounds nuw i8, ptr %.52619.i, i64 1
  %i.bez = getelementptr inbounds nuw [4 x i8], ptr %.7747617.i, i64 %i.k ; 2 uses
  %i.bfa = load float, ptr %i.bez, align 4, !tbaa !236
  %i.bfb = fmul fast float %i.bfa, %6
  %i.bfc = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bfb)
  %i.bfd = fptosi float %i.bfc to i32
  %spec.select.i385.i.1 = tail call i32 @llvm.smax.i32(i32 %i.bfd, i32 -127)
  %.0.i386.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i385.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i386.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.bey, align 1, !tbaa !17
  %i.bfe = getelementptr inbounds nuw i8, ptr %.52619.i, i64 2 ; 2 uses
  %i.bff = getelementptr inbounds nuw [4 x i8], ptr %i.bez, i64 %i.k
  %i.bfg = add nuw nsw i32 %.1719618.i, 2         ; 2 uses
  %exitcond746.not.i.1 = icmp eq i32 %i.bfg, %5
  br i1 %exitcond746.not.i.1, label %.loopexit.i, label %.lr.ph620.i, !llvm.loop !383

.loopexit.i.loopexit255.unr-lcssa:                ; preds = %.lr.ph601.i
  br i1 %lcmp.mod319.not.not, label %.lr.ph601.i.epil.preheader, label %.loopexit.i

.lr.ph601.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit255.unr-lcssa, %.lr.ph601.i.preheader
  %.47600.i.epil.init = phi ptr [ %.44623.i, %.lr.ph601.i.preheader ], [ %i.bdd, %.loopexit.i.loopexit255.unr-lcssa ] ; 2 uses
  %.2742598.i.epil.init = phi ptr [ %i.bbo, %.lr.ph601.i.preheader ], [ %i.bde, %.loopexit.i.loopexit255.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod321)
  %i.bfh = load <8 x float>, ptr %.2742598.i.epil.init, align 32, !tbaa !17
  %i.bfi = fmul fast <8 x float> %i.bfh, %i.auf   ; 2 uses
  %i.bfj = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bfi)
  %i.bfk = fadd fast <8 x float> %i.bfj, %i.bfi
  %i.bfl = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bfk)
  %i.bfm = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.bfl, <16 x i8> zeroinitializer, i8 -1)
  %i.bfn = shufflevector <16 x i8> %i.bfm, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bfo = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %i.bfn, <8 x i8> splat (i8 -127))
  %i.bfp = add <8 x i8> %i.bfo, splat (i8 127)
  store <8 x i8> %i.bfp, ptr %.47600.i.epil.init, align 1, !tbaa !17
  %i.bfq = getelementptr inbounds nuw i8, ptr %.47600.i.epil.init, i64 8
  br label %.loopexit.i

.loopexit.i.loopexit256.unr-lcssa:                ; preds = %.lr.ph595.i
  br i1 %lcmp.mod315.not.not, label %.lr.ph595.i.epil.preheader, label %.loopexit.i

.lr.ph595.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit256.unr-lcssa, %.lr.ph595.i.preheader
  %.45594.i.epil.init = phi ptr [ %.44623.i, %.lr.ph595.i.preheader ], [ %i.bch, %.loopexit.i.loopexit256.unr-lcssa ] ; 2 uses
  %.0740592.i.epil.init = phi ptr [ %i.bbo, %.lr.ph595.i.preheader ], [ %i.bci, %.loopexit.i.loopexit256.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod317)
  %i.bfr = load <16 x float>, ptr %.0740592.i.epil.init, align 64, !tbaa !17
  %i.bfs = fmul fast <16 x float> %i.bfr, %i.aub  ; 2 uses
  %i.bft = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bfs)
  %i.bfu = fadd fast <16 x float> %i.bft, %i.bfs
  %i.bfv = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bfu, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bfw = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bfv, <16 x i8> zeroinitializer, i16 -1)
  %i.bfx = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bfw, <16 x i8> splat (i8 -127))
  %i.bfy = add <16 x i8> %i.bfx, splat (i8 127)
  store <16 x i8> %i.bfy, ptr %.45594.i.epil.init, align 16, !tbaa !17
  %i.bfz = getelementptr inbounds nuw i8, ptr %.45594.i.epil.init, i64 16
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph595.i.epil.preheader, %.loopexit.i.loopexit256.unr-lcssa, %.lr.ph601.i.epil.preheader, %.loopexit.i.loopexit255.unr-lcssa, %.lr.ph607.i, %.lr.ph620.i.prol.loopexit, %.lr.ph620.i, %.preheader.i, %.loopexit391.i
  %.53.i = phi ptr [ %.44623.i, %.loopexit391.i ], [ %.51.lcssa.i, %.preheader.i ], [ %i.bfe, %.lr.ph620.i ], [ %i.bdq, %.lr.ph607.i ], [ %i.bfq, %.lr.ph601.i.epil.preheader ], [ %.lcssa261.unr, %.lr.ph620.i.prol.loopexit ], [ %i.bdd, %.loopexit.i.loopexit255.unr-lcssa ], [ %i.bch, %.loopexit.i.loopexit256.unr-lcssa ], [ %i.bfz, %.lr.ph595.i.epil.preheader ]
  %indvars.iv.next748.i = add nsw i64 %indvars.iv747.i, 1 ; 2 uses
  %exitcond750.not.i = icmp eq i64 %indvars.iv.next748.i, %wide.trip.count.i
  br i1 %exitcond750.not.i, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %bb.e, !llvm.loop !384

_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit: ; preds = %.loopexit.i, %.preheader394.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ncnn39gemm_transB_packed_tile_int8_avx512vnniERKNS_3MatES2_RS0_iiiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !9     ; 4 uses
  %.val8 = load ptr, ptr %1, align 8, !tbaa !9    ; 10 uses
  %.val9 = load ptr, ptr %2, align 8, !tbaa !9    ; 2 uses
  %i.a = icmp sgt i32 %4, 15
  br i1 %i.a, label %.preheader1160.lr.ph.i, label %.preheader1150.i

.preheader1160.lr.ph.i:                           ; preds = %bb.a
  %i.b = icmp sgt i32 %6, 15
  %i.c = icmp eq i32 %7, 0                        ; 5 uses
  %i.d = icmp sgt i32 %8, 3                       ; 6 uses
  %i.e = shl i32 %8, 4
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %spec.select.idx.i = select i1 %i.d, i64 64, i64 0 ; 2 uses
  %i.g = add i32 %8, -4                           ; 4 uses
  %i.h = and i32 %i.g, -4
  %i.i = add nuw nsw i32 %i.h, 4                  ; 5 uses
  %i.j = and i32 %6, -16
  %i.k = zext i32 %i.g to i64                     ; 2 uses
  %i.l = lshr i64 %i.k, 2                         ; 4 uses
  %i.m = shl nuw nsw i64 %i.l, 5
  %i.n = shl nuw nsw i64 %i.l, 4
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = and i64 %i.k, 4294967292
  %i.q = shl nuw nsw i64 %i.l, 6                  ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 64                 ; 2 uses
  %scevgep892 = getelementptr i8, ptr %.val, i64 %i.q
  %i.s = add nsw i64 %spec.select.idx.i, %i.f     ; 2 uses
  %scevgep894 = getelementptr i8, ptr %.val, i64 %i.r
  %i.t = lshr i32 %i.g, 2
  %i.u = add nuw nsw i32 %i.t, 1                  ; 2 uses
  %xtraiter = and i32 %i.u, 3                     ; 3 uses
  %i.v = icmp ult i32 %i.g, 12
  %unroll_iter = and i32 %i.u, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod3386 = icmp ne i32 %xtraiter, 0
  br label %.preheader1160.i

.preheader1160.i:                                 ; preds = %._crit_edge1630.i, %.preheader1160.lr.ph.i
  %indvars.iv895 = phi ptr [ %scevgep896, %._crit_edge1630.i ], [ %scevgep894, %.preheader1160.lr.ph.i ] ; 5 uses
  %indvars.iv = phi ptr [ %scevgep893, %._crit_edge1630.i ], [ %scevgep892, %.preheader1160.lr.ph.i ] ; 5 uses
  %.017851634.i = phi ptr [ %spec.select.i, %._crit_edge1630.i ], [ %.val, %.preheader1160.lr.ph.i ] ; 12 uses
  %.018051633.i = phi ptr [ %.51810.lcssa.i, %._crit_edge1630.i ], [ %.val9, %.preheader1160.lr.ph.i ] ; 2 uses
  %.018341632.i = phi i32 [ %i.aen, %._crit_edge1630.i ], [ 0, %.preheader1160.lr.ph.i ]
  br i1 %i.b, label %.lr.ph1464.i, label %.preheader1159.i

.preheader1150.loopexit.i:                        ; preds = %._crit_edge1630.i
  %i.w = and i32 %4, 2147483632
  br label %.preheader1150.i

.preheader1150.i:                                 ; preds = %.preheader1150.loopexit.i, %bb.a
  %.01834.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.w, %.preheader1150.loopexit.i ] ; 3 uses
  %.01805.lcssa.i = phi ptr [ %.val9, %bb.a ], [ %.51810.lcssa.i, %.preheader1150.loopexit.i ] ; 2 uses
  %.01785.lcssa.i = phi ptr [ %.val, %bb.a ], [ %spec.select.i, %.preheader1150.loopexit.i ] ; 4 uses
  %i.x = or disjoint i32 %.01834.lcssa.i, 7
  %i.y = icmp slt i32 %i.x, %4
  br i1 %i.y, label %.preheader1149.lr.ph.i, label %.preheader1139.i

.preheader1149.lr.ph.i:                           ; preds = %.preheader1150.i
  %i.z = icmp sgt i32 %6, 15
  %i.aa = icmp eq i32 %7, 0                       ; 5 uses
  %i.ab = icmp sgt i32 %8, 3                      ; 6 uses
  %i.ac = shl i32 %8, 3
  %i.ad = sext i32 %i.ac to i64                   ; 3 uses
  %spec.select2228.idx.i = select i1 %i.ab, i64 32, i64 0 ; 3 uses
  %i.ae = add i32 %8, -4                          ; 5 uses
  %i.af = and i32 %i.ae, -4
  %i.ag = add nuw nsw i32 %i.af, 4                ; 5 uses
  %i.ah = and i32 %6, -16
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 2                       ; 4 uses
  %i.ak = shl nuw nsw i64 %i.aj, 5                ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 32               ; 2 uses
  %scevgep2994.i = getelementptr i8, ptr %.01785.lcssa.i, i64 %i.al
  %i.am = shl nuw nsw i64 %i.aj, 4
  %i.an = shl nuw nsw i64 %i.aj, 3
  %i.ao = and i64 %i.ai, 4294967292
  %i.ap = shl nuw nsw i64 %i.aj, 6
  %scevgep898 = getelementptr i8, ptr %.01785.lcssa.i, i64 %i.ak
  %i.aq = lshr i32 %i.ae, 2                       ; 3 uses
  %i.ar = add nuw nsw i32 %i.aq, 1                ; 4 uses
  %i.as = icmp eq i32 %i.aq, 0
  %unroll_iter3402 = and i32 %i.ar, 2147483646
  %i.at = and i32 %i.ae, 4
  %lcmp.mod3397.not.not = icmp eq i32 %i.at, 0
  %lcmp.mod3401 = trunc i32 %i.ar to i1
  %i.au = icmp eq i32 %i.aq, 0
  %unroll_iter3417 = and i32 %i.ar, 2147483646
  %i.av = and i32 %i.ae, 4
  %lcmp.mod3413.not.not = icmp eq i32 %i.av, 0
  %lcmp.mod3416 = trunc i32 %i.ar to i1
  br label %.preheader1149.i

.preheader1159.i:                                 ; preds = %._crit_edge1443.i, %.preheader1160.i
  %.01859.lcssa.i = phi i32 [ 0, %.preheader1160.i ], [ %i.j, %._crit_edge1443.i ] ; 3 uses
  %.01839.lcssa.i = phi ptr [ %.val8, %.preheader1160.i ], [ %.31842.lcssa.i, %._crit_edge1443.i ] ; 2 uses
  %.11806.lcssa.i = phi ptr [ %.018051633.i, %.preheader1160.i ], [ %i.mh, %._crit_edge1443.i ] ; 2 uses
  %i.aw = or disjoint i32 %.01859.lcssa.i, 7
  %i.ax = icmp slt i32 %i.aw, %6
  br i1 %i.ax, label %.lr.ph1518.i.preheader, label %.preheader1158.i

.lr.ph1518.i.preheader:                           ; preds = %.preheader1159.i
  %i.ay = getelementptr inbounds nuw i8, ptr %indvars.iv, i64 128
  br label %.lr.ph1518.i

.lr.ph1464.i:                                     ; preds = %.preheader1160.i, %._crit_edge1443.i
  %.118061463.i = phi ptr [ %i.mh, %._crit_edge1443.i ], [ %.018051633.i, %.preheader1160.i ] ; 33 uses
  %.018391462.i = phi ptr [ %.31842.lcssa.i, %._crit_edge1443.i ], [ %.val8, %.preheader1160.i ] ; 3 uses
  %.018591461.i = phi i32 [ %i.mi, %._crit_edge1443.i ], [ 0, %.preheader1160.i ]
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph1464.i
  %i.az = load <16 x i32>, ptr %.118061463.i, align 64, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %.118061463.i, i64 64
  %i.bb = load <16 x i32>, ptr %i.ba, align 64, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %.118061463.i, i64 128
  %i.bd = load <16 x i32>, ptr %i.bc, align 64, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %.118061463.i, i64 192
  %i.bf = load <16 x i32>, ptr %i.be, align 64, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %.118061463.i, i64 256
  %i.bh = load <16 x i32>, ptr %i.bg, align 64, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %.118061463.i, i64 320
  %i.bj = load <16 x i32>, ptr %i.bi, align 64, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %.118061463.i, i64 384
  %i.bl = load <16 x i32>, ptr %i.bk, align 64, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %.118061463.i, i64 448
  %i.bn = load <16 x i32>, ptr %i.bm, align 64, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %.118061463.i, i64 512
  %i.bp = load <16 x i32>, ptr %i.bo, align 64, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.118061463.i, i64 576
  %i.br = load <16 x i32>, ptr %i.bq, align 64, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %.118061463.i, i64 640
  %i.bt = load <16 x i32>, ptr %i.bs, align 64, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %.118061463.i, i64 704
  %i.bv = load <16 x i32>, ptr %i.bu, align 64, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %.118061463.i, i64 768
  %i.bx = load <16 x i32>, ptr %i.bw, align 64, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %.118061463.i, i64 832
  %i.bz = load <16 x i32>, ptr %i.by, align 64, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %.118061463.i, i64 896
  %i.cb = load <16 x i32>, ptr %i.ca, align 64, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %.118061463.i, i64 960
  %i.cd = load <16 x i32>, ptr %i.cc, align 64, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph1464.i
  %i.ce = phi <16 x i32> [ %i.cb, %bb.b ], [ zeroinitializer, %.lr.ph1464.i ] ; 2 uses
  %i.cf = phi <16 x i32> [ %i.bz, %bb.b ], [ zeroinitializer, %.lr.ph1464.i ] ; 2 uses
  %i.cg = phi <16 x i32> [ %i.bx, %bb.b ], [ zeroinitializer, %.lr.ph1464.i ] ; 2 uses
  %i.ch = phi <16 x i32> [ %i.bv, %bb.b ], [ zeroinitializer, %.lr.ph1464.i ] ; 2 uses
  %i.ci = phi <16 x i32> [ %i.bt, %bb.b ], [ zeroinitializer, %.lr.ph1464.i ] ; 2 uses
  %i.cj = phi <16 x i32> [ %i.br, %bb.b ], [ zeroinitializer, %.lr.ph1464.i ] ; 2 uses
  %i.ck = phi <16 x i32> [ %i.bp, %bb.b ], [ zeroinitializer, %.lr.ph1464.i ] ; 2 uses
  %i.cl = phi <16 x i32> [ %i.bn, %bb.b ], [ zeroinitializer, %.lr.ph1464.i ] ; 2 uses
  %i.cm = phi <16 x i32> [ %i.bl, %bb.b ], [ zeroinitializer, %.lr.ph1464.i ] ; 2 uses
  %i.cn = phi <16 x i32> [ %i.bj, %bb.b ], [ zeroinitializer, %.lr.ph1464.i ] ; 2 uses
  %i.co = phi <16 x i32> [ %i.bh, %bb.b ], [ zeroinitializer, %.lr.ph1464.i ] ; 2 uses
  %i.cp = phi <16 x i32> [ %i.bf, %bb.b ], [ zeroinitializer, %.lr.ph1464.i ] ; 2 uses
  %i.cq = phi <16 x i32> [ %i.bd, %bb.b ], [ zeroinitializer, %.lr.ph1464.i ] ; 2 uses
  %i.cr = phi <16 x i32> [ %i.bb, %bb.b ], [ zeroinitializer, %.lr.ph1464.i ] ; 2 uses
  %i.cs = phi <16 x i32> [ %i.az, %bb.b ], [ zeroinitializer, %.lr.ph1464.i ] ; 2 uses
  %i.ct = phi <16 x i32> [ %i.cd, %bb.b ], [ zeroinitializer, %.lr.ph1464.i ] ; 2 uses
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.118401396.i = phi ptr [ %i.ep, %.lr.ph.i ], [ %.018391462.i, %bb.c ] ; 2 uses
  %.018641395.i = phi ptr [ %i.eo, %.lr.ph.i ], [ %.017851634.i, %bb.c ] ; 3 uses
  %.018681394.i = phi i32 [ %i.eq, %.lr.ph.i ], [ 0, %bb.c ]
  %i.cu = phi <16 x i32> [ %i.dy, %.lr.ph.i ], [ %i.cs, %bb.c ]
  %i.cv = phi <16 x i32> [ %i.dz, %.lr.ph.i ], [ %i.cr, %bb.c ]
  %i.cw = phi <16 x i32> [ %i.ea, %.lr.ph.i ], [ %i.cq, %bb.c ]
  %i.cx = phi <16 x i32> [ %i.eb, %.lr.ph.i ], [ %i.cp, %bb.c ]
  %i.cy = phi <16 x i32> [ %i.ec, %.lr.ph.i ], [ %i.co, %bb.c ]
  %i.cz = phi <16 x i32> [ %i.ed, %.lr.ph.i ], [ %i.cn, %bb.c ]
  %i.da = phi <16 x i32> [ %i.ee, %.lr.ph.i ], [ %i.cm, %bb.c ]
  %i.db = phi <16 x i32> [ %i.ef, %.lr.ph.i ], [ %i.cl, %bb.c ]
  %i.dc = phi <16 x i32> [ %i.eg, %.lr.ph.i ], [ %i.ck, %bb.c ]
  %i.dd = phi <16 x i32> [ %i.eh, %.lr.ph.i ], [ %i.cj, %bb.c ]
  %i.de = phi <16 x i32> [ %i.ei, %.lr.ph.i ], [ %i.ci, %bb.c ]
  %i.df = phi <16 x i32> [ %i.ej, %.lr.ph.i ], [ %i.ch, %bb.c ]
  %i.dg = phi <16 x i32> [ %i.ek, %.lr.ph.i ], [ %i.cg, %bb.c ]
  %i.dh = phi <16 x i32> [ %i.el, %.lr.ph.i ], [ %i.cf, %bb.c ]
  %i.di = phi <16 x i32> [ %i.em, %.lr.ph.i ], [ %i.ce, %bb.c ]
  %i.dj = phi <16 x i32> [ %i.en, %.lr.ph.i ], [ %i.ct, %bb.c ]
  %i.dk = load <8 x i64>, ptr %.018641395.i, align 1, !tbaa !17 ; 2 uses
  %i.dl = load <8 x i64>, ptr %.118401396.i, align 1, !tbaa !17 ; 2 uses
  %i.dm = bitcast <8 x i64> %i.dk to <64 x i8>    ; 5 uses
  %i.dn = shufflevector <64 x i8> %i.dm, <64 x i8> poison, <64 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55> ; 4 uses
  %i.do = bitcast <8 x i64> %i.dk to <16 x i32>
  %i.dp = shufflevector <16 x i32> %i.do, <16 x i32> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11>
  %i.dq = bitcast <16 x i32> %i.dp to <64 x i8>   ; 5 uses
  %i.dr = shufflevector <64 x i8> %i.dq, <64 x i8> poison, <64 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55> ; 4 uses
  %i.ds = bitcast <8 x i64> %i.dl to <64 x i8>    ; 5 uses
  %i.dt = shufflevector <64 x i8> %i.ds, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 32, i32 33, i32 34, i32 35, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 48, i32 49, i32 50, i32 51> ; 4 uses
  %i.du = bitcast <8 x i64> %i.dl to <16 x i32>
  %i.dv = shufflevector <16 x i32> %i.du, <16 x i32> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dw = bitcast <16 x i32> %i.dv to <64 x i8>   ; 5 uses
  %i.dx = shufflevector <64 x i8> %i.dw, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 32, i32 33, i32 34, i32 35, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 48, i32 49, i32 50, i32 51> ; 4 uses
  %i.dy = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cu, <64 x i8> %i.ds, <64 x i8> %i.dm) ; 2 uses
  %i.dz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cv, <64 x i8> %i.dt, <64 x i8> %i.dm) ; 2 uses
  %i.ea = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cw, <64 x i8> %i.ds, <64 x i8> %i.dn) ; 2 uses
  %i.eb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cx, <64 x i8> %i.dt, <64 x i8> %i.dn) ; 2 uses
  %i.ec = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cy, <64 x i8> %i.dw, <64 x i8> %i.dm) ; 2 uses
  %i.ed = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cz, <64 x i8> %i.dx, <64 x i8> %i.dm) ; 2 uses
  %i.ee = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.da, <64 x i8> %i.dw, <64 x i8> %i.dn) ; 2 uses
  %i.ef = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.db, <64 x i8> %i.dx, <64 x i8> %i.dn) ; 2 uses
  %i.eg = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.dc, <64 x i8> %i.ds, <64 x i8> %i.dq) ; 2 uses
  %i.eh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.dd, <64 x i8> %i.dt, <64 x i8> %i.dq) ; 2 uses
  %i.ei = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.de, <64 x i8> %i.ds, <64 x i8> %i.dr) ; 2 uses
  %i.ej = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.df, <64 x i8> %i.dt, <64 x i8> %i.dr) ; 2 uses
  %i.ek = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.dg, <64 x i8> %i.dw, <64 x i8> %i.dq) ; 2 uses
  %i.el = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.dh, <64 x i8> %i.dx, <64 x i8> %i.dq) ; 2 uses
  %i.em = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.di, <64 x i8> %i.dw, <64 x i8> %i.dr) ; 2 uses
  %i.en = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.dj, <64 x i8> %i.dx, <64 x i8> %i.dr) ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.018641395.i, i64 64 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.118401396.i, i64 64
  %i.eq = add nuw nsw i32 %.018681394.i, 4        ; 2 uses
  %i.er = or disjoint i32 %i.eq, 3
  %i.es = icmp slt i32 %i.er, %8
  br i1 %i.es, label %.lr.ph.i, label %bb.d, !llvm.loop !385

bb.d:                                             ; preds = %.lr.ph.i
  %scevgep = getelementptr i8, ptr %.018391462.i, i64 %i.r
  %i.et = load <8 x i64>, ptr %i.eo, align 1, !tbaa !17 ; 2 uses
  %i.eu = bitcast <8 x i64> %i.et to <16 x i32>   ; 6 uses
  %i.ev = shufflevector <16 x i32> %i.eu, <16 x i32> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.ew = sub <16 x i32> %i.dy, %i.eu
  %i.ex = sub <16 x i32> %i.dz, %i.eu
  %i.ey = bitcast <8 x i64> %i.et to <16 x i32>
  %i.ez = shufflevector <16 x i32> %i.ey, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 4 uses
  %i.fa = sub <16 x i32> %i.ea, %i.ez
  %i.fb = sub <16 x i32> %i.eb, %i.ez
  %i.fc = sub <16 x i32> %i.ec, %i.eu
  %i.fd = sub <16 x i32> %i.ed, %i.eu
  %i.fe = sub <16 x i32> %i.ee, %i.ez
  %i.ff = sub <16 x i32> %i.ef, %i.ez
  %i.fg = sub <16 x i32> %i.eg, %i.ev
  %i.fh = sub <16 x i32> %i.eh, %i.ev
  %i.fi = shufflevector <16 x i32> %i.eu, <16 x i32> poison, <16 x i32> <i32 6, i32 7, i32 4, i32 5, i32 2, i32 3, i32 0, i32 1, i32 14, i32 15, i32 12, i32 13, i32 10, i32 11, i32 8, i32 9> ; 4 uses
  %i.fj = sub <16 x i32> %i.ei, %i.fi
  %i.fk = sub <16 x i32> %i.ej, %i.fi
  %i.fl = sub <16 x i32> %i.ek, %i.ev
  %i.fm = sub <16 x i32> %i.el, %i.ev
  %i.fn = sub <16 x i32> %i.em, %i.fi
  %i.fo = sub <16 x i32> %i.en, %i.fi
  %i.fp = getelementptr inbounds nuw i8, ptr %.018641395.i, i64 128
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %.11840.lcssa3114.i = phi ptr [ %scevgep, %bb.d ], [ %.018391462.i, %bb.c ] ; 2 uses
  %.01868.lcssa3111.i = phi i32 [ %i.i, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.fq = phi <16 x i32> [ %i.fo, %bb.d ], [ %i.ct, %bb.c ] ; 2 uses
  %i.fr = phi <16 x i32> [ %i.fn, %bb.d ], [ %i.ce, %bb.c ] ; 2 uses
  %i.fs = phi <16 x i32> [ %i.fm, %bb.d ], [ %i.cf, %bb.c ] ; 2 uses
  %i.ft = phi <16 x i32> [ %i.fl, %bb.d ], [ %i.cg, %bb.c ] ; 2 uses
  %i.fu = phi <16 x i32> [ %i.fk, %bb.d ], [ %i.ch, %bb.c ] ; 2 uses
  %i.fv = phi <16 x i32> [ %i.fj, %bb.d ], [ %i.ci, %bb.c ] ; 2 uses
  %i.fw = phi <16 x i32> [ %i.fh, %bb.d ], [ %i.cj, %bb.c ] ; 2 uses
  %i.fx = phi <16 x i32> [ %i.fg, %bb.d ], [ %i.ck, %bb.c ] ; 2 uses
  %i.fy = phi <16 x i32> [ %i.ff, %bb.d ], [ %i.cl, %bb.c ] ; 2 uses
  %i.fz = phi <16 x i32> [ %i.fe, %bb.d ], [ %i.cm, %bb.c ] ; 2 uses
  %i.ga = phi <16 x i32> [ %i.fd, %bb.d ], [ %i.cn, %bb.c ] ; 2 uses
  %i.gb = phi <16 x i32> [ %i.fc, %bb.d ], [ %i.co, %bb.c ] ; 2 uses
  %i.gc = phi <16 x i32> [ %i.fb, %bb.d ], [ %i.cp, %bb.c ] ; 2 uses
  %i.gd = phi <16 x i32> [ %i.fa, %bb.d ], [ %i.cq, %bb.c ] ; 2 uses
  %i.ge = phi <16 x i32> [ %i.ex, %bb.d ], [ %i.cr, %bb.c ] ; 2 uses
  %i.gf = phi <16 x i32> [ %i.ew, %bb.d ], [ %i.cs, %bb.c ] ; 2 uses
  %.11865.i = phi ptr [ %i.fp, %bb.d ], [ %.017851634.i, %bb.c ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4ncnn39gemm_transB_packed_tile_int8_avx512vnniERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.abe = shufflevector <16 x i32> %i.abd, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.abf = bitcast <16 x i32> %i.abe to <64 x i8>
  %i.abg = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.aay, <64 x i8> %i.abf, <64 x i8> %i.abb)
  %i.abh = getelementptr inbounds nuw i8, ptr %.018991601.i, i64 192
  %i.abi = getelementptr inbounds nuw i8, ptr %.1718561602.i, i64 12
  %i.abj = load <64 x i8>, ptr %i.abh, align 1, !tbaa !17
  %i.abk = load i32, ptr %i.abi, align 4, !tbaa !49
  %i.abl = insertelement <16 x i32> poison, i32 %i.abk, i64 0
  %i.abm = shufflevector <16 x i32> %i.abl, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.abn = bitcast <16 x i32> %i.abm to <64 x i8>
  %i.abo = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.abg, <64 x i8> %i.abn, <64 x i8> %i.abj) ; 3 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %.018991601.i, i64 256 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %.1718561602.i, i64 16 ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %.lr.ph1604.i, !llvm.loop !405

.unr-lcssa:                                       ; preds = %.lr.ph1604.i
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.lr.ph1604.i.epil.preheader

.lr.ph1604.i.epil.preheader:                      ; preds = %.unr-lcssa, %.lr.ph1604.i.preheader
  %.1718561602.i.epil.init = phi ptr [ %.1618551627.i, %.lr.ph1604.i.preheader ], [ %i.abq, %.unr-lcssa ]
  %.018991601.i.epil.init = phi ptr [ %.017851634.i, %.lr.ph1604.i.preheader ], [ %i.abp, %.unr-lcssa ]
  %.epil.init = phi <16 x i32> [ %i.aaj, %.lr.ph1604.i.preheader ], [ %i.abo, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3386)
  br label %.lr.ph1604.i.epil

.lr.ph1604.i.epil:                                ; preds = %.lr.ph1604.i.epil, %.lr.ph1604.i.epil.preheader
  %.1718561602.i.epil = phi ptr [ %i.abz, %.lr.ph1604.i.epil ], [ %.1718561602.i.epil.init, %.lr.ph1604.i.epil.preheader ] ; 2 uses
  %.018991601.i.epil = phi ptr [ %i.aby, %.lr.ph1604.i.epil ], [ %.018991601.i.epil.init, %.lr.ph1604.i.epil.preheader ] ; 2 uses
  %i.abr = phi <16 x i32> [ %i.abx, %.lr.ph1604.i.epil ], [ %.epil.init, %.lr.ph1604.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph1604.i.epil ], [ 0, %.lr.ph1604.i.epil.preheader ]
  %i.abs = load <64 x i8>, ptr %.018991601.i.epil, align 1, !tbaa !17
  %i.abt = load i32, ptr %.1718561602.i.epil, align 4, !tbaa !49
  %i.abu = insertelement <16 x i32> poison, i32 %i.abt, i64 0
  %i.abv = shufflevector <16 x i32> %i.abu, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.abw = bitcast <16 x i32> %i.abv to <64 x i8>
  %i.abx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.abr, <64 x i8> %i.abw, <64 x i8> %i.abs) ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %.018991601.i.epil, i64 64
  %i.abz = getelementptr inbounds nuw i8, ptr %.1718561602.i.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.lr.ph1604.i.epil, !llvm.loop !406

.epilog-lcssa:                                    ; preds = %.lr.ph1604.i.epil, %.unr-lcssa
  %.lcssa3377 = phi <16 x i32> [ %i.abo, %.unr-lcssa ], [ %i.abx, %.lr.ph1604.i.epil ]
  %i.aca = getelementptr i8, ptr %.1618551627.i, i64 %i.p
  %scevgep2988.i = getelementptr i8, ptr %i.aca, i64 4
  %i.acb = load <16 x i32>, ptr %indvars.iv895, align 1, !tbaa !17
  %i.acc = sub <16 x i32> %.lcssa3377, %i.acb
  br label %._crit_edge1605.i

._crit_edge1605.i:                                ; preds = %.epilog-lcssa, %bb.o
  %.171856.lcssa3176.i = phi ptr [ %scevgep2988.i, %.epilog-lcssa ], [ %.1618551627.i, %bb.o ] ; 2 uses
  %.01903.lcssa3173.i = phi i32 [ %i.i, %.epilog-lcssa ], [ 0, %bb.o ] ; 3 uses
  %i.acd = phi <16 x i32> [ %i.acc, %.epilog-lcssa ], [ %i.aaj, %bb.o ] ; 2 uses
  %.11900.i = phi ptr [ %i.xm, %.epilog-lcssa ], [ %.017851634.i, %bb.o ] ; 2 uses
  %i.ace = or disjoint i32 %.01903.lcssa3173.i, 1
  %i.acf = icmp slt i32 %i.ace, %8
  br i1 %i.acf, label %.lr.ph1614.i, label %.preheader1151.i

.preheader1151.i:                                 ; preds = %.lr.ph1614.i, %._crit_edge1605.i
  %.lcssa1392.i = phi <16 x i32> [ %i.acd, %._crit_edge1605.i ], [ %i.adg, %.lr.ph1614.i ] ; 3 uses
  %.11904.lcssa.i = phi i32 [ %.01903.lcssa3173.i, %._crit_edge1605.i ], [ %i.adj, %.lr.ph1614.i ] ; 5 uses
  %.21901.lcssa.i = phi ptr [ %.11900.i, %._crit_edge1605.i ], [ %i.adh, %.lr.ph1614.i ] ; 3 uses
  %.181857.lcssa.i = phi ptr [ %.171856.lcssa3176.i, %._crit_edge1605.i ], [ %i.adi, %.lr.ph1614.i ] ; 4 uses
  %i.acg = icmp slt i32 %.11904.lcssa.i, %8
  br i1 %i.acg, label %.lr.ph1622.i.preheader, label %._crit_edge1623.i

.lr.ph1622.i.preheader:                           ; preds = %.preheader1151.i
  %i.ach = sub i32 %8, %.11904.lcssa.i
  %.neg = add i32 %.11904.lcssa.i, 1
  %xtraiter3387 = and i32 %i.ach, 1
  %lcmp.mod3388.not = icmp eq i32 %xtraiter3387, 0
  br i1 %lcmp.mod3388.not, label %.lr.ph1622.i.prol.loopexit, label %.lr.ph1622.i.prol

.lr.ph1622.i.prol:                                ; preds = %.lr.ph1622.i.preheader
  %i.aci = load <16 x i8>, ptr %.21901.lcssa.i, align 16, !tbaa !17
  %i.acj = load i8, ptr %.181857.lcssa.i, align 1, !tbaa !17
  %i.ack = sext i8 %i.acj to i16
  %i.acl = insertelement <16 x i16> poison, i16 %i.ack, i64 0
  %i.acm = shufflevector <16 x i16> %i.acl, <16 x i16> poison, <16 x i32> zeroinitializer
  %i.acn = sext <16 x i8> %i.aci to <16 x i16>
  %i.aco = mul <16 x i16> %i.acm, %i.acn
  %i.acp = sext <16 x i16> %i.aco to <16 x i32>
  %i.acq = add <16 x i32> %.lcssa1392.i, %i.acp   ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.21901.lcssa.i, i64 16
  %i.acs = getelementptr inbounds nuw i8, ptr %.181857.lcssa.i, i64 1 ; 2 uses
  %i.act = add nuw nsw i32 %.11904.lcssa.i, 1
  br label %.lr.ph1622.i.prol.loopexit

.lr.ph1622.i.prol.loopexit:                       ; preds = %.lr.ph1622.i.prol, %.lr.ph1622.i.preheader
  %.lcssa3383.unr = phi <16 x i32> [ poison, %.lr.ph1622.i.preheader ], [ %i.acq, %.lr.ph1622.i.prol ]
  %.lcssa3382.unr = phi ptr [ poison, %.lr.ph1622.i.preheader ], [ %i.acs, %.lr.ph1622.i.prol ]
  %.1918581621.i.unr = phi ptr [ %.181857.lcssa.i, %.lr.ph1622.i.preheader ], [ %i.acs, %.lr.ph1622.i.prol ]
  %.319021620.i.unr = phi ptr [ %.21901.lcssa.i, %.lr.ph1622.i.preheader ], [ %i.acr, %.lr.ph1622.i.prol ]
  %.219051619.i.unr = phi i32 [ %.11904.lcssa.i, %.lr.ph1622.i.preheader ], [ %i.act, %.lr.ph1622.i.prol ]
  %.unr3389 = phi <16 x i32> [ %.lcssa1392.i, %.lr.ph1622.i.preheader ], [ %i.acq, %.lr.ph1622.i.prol ]
  %i.acu = icmp eq i32 %8, %.neg
  br i1 %i.acu, label %._crit_edge1623.i, label %.lr.ph1622.i

.lr.ph1614.i:                                     ; preds = %._crit_edge1605.i, %.lr.ph1614.i
  %.1818571612.i = phi ptr [ %i.adi, %.lr.ph1614.i ], [ %.171856.lcssa3176.i, %._crit_edge1605.i ] ; 2 uses
  %.219011611.i = phi ptr [ %i.adh, %.lr.ph1614.i ], [ %.11900.i, %._crit_edge1605.i ] ; 2 uses
  %.119041610.i = phi i32 [ %i.adj, %.lr.ph1614.i ], [ %.01903.lcssa3173.i, %._crit_edge1605.i ]
  %i.acv = phi <16 x i32> [ %i.adg, %.lr.ph1614.i ], [ %i.acd, %._crit_edge1605.i ]
  %i.acw = load <32 x i8>, ptr %.219011611.i, align 1, !tbaa !17
  %i.acx = load float, ptr %.1818571612.i, align 1, !tbaa !17
  %i.acy = insertelement <8 x float> poison, float %i.acx, i64 0
  %i.acz = shufflevector <8 x float> %i.acy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ada = sext <32 x i8> %i.acw to <32 x i16>
  %i.adb = bitcast <8 x float> %i.acz to <32 x i8>
  %i.adc = sext <32 x i8> %i.adb to <32 x i16>
  %i.add = bitcast <32 x i16> %i.adc to <16 x i32>
  %i.ade = shufflevector <16 x i32> %i.add, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.adf = bitcast <16 x i32> %i.ade to <32 x i16>
  %i.adg = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.acv, <32 x i16> %i.ada, <32 x i16> %i.adf) ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %.219011611.i, i64 32 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.1818571612.i, i64 2 ; 2 uses
  %i.adj = add nuw nsw i32 %.119041610.i, 2       ; 3 uses
  %i.adk = or disjoint i32 %i.adj, 1
  %i.adl = icmp slt i32 %i.adk, %8
  br i1 %i.adl, label %.lr.ph1614.i, label %.preheader1151.i, !llvm.loop !407

.lr.ph1622.i:                                     ; preds = %.lr.ph1622.i.prol.loopexit, %.lr.ph1622.i
  %.1918581621.i = phi ptr [ %i.aei, %.lr.ph1622.i ], [ %.1918581621.i.unr, %.lr.ph1622.i.prol.loopexit ] ; 3 uses
  %.319021620.i = phi ptr [ %i.aeh, %.lr.ph1622.i ], [ %.319021620.i.unr, %.lr.ph1622.i.prol.loopexit ] ; 3 uses
  %.219051619.i = phi i32 [ %i.aej, %.lr.ph1622.i ], [ %.219051619.i.unr, %.lr.ph1622.i.prol.loopexit ]
  %i.adm = phi <16 x i32> [ %i.aeg, %.lr.ph1622.i ], [ %.unr3389, %.lr.ph1622.i.prol.loopexit ]
  %i.adn = load <16 x i8>, ptr %.319021620.i, align 16, !tbaa !17
  %i.ado = load i8, ptr %.1918581621.i, align 1, !tbaa !17
  %i.adp = sext i8 %i.ado to i16
  %i.adq = insertelement <16 x i16> poison, i16 %i.adp, i64 0
  %i.adr = shufflevector <16 x i16> %i.adq, <16 x i16> poison, <16 x i32> zeroinitializer
  %i.ads = sext <16 x i8> %i.adn to <16 x i16>
  %i.adt = mul <16 x i16> %i.adr, %i.ads
  %i.adu = sext <16 x i16> %i.adt to <16 x i32>
  %i.adv = add <16 x i32> %i.adm, %i.adu
  %i.adw = getelementptr inbounds nuw i8, ptr %.319021620.i, i64 16
  %i.adx = getelementptr inbounds nuw i8, ptr %.1918581621.i, i64 1
  %i.ady = load <16 x i8>, ptr %i.adw, align 16, !tbaa !17
  %i.adz = load i8, ptr %i.adx, align 1, !tbaa !17
  %i.aea = sext i8 %i.adz to i16
  %i.aeb = insertelement <16 x i16> poison, i16 %i.aea, i64 0
  %i.aec = shufflevector <16 x i16> %i.aeb, <16 x i16> poison, <16 x i32> zeroinitializer
  %i.aed = sext <16 x i8> %i.ady to <16 x i16>
  %i.aee = mul <16 x i16> %i.aec, %i.aed
  %i.aef = sext <16 x i16> %i.aee to <16 x i32>
  %i.aeg = add <16 x i32> %i.adv, %i.aef          ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %.319021620.i, i64 32
  %i.aei = getelementptr inbounds nuw i8, ptr %.1918581621.i, i64 2 ; 2 uses
  %i.aej = add nuw nsw i32 %.219051619.i, 2       ; 2 uses
  %exitcond2989.not.i.1 = icmp eq i32 %i.aej, %8
  br i1 %exitcond2989.not.i.1, label %._crit_edge1623.i, label %.lr.ph1622.i, !llvm.loop !408

._crit_edge1623.i:                                ; preds = %.lr.ph1622.i.prol.loopexit, %.lr.ph1622.i, %.preheader1151.i
  %.lcssa1393.i = phi <16 x i32> [ %.lcssa1392.i, %.preheader1151.i ], [ %.lcssa3383.unr, %.lr.ph1622.i.prol.loopexit ], [ %i.aeg, %.lr.ph1622.i ]
  %.191858.lcssa.i = phi ptr [ %.181857.lcssa.i, %.preheader1151.i ], [ %.lcssa3382.unr, %.lr.ph1622.i.prol.loopexit ], [ %i.aei, %.lr.ph1622.i ]
  store <16 x i32> %.lcssa1393.i, ptr %.518101628.i, align 64, !tbaa !17
  %i.aek = getelementptr inbounds nuw i8, ptr %.518101628.i, i64 64 ; 2 uses
  %i.ael = add nuw nsw i32 %.418631626.i, 1       ; 2 uses
  %exitcond2990.not.i = icmp eq i32 %i.ael, %6
  br i1 %exitcond2990.not.i, label %._crit_edge1630.i, label %.lr.ph1629.i, !llvm.loop !409

._crit_edge1630.i:                                ; preds = %._crit_edge1623.i, %.preheader1156.i
  %.51810.lcssa.i = phi ptr [ %.41809.lcssa.i, %.preheader1156.i ], [ %i.aek, %._crit_edge1623.i ] ; 2 uses
  %i.aem = getelementptr inbounds i8, ptr %.017851634.i, i64 %i.f
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.aem, i64 %spec.select.idx.i ; 2 uses
  %i.aen = add nuw nsw i32 %.018341632.i, 16      ; 2 uses
  %i.aeo = or disjoint i32 %i.aen, 15
  %i.aep = icmp slt i32 %i.aeo, %4
  %scevgep893 = getelementptr i8, ptr %indvars.iv, i64 %i.s
  %scevgep896 = getelementptr i8, ptr %indvars.iv895, i64 %i.s
  br i1 %i.aep, label %.preheader1160.i, label %.preheader1150.loopexit.i, !llvm.loop !410

.preheader1149.i:                                 ; preds = %._crit_edge1854.i, %.preheader1149.lr.ph.i
  %indvars.iv899 = phi ptr [ %scevgep900, %._crit_edge1854.i ], [ %scevgep898, %.preheader1149.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep2995.i, %._crit_edge1854.i ], [ %scevgep2994.i, %.preheader1149.lr.ph.i ] ; 8 uses
  %.21858.i = phi ptr [ %spec.select2228.i, %._crit_edge1854.i ], [ %.01785.lcssa.i, %.preheader1149.lr.ph.i ] ; 13 uses
  %.618111857.i = phi ptr [ %.11.lcssa.i, %._crit_edge1854.i ], [ %.01805.lcssa.i, %.preheader1149.lr.ph.i ] ; 2 uses
  %.118351856.i = phi i32 [ %i.bfz, %._crit_edge1854.i ], [ %.01834.lcssa.i, %.preheader1149.lr.ph.i ]
  br i1 %i.z, label %.lr.ph1688.i, label %.preheader1148.i

.preheader1139.i:                                 ; preds = %._crit_edge1854.i, %.preheader1150.i
  %.11835.lcssa.i = phi i32 [ %.01834.lcssa.i, %.preheader1150.i ], [ %i.bfz, %._crit_edge1854.i ] ; 3 uses
  %.61811.lcssa.i = phi ptr [ %.01805.lcssa.i, %.preheader1150.i ], [ %.11.lcssa.i, %._crit_edge1854.i ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.01785.lcssa.i, %.preheader1150.i ], [ %spec.select2228.i, %._crit_edge1854.i ] ; 4 uses
  %i.aeq = or disjoint i32 %.11835.lcssa.i, 3
  %i.aer = icmp slt i32 %i.aeq, %4
  br i1 %i.aer, label %.preheader1138.lr.ph.i, label %.preheader1128.i

.preheader1138.lr.ph.i:                           ; preds = %.preheader1139.i
  %i.aes = icmp sgt i32 %6, 15
  %i.aet = icmp eq i32 %7, 0                      ; 5 uses
  %i.aeu = icmp sgt i32 %8, 3                     ; 6 uses
  %i.aev = shl i32 %8, 2
  %i.aew = sext i32 %i.aev to i64                 ; 3 uses
  %spec.select2229.idx.i = select i1 %i.aeu, i64 16, i64 0 ; 3 uses
  %i.aex = add i32 %8, -4                         ; 6 uses
  %i.aey = and i32 %i.aex, -4
  %i.aez = add nuw nsw i32 %i.aey, 4              ; 5 uses
  %i.afa = and i32 %6, -16
  %i.afb = zext i32 %i.aex to i64                 ; 2 uses
  %i.afc = lshr i64 %i.afb, 2                     ; 4 uses
  %i.afd = shl nuw nsw i64 %i.afc, 5
  %i.afe = shl nuw nsw i64 %i.afc, 4              ; 2 uses
  %i.aff = add nuw nsw i64 %i.afe, 16             ; 2 uses
  %scevgep3008.i = getelementptr i8, ptr %.2.lcssa.i, i64 %i.aff
  %i.afg = shl nuw nsw i64 %i.afc, 3
  %i.afh = and i64 %i.afb, 4294967292
  %i.afi = shl nuw nsw i64 %i.afc, 6
  %scevgep902 = getelementptr i8, ptr %.2.lcssa.i, i64 %i.afe
  %i.afj = lshr i32 %i.aex, 2                     ; 4 uses
  %i.afk = add nuw nsw i32 %i.afj, 1              ; 6 uses
  %i.afl = icmp eq i32 %i.afj, 0
  %unroll_iter3440 = and i32 %i.afk, 2147483646
  %i.afm = and i32 %i.aex, 4
  %lcmp.mod3433.not.not = icmp eq i32 %i.afm, 0
  %lcmp.mod3439 = trunc i32 %i.afk to i1
  %i.afn = icmp eq i32 %i.afj, 0
  %unroll_iter3454 = and i32 %i.afk, 2147483646
  %i.afo = and i32 %i.aex, 4
  %lcmp.mod3449.not.not = icmp eq i32 %i.afo, 0
  %lcmp.mod3453 = trunc i32 %i.afk to i1
  %i.afp = icmp eq i32 %i.afj, 0
  %unroll_iter3465 = and i32 %i.afk, 2147483646
  %i.afq = and i32 %i.aex, 4
  %lcmp.mod3461.not.not = icmp eq i32 %i.afq, 0
  %lcmp.mod3464 = trunc i32 %i.afk to i1
  br label %.preheader1138.i

.preheader1148.i:                                 ; preds = %._crit_edge1675.i, %.preheader1149.i
  %.01933.lcssa.i = phi i32 [ 0, %.preheader1149.i ], [ %i.ah, %._crit_edge1675.i ] ; 3 uses
  %.01913.lcssa.i = phi ptr [ %.val8, %.preheader1149.i ], [ %.31916.lcssa.i, %._crit_edge1675.i ] ; 2 uses
  %.71812.lcssa.i = phi ptr [ %.618111857.i, %.preheader1149.i ], [ %i.amj, %._crit_edge1675.i ] ; 2 uses
  %i.afr = or disjoint i32 %.01933.lcssa.i, 7
  %i.afs = icmp slt i32 %i.afr, %6
  br i1 %i.afs, label %.lr.ph1742.i.preheader, label %.preheader1147.i

.lr.ph1742.i.preheader:                           ; preds = %.preheader1148.i
  %i.aft = getelementptr inbounds nuw i8, ptr %indvars.iv899, i64 64
  br label %.lr.ph1742.i

.lr.ph1688.i:                                     ; preds = %.preheader1149.i, %._crit_edge1675.i
  %.718121687.i = phi ptr [ %i.amj, %._crit_edge1675.i ], [ %.618111857.i, %.preheader1149.i ] ; 17 uses
  %.019131686.i = phi ptr [ %.31916.lcssa.i, %._crit_edge1675.i ], [ %.val8, %.preheader1149.i ] ; 3 uses
  %.019331685.i = phi i32 [ %i.amk, %._crit_edge1675.i ], [ 0, %.preheader1149.i ]
  br i1 %i.aa, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph1688.i
  %i.afu = load <16 x i32>, ptr %.718121687.i, align 64, !tbaa !17
  %i.afv = getelementptr inbounds nuw i8, ptr %.718121687.i, i64 64
  %i.afw = load <16 x i32>, ptr %i.afv, align 64, !tbaa !17
  %i.afx = getelementptr inbounds nuw i8, ptr %.718121687.i, i64 128
  %i.afy = load <16 x i32>, ptr %i.afx, align 64, !tbaa !17
  %i.afz = getelementptr inbounds nuw i8, ptr %.718121687.i, i64 192
  %i.aga = load <16 x i32>, ptr %i.afz, align 64, !tbaa !17
  %i.agb = getelementptr inbounds nuw i8, ptr %.718121687.i, i64 256
  %i.agc = load <16 x i32>, ptr %i.agb, align 64, !tbaa !17
  %i.agd = getelementptr inbounds nuw i8, ptr %.718121687.i, i64 320
  %i.age = load <16 x i32>, ptr %i.agd, align 64, !tbaa !17
  %i.agf = getelementptr inbounds nuw i8, ptr %.718121687.i, i64 384
  %i.agg = load <16 x i32>, ptr %i.agf, align 64, !tbaa !17
  %i.agh = getelementptr inbounds nuw i8, ptr %.718121687.i, i64 448
  %i.agi = load <16 x i32>, ptr %i.agh, align 64, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph1688.i
  %i.agj = phi <16 x i32> [ %i.agg, %bb.p ], [ zeroinitializer, %.lr.ph1688.i ] ; 2 uses
  %i.agk = phi <16 x i32> [ %i.age, %bb.p ], [ zeroinitializer, %.lr.ph1688.i ] ; 2 uses
  %i.agl = phi <16 x i32> [ %i.agc, %bb.p ], [ zeroinitializer, %.lr.ph1688.i ] ; 2 uses
  %i.agm = phi <16 x i32> [ %i.aga, %bb.p ], [ zeroinitializer, %.lr.ph1688.i ] ; 2 uses
  %i.agn = phi <16 x i32> [ %i.afy, %bb.p ], [ zeroinitializer, %.lr.ph1688.i ] ; 2 uses
  %i.ago = phi <16 x i32> [ %i.afw, %bb.p ], [ zeroinitializer, %.lr.ph1688.i ] ; 2 uses
  %i.agp = phi <16 x i32> [ %i.afu, %bb.p ], [ zeroinitializer, %.lr.ph1688.i ] ; 2 uses
  %i.agq = phi <16 x i32> [ %i.agi, %bb.p ], [ zeroinitializer, %.lr.ph1688.i ] ; 2 uses
  br i1 %i.ab, label %.lr.ph1642.i, label %._crit_edge1643.i

.lr.ph1642.i:                                     ; preds = %bb.q, %.lr.ph1642.i
  %.119141640.i = phi ptr [ %i.ahs, %.lr.ph1642.i ], [ %.019131686.i, %bb.q ] ; 2 uses
  %.019381639.i = phi ptr [ %i.ahr, %.lr.ph1642.i ], [ %.21858.i, %bb.q ] ; 3 uses
  %.019421638.i = phi i32 [ %i.aht, %.lr.ph1642.i ], [ 0, %bb.q ]
  %i.agr = phi <16 x i32> [ %i.ahj, %.lr.ph1642.i ], [ %i.agp, %bb.q ]
  %i.ags = phi <16 x i32> [ %i.ahk, %.lr.ph1642.i ], [ %i.ago, %bb.q ]
  %i.agt = phi <16 x i32> [ %i.ahl, %.lr.ph1642.i ], [ %i.agn, %bb.q ]
  %i.agu = phi <16 x i32> [ %i.ahm, %.lr.ph1642.i ], [ %i.agm, %bb.q ]
  %i.agv = phi <16 x i32> [ %i.ahn, %.lr.ph1642.i ], [ %i.agl, %bb.q ]
  %i.agw = phi <16 x i32> [ %i.aho, %.lr.ph1642.i ], [ %i.agk, %bb.q ]
  %i.agx = phi <16 x i32> [ %i.ahp, %.lr.ph1642.i ], [ %i.agj, %bb.q ]
  %i.agy = phi <16 x i32> [ %i.ahq, %.lr.ph1642.i ], [ %i.agq, %bb.q ]
  %i.agz = load <4 x i64>, ptr %.019381639.i, align 1, !tbaa !17
  %i.aha = load <8 x i64>, ptr %.119141640.i, align 1, !tbaa !17 ; 2 uses
  %i.ahb = shufflevector <4 x i64> %i.agz, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ahc = bitcast <8 x i64> %i.ahb to <64 x i8>  ; 5 uses
  %i.ahd = shufflevector <64 x i8> %i.ahc, <64 x i8> poison, <64 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55> ; 4 uses
  %i.ahe = bitcast <8 x i64> %i.aha to <64 x i8>  ; 3 uses
  %i.ahf = shufflevector <64 x i8> %i.ahe, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 32, i32 33, i32 34, i32 35, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 48, i32 49, i32 50, i32 51> ; 2 uses
  %i.ahg = shufflevector <8 x i64> %i.aha, <8 x i64> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.ahh = bitcast <8 x i64> %i.ahg to <64 x i8>  ; 3 uses
  %i.ahi = shufflevector <64 x i8> %i.ahh, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 32, i32 33, i32 34, i32 35, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 48, i32 49, i32 50, i32 51> ; 2 uses
  %i.ahj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.agr, <64 x i8> %i.ahe, <64 x i8> %i.ahc) ; 2 uses
  %i.ahk = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ags, <64 x i8> %i.ahf, <64 x i8> %i.ahc) ; 2 uses
  %i.ahl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.agt, <64 x i8> %i.ahe, <64 x i8> %i.ahd) ; 2 uses
  %i.ahm = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.agu, <64 x i8> %i.ahf, <64 x i8> %i.ahd) ; 2 uses
  %i.ahn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.agv, <64 x i8> %i.ahh, <64 x i8> %i.ahc) ; 2 uses
  %i.aho = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.agw, <64 x i8> %i.ahi, <64 x i8> %i.ahc) ; 2 uses
  %i.ahp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.agx, <64 x i8> %i.ahh, <64 x i8> %i.ahd) ; 2 uses
  %i.ahq = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.agy, <64 x i8> %i.ahi, <64 x i8> %i.ahd) ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.019381639.i, i64 32 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %.119141640.i, i64 64
  %i.aht = add nuw nsw i32 %.019421638.i, 4       ; 2 uses
  %i.ahu = or disjoint i32 %i.aht, 3
  %i.ahv = icmp slt i32 %i.ahu, %8
  br i1 %i.ahv, label %.lr.ph1642.i, label %bb.r, !llvm.loop !411

bb.r:                                             ; preds = %.lr.ph1642.i
  %i.ahw = getelementptr i8, ptr %.019131686.i, i64 %i.ap
  %scevgep897 = getelementptr i8, ptr %i.ahw, i64 64
  %i.ahx = load <4 x i64>, ptr %i.ahr, align 1, !tbaa !17
  %i.ahy = shufflevector <4 x i64> %i.ahx, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ahz = bitcast <8 x i64> %i.ahy to <16 x i32> ; 5 uses
  %i.aia = sub <16 x i32> %i.ahj, %i.ahz
  %i.aib = sub <16 x i32> %i.ahk, %i.ahz
  %i.aic = shufflevector <16 x i32> %i.ahz, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 4 uses
  %i.aid = sub <16 x i32> %i.ahl, %i.aic
  %i.aie = sub <16 x i32> %i.ahm, %i.aic
  %i.aif = sub <16 x i32> %i.ahn, %i.ahz
  %i.aig = sub <16 x i32> %i.aho, %i.ahz
  %i.aih = sub <16 x i32> %i.ahp, %i.aic
  %i.aii = sub <16 x i32> %i.ahq, %i.aic
  %i.aij = getelementptr inbounds nuw i8, ptr %.019381639.i, i64 64
  br label %._crit_edge1643.i

._crit_edge1643.i:                                ; preds = %bb.r, %bb.q
  %.11914.lcssa3200.i = phi ptr [ %scevgep897, %bb.r ], [ %.019131686.i, %bb.q ] ; 2 uses
  %.01942.lcssa3197.i = phi i32 [ %i.ag, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %i.aik = phi <16 x i32> [ %i.aii, %bb.r ], [ %i.agq, %bb.q ] ; 2 uses
  %i.ail = phi <16 x i32> [ %i.aih, %bb.r ], [ %i.agj, %bb.q ] ; 2 uses
  %i.aim = phi <16 x i32> [ %i.aig, %bb.r ], [ %i.agk, %bb.q ] ; 2 uses
  %i.ain = phi <16 x i32> [ %i.aif, %bb.r ], [ %i.agl, %bb.q ] ; 2 uses
  %i.aio = phi <16 x i32> [ %i.aie, %bb.r ], [ %i.agm, %bb.q ] ; 2 uses
  %i.aip = phi <16 x i32> [ %i.aid, %bb.r ], [ %i.agn, %bb.q ] ; 2 uses
  %i.aiq = phi <16 x i32> [ %i.aib, %bb.r ], [ %i.ago, %bb.q ] ; 2 uses
  %i.air = phi <16 x i32> [ %i.aia, %bb.r ], [ %i.agp, %bb.q ] ; 2 uses
  %.11939.i = phi ptr [ %i.aij, %bb.r ], [ %.21858.i, %bb.q ] ; 2 uses
  %i.ais = or disjoint i32 %.01942.lcssa3197.i, 1
  %i.ait = icmp slt i32 %i.ais, %8
  br i1 %i.ait, label %.lr.ph1659.i, label %.preheader1144.i

.preheader1144.i:                                 ; preds = %.lr.ph1659.i, %._crit_edge1643.i
  %.lcssa1247.i = phi <16 x i32> [ %i.aik, %._crit_edge1643.i ], [ %i.ajx, %.lr.ph1659.i ] ; 2 uses
  %.lcssa1246.i = phi <16 x i32> [ %i.ail, %._crit_edge1643.i ], [ %i.ajw, %.lr.ph1659.i ] ; 2 uses
  %.lcssa1245.i = phi <16 x i32> [ %i.aim, %._crit_edge1643.i ], [ %i.ajv, %.lr.ph1659.i ] ; 2 uses
  %.lcssa1244.i = phi <16 x i32> [ %i.ain, %._crit_edge1643.i ], [ %i.ajs, %.lr.ph1659.i ] ; 2 uses
  %.lcssa1243.i = phi <16 x i32> [ %i.aio, %._crit_edge1643.i ], [ %i.ajq, %.lr.ph1659.i ] ; 2 uses
  %.lcssa1242.i = phi <16 x i32> [ %i.aip, %._crit_edge1643.i ], [ %i.ajp, %.lr.ph1659.i ] ; 2 uses
  %.lcssa1241.i = phi <16 x i32> [ %i.aiq, %._crit_edge1643.i ], [ %i.ajn, %.lr.ph1659.i ] ; 2 uses
  %.lcssa1240.i = phi <16 x i32> [ %i.air, %._crit_edge1643.i ], [ %i.ajk, %.lr.ph1659.i ] ; 2 uses
  %.11943.lcssa.i = phi i32 [ %.01942.lcssa3197.i, %._crit_edge1643.i ], [ %i.aka, %.lr.ph1659.i ] ; 2 uses
  %.21940.lcssa.i = phi ptr [ %.11939.i, %._crit_edge1643.i ], [ %i.ajy, %.lr.ph1659.i ]
  %.21915.lcssa.i = phi ptr [ %.11914.lcssa3200.i, %._crit_edge1643.i ], [ %i.ajz, %.lr.ph1659.i ] ; 2 uses
  %i.aiu = icmp slt i32 %.11943.lcssa.i, %8
  br i1 %i.aiu, label %.lr.ph1674.i, label %._crit_edge1675.i

.lr.ph1659.i:                                     ; preds = %._crit_edge1643.i, %.lr.ph1659.i
  %.219151657.i = phi ptr [ %i.ajz, %.lr.ph1659.i ], [ %.11914.lcssa3200.i, %._crit_edge1643.i ] ; 2 uses
  %.219401656.i = phi ptr [ %i.ajy, %.lr.ph1659.i ], [ %.11939.i, %._crit_edge1643.i ] ; 2 uses
  %.119431655.i = phi i32 [ %i.aka, %.lr.ph1659.i ], [ %.01942.lcssa3197.i, %._crit_edge1643.i ]
  %i.aiv = phi <16 x i32> [ %i.ajk, %.lr.ph1659.i ], [ %i.air, %._crit_edge1643.i ]
  %i.aiw = phi <16 x i32> [ %i.ajn, %.lr.ph1659.i ], [ %i.aiq, %._crit_edge1643.i ]
  %i.aix = phi <16 x i32> [ %i.ajp, %.lr.ph1659.i ], [ %i.aip, %._crit_edge1643.i ]
  %i.aiy = phi <16 x i32> [ %i.ajq, %.lr.ph1659.i ], [ %i.aio, %._crit_edge1643.i ]
  %i.aiz = phi <16 x i32> [ %i.ajs, %.lr.ph1659.i ], [ %i.ain, %._crit_edge1643.i ]
  %i.aja = phi <16 x i32> [ %i.ajv, %.lr.ph1659.i ], [ %i.aim, %._crit_edge1643.i ]
  %i.ajb = phi <16 x i32> [ %i.ajw, %.lr.ph1659.i ], [ %i.ail, %._crit_edge1643.i ]
  %i.ajc = phi <16 x i32> [ %i.ajx, %.lr.ph1659.i ], [ %i.aik, %._crit_edge1643.i ]
  %i.ajd = load <16 x i8>, ptr %.219401656.i, align 16, !tbaa !17
  %i.aje = load <32 x i8>, ptr %.219151657.i, align 1, !tbaa !17 ; 2 uses
  %i.ajf = sext <16 x i8> %i.ajd to <16 x i16>
  %i.ajg = sext <32 x i8> %i.aje to <32 x i16>    ; 3 uses
  %i.ajh = bitcast <32 x i16> %i.ajg to <8 x i64>
  %i.aji = shufflevector <16 x i16> %i.ajf, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 5 uses
  %i.ajj = shufflevector <8 x i64> %i.ajh, <8 x i64> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.ajk = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aiv, <32 x i16> %i.aji, <32 x i16> %i.ajg) ; 2 uses
  %i.ajl = shufflevector <32 x i8> %i.aje, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.ajm = sext <32 x i8> %i.ajl to <32 x i16>    ; 2 uses
  %i.ajn = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aiw, <32 x i16> %i.aji, <32 x i16> %i.ajm) ; 2 uses
  %i.ajo = shufflevector <32 x i16> %i.aji, <32 x i16> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.ajp = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aix, <32 x i16> %i.ajo, <32 x i16> %i.ajg) ; 2 uses
  %i.ajq = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aiy, <32 x i16> %i.ajo, <32 x i16> %i.ajm) ; 2 uses
  %i.ajr = bitcast <8 x i64> %i.ajj to <32 x i16> ; 2 uses
  %i.ajs = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aiz, <32 x i16> %i.aji, <32 x i16> %i.ajr) ; 2 uses
  %i.ajt = bitcast <8 x i64> %i.ajj to <32 x i16>
  %i.aju = shufflevector <32 x i16> %i.ajt, <32 x i16> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25> ; 2 uses
  %i.ajv = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aja, <32 x i16> %i.aji, <32 x i16> %i.aju) ; 2 uses
  %i.ajw = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ajb, <32 x i16> %i.ajo, <32 x i16> %i.ajr) ; 2 uses
  %i.ajx = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ajc, <32 x i16> %i.ajo, <32 x i16> %i.aju) ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %.219401656.i, i64 16 ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %.219151657.i, i64 32 ; 2 uses
  %i.aka = add nuw nsw i32 %.119431655.i, 2       ; 3 uses
  %i.akb = or disjoint i32 %i.aka, 1
end_hunk_4
begin_hunk_5_@_ZN4ncnn39gemm_transB_packed_tile_int8_avx512vnniERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.bck = load <32 x i8>, ptr %i.bci, align 1, !tbaa !17
  %i.bcl = load float, ptr %i.bcj, align 1, !tbaa !17
  %i.bcm = insertelement <8 x float> poison, float %i.bcl, i64 0
  %i.bcn = shufflevector <8 x float> %i.bcm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bco = sext <32 x i8> %i.bck to <32 x i16>
  %i.bcp = bitcast <8 x float> %i.bcn to <32 x i8>
  %i.bcq = zext <32 x i8> %i.bcp to <32 x i16>
  %i.bcr = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bco, <32 x i16> %i.bcq) ; 2 uses
  %i.bcs = shufflevector <16 x i32> %i.bcr, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bct = shufflevector <16 x i32> %i.bcr, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bcu = tail call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %i.bcs, <8 x i32> %i.bct)
  %i.bcv = shufflevector <8 x i32> %i.bcu, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7>
  %i.bcw = add <8 x i32> %i.bch, %i.bcv           ; 3 uses
  %i.bcx = getelementptr inbounds nuw i8, ptr %.020161825.i, i64 64 ; 2 uses
  %i.bcy = getelementptr inbounds nuw i8, ptr %.1719301826.i, i64 8 ; 2 uses
  %niter3418.next.1 = add i32 %niter3418, 2       ; 2 uses
  %niter3418.ncmp.1.not = icmp eq i32 %niter3418.next.1, %unroll_iter3417
  br i1 %niter3418.ncmp.1.not, label %.unr-lcssa3408, label %.lr.ph1828.i, !llvm.loop !427

.unr-lcssa3408:                                   ; preds = %.lr.ph1828.i
  br i1 %lcmp.mod3413.not.not, label %.lr.ph1828.i.epil.preheader, label %bb.ad

.lr.ph1828.i.epil.preheader:                      ; preds = %.unr-lcssa3408, %.lr.ph1828.i.preheader
  %.1719301826.i.epil.init = phi ptr [ %.1619291851.i, %.lr.ph1828.i.preheader ], [ %i.bcy, %.unr-lcssa3408 ]
  %.020161825.i.epil.init = phi ptr [ %.21858.i, %.lr.ph1828.i.preheader ], [ %i.bcx, %.unr-lcssa3408 ]
  %.epil.init3412 = phi <8 x i32> [ %i.bbt, %.lr.ph1828.i.preheader ], [ %i.bcw, %.unr-lcssa3408 ]
  tail call void @llvm.assume(i1 %lcmp.mod3416)
  %i.bcz = load <32 x i8>, ptr %.020161825.i.epil.init, align 1, !tbaa !17
  %i.bda = load float, ptr %.1719301826.i.epil.init, align 1, !tbaa !17
  %i.bdb = insertelement <8 x float> poison, float %i.bda, i64 0
  %i.bdc = shufflevector <8 x float> %i.bdb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bdd = sext <32 x i8> %i.bcz to <32 x i16>
  %i.bde = bitcast <8 x float> %i.bdc to <32 x i8>
  %i.bdf = zext <32 x i8> %i.bde to <32 x i16>
  %i.bdg = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bdd, <32 x i16> %i.bdf) ; 2 uses
  %i.bdh = shufflevector <16 x i32> %i.bdg, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bdi = shufflevector <16 x i32> %i.bdg, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdj = tail call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %i.bdh, <8 x i32> %i.bdi)
  %i.bdk = shufflevector <8 x i32> %i.bdj, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7>
  %i.bdl = add <8 x i32> %.epil.init3412, %i.bdk
  br label %bb.ad

bb.ad:                                            ; preds = %.unr-lcssa3408, %.lr.ph1828.i.epil.preheader
  %.lcssa3254 = phi <8 x i32> [ %i.bcw, %.unr-lcssa3408 ], [ %i.bdl, %.lr.ph1828.i.epil.preheader ]
  %i.bdm = getelementptr i8, ptr %.1619291851.i, i64 %i.ao
  %scevgep3000.i = getelementptr i8, ptr %i.bdm, i64 4
  %i.bdn = load <8 x i32>, ptr %indvars.iv.i, align 1, !tbaa !17
  %i.bdo = sub <8 x i32> %.lcssa3254, %i.bdn
  br label %._crit_edge1829.i

._crit_edge1829.i:                                ; preds = %bb.ad, %bb.ac
  %.171930.lcssa3262.i = phi ptr [ %scevgep3000.i, %bb.ad ], [ %.1619291851.i, %bb.ac ] ; 2 uses
  %.02020.lcssa3259.i = phi i32 [ %i.ag, %bb.ad ], [ 0, %bb.ac ] ; 3 uses
  %i.bdp = phi <8 x i32> [ %i.bdo, %bb.ad ], [ %i.bbt, %bb.ac ] ; 2 uses
  %.12017.i = phi ptr [ %i.axa, %bb.ad ], [ %.21858.i, %bb.ac ] ; 2 uses
  %i.bdq = or disjoint i32 %.02020.lcssa3259.i, 1
  %i.bdr = icmp slt i32 %i.bdq, %8
  br i1 %i.bdr, label %.lr.ph1838.i, label %.preheader1140.i

.preheader1140.i:                                 ; preds = %.lr.ph1838.i, %._crit_edge1829.i
  %.lcssa1299.i = phi <8 x i32> [ %i.bdp, %._crit_edge1829.i ], [ %i.bes, %.lr.ph1838.i ] ; 3 uses
  %.12021.lcssa.i = phi i32 [ %.02020.lcssa3259.i, %._crit_edge1829.i ], [ %i.bev, %.lr.ph1838.i ] ; 5 uses
  %.22018.lcssa.i = phi ptr [ %.12017.i, %._crit_edge1829.i ], [ %i.bet, %.lr.ph1838.i ] ; 3 uses
  %.181931.lcssa.i = phi ptr [ %.171930.lcssa3262.i, %._crit_edge1829.i ], [ %i.beu, %.lr.ph1838.i ] ; 4 uses
  %i.bds = icmp slt i32 %.12021.lcssa.i, %8
  br i1 %i.bds, label %.lr.ph1846.i.preheader, label %._crit_edge1847.i

.lr.ph1846.i.preheader:                           ; preds = %.preheader1140.i
  %i.bdt = sub i32 %8, %.12021.lcssa.i
  %.neg3549 = add i32 %.12021.lcssa.i, 1
  %xtraiter3419 = and i32 %i.bdt, 1
  %lcmp.mod3420.not = icmp eq i32 %xtraiter3419, 0
  br i1 %lcmp.mod3420.not, label %.lr.ph1846.i.prol.loopexit, label %.lr.ph1846.i.prol

.lr.ph1846.i.prol:                                ; preds = %.lr.ph1846.i.preheader
  %i.bdu = load <8 x i8>, ptr %.22018.lcssa.i, align 1, !tbaa !17
  %i.bdv = load i8, ptr %.181931.lcssa.i, align 1, !tbaa !17
  %i.bdw = sext i8 %i.bdv to i16
  %i.bdx = insertelement <8 x i16> poison, i16 %i.bdw, i64 0
  %i.bdy = shufflevector <8 x i16> %i.bdx, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bdz = sext <8 x i8> %i.bdu to <8 x i16>
  %i.bea = mul <8 x i16> %i.bdy, %i.bdz
  %i.beb = sext <8 x i16> %i.bea to <8 x i32>
  %i.bec = add <8 x i32> %.lcssa1299.i, %i.beb    ; 2 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %.22018.lcssa.i, i64 8
  %i.bee = getelementptr inbounds nuw i8, ptr %.181931.lcssa.i, i64 1 ; 2 uses
  %i.bef = add nuw nsw i32 %.12021.lcssa.i, 1
  br label %.lr.ph1846.i.prol.loopexit

.lr.ph1846.i.prol.loopexit:                       ; preds = %.lr.ph1846.i.prol, %.lr.ph1846.i.preheader
  %.lcssa3260.unr = phi <8 x i32> [ poison, %.lr.ph1846.i.preheader ], [ %i.bec, %.lr.ph1846.i.prol ]
  %.lcssa3259.unr = phi ptr [ poison, %.lr.ph1846.i.preheader ], [ %i.bee, %.lr.ph1846.i.prol ]
  %.1919321845.i.unr = phi ptr [ %.181931.lcssa.i, %.lr.ph1846.i.preheader ], [ %i.bee, %.lr.ph1846.i.prol ]
  %.320191844.i.unr = phi ptr [ %.22018.lcssa.i, %.lr.ph1846.i.preheader ], [ %i.bed, %.lr.ph1846.i.prol ]
  %.220221843.i.unr = phi i32 [ %.12021.lcssa.i, %.lr.ph1846.i.preheader ], [ %i.bef, %.lr.ph1846.i.prol ]
  %.unr3421 = phi <8 x i32> [ %.lcssa1299.i, %.lr.ph1846.i.preheader ], [ %i.bec, %.lr.ph1846.i.prol ]
  %i.beg = icmp eq i32 %8, %.neg3549
  br i1 %i.beg, label %._crit_edge1847.i, label %.lr.ph1846.i

.lr.ph1838.i:                                     ; preds = %._crit_edge1829.i, %.lr.ph1838.i
  %.1819311836.i = phi ptr [ %i.beu, %.lr.ph1838.i ], [ %.171930.lcssa3262.i, %._crit_edge1829.i ] ; 2 uses
  %.220181835.i = phi ptr [ %i.bet, %.lr.ph1838.i ], [ %.12017.i, %._crit_edge1829.i ] ; 2 uses
  %.120211834.i = phi i32 [ %i.bev, %.lr.ph1838.i ], [ %.02020.lcssa3259.i, %._crit_edge1829.i ]
  %i.beh = phi <8 x i32> [ %i.bes, %.lr.ph1838.i ], [ %i.bdp, %._crit_edge1829.i ]
  %i.bei = load <16 x i8>, ptr %.220181835.i, align 16, !tbaa !17
  %i.bej = load float, ptr %.1819311836.i, align 1, !tbaa !17
  %i.bek = insertelement <4 x float> poison, float %i.bej, i64 0
  %i.bel = sext <16 x i8> %i.bei to <16 x i16>
  %i.bem = bitcast <4 x float> %i.bek to <16 x i8>
  %i.ben = shufflevector <16 x i8> %i.bem, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.beo = sext <16 x i8> %i.ben to <16 x i16>
  %i.bep = bitcast <16 x i16> %i.beo to <8 x i32>
  %i.beq = shufflevector <8 x i32> %i.bep, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.ber = bitcast <8 x i32> %i.beq to <16 x i16>
  %i.bes = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.beh, <16 x i16> %i.bel, <16 x i16> %i.ber) ; 2 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %.220181835.i, i64 16 ; 2 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %.1819311836.i, i64 2 ; 2 uses
  %i.bev = add nuw nsw i32 %.120211834.i, 2       ; 3 uses
  %i.bew = or disjoint i32 %i.bev, 1
  %i.bex = icmp slt i32 %i.bew, %8
  br i1 %i.bex, label %.lr.ph1838.i, label %.preheader1140.i, !llvm.loop !428

.lr.ph1846.i:                                     ; preds = %.lr.ph1846.i.prol.loopexit, %.lr.ph1846.i
  %.1919321845.i = phi ptr [ %i.bfu, %.lr.ph1846.i ], [ %.1919321845.i.unr, %.lr.ph1846.i.prol.loopexit ] ; 3 uses
  %.320191844.i = phi ptr [ %i.bft, %.lr.ph1846.i ], [ %.320191844.i.unr, %.lr.ph1846.i.prol.loopexit ] ; 3 uses
  %.220221843.i = phi i32 [ %i.bfv, %.lr.ph1846.i ], [ %.220221843.i.unr, %.lr.ph1846.i.prol.loopexit ]
  %i.bey = phi <8 x i32> [ %i.bfs, %.lr.ph1846.i ], [ %.unr3421, %.lr.ph1846.i.prol.loopexit ]
  %i.bez = load <8 x i8>, ptr %.320191844.i, align 1, !tbaa !17
  %i.bfa = load i8, ptr %.1919321845.i, align 1, !tbaa !17
  %i.bfb = sext i8 %i.bfa to i16
  %i.bfc = insertelement <8 x i16> poison, i16 %i.bfb, i64 0
  %i.bfd = shufflevector <8 x i16> %i.bfc, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bfe = sext <8 x i8> %i.bez to <8 x i16>
  %i.bff = mul <8 x i16> %i.bfd, %i.bfe
  %i.bfg = sext <8 x i16> %i.bff to <8 x i32>
  %i.bfh = add <8 x i32> %i.bey, %i.bfg
  %i.bfi = getelementptr inbounds nuw i8, ptr %.320191844.i, i64 8
  %i.bfj = getelementptr inbounds nuw i8, ptr %.1919321845.i, i64 1
  %i.bfk = load <8 x i8>, ptr %i.bfi, align 1, !tbaa !17
  %i.bfl = load i8, ptr %i.bfj, align 1, !tbaa !17
  %i.bfm = sext i8 %i.bfl to i16
  %i.bfn = insertelement <8 x i16> poison, i16 %i.bfm, i64 0
  %i.bfo = shufflevector <8 x i16> %i.bfn, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bfp = sext <8 x i8> %i.bfk to <8 x i16>
  %i.bfq = mul <8 x i16> %i.bfo, %i.bfp
  %i.bfr = sext <8 x i16> %i.bfq to <8 x i32>
  %i.bfs = add <8 x i32> %i.bfh, %i.bfr           ; 2 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %.320191844.i, i64 16
  %i.bfu = getelementptr inbounds nuw i8, ptr %.1919321845.i, i64 2 ; 2 uses
  %i.bfv = add nuw nsw i32 %.220221843.i, 2       ; 2 uses
  %exitcond3001.not.i.1 = icmp eq i32 %i.bfv, %8
  br i1 %exitcond3001.not.i.1, label %._crit_edge1847.i, label %.lr.ph1846.i, !llvm.loop !429

._crit_edge1847.i:                                ; preds = %.lr.ph1846.i.prol.loopexit, %.lr.ph1846.i, %.preheader1140.i
  %.lcssa1300.i = phi <8 x i32> [ %.lcssa1299.i, %.preheader1140.i ], [ %.lcssa3260.unr, %.lr.ph1846.i.prol.loopexit ], [ %i.bfs, %.lr.ph1846.i ]
  %.191932.lcssa.i = phi ptr [ %.181931.lcssa.i, %.preheader1140.i ], [ %.lcssa3259.unr, %.lr.ph1846.i.prol.loopexit ], [ %i.bfu, %.lr.ph1846.i ]
  store <8 x i32> %.lcssa1300.i, ptr %.111852.i, align 32, !tbaa !17
  %i.bfw = getelementptr inbounds nuw i8, ptr %.111852.i, i64 32 ; 2 uses
  %i.bfx = add nuw nsw i32 %.419371850.i, 1       ; 2 uses
  %exitcond3002.not.i = icmp eq i32 %i.bfx, %6
  br i1 %exitcond3002.not.i, label %._crit_edge1854.i, label %.lr.ph1853.i, !llvm.loop !430

._crit_edge1854.i:                                ; preds = %._crit_edge1847.i, %.preheader1145.i
  %.11.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader1145.i ], [ %i.bfw, %._crit_edge1847.i ] ; 2 uses
  %i.bfy = getelementptr inbounds i8, ptr %.21858.i, i64 %i.ad
  %spec.select2228.i = getelementptr inbounds nuw i8, ptr %i.bfy, i64 %spec.select2228.idx.i ; 2 uses
  %i.bfz = add nuw nsw i32 %.118351856.i, 8       ; 3 uses
  %i.bga = or disjoint i32 %i.bfz, 7
  %i.bgb = icmp slt i32 %i.bga, %4
  %i.bgc = getelementptr i8, ptr %indvars.iv.i, i64 %spec.select2228.idx.i
  %scevgep2995.i = getelementptr i8, ptr %i.bgc, i64 %i.ad
  %i.bgd = getelementptr i8, ptr %indvars.iv899, i64 %spec.select2228.idx.i
  %scevgep900 = getelementptr i8, ptr %i.bgd, i64 %i.ad
  br i1 %i.bgb, label %.preheader1149.i, label %.preheader1139.i, !llvm.loop !431

.preheader1138.i:                                 ; preds = %._crit_edge2054.i, %.preheader1138.lr.ph.i
  %indvars.iv903 = phi ptr [ %scevgep904, %._crit_edge2054.i ], [ %scevgep902, %.preheader1138.lr.ph.i ] ; 3 uses
  %indvars.iv3009.i = phi ptr [ %scevgep3010.i, %._crit_edge2054.i ], [ %scevgep3008.i, %.preheader1138.lr.ph.i ] ; 6 uses
  %.42058.i = phi ptr [ %spec.select2229.i, %._crit_edge2054.i ], [ %.2.lcssa.i, %.preheader1138.lr.ph.i ] ; 14 uses
  %.122057.i = phi ptr [ %.17.lcssa.i, %._crit_edge2054.i ], [ %.61811.lcssa.i, %.preheader1138.lr.ph.i ] ; 2 uses
  %.218362056.i = phi i32 [ %i.ccp, %._crit_edge2054.i ], [ %.11835.lcssa.i, %.preheader1138.lr.ph.i ]
  br i1 %i.aes, label %.lr.ph1900.i, label %.preheader1137.i

.preheader1128.i:                                 ; preds = %._crit_edge2054.i, %.preheader1139.i
  %.21836.lcssa.i = phi i32 [ %.11835.lcssa.i, %.preheader1139.i ], [ %i.ccp, %._crit_edge2054.i ] ; 3 uses
  %.12.lcssa.i = phi ptr [ %.61811.lcssa.i, %.preheader1139.i ], [ %.17.lcssa.i, %._crit_edge2054.i ] ; 2 uses
  %.4.lcssa.i = phi ptr [ %.2.lcssa.i, %.preheader1139.i ], [ %spec.select2229.i, %._crit_edge2054.i ] ; 4 uses
  %i.bge = or disjoint i32 %.21836.lcssa.i, 1
  %i.bgf = icmp slt i32 %i.bge, %4
  br i1 %i.bgf, label %.preheader1127.lr.ph.i, label %.preheader1117.i

.preheader1127.lr.ph.i:                           ; preds = %.preheader1128.i
  %i.bgg = icmp sgt i32 %6, 15
  %i.bgh = icmp eq i32 %7, 0                      ; 5 uses
  %i.bgi = icmp sgt i32 %8, 3                     ; 6 uses
  %i.bgj = shl i32 %8, 1
  %i.bgk = sext i32 %i.bgj to i64                 ; 3 uses
  %spec.select2230.idx.i = select i1 %i.bgi, i64 8, i64 0 ; 3 uses
  %i.bgl = add i32 %8, -4                         ; 9 uses
  %i.bgm = and i32 %i.bgl, -4
  %i.bgn = add nuw nsw i32 %i.bgm, 4              ; 5 uses
  %i.bgo = and i32 %6, -16
  %i.bgp = zext i32 %i.bgl to i64                 ; 2 uses
  %i.bgq = lshr i64 %i.bgp, 2                     ; 5 uses
  %i.bgr = shl nuw nsw i64 %i.bgq, 5
  %i.bgs = shl nuw nsw i64 %i.bgq, 4
  %i.bgt = shl nuw nsw i64 %i.bgq, 3              ; 2 uses
  %i.bgu = add nuw nsw i64 %i.bgt, 8              ; 2 uses
  %scevgep3023.i = getelementptr i8, ptr %.4.lcssa.i, i64 %i.bgu
  %i.bgv = and i64 %i.bgp, 4294967292
  %i.bgw = shl nuw nsw i64 %i.bgq, 6
  %scevgep906 = getelementptr i8, ptr %.4.lcssa.i, i64 %i.bgt
  %i.bgx = add i32 %8, -2
  %i.bgy = add nuw nsw i64 %i.bgq, 1              ; 10 uses
  %i.bgz = add i32 %8, -2
  %i.bha = lshr i32 %i.bgl, 2                     ; 3 uses
  %i.bhb = add nuw nsw i32 %i.bha, 1              ; 4 uses
  %i.bhc = icmp eq i32 %i.bha, 0
  %unroll_iter3483 = and i32 %i.bhb, 2147483646
  %i.bhd = and i32 %i.bgl, 4
  %lcmp.mod3477.not.not = icmp eq i32 %i.bhd, 0
  %lcmp.mod3482 = trunc i32 %i.bhb to i1
  %i.bhe = icmp eq i32 %i.bha, 0
  %unroll_iter3501 = and i32 %i.bhb, 2147483646
  %i.bhf = and i32 %i.bgl, 4
  %lcmp.mod3496.not.not = icmp eq i32 %i.bhf, 0
  %lcmp.mod3500 = trunc i32 %i.bhb to i1
  %min.iters.check2198 = icmp ult i32 %i.bgl, 12
  %min.iters.check2200 = icmp ult i32 %i.bgl, 60
  %i.bhg = and i64 %i.bgy, 12
  %n.vec2202 = and i64 %i.bgy, 2147483632         ; 5 uses
  %i.bhh = trunc nuw nsw i64 %n.vec2202 to i32
  %i.bhi = shl i32 %i.bhh, 2
  %i.bhj = shl nuw nsw i64 %n.vec2202, 3          ; 2 uses
  %cmp.n2231 = icmp eq i64 %i.bgy, %n.vec2202
  %min.epilog.iters.check2242 = icmp eq i64 %i.bhg, 0
  %n.vec2244 = and i64 %i.bgy, 2147483644         ; 4 uses
  %i.bhk = trunc nuw nsw i64 %n.vec2244 to i32
  %i.bhl = shl i32 %i.bhk, 2
  %i.bhm = shl nuw nsw i64 %n.vec2244, 3          ; 2 uses
  %cmp.n2273 = icmp eq i64 %i.bgy, %n.vec2244
  %min.iters.check1949 = icmp ult i32 %i.bgl, 12
  %min.iters.check1951 = icmp ult i32 %i.bgl, 124
  %i.bhn = and i64 %i.bgy, 28
  %n.vec1953 = and i64 %i.bgy, 2147483616         ; 6 uses
  %i.bho = trunc nuw nsw i64 %n.vec1953 to i32
  %i.bhp = shl i32 %i.bho, 2
  %i.bhq = shl nuw nsw i64 %n.vec1953, 3
  %i.bhr = shl nuw nsw i64 %n.vec1953, 2
  %cmp.n1996 = icmp eq i64 %i.bgy, %n.vec1953
  %min.epilog.iters.check2005 = icmp eq i64 %i.bhn, 0
  %n.vec2007 = and i64 %i.bgy, 2147483644         ; 5 uses
  %i.bhs = trunc nuw nsw i64 %n.vec2007 to i32
  %i.bht = shl i32 %i.bhs, 2
  %i.bhu = shl nuw nsw i64 %n.vec2007, 3
  %i.bhv = shl nuw nsw i64 %n.vec2007, 2
  %cmp.n2030 = icmp eq i64 %i.bgy, %n.vec2007
  br label %.preheader1127.i

.preheader1137.i:                                 ; preds = %._crit_edge1891.i, %.preheader1138.i
  %.02070.lcssa.i = phi i32 [ 0, %.preheader1138.i ], [ %i.afa, %._crit_edge1891.i ] ; 3 uses
  %.02050.lcssa.i = phi ptr [ %.val8, %.preheader1138.i ], [ %.32053.lcssa.i, %._crit_edge1891.i ] ; 2 uses
  %.13.lcssa.i = phi ptr [ %.122057.i, %.preheader1138.i ], [ %i.blz, %._crit_edge1891.i ] ; 2 uses
  %i.bhw = or disjoint i32 %.02070.lcssa.i, 7
  %i.bhx = icmp slt i32 %i.bhw, %6
  br i1 %i.bhx, label %.lr.ph1942.i.preheader, label %.preheader1136.i

.lr.ph1942.i.preheader:                           ; preds = %.preheader1137.i
  %i.bhy = getelementptr inbounds nuw i8, ptr %indvars.iv903, i64 32
  br label %.lr.ph1942.i

.lr.ph1900.i:                                     ; preds = %.preheader1138.i, %._crit_edge1891.i
  %.131899.i = phi ptr [ %i.blz, %._crit_edge1891.i ], [ %.122057.i, %.preheader1138.i ] ; 9 uses
  %.020501898.i = phi ptr [ %.32053.lcssa.i, %._crit_edge1891.i ], [ %.val8, %.preheader1138.i ] ; 3 uses
  %.020701897.i = phi i32 [ %i.bma, %._crit_edge1891.i ], [ 0, %.preheader1138.i ]
  br i1 %i.aet, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph1900.i
  %i.bhz = load <16 x i32>, ptr %.131899.i, align 1, !tbaa !17
  %i.bia = getelementptr inbounds nuw i8, ptr %.131899.i, i64 64
  %i.bib = load <16 x i32>, ptr %i.bia, align 1, !tbaa !17
  %i.bic = getelementptr inbounds nuw i8, ptr %.131899.i, i64 128
  %i.bid = load <16 x i32>, ptr %i.bic, align 1, !tbaa !17
  %i.bie = getelementptr inbounds nuw i8, ptr %.131899.i, i64 192
  %i.bif = load <16 x i32>, ptr %i.bie, align 1, !tbaa !17
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph1900.i
  %i.big = phi <16 x i32> [ %i.bhz, %bb.ae ], [ zeroinitializer, %.lr.ph1900.i ] ; 2 uses
  %i.bih = phi <16 x i32> [ %i.bib, %bb.ae ], [ zeroinitializer, %.lr.ph1900.i ] ; 2 uses
  %i.bii = phi <16 x i32> [ %i.bid, %bb.ae ], [ zeroinitializer, %.lr.ph1900.i ] ; 2 uses
  %i.bij = phi <16 x i32> [ %i.bif, %bb.ae ], [ zeroinitializer, %.lr.ph1900.i ] ; 2 uses
  br i1 %i.aeu, label %.lr.ph1866.i, label %._crit_edge1867.i

.lr.ph1866.i:                                     ; preds = %bb.af, %.lr.ph1866.i
  %.120511864.i = phi ptr [ %i.biy, %.lr.ph1866.i ], [ %.020501898.i, %bb.af ] ; 2 uses
  %.020751863.i = phi ptr [ %i.bix, %.lr.ph1866.i ], [ %.42058.i, %bb.af ] ; 3 uses
  %.020791862.i = phi i32 [ %i.biz, %.lr.ph1866.i ], [ 0, %bb.af ]
  %i.bik = phi <16 x i32> [ %i.biw, %.lr.ph1866.i ], [ %i.bij, %bb.af ]
  %i.bil = phi <16 x i32> [ %i.biv, %.lr.ph1866.i ], [ %i.bii, %bb.af ]
  %i.bim = phi <16 x i32> [ %i.biu, %.lr.ph1866.i ], [ %i.bih, %bb.af ]
  %i.bin = phi <16 x i32> [ %i.bit, %.lr.ph1866.i ], [ %i.big, %bb.af ]
  %i.bio = load <16 x i8>, ptr %.020751863.i, align 1, !tbaa !17 ; 2 uses
  %i.bip = load <64 x i8>, ptr %.120511864.i, align 1, !tbaa !17 ; 3 uses
  %i.biq = shufflevector <16 x i8> %i.bio, <16 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bir = shufflevector <16 x i8> %i.bio, <16 x i8> poison, <64 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bis = shufflevector <64 x i8> %i.bip, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 32, i32 33, i32 34, i32 35, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 48, i32 49, i32 50, i32 51> ; 2 uses
  %i.bit = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bin, <64 x i8> %i.bip, <64 x i8> %i.biq) ; 2 uses
  %i.biu = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bim, <64 x i8> %i.bis, <64 x i8> %i.biq) ; 2 uses
  %i.biv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bil, <64 x i8> %i.bip, <64 x i8> %i.bir) ; 2 uses
  %i.biw = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bik, <64 x i8> %i.bis, <64 x i8> %i.bir) ; 2 uses
  %i.bix = getelementptr inbounds nuw i8, ptr %.020751863.i, i64 16 ; 2 uses
  %i.biy = getelementptr inbounds nuw i8, ptr %.120511864.i, i64 64
  %i.biz = add nuw nsw i32 %.020791862.i, 4       ; 2 uses
  %i.bja = or disjoint i32 %i.biz, 3
  %i.bjb = icmp slt i32 %i.bja, %8
  br i1 %i.bjb, label %.lr.ph1866.i, label %bb.ag, !llvm.loop !432

bb.ag:                                            ; preds = %.lr.ph1866.i
  %i.bjc = getelementptr i8, ptr %.020501898.i, i64 %i.afi
  %scevgep901 = getelementptr i8, ptr %i.bjc, i64 64
  %i.bjd = load <4 x i32>, ptr %i.bix, align 1, !tbaa !17 ; 2 uses
  %i.bje = shufflevector <4 x i32> %i.bjd, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.bjf = sub <16 x i32> %i.bit, %i.bje
  %i.bjg = sub <16 x i32> %i.biu, %i.bje
  %i.bjh = shufflevector <4 x i32> %i.bjd, <4 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.bji = sub <16 x i32> %i.biv, %i.bjh
  %i.bjj = sub <16 x i32> %i.biw, %i.bjh
  %i.bjk = getelementptr inbounds nuw i8, ptr %.020751863.i, i64 32
  br label %._crit_edge1867.i

._crit_edge1867.i:                                ; preds = %bb.ag, %bb.af
  %.12051.lcssa3278.i = phi ptr [ %scevgep901, %bb.ag ], [ %.020501898.i, %bb.af ] ; 2 uses
  %.02079.lcssa3275.i = phi i32 [ %i.aez, %bb.ag ], [ 0, %bb.af ] ; 3 uses
  %i.bjl = phi <16 x i32> [ %i.bjf, %bb.ag ], [ %i.big, %bb.af ] ; 2 uses
  %i.bjm = phi <16 x i32> [ %i.bjg, %bb.ag ], [ %i.bih, %bb.af ] ; 2 uses
  %i.bjn = phi <16 x i32> [ %i.bji, %bb.ag ], [ %i.bii, %bb.af ] ; 2 uses
  %i.bjo = phi <16 x i32> [ %i.bjj, %bb.ag ], [ %i.bij, %bb.af ] ; 2 uses
  %.12076.i = phi ptr [ %i.bjk, %bb.ag ], [ %.42058.i, %bb.af ] ; 2 uses
  %i.bjp = or disjoint i32 %.02079.lcssa3275.i, 1
  %i.bjq = icmp slt i32 %i.bjp, %8
  br i1 %i.bjq, label %.lr.ph1879.i, label %.preheader1133.i

.preheader1133.i:                                 ; preds = %.lr.ph1879.i, %._crit_edge1867.i
  %.lcssa1194.i = phi <16 x i32> [ %i.bjl, %._crit_edge1867.i ], [ %i.bke, %.lr.ph1879.i ] ; 2 uses
  %.lcssa1193.i = phi <16 x i32> [ %i.bjm, %._crit_edge1867.i ], [ %i.bkh, %.lr.ph1879.i ] ; 2 uses
  %.lcssa1192.i = phi <16 x i32> [ %i.bjn, %._crit_edge1867.i ], [ %i.bkk, %.lr.ph1879.i ] ; 2 uses
  %.lcssa1191.i = phi <16 x i32> [ %i.bjo, %._crit_edge1867.i ], [ %i.bkl, %.lr.ph1879.i ] ; 2 uses
  %.12080.lcssa.i = phi i32 [ %.02079.lcssa3275.i, %._crit_edge1867.i ], [ %i.bko, %.lr.ph1879.i ] ; 2 uses
  %.22077.lcssa.i = phi ptr [ %.12076.i, %._crit_edge1867.i ], [ %i.bkm, %.lr.ph1879.i ]
  %.22052.lcssa.i = phi ptr [ %.12051.lcssa3278.i, %._crit_edge1867.i ], [ %i.bkn, %.lr.ph1879.i ] ; 2 uses
  %i.bjr = icmp slt i32 %.12080.lcssa.i, %8
  br i1 %i.bjr, label %.lr.ph1890.i, label %._crit_edge1891.i

.lr.ph1879.i:                                     ; preds = %._crit_edge1867.i, %.lr.ph1879.i
  %.220521877.i = phi ptr [ %i.bkn, %.lr.ph1879.i ], [ %.12051.lcssa3278.i, %._crit_edge1867.i ] ; 2 uses
  %.220771876.i = phi ptr [ %i.bkm, %.lr.ph1879.i ], [ %.12076.i, %._crit_edge1867.i ] ; 2 uses
  %.120801875.i = phi i32 [ %i.bko, %.lr.ph1879.i ], [ %.02079.lcssa3275.i, %._crit_edge1867.i ]
  %i.bjs = phi <16 x i32> [ %i.bkl, %.lr.ph1879.i ], [ %i.bjo, %._crit_edge1867.i ]
  %i.bjt = phi <16 x i32> [ %i.bkk, %.lr.ph1879.i ], [ %i.bjn, %._crit_edge1867.i ]
  %i.bju = phi <16 x i32> [ %i.bkh, %.lr.ph1879.i ], [ %i.bjm, %._crit_edge1867.i ]
  %i.bjv = phi <16 x i32> [ %i.bke, %.lr.ph1879.i ], [ %i.bjl, %._crit_edge1867.i ]
  %i.bjw = load double, ptr %.220771876.i, align 1, !tbaa !17
  %i.bjx = insertelement <4 x double> poison, double %i.bjw, i64 0
  %i.bjy = bitcast <4 x double> %i.bjx to <4 x i64>
  %i.bjz = shufflevector <4 x i64> %i.bjy, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.bka = load <32 x i8>, ptr %.220521877.i, align 1, !tbaa !17 ; 2 uses
  %i.bkb = bitcast <4 x i64> %i.bjz to <32 x i8>  ; 2 uses
  %i.bkc = sext <32 x i8> %i.bkb to <32 x i16>    ; 2 uses
  %i.bkd = sext <32 x i8> %i.bka to <32 x i16>    ; 2 uses
  %i.bke = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.bjv, <32 x i16> %i.bkc, <32 x i16> %i.bkd) ; 2 uses
  %i.bkf = shufflevector <32 x i8> %i.bka, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.bkg = sext <32 x i8> %i.bkf to <32 x i16>    ; 2 uses
  %i.bkh = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.bju, <32 x i16> %i.bkc, <32 x i16> %i.bkg) ; 2 uses
  %i.bki = shufflevector <32 x i8> %i.bkb, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27>
  %i.bkj = sext <32 x i8> %i.bki to <32 x i16>    ; 2 uses
  %i.bkk = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.bjt, <32 x i16> %i.bkj, <32 x i16> %i.bkd) ; 2 uses
  %i.bkl = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.bjs, <32 x i16> %i.bkj, <32 x i16> %i.bkg) ; 2 uses
  %i.bkm = getelementptr inbounds nuw i8, ptr %.220771876.i, i64 8 ; 2 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %.220521877.i, i64 32 ; 2 uses
  %i.bko = add nuw nsw i32 %.120801875.i, 2       ; 3 uses
  %i.bkp = or disjoint i32 %i.bko, 1
  %i.bkq = icmp slt i32 %i.bkp, %8
  br i1 %i.bkq, label %.lr.ph1879.i, label %.preheader1133.i, !llvm.loop !433

.lr.ph1890.i:                                     ; preds = %.preheader1133.i, %.lr.ph1890.i
  %.320531889.i = phi ptr [ %i.blu, %.lr.ph1890.i ], [ %.22052.lcssa.i, %.preheader1133.i ] ; 2 uses
  %.320781888.i = phi ptr [ %i.blt, %.lr.ph1890.i ], [ %.22077.lcssa.i, %.preheader1133.i ] ; 2 uses
  %.220811887.i = phi i32 [ %i.blv, %.lr.ph1890.i ], [ %.12080.lcssa.i, %.preheader1133.i ]
  %i.bkr = phi <16 x i32> [ %i.bls, %.lr.ph1890.i ], [ %.lcssa1191.i, %.preheader1133.i ]
  %i.bks = phi <16 x i32> [ %i.blp, %.lr.ph1890.i ], [ %.lcssa1192.i, %.preheader1133.i ]
  %i.bkt = phi <16 x i32> [ %i.bll, %.lr.ph1890.i ], [ %.lcssa1193.i, %.preheader1133.i ]
  %i.bku = phi <16 x i32> [ %i.bli, %.lr.ph1890.i ], [ %.lcssa1194.i, %.preheader1133.i ]
  %i.bkv = load float, ptr %.320781888.i, align 1, !tbaa !17
  %i.bkw = insertelement <4 x float> poison, float %i.bkv, i64 0
  %i.bkx = load <16 x i8>, ptr %.320531889.i, align 16, !tbaa !17 ; 2 uses
  %i.bky = bitcast <4 x float> %i.bkw to <16 x i8>
  %i.bkz = shufflevector <16 x i8> %i.bky, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bla = sext <16 x i8> %i.bkz to <16 x i16>    ; 3 uses
  %i.blb = sext <16 x i8> %i.bkx to <16 x i16>    ; 2 uses
  %i.blc = bitcast <16 x i16> %i.bla to <8 x i32>
end_hunk_5
begin_hunk_6_@_ZN4ncnn39gemm_transB_packed_tile_int8_avx512vnniERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.byy = getelementptr inbounds nuw i8, ptr %.1720672026.i, i64 4
  %i.byz = load <16 x i8>, ptr %i.byx, align 1, !tbaa !17
  %i.bza = load float, ptr %i.byy, align 1, !tbaa !17
  %i.bzb = insertelement <4 x float> poison, float %i.bza, i64 0
  %i.bzc = sext <16 x i8> %i.byz to <16 x i16>
  %i.bzd = bitcast <4 x float> %i.bzb to <16 x i8>
  %i.bze = shufflevector <16 x i8> %i.bzd, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bzf = zext <16 x i8> %i.bze to <16 x i16>
  %i.bzg = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bzc, <16 x i16> %i.bzf) ; 2 uses
  %i.bzh = shufflevector <8 x i32> %i.bzg, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bzi = shufflevector <8 x i32> %i.bzg, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bzj = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bzh, <4 x i32> %i.bzi)
  %i.bzk = add <4 x i32> %i.bzj, %i.byw           ; 3 uses
  %i.bzl = getelementptr inbounds nuw i8, ptr %.021102025.i, i64 32 ; 2 uses
  %i.bzm = getelementptr inbounds nuw i8, ptr %.1720672026.i, i64 8 ; 2 uses
  %niter3466.next.1 = add i32 %niter3466, 2       ; 2 uses
  %niter3466.ncmp.1.not = icmp eq i32 %niter3466.next.1, %unroll_iter3465
  br i1 %niter3466.ncmp.1.not, label %.unr-lcssa3456, label %.lr.ph2028.i, !llvm.loop !448

.unr-lcssa3456:                                   ; preds = %.lr.ph2028.i
  br i1 %lcmp.mod3461.not.not, label %.lr.ph2028.i.epil.preheader, label %bb.as

.lr.ph2028.i.epil.preheader:                      ; preds = %.unr-lcssa3456, %.lr.ph2028.i.preheader
  %.1720672026.i.epil.init = phi ptr [ %.1620662051.i, %.lr.ph2028.i.preheader ], [ %i.bzm, %.unr-lcssa3456 ]
  %.021102025.i.epil.init = phi ptr [ %.42058.i, %.lr.ph2028.i.preheader ], [ %i.bzl, %.unr-lcssa3456 ]
  %.epil.init3460 = phi <4 x i32> [ %i.byj, %.lr.ph2028.i.preheader ], [ %i.bzk, %.unr-lcssa3456 ]
  tail call void @llvm.assume(i1 %lcmp.mod3464)
  %i.bzn = load <16 x i8>, ptr %.021102025.i.epil.init, align 1, !tbaa !17
  %i.bzo = load float, ptr %.1720672026.i.epil.init, align 1, !tbaa !17
  %i.bzp = insertelement <4 x float> poison, float %i.bzo, i64 0
  %i.bzq = sext <16 x i8> %i.bzn to <16 x i16>
  %i.bzr = bitcast <4 x float> %i.bzp to <16 x i8>
  %i.bzs = shufflevector <16 x i8> %i.bzr, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bzt = zext <16 x i8> %i.bzs to <16 x i16>
  %i.bzu = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bzq, <16 x i16> %i.bzt) ; 2 uses
  %i.bzv = shufflevector <8 x i32> %i.bzu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bzw = shufflevector <8 x i32> %i.bzu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bzx = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bzv, <4 x i32> %i.bzw)
  %i.bzy = add <4 x i32> %i.bzx, %.epil.init3460
  br label %bb.as

bb.as:                                            ; preds = %.unr-lcssa3456, %.lr.ph2028.i.epil.preheader
  %.lcssa3155 = phi <4 x i32> [ %i.bzk, %.unr-lcssa3456 ], [ %i.bzy, %.lr.ph2028.i.epil.preheader ]
  %i.bzz = getelementptr i8, ptr %.1620662051.i, i64 %i.afh
  %scevgep3013.i = getelementptr i8, ptr %i.bzz, i64 4
  %i.caa = load <4 x i32>, ptr %indvars.iv3009.i, align 1, !tbaa !17
  %i.cab = sub <4 x i32> %.lcssa3155, %i.caa
  br label %._crit_edge2029.i

._crit_edge2029.i:                                ; preds = %bb.as, %bb.ar
  %.172067.lcssa3332.i = phi ptr [ %scevgep3013.i, %bb.as ], [ %.1620662051.i, %bb.ar ] ; 2 uses
  %.02114.lcssa3329.i = phi i32 [ %i.aez, %bb.as ], [ 0, %bb.ar ] ; 3 uses
  %i.cac = phi <4 x i32> [ %i.cab, %bb.as ], [ %i.byj, %bb.ar ] ; 2 uses
  %.12111.i = phi ptr [ %i.buz, %bb.as ], [ %.42058.i, %bb.ar ] ; 2 uses
  %i.cad = or disjoint i32 %.02114.lcssa3329.i, 1
  %i.cae = icmp slt i32 %i.cad, %8
  br i1 %i.cae, label %.lr.ph2038.i, label %.preheader1129.i

.preheader1129.i:                                 ; preds = %.lr.ph2038.i, %._crit_edge2029.i
  %.lcssa1230.i = phi <4 x i32> [ %i.cac, %._crit_edge2029.i ], [ %i.cbe, %.lr.ph2038.i ] ; 3 uses
  %.12115.lcssa.i = phi i32 [ %.02114.lcssa3329.i, %._crit_edge2029.i ], [ %i.cbh, %.lr.ph2038.i ] ; 5 uses
  %.22112.lcssa.i = phi ptr [ %.12111.i, %._crit_edge2029.i ], [ %i.cbf, %.lr.ph2038.i ] ; 3 uses
  %.182068.lcssa.i = phi ptr [ %.172067.lcssa3332.i, %._crit_edge2029.i ], [ %i.cbg, %.lr.ph2038.i ] ; 4 uses
  %i.caf = icmp slt i32 %.12115.lcssa.i, %8
  br i1 %i.caf, label %.lr.ph2046.i.preheader, label %._crit_edge2047.i

.lr.ph2046.i.preheader:                           ; preds = %.preheader1129.i
  %i.cag = sub i32 %8, %.12115.lcssa.i
  %.neg3550 = add i32 %.12115.lcssa.i, 1
  %xtraiter3467 = and i32 %i.cag, 1
  %lcmp.mod3468.not = icmp eq i32 %xtraiter3467, 0
  br i1 %lcmp.mod3468.not, label %.lr.ph2046.i.prol.loopexit, label %.lr.ph2046.i.prol

.lr.ph2046.i.prol:                                ; preds = %.lr.ph2046.i.preheader
  %i.cah = load <8 x i8>, ptr %.22112.lcssa.i, align 1, !tbaa !17
  %i.cai = load i8, ptr %.182068.lcssa.i, align 1, !tbaa !17
  %i.caj = sext i8 %i.cai to i16
  %i.cak = insertelement <8 x i16> poison, i16 %i.caj, i64 0
  %i.cal = shufflevector <8 x i16> %i.cak, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cam = sext <8 x i8> %i.cah to <8 x i16>      ; 2 uses
  %i.can = mul <8 x i16> %i.cal, %i.cam
  %i.cao = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.cam, <8 x i16> %i.cal)
  %i.cap = shufflevector <8 x i16> %i.can, <8 x i16> %i.cao, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.caq = bitcast <8 x i16> %i.cap to <4 x i32>
  %i.car = add <4 x i32> %.lcssa1230.i, %i.caq    ; 2 uses
  %i.cas = getelementptr inbounds nuw i8, ptr %.22112.lcssa.i, i64 4
  %i.cat = getelementptr inbounds nuw i8, ptr %.182068.lcssa.i, i64 1 ; 2 uses
  %i.cau = add nuw nsw i32 %.12115.lcssa.i, 1
  br label %.lr.ph2046.i.prol.loopexit

.lr.ph2046.i.prol.loopexit:                       ; preds = %.lr.ph2046.i.prol, %.lr.ph2046.i.preheader
  %.lcssa3161.unr = phi <4 x i32> [ poison, %.lr.ph2046.i.preheader ], [ %i.car, %.lr.ph2046.i.prol ]
  %.lcssa3160.unr = phi ptr [ poison, %.lr.ph2046.i.preheader ], [ %i.cat, %.lr.ph2046.i.prol ]
  %.1920692045.i.unr = phi ptr [ %.182068.lcssa.i, %.lr.ph2046.i.preheader ], [ %i.cat, %.lr.ph2046.i.prol ]
  %.321132044.i.unr = phi ptr [ %.22112.lcssa.i, %.lr.ph2046.i.preheader ], [ %i.cas, %.lr.ph2046.i.prol ]
  %.221162043.i.unr = phi i32 [ %.12115.lcssa.i, %.lr.ph2046.i.preheader ], [ %i.cau, %.lr.ph2046.i.prol ]
  %.unr3469 = phi <4 x i32> [ %.lcssa1230.i, %.lr.ph2046.i.preheader ], [ %i.car, %.lr.ph2046.i.prol ]
  %i.cav = icmp eq i32 %8, %.neg3550
  br i1 %i.cav, label %._crit_edge2047.i, label %.lr.ph2046.i

.lr.ph2038.i:                                     ; preds = %._crit_edge2029.i, %.lr.ph2038.i
  %.1820682036.i = phi ptr [ %i.cbg, %.lr.ph2038.i ], [ %.172067.lcssa3332.i, %._crit_edge2029.i ] ; 2 uses
  %.221122035.i = phi ptr [ %i.cbf, %.lr.ph2038.i ], [ %.12111.i, %._crit_edge2029.i ] ; 2 uses
  %.121152034.i = phi i32 [ %i.cbh, %.lr.ph2038.i ], [ %.02114.lcssa3329.i, %._crit_edge2029.i ]
  %i.caw = phi <4 x i32> [ %i.cbe, %.lr.ph2038.i ], [ %i.cac, %._crit_edge2029.i ]
  %i.cax = load <8 x i8>, ptr %.221122035.i, align 1, !tbaa !17
  %i.cay = load i16, ptr %.1820682036.i, align 2, !tbaa !401
  %i.caz = insertelement <8 x i16> poison, i16 %i.cay, i64 0
  %i.cba = sext <8 x i8> %i.cax to <8 x i16>
  %i.cbb = bitcast <8 x i16> %i.caz to <16 x i8>
  %i.cbc = shufflevector <16 x i8> %i.cbb, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.cbd = sext <8 x i8> %i.cbc to <8 x i16>
  %i.cbe = tail call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.caw, <8 x i16> %i.cba, <8 x i16> %i.cbd) ; 2 uses
  %i.cbf = getelementptr inbounds nuw i8, ptr %.221122035.i, i64 8 ; 2 uses
  %i.cbg = getelementptr inbounds nuw i8, ptr %.1820682036.i, i64 2 ; 2 uses
  %i.cbh = add nuw nsw i32 %.121152034.i, 2       ; 3 uses
  %i.cbi = or disjoint i32 %i.cbh, 1
  %i.cbj = icmp slt i32 %i.cbi, %8
  br i1 %i.cbj, label %.lr.ph2038.i, label %.preheader1129.i, !llvm.loop !449

.lr.ph2046.i:                                     ; preds = %.lr.ph2046.i.prol.loopexit, %.lr.ph2046.i
  %.1920692045.i = phi ptr [ %i.cck, %.lr.ph2046.i ], [ %.1920692045.i.unr, %.lr.ph2046.i.prol.loopexit ] ; 3 uses
  %.321132044.i = phi ptr [ %i.ccj, %.lr.ph2046.i ], [ %.321132044.i.unr, %.lr.ph2046.i.prol.loopexit ] ; 3 uses
  %.221162043.i = phi i32 [ %i.ccl, %.lr.ph2046.i ], [ %.221162043.i.unr, %.lr.ph2046.i.prol.loopexit ]
  %i.cbk = phi <4 x i32> [ %i.cci, %.lr.ph2046.i ], [ %.unr3469, %.lr.ph2046.i.prol.loopexit ]
  %i.cbl = load <8 x i8>, ptr %.321132044.i, align 1, !tbaa !17
  %i.cbm = load i8, ptr %.1920692045.i, align 1, !tbaa !17
  %i.cbn = sext i8 %i.cbm to i16
  %i.cbo = insertelement <8 x i16> poison, i16 %i.cbn, i64 0
  %i.cbp = shufflevector <8 x i16> %i.cbo, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cbq = sext <8 x i8> %i.cbl to <8 x i16>      ; 2 uses
  %i.cbr = mul <8 x i16> %i.cbp, %i.cbq
  %i.cbs = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.cbq, <8 x i16> %i.cbp)
  %i.cbt = shufflevector <8 x i16> %i.cbr, <8 x i16> %i.cbs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cbu = bitcast <8 x i16> %i.cbt to <4 x i32>
  %i.cbv = add <4 x i32> %i.cbk, %i.cbu
  %i.cbw = getelementptr inbounds nuw i8, ptr %.321132044.i, i64 4
  %i.cbx = getelementptr inbounds nuw i8, ptr %.1920692045.i, i64 1
  %i.cby = load <8 x i8>, ptr %i.cbw, align 1, !tbaa !17
  %i.cbz = load i8, ptr %i.cbx, align 1, !tbaa !17
  %i.cca = sext i8 %i.cbz to i16
  %i.ccb = insertelement <8 x i16> poison, i16 %i.cca, i64 0
  %i.ccc = shufflevector <8 x i16> %i.ccb, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ccd = sext <8 x i8> %i.cby to <8 x i16>      ; 2 uses
  %i.cce = mul <8 x i16> %i.ccc, %i.ccd
  %i.ccf = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ccd, <8 x i16> %i.ccc)
  %i.ccg = shufflevector <8 x i16> %i.cce, <8 x i16> %i.ccf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cch = bitcast <8 x i16> %i.ccg to <4 x i32>
  %i.cci = add <4 x i32> %i.cbv, %i.cch           ; 2 uses
  %i.ccj = getelementptr inbounds nuw i8, ptr %.321132044.i, i64 8
  %i.cck = getelementptr inbounds nuw i8, ptr %.1920692045.i, i64 2 ; 2 uses
  %i.ccl = add nuw nsw i32 %.221162043.i, 2       ; 2 uses
  %exitcond3014.not.i.1 = icmp eq i32 %i.ccl, %8
  br i1 %exitcond3014.not.i.1, label %._crit_edge2047.i, label %.lr.ph2046.i, !llvm.loop !450

._crit_edge2047.i:                                ; preds = %.lr.ph2046.i.prol.loopexit, %.lr.ph2046.i, %.preheader1129.i
  %.lcssa1231.i = phi <4 x i32> [ %.lcssa1230.i, %.preheader1129.i ], [ %.lcssa3161.unr, %.lr.ph2046.i.prol.loopexit ], [ %i.cci, %.lr.ph2046.i ]
  %.192069.lcssa.i = phi ptr [ %.182068.lcssa.i, %.preheader1129.i ], [ %.lcssa3160.unr, %.lr.ph2046.i.prol.loopexit ], [ %i.cck, %.lr.ph2046.i ]
  store <4 x i32> %.lcssa1231.i, ptr %.172052.i, align 16, !tbaa !17
  %i.ccm = getelementptr inbounds nuw i8, ptr %.172052.i, i64 16 ; 2 uses
  %i.ccn = add nuw nsw i32 %.420742050.i, 1       ; 2 uses
  %exitcond3015.not.i = icmp eq i32 %i.ccn, %6
  br i1 %exitcond3015.not.i, label %._crit_edge2054.i, label %.lr.ph2053.i, !llvm.loop !451

._crit_edge2054.i:                                ; preds = %._crit_edge2047.i, %.preheader1134.i
  %.17.lcssa.i = phi ptr [ %.16.lcssa.i, %.preheader1134.i ], [ %i.ccm, %._crit_edge2047.i ] ; 2 uses
  %i.cco = getelementptr inbounds i8, ptr %.42058.i, i64 %i.aew
  %spec.select2229.i = getelementptr inbounds nuw i8, ptr %i.cco, i64 %spec.select2229.idx.i ; 2 uses
  %i.ccp = add nuw nsw i32 %.218362056.i, 4       ; 3 uses
  %i.ccq = or disjoint i32 %i.ccp, 3
  %i.ccr = icmp slt i32 %i.ccq, %4
  %i.ccs = getelementptr i8, ptr %indvars.iv3009.i, i64 %spec.select2229.idx.i
  %scevgep3010.i = getelementptr i8, ptr %i.ccs, i64 %i.aew
  %i.cct = getelementptr i8, ptr %indvars.iv903, i64 %spec.select2229.idx.i
  %scevgep904 = getelementptr i8, ptr %i.cct, i64 %i.aew
  br i1 %i.ccr, label %.preheader1138.i, label %.preheader1128.i, !llvm.loop !452

.preheader1127.i:                                 ; preds = %._crit_edge2263.i, %.preheader1127.lr.ph.i
  %indvars.iv907 = phi ptr [ %scevgep908, %._crit_edge2263.i ], [ %scevgep906, %.preheader1127.lr.ph.i ] ; 4 uses
  %indvars.iv3024.i = phi ptr [ %scevgep3025.i, %._crit_edge2263.i ], [ %scevgep3023.i, %.preheader1127.lr.ph.i ] ; 6 uses
  %.62267.i = phi ptr [ %spec.select2230.i, %._crit_edge2263.i ], [ %.4.lcssa.i, %.preheader1127.lr.ph.i ] ; 22 uses
  %.182266.i = phi ptr [ %.23.lcssa.i, %._crit_edge2263.i ], [ %.12.lcssa.i, %.preheader1127.lr.ph.i ] ; 2 uses
  %.318372265.i = phi i32 [ %i.duq, %._crit_edge2263.i ], [ %.21836.lcssa.i, %.preheader1127.lr.ph.i ]
  br i1 %i.bgg, label %.lr.ph2094.i, label %.preheader1126.i

.preheader1117.i:                                 ; preds = %._crit_edge2263.i, %.preheader1128.i
  %.31837.lcssa.i = phi i32 [ %.21836.lcssa.i, %.preheader1128.i ], [ %i.duq, %._crit_edge2263.i ] ; 2 uses
  %.18.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader1128.i ], [ %.23.lcssa.i, %._crit_edge2263.i ]
  %.6.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader1128.i ], [ %spec.select2230.i, %._crit_edge2263.i ] ; 3 uses
  %i.ccu = icmp slt i32 %.31837.lcssa.i, %4
  br i1 %i.ccu, label %.preheader1116.lr.ph.i, label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit

.preheader1116.lr.ph.i:                           ; preds = %.preheader1117.i
  %i.ccv = icmp sgt i32 %6, 15
  %i.ccw = icmp eq i32 %7, 0                      ; 5 uses
  %i.ccx = icmp sgt i32 %8, 3                     ; 6 uses
  %i.ccy = sext i32 %8 to i64                     ; 2 uses
  %spec.select2231.idx.i = select i1 %i.ccx, i64 4, i64 0 ; 2 uses
  %i.ccz = add i32 %8, -4                         ; 6 uses
  %i.cda = and i32 %i.ccz, -4
  %i.cdb = add nuw nsw i32 %i.cda, 4              ; 5 uses
  %i.cdc = and i32 %6, -16
  %i.cdd = zext i32 %i.ccz to i64                 ; 4 uses
  %i.cde = lshr i64 %i.cdd, 2                     ; 4 uses
  %i.cdf = shl nuw nsw i64 %i.cde, 5
  %i.cdg = shl nuw nsw i64 %i.cde, 4
  %i.cdh = shl nuw nsw i64 %i.cde, 3
  %i.cdi = and i64 %i.cdd, 4294967292
  %i.cdj = shl nuw nsw i64 %i.cde, 6
  %i.cdk = and i64 %i.cdd, 4294967292             ; 2 uses
  %scevgep910 = getelementptr i8, ptr %.6.lcssa.i, i64 %i.cdk
  %i.cdl = add nsw i64 %spec.select2231.idx.i, %i.ccy ; 2 uses
  %i.cdm = getelementptr i8, ptr %.6.lcssa.i, i64 %i.cdk
  %scevgep913 = getelementptr i8, ptr %i.cdm, i64 4
  %i.cdn = lshr i64 %i.cdd, 2
  %i.cdo = add nuw nsw i64 %i.cdn, 1              ; 10 uses
  %i.cdp = add i32 %8, -2
  %i.cdq = add i32 %8, -4                         ; 4 uses
  %i.cdr = lshr i32 %i.cdq, 2
  %i.cds = add nuw nsw i32 %i.cdr, 1              ; 6 uses
  %xtraiter3504 = and i32 %i.cds, 3               ; 3 uses
  %i.cdt = icmp ult i32 %i.cdq, 12
  %unroll_iter3514 = and i32 %i.cds, 2147483644
  %lcmp.mod3508.not = icmp eq i32 %xtraiter3504, 0
  %lcmp.mod3513 = icmp ne i32 %xtraiter3504, 0
  %xtraiter3520 = and i32 %i.cds, 3               ; 3 uses
  %i.cdu = icmp ult i32 %i.cdq, 12
  %unroll_iter3529 = and i32 %i.cds, 2147483644
  %lcmp.mod3524.not = icmp eq i32 %xtraiter3520, 0
  %lcmp.mod3528 = icmp ne i32 %xtraiter3520, 0
  %xtraiter3535 = and i32 %i.cds, 3               ; 3 uses
  %i.cdv = icmp ult i32 %i.cdq, 12
  %unroll_iter3543 = and i32 %i.cds, 2147483644
  %lcmp.mod3539.not = icmp eq i32 %xtraiter3535, 0
  %lcmp.mod3542 = icmp ne i32 %xtraiter3535, 0
  %min.iters.check2751 = icmp ult i32 %i.ccz, 12
  %min.iters.check2753 = icmp ult i32 %i.ccz, 124
  %i.cdw = and i64 %i.cdo, 28
  %n.vec2755 = and i64 %i.cdo, 2147483616         ; 6 uses
  %i.cdx = trunc nuw nsw i64 %n.vec2755 to i32
  %i.cdy = shl i32 %i.cdx, 2
  %i.cdz = shl nuw nsw i64 %n.vec2755, 2
  %i.cea = shl nuw nsw i64 %n.vec2755, 3
  %cmp.n2798 = icmp eq i64 %i.cdo, %n.vec2755
  %min.epilog.iters.check2807 = icmp eq i64 %i.cdw, 0
  %n.vec2809 = and i64 %i.cdo, 2147483644         ; 5 uses
  %i.ceb = trunc nuw nsw i64 %n.vec2809 to i32
  %i.cec = shl i32 %i.ceb, 2
  %i.ced = shl nuw nsw i64 %n.vec2809, 2
  %i.cee = shl nuw nsw i64 %n.vec2809, 3
  %cmp.n2832 = icmp eq i64 %i.cdo, %n.vec2809
  %min.iters.check2419 = icmp ult i32 %i.ccz, 12
  %min.iters.check2421 = icmp ult i32 %i.ccz, 124
  %i.cef = and i64 %i.cdo, 28
  %n.vec2423 = and i64 %i.cdo, 2147483616         ; 5 uses
  %i.ceg = trunc nuw nsw i64 %n.vec2423 to i32
  %i.ceh = shl i32 %i.ceg, 2
  %i.cei = shl nuw nsw i64 %n.vec2423, 2          ; 2 uses
  %cmp.n2455 = icmp eq i64 %i.cdo, %n.vec2423
  %min.epilog.iters.check2463 = icmp eq i64 %i.cef, 0
  %n.vec2465 = and i64 %i.cdo, 2147483644         ; 4 uses
  %i.cej = trunc nuw nsw i64 %n.vec2465 to i32
  %i.cek = shl i32 %i.cej, 2
  %i.cel = shl nuw nsw i64 %n.vec2465, 2          ; 2 uses
  %cmp.n2483 = icmp eq i64 %i.cdo, %n.vec2465
  br label %.preheader1116.i

.preheader1126.i:                                 ; preds = %._crit_edge2087.i, %.preheader1127.i
  %.02137.lcssa.i = phi i32 [ 0, %.preheader1127.i ], [ %i.bgo, %._crit_edge2087.i ] ; 3 uses
  %.02117.lcssa.i = phi ptr [ %.val8, %.preheader1127.i ], [ %.32120.lcssa.i, %._crit_edge2087.i ] ; 2 uses
  %.19.lcssa.i = phi ptr [ %.182266.i, %.preheader1127.i ], [ %i.chk, %._crit_edge2087.i ] ; 2 uses
  %i.cem = or disjoint i32 %.02137.lcssa.i, 7
  %i.cen = icmp slt i32 %i.cem, %6
  br i1 %i.cen, label %.lr.ph2130.i.preheader, label %.preheader1125.i

.lr.ph2130.i.preheader:                           ; preds = %.preheader1126.i
  %i.ceo = getelementptr inbounds nuw i8, ptr %indvars.iv907, i64 16
  br label %.lr.ph2130.i

.lr.ph2094.i:                                     ; preds = %.preheader1127.i, %._crit_edge2087.i
  %.192093.i = phi ptr [ %i.chk, %._crit_edge2087.i ], [ %.182266.i, %.preheader1127.i ] ; 5 uses
  %.021172092.i = phi ptr [ %.32120.lcssa.i, %._crit_edge2087.i ], [ %.val8, %.preheader1127.i ] ; 3 uses
  %.021372091.i = phi i32 [ %i.chl, %._crit_edge2087.i ], [ 0, %.preheader1127.i ]
  br i1 %i.bgh, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph2094.i
  %i.cep = load <16 x i32>, ptr %.192093.i, align 1, !tbaa !17
  %i.ceq = getelementptr inbounds nuw i8, ptr %.192093.i, i64 64
  %i.cer = load <16 x i32>, ptr %i.ceq, align 1, !tbaa !17
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph2094.i
  %i.ces = phi <16 x i32> [ %i.cep, %bb.at ], [ zeroinitializer, %.lr.ph2094.i ] ; 2 uses
  %i.cet = phi <16 x i32> [ %i.cer, %bb.at ], [ zeroinitializer, %.lr.ph2094.i ] ; 2 uses
  br i1 %i.bgi, label %.lr.ph2066.i, label %._crit_edge2067.i

.lr.ph2066.i:                                     ; preds = %bb.au, %.lr.ph2066.i
  %.121182064.i = phi ptr [ %i.cfg, %.lr.ph2066.i ], [ %.021172092.i, %bb.au ] ; 2 uses
  %.021422063.i = phi ptr [ %i.cff, %.lr.ph2066.i ], [ %.62267.i, %bb.au ] ; 3 uses
  %.021462062.i = phi i32 [ %i.cfh, %.lr.ph2066.i ], [ 0, %bb.au ]
  %i.ceu = phi <16 x i32> [ %i.cfe, %.lr.ph2066.i ], [ %i.cet, %bb.au ]
  %i.cev = phi <16 x i32> [ %i.cfd, %.lr.ph2066.i ], [ %i.ces, %bb.au ]
  %i.cew = load double, ptr %.021422063.i, align 8, !tbaa !397
  %i.cex = insertelement <8 x double> poison, double %i.cew, i64 0
  %i.cey = bitcast <8 x double> %i.cex to <8 x i64>
  %i.cez = shufflevector <8 x i64> %i.cey, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.cfa = load <64 x i8>, ptr %.121182064.i, align 1, !tbaa !17 ; 2 uses
  %i.cfb = shufflevector <64 x i8> %i.cfa, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 32, i32 33, i32 34, i32 35, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 48, i32 49, i32 50, i32 51>
  %i.cfc = bitcast <8 x i64> %i.cez to <64 x i8>  ; 2 uses
  %i.cfd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cev, <64 x i8> %i.cfa, <64 x i8> %i.cfc) ; 2 uses
  %i.cfe = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ceu, <64 x i8> %i.cfb, <64 x i8> %i.cfc) ; 2 uses
  %i.cff = getelementptr inbounds nuw i8, ptr %.021422063.i, i64 8 ; 2 uses
  %i.cfg = getelementptr inbounds nuw i8, ptr %.121182064.i, i64 64
  %i.cfh = add nuw nsw i32 %.021462062.i, 4       ; 2 uses
  %i.cfi = or disjoint i32 %i.cfh, 3
  %i.cfj = icmp slt i32 %i.cfi, %8
  br i1 %i.cfj, label %.lr.ph2066.i, label %bb.av, !llvm.loop !453

bb.av:                                            ; preds = %.lr.ph2066.i
  %i.cfk = getelementptr i8, ptr %.021172092.i, i64 %i.bgw
  %scevgep905 = getelementptr i8, ptr %i.cfk, i64 64
  %i.cfl = load double, ptr %i.cff, align 8, !tbaa !397
  %i.cfm = insertelement <8 x double> poison, double %i.cfl, i64 0
  %i.cfn = bitcast <8 x double> %i.cfm to <16 x i32>
  %i.cfo = shufflevector <16 x i32> %i.cfn, <16 x i32> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.cfp = sub <16 x i32> %i.cfd, %i.cfo
  %i.cfq = sub <16 x i32> %i.cfe, %i.cfo
  %i.cfr = getelementptr inbounds nuw i8, ptr %.021422063.i, i64 16
  br label %._crit_edge2067.i

._crit_edge2067.i:                                ; preds = %bb.av, %bb.au
  %.12118.lcssa3344.i = phi ptr [ %scevgep905, %bb.av ], [ %.021172092.i, %bb.au ] ; 2 uses
  %.02146.lcssa3341.i = phi i32 [ %i.bgn, %bb.av ], [ 0, %bb.au ] ; 3 uses
  %i.cfs = phi <16 x i32> [ %i.cfp, %bb.av ], [ %i.ces, %bb.au ] ; 2 uses
  %i.cft = phi <16 x i32> [ %i.cfq, %bb.av ], [ %i.cet, %bb.au ] ; 2 uses
  %.12143.i = phi ptr [ %i.cfr, %bb.av ], [ %.62267.i, %bb.au ] ; 2 uses
  %i.cfu = or disjoint i32 %.02146.lcssa3341.i, 1
  %i.cfv = icmp slt i32 %i.cfu, %8
  br i1 %i.cfv, label %.lr.ph2077.i, label %.preheader1122.i

.preheader1122.i:                                 ; preds = %.lr.ph2077.i, %._crit_edge2067.i
  %.lcssa1172.i = phi <16 x i32> [ %i.cfs, %._crit_edge2067.i ], [ %i.cgg, %.lr.ph2077.i ] ; 2 uses
  %.lcssa1171.i = phi <16 x i32> [ %i.cft, %._crit_edge2067.i ], [ %i.cgj, %.lr.ph2077.i ] ; 2 uses
  %.12147.lcssa.i = phi i32 [ %.02146.lcssa3341.i, %._crit_edge2067.i ], [ %i.cgm, %.lr.ph2077.i ] ; 2 uses
  %.22144.lcssa.i = phi ptr [ %.12143.i, %._crit_edge2067.i ], [ %i.cgk, %.lr.ph2077.i ]
  %.22119.lcssa.i = phi ptr [ %.12118.lcssa3344.i, %._crit_edge2067.i ], [ %i.cgl, %.lr.ph2077.i ] ; 2 uses
  %i.cfw = icmp slt i32 %.12147.lcssa.i, %8
  br i1 %i.cfw, label %.lr.ph2086.i, label %._crit_edge2087.i

.lr.ph2077.i:                                     ; preds = %._crit_edge2067.i, %.lr.ph2077.i
  %.221192075.i = phi ptr [ %i.cgl, %.lr.ph2077.i ], [ %.12118.lcssa3344.i, %._crit_edge2067.i ] ; 2 uses
  %.221442074.i = phi ptr [ %i.cgk, %.lr.ph2077.i ], [ %.12143.i, %._crit_edge2067.i ] ; 2 uses
  %.121472073.i = phi i32 [ %i.cgm, %.lr.ph2077.i ], [ %.02146.lcssa3341.i, %._crit_edge2067.i ]
  %i.cfx = phi <16 x i32> [ %i.cgj, %.lr.ph2077.i ], [ %i.cft, %._crit_edge2067.i ]
  %i.cfy = phi <16 x i32> [ %i.cgg, %.lr.ph2077.i ], [ %i.cfs, %._crit_edge2067.i ]
  %i.cfz = load float, ptr %.221442074.i, align 1, !tbaa !17
  %i.cga = insertelement <8 x float> poison, float %i.cfz, i64 0
  %i.cgb = shufflevector <8 x float> %i.cga, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cgc = load <32 x i8>, ptr %.221192075.i, align 1, !tbaa !17 ; 2 uses
  %i.cgd = bitcast <8 x float> %i.cgb to <32 x i8>
  %i.cge = sext <32 x i8> %i.cgd to <32 x i16>    ; 2 uses
  %i.cgf = sext <32 x i8> %i.cgc to <32 x i16>
  %i.cgg = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.cfy, <32 x i16> %i.cge, <32 x i16> %i.cgf) ; 2 uses
  %i.cgh = shufflevector <32 x i8> %i.cgc, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.cgi = sext <32 x i8> %i.cgh to <32 x i16>
  %i.cgj = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.cfx, <32 x i16> %i.cge, <32 x i16> %i.cgi) ; 2 uses
  %i.cgk = getelementptr inbounds nuw i8, ptr %.221442074.i, i64 4 ; 2 uses
  %i.cgl = getelementptr inbounds nuw i8, ptr %.221192075.i, i64 32 ; 2 uses
  %i.cgm = add nuw nsw i32 %.121472073.i, 2       ; 3 uses
  %i.cgn = or disjoint i32 %i.cgm, 1
  %i.cgo = icmp slt i32 %i.cgn, %8
  br i1 %i.cgo, label %.lr.ph2077.i, label %.preheader1122.i, !llvm.loop !454

.lr.ph2086.i:                                     ; preds = %.preheader1122.i, %.lr.ph2086.i
  %.321202085.i = phi ptr [ %i.chh, %.lr.ph2086.i ], [ %.22119.lcssa.i, %.preheader1122.i ] ; 2 uses
  %.321452084.i = phi ptr [ %i.chg, %.lr.ph2086.i ], [ %.22144.lcssa.i, %.preheader1122.i ] ; 2 uses
  %.221482083.i = phi i32 [ %i.chi, %.lr.ph2086.i ], [ %.12147.lcssa.i, %.preheader1122.i ]
  %i.cgp = phi <16 x i32> [ %i.chf, %.lr.ph2086.i ], [ %.lcssa1171.i, %.preheader1122.i ]
  %i.cgq = phi <16 x i32> [ %i.chc, %.lr.ph2086.i ], [ %.lcssa1172.i, %.preheader1122.i ]
  %i.cgr = load i16, ptr %.321452084.i, align 2, !tbaa !401
  %i.cgs = insertelement <8 x i16> poison, i16 %i.cgr, i64 0
  %i.cgt = load <16 x i8>, ptr %.321202085.i, align 16, !tbaa !17 ; 2 uses
  %i.cgu = bitcast <8 x i16> %i.cgs to <16 x i8>
  %i.cgv = shufflevector <16 x i8> %i.cgu, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.cgw = sext <16 x i8> %i.cgv to <16 x i16>    ; 2 uses
  %i.cgx = sext <16 x i8> %i.cgt to <16 x i16>
  %i.cgy = shufflevector <16 x i8> %i.cgt, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.cgz = sext <16 x i8> %i.cgy to <16 x i16>
  %i.cha = mul nsw <16 x i16> %i.cgw, %i.cgx
  %i.chb = sext <16 x i16> %i.cha to <16 x i32>
  %i.chc = add <16 x i32> %i.cgq, %i.chb          ; 2 uses
  %i.chd = mul nsw <16 x i16> %i.cgz, %i.cgw
  %i.che = sext <16 x i16> %i.chd to <16 x i32>
  %i.chf = add <16 x i32> %i.cgp, %i.che          ; 2 uses
  %i.chg = getelementptr inbounds nuw i8, ptr %.321452084.i, i64 2
  %i.chh = getelementptr inbounds nuw i8, ptr %.321202085.i, i64 16 ; 2 uses
  %i.chi = add nuw nsw i32 %.221482083.i, 1       ; 2 uses
  %exitcond3016.not.i = icmp eq i32 %i.chi, %8
  br i1 %exitcond3016.not.i, label %._crit_edge2087.i, label %.lr.ph2086.i, !llvm.loop !455

._crit_edge2087.i:                                ; preds = %.lr.ph2086.i, %.preheader1122.i
end_hunk_6
