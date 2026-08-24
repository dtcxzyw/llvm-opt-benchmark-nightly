Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86?download=true
inline.NumInlined: 231
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnnL11pack_B_tileERKNS_3MatERS0_iiii:bb.a
  %.0587.lcssa = phi ptr [ %i.ci, %bb.d ], [ %i.fm, %.lr.ph33 ]
  %.0573.lcssa = phi ptr [ %i.ce, %bb.d ], [ %i.fl, %.lr.ph33 ]
  %.0571.lcssa = phi ptr [ %i.ca, %bb.d ], [ %i.fk, %.lr.ph33 ]
  %.0569.lcssa = phi ptr [ %i.bw, %bb.d ], [ %i.fj, %.lr.ph33 ]
  %.0567.lcssa = phi ptr [ %i.bs, %bb.d ], [ %i.fi, %.lr.ph33 ]
  %.3.lcssa = phi ptr [ %.055065, %bb.d ], [ %i.fh, %.lr.ph33 ] ; 2 uses
  %i.dl = icmp slt i32 %.0603.lcssa, %4
  br i1 %i.dl, label %.lr.ph62, label %.loopexit12

.lr.ph33:                                         ; preds = %bb.d, %.lr.ph33
  %.332 = phi ptr [ %i.fh, %.lr.ph33 ], [ %.055065, %bb.d ] ; 13 uses
  %.056731 = phi ptr [ %i.fi, %.lr.ph33 ], [ %i.bs, %bb.d ] ; 2 uses
  %.056930 = phi ptr [ %i.fj, %.lr.ph33 ], [ %i.bw, %bb.d ] ; 2 uses
  %.057129 = phi ptr [ %i.fk, %.lr.ph33 ], [ %i.ca, %bb.d ] ; 2 uses
  %.057328 = phi ptr [ %i.fl, %.lr.ph33 ], [ %i.ce, %bb.d ] ; 2 uses
  %.058727 = phi ptr [ %i.fm, %.lr.ph33 ], [ %i.ci, %bb.d ] ; 2 uses
  %.058926 = phi ptr [ %i.fn, %.lr.ph33 ], [ %i.cm, %bb.d ] ; 2 uses
  %.059125 = phi ptr [ %i.fo, %.lr.ph33 ], [ %i.cq, %bb.d ] ; 2 uses
  %.059324 = phi ptr [ %i.fp, %.lr.ph33 ], [ %i.cu, %bb.d ] ; 2 uses
  %.059523 = phi ptr [ %i.fq, %.lr.ph33 ], [ %i.cy, %bb.d ] ; 2 uses
  %.059722 = phi ptr [ %i.fr, %.lr.ph33 ], [ %i.dc, %bb.d ] ; 2 uses
  %.059921 = phi ptr [ %i.fs, %.lr.ph33 ], [ %i.dg, %bb.d ] ; 2 uses
  %.060120 = phi ptr [ %i.ft, %.lr.ph33 ], [ %i.dk, %bb.d ] ; 2 uses
  %.060319 = phi i32 [ %i.fu, %.lr.ph33 ], [ 0, %bb.d ]
  %i.dm = load <4 x float>, ptr %.056731, align 1, !tbaa !113 ; 2 uses
  %i.dn = load <4 x float>, ptr %.056930, align 1, !tbaa !113 ; 2 uses
  %i.do = load <4 x float>, ptr %.057129, align 1, !tbaa !113 ; 2 uses
  %i.dp = load <4 x float>, ptr %.057328, align 1, !tbaa !113 ; 2 uses
  %i.dq = load <4 x float>, ptr %.058727, align 1, !tbaa !113 ; 2 uses
  %i.dr = load <4 x float>, ptr %.058926, align 1, !tbaa !113 ; 2 uses
  %i.ds = load <4 x float>, ptr %.059125, align 1, !tbaa !113 ; 2 uses
  %i.dt = load <4 x float>, ptr %.059324, align 1, !tbaa !113 ; 2 uses
  %i.du = load <4 x float>, ptr %.059523, align 1, !tbaa !113 ; 2 uses
  %i.dv = load <4 x float>, ptr %.059722, align 1, !tbaa !113 ; 2 uses
  %i.dw = load <4 x float>, ptr %.059921, align 1, !tbaa !113 ; 2 uses
  %i.dx = load <4 x float>, ptr %.060120, align 1, !tbaa !113 ; 2 uses
  %i.dy = shufflevector <4 x float> %i.dm, <4 x float> %i.dn, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dz = shufflevector <4 x float> %i.do, <4 x float> %i.dp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ea = shufflevector <4 x float> %i.dm, <4 x float> %i.dn, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eb = shufflevector <4 x float> %i.do, <4 x float> %i.dp, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ec = shufflevector <4 x float> %i.dy, <4 x float> %i.dz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ed = shufflevector <4 x float> %i.dz, <4 x float> %i.dy, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ee = shufflevector <4 x float> %i.ea, <4 x float> %i.eb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ef = shufflevector <4 x float> %i.eb, <4 x float> %i.ea, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.eg = shufflevector <4 x float> %i.dq, <4 x float> %i.dr, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.eh = shufflevector <4 x float> %i.ds, <4 x float> %i.dt, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ei = shufflevector <4 x float> %i.dq, <4 x float> %i.dr, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ej = shufflevector <4 x float> %i.ds, <4 x float> %i.dt, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ek = shufflevector <4 x float> %i.eg, <4 x float> %i.eh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.el = shufflevector <4 x float> %i.eh, <4 x float> %i.eg, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.em = shufflevector <4 x float> %i.ei, <4 x float> %i.ej, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.en = shufflevector <4 x float> %i.ej, <4 x float> %i.ei, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.eo = shufflevector <4 x float> %i.du, <4 x float> %i.dv, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ep = shufflevector <4 x float> %i.dw, <4 x float> %i.dx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.eq = shufflevector <4 x float> %i.du, <4 x float> %i.dv, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.er = shufflevector <4 x float> %i.dw, <4 x float> %i.dx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.es = shufflevector <4 x float> %i.eo, <4 x float> %i.ep, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.et = shufflevector <4 x float> %i.ep, <4 x float> %i.eo, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.eu = shufflevector <4 x float> %i.eq, <4 x float> %i.er, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ev = shufflevector <4 x float> %i.er, <4 x float> %i.eq, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.ec, ptr %.332, align 16, !tbaa !113
  %i.ew = getelementptr inbounds nuw i8, ptr %.332, i64 16
  store <4 x float> %i.ek, ptr %i.ew, align 16, !tbaa !113
  %i.ex = getelementptr inbounds nuw i8, ptr %.332, i64 32
  store <4 x float> %i.es, ptr %i.ex, align 16, !tbaa !113
  %i.ey = getelementptr inbounds nuw i8, ptr %.332, i64 48
  store <4 x float> %i.ed, ptr %i.ey, align 16, !tbaa !113
  %i.ez = getelementptr inbounds nuw i8, ptr %.332, i64 64
  store <4 x float> %i.el, ptr %i.ez, align 16, !tbaa !113
  %i.fa = getelementptr inbounds nuw i8, ptr %.332, i64 80
  store <4 x float> %i.et, ptr %i.fa, align 16, !tbaa !113
  %i.fb = getelementptr inbounds nuw i8, ptr %.332, i64 96
  store <4 x float> %i.ee, ptr %i.fb, align 16, !tbaa !113
  %i.fc = getelementptr inbounds nuw i8, ptr %.332, i64 112
  store <4 x float> %i.em, ptr %i.fc, align 16, !tbaa !113
  %i.fd = getelementptr inbounds nuw i8, ptr %.332, i64 128
  store <4 x float> %i.eu, ptr %i.fd, align 16, !tbaa !113
  %i.fe = getelementptr inbounds nuw i8, ptr %.332, i64 144
  store <4 x float> %i.ef, ptr %i.fe, align 16, !tbaa !113
  %i.ff = getelementptr inbounds nuw i8, ptr %.332, i64 160
  store <4 x float> %i.en, ptr %i.ff, align 16, !tbaa !113
  %i.fg = getelementptr inbounds nuw i8, ptr %.332, i64 176
  store <4 x float> %i.ev, ptr %i.fg, align 16, !tbaa !113
  %i.fh = getelementptr inbounds nuw i8, ptr %.332, i64 192 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.056731, i64 16 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.056930, i64 16 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.057129, i64 16 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.057328, i64 16 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.058727, i64 16 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.058926, i64 16 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.059125, i64 16 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.059324, i64 16 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.059523, i64 16 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.059722, i64 16 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.059921, i64 16 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.060120, i64 16 ; 2 uses
  %i.fu = add nuw nsw i32 %.060319, 4             ; 2 uses
  %i.fv = or disjoint i32 %i.fu, 3
  %i.fw = icmp slt i32 %i.fv, %4
  br i1 %i.fw, label %.lr.ph33, label %.preheader11, !llvm.loop !172

.lr.ph62:                                         ; preds = %.preheader11, %.lr.ph62
  %.461 = phi ptr [ %i.gu, %.lr.ph62 ], [ %.3.lcssa, %.preheader11 ] ; 13 uses
  %.156860 = phi ptr [ %i.gv, %.lr.ph62 ], [ %.0567.lcssa, %.preheader11 ] ; 2 uses
  %.157059 = phi ptr [ %i.gw, %.lr.ph62 ], [ %.0569.lcssa, %.preheader11 ] ; 2 uses
  %.157258 = phi ptr [ %i.gx, %.lr.ph62 ], [ %.0571.lcssa, %.preheader11 ] ; 2 uses
  %.157457 = phi ptr [ %i.gy, %.lr.ph62 ], [ %.0573.lcssa, %.preheader11 ] ; 2 uses
  %.158856 = phi ptr [ %i.gz, %.lr.ph62 ], [ %.0587.lcssa, %.preheader11 ] ; 2 uses
  %.159055 = phi ptr [ %i.ha, %.lr.ph62 ], [ %.0589.lcssa, %.preheader11 ] ; 2 uses
  %.159254 = phi ptr [ %i.hb, %.lr.ph62 ], [ %.0591.lcssa, %.preheader11 ] ; 2 uses
  %.159453 = phi ptr [ %i.hc, %.lr.ph62 ], [ %.0593.lcssa, %.preheader11 ] ; 2 uses
  %.159652 = phi ptr [ %i.hd, %.lr.ph62 ], [ %.0595.lcssa, %.preheader11 ] ; 2 uses
  %.159851 = phi ptr [ %i.he, %.lr.ph62 ], [ %.0597.lcssa, %.preheader11 ] ; 2 uses
  %.160050 = phi ptr [ %i.hf, %.lr.ph62 ], [ %.0599.lcssa, %.preheader11 ] ; 2 uses
  %.160249 = phi ptr [ %i.hg, %.lr.ph62 ], [ %.0601.lcssa, %.preheader11 ] ; 2 uses
  %.160448 = phi i32 [ %i.hh, %.lr.ph62 ], [ %.0603.lcssa, %.preheader11 ]
  %i.fx = load float, ptr %.156860, align 4, !tbaa !68
  store float %i.fx, ptr %.461, align 4, !tbaa !68
  %i.fy = load float, ptr %.157059, align 4, !tbaa !68
  %i.fz = getelementptr inbounds nuw i8, ptr %.461, i64 4
  store float %i.fy, ptr %i.fz, align 4, !tbaa !68
  %i.ga = load float, ptr %.157258, align 4, !tbaa !68
  %i.gb = getelementptr inbounds nuw i8, ptr %.461, i64 8
  store float %i.ga, ptr %i.gb, align 4, !tbaa !68
  %i.gc = load float, ptr %.157457, align 4, !tbaa !68
  %i.gd = getelementptr inbounds nuw i8, ptr %.461, i64 12
  store float %i.gc, ptr %i.gd, align 4, !tbaa !68
  %i.ge = load float, ptr %.158856, align 4, !tbaa !68
  %i.gf = getelementptr inbounds nuw i8, ptr %.461, i64 16
  store float %i.ge, ptr %i.gf, align 4, !tbaa !68
  %i.gg = load float, ptr %.159055, align 4, !tbaa !68
  %i.gh = getelementptr inbounds nuw i8, ptr %.461, i64 20
  store float %i.gg, ptr %i.gh, align 4, !tbaa !68
  %i.gi = load float, ptr %.159254, align 4, !tbaa !68
  %i.gj = getelementptr inbounds nuw i8, ptr %.461, i64 24
  store float %i.gi, ptr %i.gj, align 4, !tbaa !68
  %i.gk = load float, ptr %.159453, align 4, !tbaa !68
  %i.gl = getelementptr inbounds nuw i8, ptr %.461, i64 28
  store float %i.gk, ptr %i.gl, align 4, !tbaa !68
  %i.gm = load float, ptr %.159652, align 4, !tbaa !68
  %i.gn = getelementptr inbounds nuw i8, ptr %.461, i64 32
  store float %i.gm, ptr %i.gn, align 4, !tbaa !68
  %i.go = load float, ptr %.159851, align 4, !tbaa !68
  %i.gp = getelementptr inbounds nuw i8, ptr %.461, i64 36
  store float %i.go, ptr %i.gp, align 4, !tbaa !68
  %i.gq = load float, ptr %.160050, align 4, !tbaa !68
  %i.gr = getelementptr inbounds nuw i8, ptr %.461, i64 40
  store float %i.gq, ptr %i.gr, align 4, !tbaa !68
  %i.gs = load float, ptr %.160249, align 4, !tbaa !68
  %i.gt = getelementptr inbounds nuw i8, ptr %.461, i64 44
  store float %i.gs, ptr %i.gt, align 4, !tbaa !68
  %i.gu = getelementptr inbounds nuw i8, ptr %.461, i64 48 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.156860, i64 4
  %i.gw = getelementptr inbounds nuw i8, ptr %.157059, i64 4
  %i.gx = getelementptr inbounds nuw i8, ptr %.157258, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %.157457, i64 4
  %i.gz = getelementptr inbounds nuw i8, ptr %.158856, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %.159055, i64 4
  %i.hb = getelementptr inbounds nuw i8, ptr %.159254, i64 4
  %i.hc = getelementptr inbounds nuw i8, ptr %.159453, i64 4
  %i.hd = getelementptr inbounds nuw i8, ptr %.159652, i64 4
  %i.he = getelementptr inbounds nuw i8, ptr %.159851, i64 4
  %i.hf = getelementptr inbounds nuw i8, ptr %.160050, i64 4
  %i.hg = getelementptr inbounds nuw i8, ptr %.160249, i64 4
  %i.hh = add nuw nsw i32 %.160448, 1             ; 2 uses
  %exitcond255.not = icmp eq i32 %i.hh, %4
  br i1 %exitcond255.not, label %.loopexit12, label %.lr.ph62, !llvm.loop !173

.loopexit12.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.loopexit12, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit12.loopexit.unr-lcssa, %.lr.ph.preheader
  %.155118.epil.init = phi ptr [ %.055065, %.lr.ph.preheader ], [ %i.bk, %.loopexit12.loopexit.unr-lcssa ] ; 4 uses
  %.056317.epil.init = phi ptr [ %i.av, %.lr.ph.preheader ], [ %i.bl, %.loopexit12.loopexit.unr-lcssa ]
  %.056416.epil.init = phi ptr [ %i.as, %.lr.ph.preheader ], [ %i.bm, %.loopexit12.loopexit.unr-lcssa ]
  %.056515.epil.init = phi ptr [ %i.ao, %.lr.ph.preheader ], [ %i.bn, %.loopexit12.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod520)
  %i.hi = load <4 x float>, ptr %.056317.epil.init, align 16, !tbaa !113
  store <4 x float> %i.hi, ptr %.155118.epil.init, align 16, !tbaa !113
  %i.hj = getelementptr inbounds nuw i8, ptr %.155118.epil.init, i64 16
  %i.hk = load <4 x float>, ptr %.056416.epil.init, align 16, !tbaa !113
  store <4 x float> %i.hk, ptr %i.hj, align 16, !tbaa !113
  %i.hl = getelementptr inbounds nuw i8, ptr %.155118.epil.init, i64 32
  %i.hm = load <4 x float>, ptr %.056515.epil.init, align 16, !tbaa !113
  store <4 x float> %i.hm, ptr %i.hl, align 16, !tbaa !113
  %i.hn = getelementptr inbounds nuw i8, ptr %.155118.epil.init, i64 48
  br label %.loopexit12

.loopexit12:                                      ; preds = %.lr.ph62, %.lr.ph.epil.preheader, %.loopexit12.loopexit.unr-lcssa, %bb.b, %bb.c, %.preheader11
  %.5 = phi ptr [ %.055065, %bb.b ], [ %.3.lcssa, %.preheader11 ], [ %i.hn, %.lr.ph.epil.preheader ], [ %.055065, %bb.c ], [ %i.bk, %.loopexit12.loopexit.unr-lcssa ], [ %i.gu, %.lr.ph62 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 12 ; 2 uses
  %i.ho = add nuw nsw i64 %indvars.iv, 23
  %i.hp = icmp samesign ult i64 %i.ho, %i.t
  br i1 %i.hp, label %bb.b, label %.preheader10.loopexit, !llvm.loop !174

.preheader6.loopexit:                             ; preds = %.loopexit8
  %i.hq = trunc nsw i64 %indvars.iv.next260 to i32
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.loopexit, %.preheader10
  %.1553.lcssa = phi i32 [ %.0552.lcssa, %.preheader10 ], [ %i.hq, %.preheader6.loopexit ] ; 8 uses
  %.6.lcssa = phi ptr [ %.0550.lcssa, %.preheader10 ], [ %.11, %.preheader6.loopexit ] ; 5 uses
  %i.hr = or disjoint i32 %.1553.lcssa, 3
  %i.hs = icmp slt i32 %i.hr, %2
  br i1 %i.hs, label %.lr.ph141, label %.preheader3

.lr.ph141:                                        ; preds = %.preheader6
  %i.ht = icmp eq i32 %i.b, 4                     ; 2 uses
  %i.hu = shl nsw i32 %3, 2
  %i.hv = sext i32 %i.hu to i64                   ; 2 uses
  %i.hw = icmp sgt i32 %4, 0                      ; 2 uses
  %i.hx = icmp eq i32 %i.b, 1
  %i.hy = sext i32 %3 to i64                      ; 8 uses
  %i.hz = icmp sgt i32 %4, 3
  br i1 %i.hx, label %.lr.ph141.split.us.preheader, label %.lr.ph141.split

.lr.ph141.split.us.preheader:                     ; preds = %.lr.ph141
  %i.ia = and i32 %4, -4
  %i.ib = sext i32 %.1553.lcssa to i64
  %i.ic = sext i32 %1 to i64
  %i.id = sext i32 %2 to i64
  %invariant.op342.a = add nsw i64 %i.id, -3
  %i.ie = add i32 %4, -1
  %xtraiter534 = and i32 %4, 7                    ; 3 uses
  %i.if = icmp ult i32 %i.ie, 7
  %unroll_iter539 = and i32 %4, 2147483640
  %lcmp.mod536.not = icmp eq i32 %xtraiter534, 0
  %lcmp.mod538 = icmp ne i32 %xtraiter534, 0
  br label %.lr.ph141.split.us

.lr.ph141.split.us:                               ; preds = %.lr.ph141.split.us.preheader, %.loopexit.us
  %indvars.iv269 = phi i64 [ %i.ib, %.lr.ph141.split.us.preheader ], [ %indvars.iv.next270, %.loopexit.us ] ; 2 uses
  %.12140.us = phi ptr [ %.6.lcssa, %.lr.ph141.split.us.preheader ], [ %.16.lcssa.us, %.loopexit.us ] ; 4 uses
  %.pre281 = load ptr, ptr %0, align 8, !tbaa !18 ; 5 uses
  %i.ig = add nsw i64 %indvars.iv269, %i.ic       ; 7 uses
  %i.ih = mul i64 %i.k, %i.ig                     ; 2 uses
  br i1 %i.ht, label %bb.e, label %.loopexit5.us

bb.e:                                             ; preds = %.lr.ph141.split.us
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.pre281, i64 %i.ih ; 2 uses
  br i1 %i.hw, label %.lr.ph116.us.preheader, label %.loopexit5.us.thread

.loopexit5.us.thread:                             ; preds = %bb.e
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %i.hy
  %i.ik = add nsw i64 %i.ig, 1
  %i.il = mul i64 %i.k, %i.ik
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.pre281, i64 %i.il
  %i.in = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.hy
  %i.io = add nsw i64 %i.ig, 2
  %i.ip = mul i64 %i.k, %i.io
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.pre281, i64 %i.ip
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.hy
  %i.is = add nsw i64 %i.ig, 3
  %i.it = mul i64 %i.k, %i.is
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.pre281, i64 %i.it
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.hy
  br label %.preheader4.us

.lr.ph116.us.preheader:                           ; preds = %bb.e
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %i.hv ; 2 uses
  br i1 %i.if, label %.lr.ph116.us.epil.preheader, label %.lr.ph116.us

.lr.ph116.us:                                     ; preds = %.lr.ph116.us.preheader, %.lr.ph116.us
  %.13115.us = phi ptr [ %i.jt, %.lr.ph116.us ], [ %.12140.us, %.lr.ph116.us.preheader ] ; 9 uses
  %.0586113.us = phi ptr [ %i.ju, %.lr.ph116.us ], [ %i.iw, %.lr.ph116.us.preheader ] ; 9 uses
  %niter540 = phi i32 [ %niter540.next.7, %.lr.ph116.us ], [ 0, %.lr.ph116.us.preheader ]
  %i.ix = load <4 x float>, ptr %.0586113.us, align 16, !tbaa !113
  store <4 x float> %i.ix, ptr %.13115.us, align 16, !tbaa !113
  %i.iy = getelementptr inbounds nuw i8, ptr %.13115.us, i64 16
  %i.iz = getelementptr inbounds nuw i8, ptr %.0586113.us, i64 16
  %i.ja = load <4 x float>, ptr %i.iz, align 16, !tbaa !113
  store <4 x float> %i.ja, ptr %i.iy, align 16, !tbaa !113
  %i.jb = getelementptr inbounds nuw i8, ptr %.13115.us, i64 32
  %i.jc = getelementptr inbounds nuw i8, ptr %.0586113.us, i64 32
  %i.jd = load <4 x float>, ptr %i.jc, align 16, !tbaa !113
  store <4 x float> %i.jd, ptr %i.jb, align 16, !tbaa !113
  %i.je = getelementptr inbounds nuw i8, ptr %.13115.us, i64 48
  %i.jf = getelementptr inbounds nuw i8, ptr %.0586113.us, i64 48
  %i.jg = load <4 x float>, ptr %i.jf, align 16, !tbaa !113
  store <4 x float> %i.jg, ptr %i.je, align 16, !tbaa !113
  %i.jh = getelementptr inbounds nuw i8, ptr %.13115.us, i64 64
  %i.ji = getelementptr inbounds nuw i8, ptr %.0586113.us, i64 64
  %i.jj = load <4 x float>, ptr %i.ji, align 16, !tbaa !113
  store <4 x float> %i.jj, ptr %i.jh, align 16, !tbaa !113
  %i.jk = getelementptr inbounds nuw i8, ptr %.13115.us, i64 80
  %i.jl = getelementptr inbounds nuw i8, ptr %.0586113.us, i64 80
  %i.jm = load <4 x float>, ptr %i.jl, align 16, !tbaa !113
  store <4 x float> %i.jm, ptr %i.jk, align 16, !tbaa !113
  %i.jn = getelementptr inbounds nuw i8, ptr %.13115.us, i64 96
  %i.jo = getelementptr inbounds nuw i8, ptr %.0586113.us, i64 96
  %i.jp = load <4 x float>, ptr %i.jo, align 16, !tbaa !113
  store <4 x float> %i.jp, ptr %i.jn, align 16, !tbaa !113
  %i.jq = getelementptr inbounds nuw i8, ptr %.13115.us, i64 112
  %i.jr = getelementptr inbounds nuw i8, ptr %.0586113.us, i64 112
  %i.js = load <4 x float>, ptr %i.jr, align 16, !tbaa !113
  store <4 x float> %i.js, ptr %i.jq, align 16, !tbaa !113
  %i.jt = getelementptr inbounds nuw i8, ptr %.13115.us, i64 128 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.0586113.us, i64 128 ; 2 uses
  %niter540.next.7 = add nuw nsw i32 %niter540, 8 ; 2 uses
  %niter540.ncmp.7 = icmp eq i32 %niter540.next.7, %unroll_iter539
  br i1 %niter540.ncmp.7, label %.loopexit5.us.loopexit.unr-lcssa, label %.lr.ph116.us, !llvm.loop !175

.loopexit5.us.loopexit.unr-lcssa:                 ; preds = %.lr.ph116.us
  br i1 %lcmp.mod536.not, label %.loopexit5.us.loopexit, label %.lr.ph116.us.epil.preheader

.lr.ph116.us.epil.preheader:                      ; preds = %.loopexit5.us.loopexit.unr-lcssa, %.lr.ph116.us.preheader
  %.13115.us.epil.init = phi ptr [ %.12140.us, %.lr.ph116.us.preheader ], [ %i.jt, %.loopexit5.us.loopexit.unr-lcssa ]
  %.0586113.us.epil.init = phi ptr [ %i.iw, %.lr.ph116.us.preheader ], [ %i.ju, %.loopexit5.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod538)
  br label %.lr.ph116.us.epil

.lr.ph116.us.epil:                                ; preds = %.lr.ph116.us.epil, %.lr.ph116.us.epil.preheader
  %.13115.us.epil = phi ptr [ %i.jw, %.lr.ph116.us.epil ], [ %.13115.us.epil.init, %.lr.ph116.us.epil.preheader ] ; 2 uses
  %.0586113.us.epil = phi ptr [ %i.jx, %.lr.ph116.us.epil ], [ %.0586113.us.epil.init, %.lr.ph116.us.epil.preheader ] ; 2 uses
  %epil.iter535 = phi i32 [ %epil.iter535.next, %.lr.ph116.us.epil ], [ 0, %.lr.ph116.us.epil.preheader ]
  %i.jv = load <4 x float>, ptr %.0586113.us.epil, align 16, !tbaa !113
  store <4 x float> %i.jv, ptr %.13115.us.epil, align 16, !tbaa !113
  %i.jw = getelementptr inbounds nuw i8, ptr %.13115.us.epil, i64 16 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.0586113.us.epil, i64 16
  %epil.iter535.next = add i32 %epil.iter535, 1   ; 2 uses
  %epil.iter535.cmp.not = icmp eq i32 %epil.iter535.next, %xtraiter534
  br i1 %epil.iter535.cmp.not, label %.loopexit5.us.loopexit, label %.lr.ph116.us.epil, !llvm.loop !176

.loopexit5.us.loopexit:                           ; preds = %.lr.ph116.us.epil, %.loopexit5.us.loopexit.unr-lcssa
  %.lcssa483 = phi ptr [ %i.jt, %.loopexit5.us.loopexit.unr-lcssa ], [ %i.jw, %.lr.ph116.us.epil ]
  %.pre = load ptr, ptr %0, align 8, !tbaa !18
  br label %.loopexit5.us

.loopexit5.us:                                    ; preds = %.lr.ph141.split.us, %.loopexit5.us.loopexit
  %i.jy = phi ptr [ %.pre, %.loopexit5.us.loopexit ], [ %.pre281, %.lr.ph141.split.us ] ; 4 uses
  %.14.us = phi ptr [ %.lcssa483, %.loopexit5.us.loopexit ], [ %.12140.us, %.lr.ph141.split.us ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.ih
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.hy ; 2 uses
  %i.kb = add nsw i64 %i.ig, 1
  %i.kc = mul i64 %i.k, %i.kb
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.kc
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.hy ; 2 uses
  %i.kf = add nsw i64 %i.ig, 2
  %i.kg = mul i64 %i.k, %i.kf
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.kg
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %i.hy ; 2 uses
  %i.kj = add nsw i64 %i.ig, 3
  %i.kk = mul i64 %i.k, %i.kj
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.kk
  %i.km = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.hy ; 2 uses
  br i1 %i.hz, label %.lr.ph124.us, label %.preheader4.us

.lr.ph124.us:                                     ; preds = %.loopexit5.us, %.lr.ph124.us
  %.15123.us = phi ptr [ %i.lc, %.lr.ph124.us ], [ %.14.us, %.loopexit5.us ] ; 5 uses
  %.0575122.us = phi i32 [ %i.lh, %.lr.ph124.us ], [ 0, %.loopexit5.us ]
  %.0577121.us = phi ptr [ %i.lg, %.lr.ph124.us ], [ %i.km, %.loopexit5.us ] ; 2 uses
  %.0579120.us = phi ptr [ %i.lf, %.lr.ph124.us ], [ %i.ki, %.loopexit5.us ] ; 2 uses
  %.0581119.us = phi ptr [ %i.le, %.lr.ph124.us ], [ %i.ke, %.loopexit5.us ] ; 2 uses
  %.0583118.us = phi ptr [ %i.ld, %.lr.ph124.us ], [ %i.ka, %.loopexit5.us ] ; 2 uses
  %i.kn = load <4 x float>, ptr %.0583118.us, align 1, !tbaa !113 ; 2 uses
  %i.ko = load <4 x float>, ptr %.0581119.us, align 1, !tbaa !113 ; 2 uses
  %i.kp = load <4 x float>, ptr %.0579120.us, align 1, !tbaa !113 ; 2 uses
  %i.kq = load <4 x float>, ptr %.0577121.us, align 1, !tbaa !113 ; 2 uses
  %i.kr = shufflevector <4 x float> %i.kn, <4 x float> %i.ko, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ks = shufflevector <4 x float> %i.kp, <4 x float> %i.kq, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.kt = shufflevector <4 x float> %i.kn, <4 x float> %i.ko, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ku = shufflevector <4 x float> %i.kp, <4 x float> %i.kq, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.kv = shufflevector <4 x float> %i.kr, <4 x float> %i.ks, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.kw = shufflevector <4 x float> %i.ks, <4 x float> %i.kr, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.kx = shufflevector <4 x float> %i.kt, <4 x float> %i.ku, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ky = shufflevector <4 x float> %i.ku, <4 x float> %i.kt, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.kv, ptr %.15123.us, align 16, !tbaa !113
  %i.kz = getelementptr inbounds nuw i8, ptr %.15123.us, i64 16
  store <4 x float> %i.kw, ptr %i.kz, align 16, !tbaa !113
  %i.la = getelementptr inbounds nuw i8, ptr %.15123.us, i64 32
  store <4 x float> %i.kx, ptr %i.la, align 16, !tbaa !113
  %i.lb = getelementptr inbounds nuw i8, ptr %.15123.us, i64 48
  store <4 x float> %i.ky, ptr %i.lb, align 16, !tbaa !113
  %i.lc = getelementptr inbounds nuw i8, ptr %.15123.us, i64 64 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.0583118.us, i64 16 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.0581119.us, i64 16 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.0579120.us, i64 16 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.0577121.us, i64 16 ; 2 uses
  %i.lh = add nuw nsw i32 %.0575122.us, 4         ; 2 uses
  %i.li = or disjoint i32 %i.lh, 3
  %i.lj = icmp slt i32 %i.li, %4
  br i1 %i.lj, label %.lr.ph124.us, label %.preheader4.us, !llvm.loop !177

.lr.ph137.us:                                     ; preds = %.lr.ph137.us.prol.loopexit, %.lr.ph137.us
  %.16136.us = phi ptr [ %i.md, %.lr.ph137.us ], [ %.16136.us.unr, %.lr.ph137.us.prol.loopexit ] ; 9 uses
  %.1576135.us = phi i32 [ %i.mi, %.lr.ph137.us ], [ %.1576135.us.unr, %.lr.ph137.us.prol.loopexit ]
  %.1578134.us = phi ptr [ %i.mh, %.lr.ph137.us ], [ %.1578134.us.unr, %.lr.ph137.us.prol.loopexit ] ; 3 uses
  %.1580133.us = phi ptr [ %i.mg, %.lr.ph137.us ], [ %.1580133.us.unr, %.lr.ph137.us.prol.loopexit ] ; 3 uses
  %.1582132.us = phi ptr [ %i.mf, %.lr.ph137.us ], [ %.1582132.us.unr, %.lr.ph137.us.prol.loopexit ] ; 3 uses
  %.1584131.us = phi ptr [ %i.me, %.lr.ph137.us ], [ %.1584131.us.unr, %.lr.ph137.us.prol.loopexit ] ; 3 uses
  %i.lk = load float, ptr %.1584131.us, align 4, !tbaa !68
  store float %i.lk, ptr %.16136.us, align 4, !tbaa !68
  %i.ll = load float, ptr %.1582132.us, align 4, !tbaa !68
  %i.lm = getelementptr inbounds nuw i8, ptr %.16136.us, i64 4
  store float %i.ll, ptr %i.lm, align 4, !tbaa !68
  %i.ln = load float, ptr %.1580133.us, align 4, !tbaa !68
  %i.lo = getelementptr inbounds nuw i8, ptr %.16136.us, i64 8
  store float %i.ln, ptr %i.lo, align 4, !tbaa !68
  %i.lp = load float, ptr %.1578134.us, align 4, !tbaa !68
  %i.lq = getelementptr inbounds nuw i8, ptr %.16136.us, i64 12
  store float %i.lp, ptr %i.lq, align 4, !tbaa !68
  %i.lr = getelementptr inbounds nuw i8, ptr %.16136.us, i64 16
  %i.ls = getelementptr inbounds nuw i8, ptr %.1584131.us, i64 4
  %i.lt = getelementptr inbounds nuw i8, ptr %.1582132.us, i64 4
  %i.lu = getelementptr inbounds nuw i8, ptr %.1580133.us, i64 4
  %i.lv = getelementptr inbounds nuw i8, ptr %.1578134.us, i64 4
  %i.lw = load float, ptr %i.ls, align 4, !tbaa !68
  store float %i.lw, ptr %i.lr, align 4, !tbaa !68
  %i.lx = load float, ptr %i.lt, align 4, !tbaa !68
  %i.ly = getelementptr inbounds nuw i8, ptr %.16136.us, i64 20
  store float %i.lx, ptr %i.ly, align 4, !tbaa !68
  %i.lz = load float, ptr %i.lu, align 4, !tbaa !68
  %i.ma = getelementptr inbounds nuw i8, ptr %.16136.us, i64 24
  store float %i.lz, ptr %i.ma, align 4, !tbaa !68
  %i.mb = load float, ptr %i.lv, align 4, !tbaa !68
  %i.mc = getelementptr inbounds nuw i8, ptr %.16136.us, i64 28
  store float %i.mb, ptr %i.mc, align 4, !tbaa !68
  %i.md = getelementptr inbounds nuw i8, ptr %.16136.us, i64 32 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.1584131.us, i64 8
  %i.mf = getelementptr inbounds nuw i8, ptr %.1582132.us, i64 8
  %i.mg = getelementptr inbounds nuw i8, ptr %.1580133.us, i64 8
  %i.mh = getelementptr inbounds nuw i8, ptr %.1578134.us, i64 8
  %i.mi = add nuw nsw i32 %.1576135.us, 2         ; 2 uses
  %exitcond268.not.1 = icmp eq i32 %i.mi, %4
  br i1 %exitcond268.not.1, label %.loopexit.us, label %.lr.ph137.us, !llvm.loop !178

.preheader4.us:                                   ; preds = %.lr.ph124.us, %.loopexit5.us.thread, %.loopexit5.us
  %.0583.lcssa.us = phi ptr [ %i.ka, %.loopexit5.us ], [ %i.ij, %.loopexit5.us.thread ], [ %i.ld, %.lr.ph124.us ] ; 6 uses
  %.0581.lcssa.us = phi ptr [ %i.ke, %.loopexit5.us ], [ %i.in, %.loopexit5.us.thread ], [ %i.le, %.lr.ph124.us ] ; 6 uses
  %.0579.lcssa.us = phi ptr [ %i.ki, %.loopexit5.us ], [ %i.ir, %.loopexit5.us.thread ], [ %i.lf, %.lr.ph124.us ] ; 6 uses
  %.0577.lcssa.us = phi ptr [ %i.km, %.loopexit5.us ], [ %i.iv, %.loopexit5.us.thread ], [ %i.lg, %.lr.ph124.us ] ; 6 uses
  %.0575.lcssa.us = phi i32 [ 0, %.loopexit5.us ], [ 0, %.loopexit5.us.thread ], [ %i.ia, %.lr.ph124.us ] ; 6 uses
  %.15.lcssa.us = phi ptr [ %.14.us, %.loopexit5.us ], [ %.12140.us, %.loopexit5.us.thread ], [ %i.lc, %.lr.ph124.us ] ; 10 uses
  %i.mj = icmp slt i32 %.0575.lcssa.us, %4
  br i1 %i.mj, label %.lr.ph137.us.preheader, label %.loopexit.us

.lr.ph137.us.preheader:                           ; preds = %.preheader4.us
  %i.mk = xor i32 %.0575.lcssa.us, -1
  %i.ml = add i32 %4, %i.mk                       ; 2 uses
  %i.mm = zext i32 %i.ml to i64
  %i.mn = add nuw nsw i64 %i.mm, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ml, 39
  br i1 %min.iters.check, label %.lr.ph137.us.preheader482, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph137.us.preheader
  %scevgep = getelementptr i8, ptr %.15.lcssa.us, i64 16
  %i.mo = xor i32 %.0575.lcssa.us, -1
  %i.mp = add i32 %4, %i.mo
  %i.mq = zext i32 %i.mp to i64                   ; 2 uses
  %i.mr = shl nuw nsw i64 %i.mq, 4
  %scevgep386.a = getelementptr i8, ptr %scevgep, i64 %i.mr ; 4 uses
  %scevgep387.a = getelementptr i8, ptr %.0577.lcssa.us, i64 4
  %i.ms = shl nuw nsw i64 %i.mq, 2                ; 4 uses
  %scevgep388.a = getelementptr i8, ptr %scevgep387.a, i64 %i.ms
  %scevgep389.a = getelementptr i8, ptr %.0579.lcssa.us, i64 4
  %scevgep390.a = getelementptr i8, ptr %scevgep389.a, i64 %i.ms
  %scevgep391.a = getelementptr i8, ptr %.0581.lcssa.us, i64 4
  %scevgep392.a = getelementptr i8, ptr %scevgep391.a, i64 %i.ms
  %scevgep393.a = getelementptr i8, ptr %.0583.lcssa.us, i64 4
  %scevgep394 = getelementptr i8, ptr %scevgep393.a, i64 %i.ms
  %bound0 = icmp ult ptr %.15.lcssa.us, %scevgep388.a
  %bound1 = icmp ult ptr %.0577.lcssa.us, %scevgep386.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0395 = icmp ult ptr %.15.lcssa.us, %scevgep390.a
  %bound1396 = icmp ult ptr %.0579.lcssa.us, %scevgep386.a
  %found.conflict397 = and i1 %bound0395, %bound1396
  %conflict.rdx = or i1 %found.conflict, %found.conflict397
  %bound0398 = icmp ult ptr %.15.lcssa.us, %scevgep392.a
  %bound1399 = icmp ult ptr %.0581.lcssa.us, %scevgep386.a
  %found.conflict400 = and i1 %bound0398, %bound1399
  %conflict.rdx401 = or i1 %conflict.rdx, %found.conflict400
  %bound0402 = icmp ult ptr %.15.lcssa.us, %scevgep394
  %bound1403 = icmp ult ptr %.0583.lcssa.us, %scevgep386.a
  %found.conflict404 = and i1 %bound0402, %bound1403
  %conflict.rdx405 = or i1 %conflict.rdx401, %found.conflict404
  br i1 %conflict.rdx405, label %.lr.ph137.us.preheader482, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.mn, 8589934588              ; 5 uses
  %i.mt = shl nuw nsw i64 %n.vec, 4
  %i.mu = getelementptr i8, ptr %.15.lcssa.us, i64 %i.mt ; 2 uses
  %i.mv = trunc i64 %n.vec to i32
  %i.mw = add i32 %.0575.lcssa.us, %i.mv
  %i.mx = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %i.my = getelementptr i8, ptr %.0577.lcssa.us, i64 %i.mx
  %i.mz = getelementptr i8, ptr %.0579.lcssa.us, i64 %i.mx
  %i.na = getelementptr i8, ptr %.0581.lcssa.us, i64 %i.mx
  %i.nb = getelementptr i8, ptr %.0583.lcssa.us, i64 %i.mx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.nc = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.15.lcssa.us, i64 %i.nc
  %i.nd = shl i64 %index, 2                       ; 4 uses
  %next.gep406.a = getelementptr i8, ptr %.0577.lcssa.us, i64 %i.nd
  %next.gep407.a = getelementptr i8, ptr %.0579.lcssa.us, i64 %i.nd
  %next.gep408.a = getelementptr i8, ptr %.0581.lcssa.us, i64 %i.nd
  %next.gep409 = getelementptr i8, ptr %.0583.lcssa.us, i64 %i.nd
  %wide.load = load <4 x float>, ptr %next.gep409, align 4, !tbaa !68, !alias.scope !179
  %wide.load410.a = load <4 x float>, ptr %next.gep408.a, align 4, !tbaa !68, !alias.scope !182
  %wide.load411.a = load <4 x float>, ptr %next.gep407.a, align 4, !tbaa !68, !alias.scope !184
  %wide.load412 = load <4 x float>, ptr %next.gep406.a, align 4, !tbaa !68, !alias.scope !186
  %i.ne = shufflevector <4 x float> %wide.load, <4 x float> %wide.load410.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.nf = shufflevector <4 x float> %wide.load411.a, <4 x float> %wide.load412, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.ne, <8 x float> %i.nf, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !68, !alias.scope !188, !noalias !190
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ng = icmp eq i64 %index.next, %n.vec
  br i1 %i.ng, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mn, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph137.us.preheader482

.lr.ph137.us.preheader482:                        ; preds = %vector.memcheck, %.lr.ph137.us.preheader, %middle.block
  %.16136.us.ph = phi ptr [ %.15.lcssa.us, %vector.memcheck ], [ %.15.lcssa.us, %.lr.ph137.us.preheader ], [ %i.mu, %middle.block ] ; 6 uses
  %.1576135.us.ph = phi i32 [ %.0575.lcssa.us, %vector.memcheck ], [ %.0575.lcssa.us, %.lr.ph137.us.preheader ], [ %i.mw, %middle.block ] ; 4 uses
  %.1578134.us.ph = phi ptr [ %.0577.lcssa.us, %vector.memcheck ], [ %.0577.lcssa.us, %.lr.ph137.us.preheader ], [ %i.my, %middle.block ] ; 3 uses
  %.1580133.us.ph = phi ptr [ %.0579.lcssa.us, %vector.memcheck ], [ %.0579.lcssa.us, %.lr.ph137.us.preheader ], [ %i.mz, %middle.block ] ; 3 uses
  %.1582132.us.ph = phi ptr [ %.0581.lcssa.us, %vector.memcheck ], [ %.0581.lcssa.us, %.lr.ph137.us.preheader ], [ %i.na, %middle.block ] ; 3 uses
  %.1584131.us.ph = phi ptr [ %.0583.lcssa.us, %vector.memcheck ], [ %.0583.lcssa.us, %.lr.ph137.us.preheader ], [ %i.nb, %middle.block ] ; 3 uses
  %i.nh = sub i32 %4, %.1576135.us.ph
  %.neg = add i32 %.1576135.us.ph, 1
  %xtraiter541 = and i32 %i.nh, 1
  %lcmp.mod542.not = icmp eq i32 %xtraiter541, 0
  br i1 %lcmp.mod542.not, label %.lr.ph137.us.prol.loopexit, label %.lr.ph137.us.prol

.lr.ph137.us.prol:                                ; preds = %.lr.ph137.us.preheader482
  %i.ni = load float, ptr %.1584131.us.ph, align 4, !tbaa !68
  store float %i.ni, ptr %.16136.us.ph, align 4, !tbaa !68
  %i.nj = load float, ptr %.1582132.us.ph, align 4, !tbaa !68
  %i.nk = getelementptr inbounds nuw i8, ptr %.16136.us.ph, i64 4
  store float %i.nj, ptr %i.nk, align 4, !tbaa !68
  %i.nl = load float, ptr %.1580133.us.ph, align 4, !tbaa !68
  %i.nm = getelementptr inbounds nuw i8, ptr %.16136.us.ph, i64 8
  store float %i.nl, ptr %i.nm, align 4, !tbaa !68
  %i.nn = load float, ptr %.1578134.us.ph, align 4, !tbaa !68
  %i.no = getelementptr inbounds nuw i8, ptr %.16136.us.ph, i64 12
  store float %i.nn, ptr %i.no, align 4, !tbaa !68
  %i.np = getelementptr inbounds nuw i8, ptr %.16136.us.ph, i64 16 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.1584131.us.ph, i64 4
  %i.nr = getelementptr inbounds nuw i8, ptr %.1582132.us.ph, i64 4
  %i.ns = getelementptr inbounds nuw i8, ptr %.1580133.us.ph, i64 4
  %i.nt = getelementptr inbounds nuw i8, ptr %.1578134.us.ph, i64 4
  %i.nu = add nuw nsw i32 %.1576135.us.ph, 1
  br label %.lr.ph137.us.prol.loopexit

.lr.ph137.us.prol.loopexit:                       ; preds = %.lr.ph137.us.prol, %.lr.ph137.us.preheader482
  %.lcssa489.unr = phi ptr [ poison, %.lr.ph137.us.preheader482 ], [ %i.np, %.lr.ph137.us.prol ]
  %.16136.us.unr = phi ptr [ %.16136.us.ph, %.lr.ph137.us.preheader482 ], [ %i.np, %.lr.ph137.us.prol ]
  %.1576135.us.unr = phi i32 [ %.1576135.us.ph, %.lr.ph137.us.preheader482 ], [ %i.nu, %.lr.ph137.us.prol ]
  %.1578134.us.unr = phi ptr [ %.1578134.us.ph, %.lr.ph137.us.preheader482 ], [ %i.nt, %.lr.ph137.us.prol ]
  %.1580133.us.unr = phi ptr [ %.1580133.us.ph, %.lr.ph137.us.preheader482 ], [ %i.ns, %.lr.ph137.us.prol ]
  %.1582132.us.unr = phi ptr [ %.1582132.us.ph, %.lr.ph137.us.preheader482 ], [ %i.nr, %.lr.ph137.us.prol ]
  %.1584131.us.unr = phi ptr [ %.1584131.us.ph, %.lr.ph137.us.preheader482 ], [ %i.nq, %.lr.ph137.us.prol ]
  %i.nv = icmp eq i32 %4, %.neg
  br i1 %i.nv, label %.loopexit.us, label %.lr.ph137.us

.loopexit.us:                                     ; preds = %.lr.ph137.us.prol.loopexit, %.lr.ph137.us, %middle.block, %.preheader4.us
  %.16.lcssa.us = phi ptr [ %.15.lcssa.us, %.preheader4.us ], [ %i.mu, %middle.block ], [ %.lcssa489.unr, %.lr.ph137.us.prol.loopexit ], [ %i.md, %.lr.ph137.us ] ; 2 uses
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 4 ; 3 uses
  %i.nw = icmp slt i64 %indvars.iv.next270, %invariant.op342.a
  br i1 %i.nw, label %.lr.ph141.split.us, label %.preheader3.loopexit, !llvm.loop !192

.lr.ph141.split:                                  ; preds = %.lr.ph141
  br i1 %i.ht, label %.lr.ph141.split.split.us, label %.lr.ph141.split.split.preheader

.lr.ph141.split.split.preheader:                  ; preds = %.lr.ph141.split
  %i.nx = add i32 %2, -4
  %i.ny = sub i32 %i.nx, %.1553.lcssa
  %i.nz = and i32 %i.ny, -4
  %i.oa = add i32 %.1553.lcssa, %i.nz
  %i.ob = add i32 %i.oa, 4
  br label %.preheader3

.lr.ph141.split.split.us:                         ; preds = %.lr.ph141.split
  br i1 %i.hw, label %.lr.ph116.us153.us.preheader, label %.loopexit5.us151.preheader

.loopexit5.us151.preheader:                       ; preds = %.lr.ph141.split.split.us
  %i.oc = add i32 %2, -4
  %i.od = sub i32 %i.oc, %.1553.lcssa
  %i.oe = and i32 %i.od, -4
  %i.of = add i32 %.1553.lcssa, %i.oe
  %i.og = add i32 %i.of, 4
  br label %.preheader3

.lr.ph116.us153.us.preheader:                     ; preds = %.lr.ph141.split.split.us
  %i.oh = sext i32 %.1553.lcssa to i64
  %i.oi = sext i32 %1 to i64
  %i.oj = sext i32 %2 to i64
  %invariant.op341 = add nsw i64 %i.oj, -3
  %i.ok = add nsw i32 %4, -1
  %xtraiter527 = and i32 %4, 7                    ; 3 uses
  %i.ol = icmp ult i32 %i.ok, 7
  %unroll_iter532 = and i32 %4, 2147483640
  %lcmp.mod529.not = icmp eq i32 %xtraiter527, 0
  %lcmp.mod531 = icmp ne i32 %xtraiter527, 0
  br label %.lr.ph116.us153.us

.lr.ph116.us153.us:                               ; preds = %.lr.ph116.us153.us.preheader, %..loopexit5_crit_edge.us154.us
  %indvars.iv264 = phi i64 [ %i.oh, %.lr.ph116.us153.us.preheader ], [ %indvars.iv.next265, %..loopexit5_crit_edge.us154.us ] ; 2 uses
  %.12140.us145.us = phi ptr [ %.6.lcssa, %.lr.ph116.us153.us.preheader ], [ %.lcssa490, %..loopexit5_crit_edge.us154.us ] ; 2 uses
  %i.om = load ptr, ptr %0, align 8, !tbaa !18
  %i.on = add nsw i64 %indvars.iv264, %i.oi
  %i.oo = mul i64 %i.k, %i.on
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %i.oo
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.op, i64 %i.hv ; 2 uses
  br i1 %i.ol, label %.epil.preheader, label %.lr.ph116.us153.us.new

.lr.ph116.us153.us.new:                           ; preds = %.lr.ph116.us153.us, %.lr.ph116.us153.us.new
  %.13115.us147.us = phi ptr [ %i.pn, %.lr.ph116.us153.us.new ], [ %.12140.us145.us, %.lr.ph116.us153.us ] ; 9 uses
  %.0586113.us149.us = phi ptr [ %i.po, %.lr.ph116.us153.us.new ], [ %i.oq, %.lr.ph116.us153.us ] ; 9 uses
  %niter533 = phi i32 [ %niter533.next.7, %.lr.ph116.us153.us.new ], [ 0, %.lr.ph116.us153.us ]
  %i.or = load <4 x float>, ptr %.0586113.us149.us, align 16, !tbaa !113
  store <4 x float> %i.or, ptr %.13115.us147.us, align 16, !tbaa !113
  %i.os = getelementptr inbounds nuw i8, ptr %.13115.us147.us, i64 16
  %i.ot = getelementptr inbounds nuw i8, ptr %.0586113.us149.us, i64 16
  %i.ou = load <4 x float>, ptr %i.ot, align 16, !tbaa !113
  store <4 x float> %i.ou, ptr %i.os, align 16, !tbaa !113
  %i.ov = getelementptr inbounds nuw i8, ptr %.13115.us147.us, i64 32
  %i.ow = getelementptr inbounds nuw i8, ptr %.0586113.us149.us, i64 32
  %i.ox = load <4 x float>, ptr %i.ow, align 16, !tbaa !113
  store <4 x float> %i.ox, ptr %i.ov, align 16, !tbaa !113
  %i.oy = getelementptr inbounds nuw i8, ptr %.13115.us147.us, i64 48
  %i.oz = getelementptr inbounds nuw i8, ptr %.0586113.us149.us, i64 48
  %i.pa = load <4 x float>, ptr %i.oz, align 16, !tbaa !113
  store <4 x float> %i.pa, ptr %i.oy, align 16, !tbaa !113
  %i.pb = getelementptr inbounds nuw i8, ptr %.13115.us147.us, i64 64
  %i.pc = getelementptr inbounds nuw i8, ptr %.0586113.us149.us, i64 64
  %i.pd = load <4 x float>, ptr %i.pc, align 16, !tbaa !113
  store <4 x float> %i.pd, ptr %i.pb, align 16, !tbaa !113
  %i.pe = getelementptr inbounds nuw i8, ptr %.13115.us147.us, i64 80
  %i.pf = getelementptr inbounds nuw i8, ptr %.0586113.us149.us, i64 80
  %i.pg = load <4 x float>, ptr %i.pf, align 16, !tbaa !113
  store <4 x float> %i.pg, ptr %i.pe, align 16, !tbaa !113
  %i.ph = getelementptr inbounds nuw i8, ptr %.13115.us147.us, i64 96
  %i.pi = getelementptr inbounds nuw i8, ptr %.0586113.us149.us, i64 96
  %i.pj = load <4 x float>, ptr %i.pi, align 16, !tbaa !113
  store <4 x float> %i.pj, ptr %i.ph, align 16, !tbaa !113
  %i.pk = getelementptr inbounds nuw i8, ptr %.13115.us147.us, i64 112
  %i.pl = getelementptr inbounds nuw i8, ptr %.0586113.us149.us, i64 112
  %i.pm = load <4 x float>, ptr %i.pl, align 16, !tbaa !113
  store <4 x float> %i.pm, ptr %i.pk, align 16, !tbaa !113
  %i.pn = getelementptr inbounds nuw i8, ptr %.13115.us147.us, i64 128 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.0586113.us149.us, i64 128 ; 2 uses
  %niter533.next.7 = add nuw nsw i32 %niter533, 8 ; 2 uses
  %niter533.ncmp.7 = icmp eq i32 %niter533.next.7, %unroll_iter532
  br i1 %niter533.ncmp.7, label %..loopexit5_crit_edge.us154.us.unr-lcssa, label %.lr.ph116.us153.us.new, !llvm.loop !175

..loopexit5_crit_edge.us154.us.unr-lcssa:         ; preds = %.lr.ph116.us153.us.new
  br i1 %lcmp.mod529.not, label %..loopexit5_crit_edge.us154.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit5_crit_edge.us154.us.unr-lcssa, %.lr.ph116.us153.us
  %.13115.us147.us.epil.init = phi ptr [ %.12140.us145.us, %.lr.ph116.us153.us ], [ %i.pn, %..loopexit5_crit_edge.us154.us.unr-lcssa ]
  %.0586113.us149.us.epil.init = phi ptr [ %i.oq, %.lr.ph116.us153.us ], [ %i.po, %..loopexit5_crit_edge.us154.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod531)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.13115.us147.us.epil = phi ptr [ %.13115.us147.us.epil.init, %.epil.preheader ], [ %i.pq, %bb.f ] ; 2 uses
  %.0586113.us149.us.epil = phi ptr [ %.0586113.us149.us.epil.init, %.epil.preheader ], [ %i.pr, %bb.f ] ; 2 uses
  %epil.iter528 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter528.next, %bb.f ]
  %i.pp = load <4 x float>, ptr %.0586113.us149.us.epil, align 16, !tbaa !113
  store <4 x float> %i.pp, ptr %.13115.us147.us.epil, align 16, !tbaa !113
  %i.pq = getelementptr inbounds nuw i8, ptr %.13115.us147.us.epil, i64 16 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.0586113.us149.us.epil, i64 16
  %epil.iter528.next = add i32 %epil.iter528, 1   ; 2 uses
  %epil.iter528.cmp.not = icmp eq i32 %epil.iter528.next, %xtraiter527
  br i1 %epil.iter528.cmp.not, label %..loopexit5_crit_edge.us154.us, label %bb.f, !llvm.loop !193

..loopexit5_crit_edge.us154.us:                   ; preds = %bb.f, %..loopexit5_crit_edge.us154.us.unr-lcssa
  %.lcssa490 = phi ptr [ %i.pn, %..loopexit5_crit_edge.us154.us.unr-lcssa ], [ %i.pq, %bb.f ] ; 2 uses
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 4 ; 3 uses
  %i.ps = icmp slt i64 %indvars.iv.next265, %invariant.op341
  br i1 %i.ps, label %.lr.ph116.us153.us, label %.preheader3.loopexit200, !llvm.loop !192

bb.g:                                             ; preds = %.lr.ph110, %.loopexit8
  %indvars.iv259 = phi i64 [ %i.ae, %.lr.ph110 ], [ %indvars.iv.next260, %.loopexit8 ] ; 4 uses
  %.6109 = phi ptr [ %.0550.lcssa, %.lr.ph110 ], [ %.11, %.loopexit8 ] ; 6 uses
  switch i32 %i.b, label %.loopexit8 [
    i32 4, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  br i1 %i.aa, label %.lr.ph73.preheader, label %.loopexit8

.lr.ph73.preheader:                               ; preds = %bb.h
  %i.pt = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.pu = add nsw i64 %indvars.iv259, %i.af       ; 2 uses
  %i.pv = add nsw i64 %i.pu, 4
  %i.pw = mul i64 %i.k, %i.pv
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.pw
  %i.py = getelementptr inbounds [4 x i8], ptr %i.px, i64 %i.z ; 2 uses
  %i.pz = mul i64 %i.k, %i.pu
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.pz
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.z ; 2 uses
  br i1 %i.ai, label %.lr.ph73.epil.preheader, label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %.lr.ph73
  %.772 = phi ptr [ %i.qx, %.lr.ph73 ], [ %.6109, %.lr.ph73.preheader ] ; 9 uses
  %.060571 = phi ptr [ %i.qy, %.lr.ph73 ], [ %i.qb, %.lr.ph73.preheader ] ; 5 uses
  %.060670 = phi ptr [ %i.qz, %.lr.ph73 ], [ %i.py, %.lr.ph73.preheader ] ; 5 uses
  %niter526 = phi i32 [ %niter526.next.3, %.lr.ph73 ], [ 0, %.lr.ph73.preheader ]
  %i.qc = load <4 x float>, ptr %.060571, align 16, !tbaa !113
  store <4 x float> %i.qc, ptr %.772, align 16, !tbaa !113
  %i.qd = getelementptr inbounds nuw i8, ptr %.772, i64 16
  %i.qe = load <4 x float>, ptr %.060670, align 16, !tbaa !113
  store <4 x float> %i.qe, ptr %i.qd, align 16, !tbaa !113
  %i.qf = getelementptr inbounds nuw i8, ptr %.772, i64 32
  %i.qg = getelementptr inbounds nuw i8, ptr %.060571, i64 16
  %i.qh = getelementptr inbounds nuw i8, ptr %.060670, i64 16
  %i.qi = load <4 x float>, ptr %i.qg, align 16, !tbaa !113
  store <4 x float> %i.qi, ptr %i.qf, align 16, !tbaa !113
  %i.qj = getelementptr inbounds nuw i8, ptr %.772, i64 48
  %i.qk = load <4 x float>, ptr %i.qh, align 16, !tbaa !113
  store <4 x float> %i.qk, ptr %i.qj, align 16, !tbaa !113
  %i.ql = getelementptr inbounds nuw i8, ptr %.772, i64 64
  %i.qm = getelementptr inbounds nuw i8, ptr %.060571, i64 32
  %i.qn = getelementptr inbounds nuw i8, ptr %.060670, i64 32
  %i.qo = load <4 x float>, ptr %i.qm, align 16, !tbaa !113
  store <4 x float> %i.qo, ptr %i.ql, align 16, !tbaa !113
  %i.qp = getelementptr inbounds nuw i8, ptr %.772, i64 80
  %i.qq = load <4 x float>, ptr %i.qn, align 16, !tbaa !113
  store <4 x float> %i.qq, ptr %i.qp, align 16, !tbaa !113
  %i.qr = getelementptr inbounds nuw i8, ptr %.772, i64 96
  %i.qs = getelementptr inbounds nuw i8, ptr %.060571, i64 48
  %i.qt = getelementptr inbounds nuw i8, ptr %.060670, i64 48
  %i.qu = load <4 x float>, ptr %i.qs, align 16, !tbaa !113
  store <4 x float> %i.qu, ptr %i.qr, align 16, !tbaa !113
  %i.qv = getelementptr inbounds nuw i8, ptr %.772, i64 112
  %i.qw = load <4 x float>, ptr %i.qt, align 16, !tbaa !113
  store <4 x float> %i.qw, ptr %i.qv, align 16, !tbaa !113
  %i.qx = getelementptr inbounds nuw i8, ptr %.772, i64 128 ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.060571, i64 64 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.060670, i64 64 ; 2 uses
  %niter526.next.3 = add nuw nsw i32 %niter526, 4 ; 2 uses
  %niter526.ncmp.3 = icmp eq i32 %niter526.next.3, %unroll_iter525
  br i1 %niter526.ncmp.3, label %.loopexit8.loopexit.unr-lcssa, label %.lr.ph73, !llvm.loop !194

bb.i:                                             ; preds = %bb.g
  %i.ra = load ptr, ptr %0, align 8, !tbaa !18    ; 8 uses
  %i.rb = add nsw i64 %indvars.iv259, %i.af       ; 8 uses
  %i.rc = mul i64 %i.k, %i.rb
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %i.rc
  %i.re = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.ab ; 2 uses
  %i.rf = add nsw i64 %i.rb, 1
  %i.rg = mul i64 %i.k, %i.rf
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %i.rg
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.rh, i64 %i.ab ; 2 uses
  %i.rj = add nsw i64 %i.rb, 2
  %i.rk = mul i64 %i.k, %i.rj
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %i.rk
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rl, i64 %i.ab ; 2 uses
  %i.rn = add nsw i64 %i.rb, 3
  %i.ro = mul i64 %i.k, %i.rn
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %i.ro
  %i.rq = getelementptr inbounds [4 x i8], ptr %i.rp, i64 %i.ab ; 2 uses
  %i.rr = add nsw i64 %i.rb, 4
  %i.rs = mul i64 %i.k, %i.rr
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %i.rs
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.rt, i64 %i.ab ; 2 uses
  %i.rv = add nsw i64 %i.rb, 5
  %i.rw = mul i64 %i.k, %i.rv
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %i.rw
  %i.ry = getelementptr inbounds [4 x i8], ptr %i.rx, i64 %i.ab ; 2 uses
  %i.rz = add nsw i64 %i.rb, 6
  %i.sa = mul i64 %i.k, %i.rz
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %i.sa
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.sb, i64 %i.ab ; 2 uses
  %i.sd = add nsw i64 %i.rb, 7
  %i.se = mul i64 %i.k, %i.sd
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %i.se
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.ab ; 2 uses
  br i1 %i.ac, label %.lr.ph85, label %.preheader7

.preheader7:                                      ; preds = %.lr.ph85, %bb.i
  %.0624.lcssa = phi ptr [ %i.ru, %bb.i ], [ %i.ts, %.lr.ph85 ]
  %.0622.lcssa = phi ptr [ %i.ry, %bb.i ], [ %i.tt, %.lr.ph85 ]
  %.0620.lcssa = phi ptr [ %i.sc, %bb.i ], [ %i.tu, %.lr.ph85 ]
end_hunk_0
begin_hunk_1_@_ZN4ncnnL36transpose_compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii:bb.a
  store <4 x float> %i.dw, ptr %i.ec, align 16, !tbaa !113
  %i.ed = getelementptr inbounds nuw i8, ptr %.026988.i, i64 48
  store <4 x float> %i.dx, ptr %i.ed, align 16, !tbaa !113
  %i.ee = getelementptr inbounds nuw i8, ptr %.026689.i, i64 64
  %i.ef = getelementptr inbounds nuw i8, ptr %.026988.i, i64 64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread.i, %._crit_edge.i
  %.2271.i = phi ptr [ %i.ef, %bb.c ], [ %.026988.i, %._crit_edge.i ], [ %i.dp, %.thread.i ] ; 2 uses
  %.2268.i = phi ptr [ %i.ee, %bb.c ], [ %.026689.i, %._crit_edge.i ], [ %i.do, %.thread.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 16 ; 3 uses
  %i.eg = or disjoint i64 %indvars.iv.next.i, 15
  %i.eh = icmp samesign ult i64 %i.eg, %i.y
  br i1 %i.eh, label %bb.b, label %.preheader77.loopexit.i, !llvm.loop !647

.preheader76.loopexit.i:                          ; preds = %bb.g
  %i.ei = trunc nuw nsw i64 %indvars.iv.next232.i to i32
  br label %.preheader76.i

.preheader76.i:                                   ; preds = %.preheader76.loopexit.i, %.preheader77.i
  %.1287.lcssa.i = phi i32 [ %.0286.lcssa.i, %.preheader77.i ], [ %i.ei, %.preheader76.loopexit.i ] ; 3 uses
  %.3272.lcssa.i = phi ptr [ %.0269.lcssa.i, %.preheader77.i ], [ %.5274.i, %.preheader76.loopexit.i ] ; 2 uses
  %.3.lcssa.i = phi ptr [ %.0266.lcssa.i, %.preheader77.i ], [ %.5.i, %.preheader76.loopexit.i ] ; 2 uses
  %i.ej = or disjoint i32 %.1287.lcssa.i, 3
  %i.ek = icmp slt i32 %i.ej, %i.r
  br i1 %i.ek, label %.lr.ph162.i, label %.preheader75.i

.lr.ph162.i:                                      ; preds = %.preheader76.i
  %i.el = mul nsw i32 %i.b, %2
  %i.em = sext i32 %i.el to i64
  %i.en = icmp sgt i32 %i.m, 3
  %.idx301.i = shl i64 %i.l, 3                    ; 2 uses
  %.idx302.i = mul i64 %i.l, 12
  %.idx303.i = shl i64 %i.l, 4
  %i.eo = and i32 %i.m, -4
  %i.ep = zext nneg i32 %.1287.lcssa.i to i64
  %i.eq = fdiv fast <4 x float> splat (float 1.000000e+00), %i.t
  %i.er = fdiv fast float 1.000000e+00, %1
  br label %bb.i

bb.e:                                             ; preds = %bb.g, %.lr.ph122.i
  %indvars.iv231.i = phi i64 [ %i.am, %.lr.ph122.i ], [ %indvars.iv.next232.i, %bb.g ] ; 2 uses
  %.3121.i = phi ptr [ %.0266.lcssa.i, %.lr.ph122.i ], [ %.5.i, %bb.g ] ; 6 uses
  %.3272120.i = phi ptr [ %.0269.lcssa.i, %.lr.ph122.i ], [ %.5274.i, %bb.g ] ; 6 uses
  %i.es = load ptr, ptr %0, align 8, !tbaa !18
  %i.et = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.aj
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv231.i ; 2 uses
  br i1 %i.ak, label %.lr.ph102.i, label %._crit_edge103.i

.lr.ph102.i:                                      ; preds = %bb.e, %.lr.ph102.i
  %.0280100.i = phi i32 [ %i.fp, %.lr.ph102.i ], [ 0, %bb.e ]
  %.028299.i = phi <4 x float> [ %i.fn, %.lr.ph102.i ], [ zeroinitializer, %bb.e ]
  %.028398.i = phi <4 x float> [ %i.fk, %.lr.ph102.i ], [ zeroinitializer, %bb.e ]
  %.028497.i = phi ptr [ %i.fo, %.lr.ph102.i ], [ %i.eu, %bb.e ] ; 4 uses
  %.05596.i = phi <4 x float> [ %i.fe, %.lr.ph102.i ], [ zeroinitializer, %bb.e ]
  %.05895.i = phi <4 x float> [ %i.fh, %.lr.ph102.i ], [ zeroinitializer, %bb.e ]
  %i.ev = load <4 x i32>, ptr %.028497.i, align 1, !tbaa !113
  %i.ew = getelementptr inbounds nuw i8, ptr %.028497.i, i64 16
  %i.ex = load <4 x i32>, ptr %i.ew, align 1, !tbaa !113
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.028497.i, i64 %i.l ; 2 uses
  %i.ez = load <4 x i32>, ptr %i.ey, align 1, !tbaa !113
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fb = load <4 x i32>, ptr %i.fa, align 1, !tbaa !113
  %i.fc = and <4 x i32> %i.ev, splat (i32 2147483647)
  %i.fd = bitcast <4 x i32> %i.fc to <4 x float>
  %i.fe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.05596.i, <4 x float> nofpclass(nan inf) %i.fd) ; 2 uses
  %i.ff = and <4 x i32> %i.ex, splat (i32 2147483647)
  %i.fg = bitcast <4 x i32> %i.ff to <4 x float>
  %i.fh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.05895.i, <4 x float> nofpclass(nan inf) %i.fg) ; 2 uses
  %i.fi = and <4 x i32> %i.ez, splat (i32 2147483647)
  %i.fj = bitcast <4 x i32> %i.fi to <4 x float>
  %i.fk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.028398.i, <4 x float> nofpclass(nan inf) %i.fj) ; 2 uses
  %i.fl = and <4 x i32> %i.fb, splat (i32 2147483647)
  %i.fm = bitcast <4 x i32> %i.fl to <4 x float>
  %i.fn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.028299.i, <4 x float> nofpclass(nan inf) %i.fm) ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.028497.i, i64 %.idx304.i ; 2 uses
  %i.fp = add nuw nsw i32 %.0280100.i, 2          ; 2 uses
  %i.fq = or disjoint i32 %i.fp, 1
  %i.fr = icmp slt i32 %i.fq, %i.m
  br i1 %i.fr, label %.lr.ph102.i, label %._crit_edge103.i, !llvm.loop !648

._crit_edge103.i:                                 ; preds = %.lr.ph102.i, %bb.e
  %.058.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.e ], [ %i.fh, %.lr.ph102.i ]
  %.055.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.e ], [ %i.fe, %.lr.ph102.i ]
  %.0284.lcssa.i = phi ptr [ %i.eu, %bb.e ], [ %i.fo, %.lr.ph102.i ] ; 4 uses
  %.0283.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.e ], [ %i.fk, %.lr.ph102.i ]
  %.0282.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.e ], [ %i.fn, %.lr.ph102.i ]
  %.0280.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.al, %.lr.ph102.i ] ; 4 uses
  %i.fs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.055.lcssa.i, <4 x float> nofpclass(nan inf) %.0283.lcssa.i) ; 3 uses
  %i.ft = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.058.lcssa.i, <4 x float> nofpclass(nan inf) %.0282.lcssa.i) ; 3 uses
  %i.fu = icmp slt i32 %.0280.lcssa.i, %i.m
  br i1 %i.fu, label %.lr.ph115.i.preheader, label %._crit_edge116.i

.lr.ph115.i.preheader:                            ; preds = %._crit_edge103.i
  %.neg = or disjoint i32 %.0280.lcssa.i, 1
  br i1 %lcmp.mod195.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol

.lr.ph115.i.prol:                                 ; preds = %.lr.ph115.i.preheader
  %i.fv = load <4 x i32>, ptr %.0284.lcssa.i, align 1, !tbaa !113
  %i.fw = getelementptr inbounds nuw i8, ptr %.0284.lcssa.i, i64 16
  %i.fx = load <4 x i32>, ptr %i.fw, align 1, !tbaa !113
  %i.fy = and <4 x i32> %i.fv, splat (i32 2147483647)
  %i.fz = bitcast <4 x i32> %i.fy to <4 x float>
  %i.ga = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fs, <4 x float> nofpclass(nan inf) %i.fz) ; 2 uses
  %i.gb = and <4 x i32> %i.fx, splat (i32 2147483647)
  %i.gc = bitcast <4 x i32> %i.gb to <4 x float>
  %i.gd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ft, <4 x float> nofpclass(nan inf) %i.gc) ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.0284.lcssa.i, i64 %i.l
  %i.gf = or disjoint i32 %.0280.lcssa.i, 1
  br label %.lr.ph115.i.prol.loopexit

.lr.ph115.i.prol.loopexit:                        ; preds = %.lr.ph115.i.prol, %.lr.ph115.i.preheader
  %.lcssa184.unr = phi <4 x float> [ poison, %.lr.ph115.i.preheader ], [ %i.ga, %.lr.ph115.i.prol ]
  %.lcssa183.unr = phi <4 x float> [ poison, %.lr.ph115.i.preheader ], [ %i.gd, %.lr.ph115.i.prol ]
  %.1281113.i.unr = phi i32 [ %.0280.lcssa.i, %.lr.ph115.i.preheader ], [ %i.gf, %.lr.ph115.i.prol ]
  %.1285112.i.unr = phi ptr [ %.0284.lcssa.i, %.lr.ph115.i.preheader ], [ %i.ge, %.lr.ph115.i.prol ]
  %.156111.i.unr = phi <4 x float> [ %i.fs, %.lr.ph115.i.preheader ], [ %i.ga, %.lr.ph115.i.prol ]
  %.159110.i.unr = phi <4 x float> [ %i.ft, %.lr.ph115.i.preheader ], [ %i.gd, %.lr.ph115.i.prol ]
  %i.gg = icmp eq i32 %i.m, %.neg
  br i1 %i.gg, label %._crit_edge116.i, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %.lr.ph115.i.prol.loopexit, %.lr.ph115.i
  %.1281113.i = phi i32 [ %i.hb, %.lr.ph115.i ], [ %.1281113.i.unr, %.lr.ph115.i.prol.loopexit ]
  %.1285112.i = phi ptr [ %i.ha, %.lr.ph115.i ], [ %.1285112.i.unr, %.lr.ph115.i.prol.loopexit ] ; 3 uses
  %.156111.i = phi <4 x float> [ %i.gw, %.lr.ph115.i ], [ %.156111.i.unr, %.lr.ph115.i.prol.loopexit ]
  %.159110.i = phi <4 x float> [ %i.gz, %.lr.ph115.i ], [ %.159110.i.unr, %.lr.ph115.i.prol.loopexit ]
  %i.gh = load <4 x i32>, ptr %.1285112.i, align 1, !tbaa !113
  %i.gi = getelementptr inbounds nuw i8, ptr %.1285112.i, i64 16
  %i.gj = load <4 x i32>, ptr %i.gi, align 1, !tbaa !113
  %i.gk = and <4 x i32> %i.gh, splat (i32 2147483647)
  %i.gl = bitcast <4 x i32> %i.gk to <4 x float>
  %i.gm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.156111.i, <4 x float> nofpclass(nan inf) %i.gl)
  %i.gn = and <4 x i32> %i.gj, splat (i32 2147483647)
  %i.go = bitcast <4 x i32> %i.gn to <4 x float>
  %i.gp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.159110.i, <4 x float> nofpclass(nan inf) %i.go)
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.1285112.i, i64 %i.l ; 3 uses
  %i.gr = load <4 x i32>, ptr %i.gq, align 1, !tbaa !113
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gt = load <4 x i32>, ptr %i.gs, align 1, !tbaa !113
  %i.gu = and <4 x i32> %i.gr, splat (i32 2147483647)
  %i.gv = bitcast <4 x i32> %i.gu to <4 x float>
  %i.gw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gm, <4 x float> nofpclass(nan inf) %i.gv) ; 2 uses
  %i.gx = and <4 x i32> %i.gt, splat (i32 2147483647)
  %i.gy = bitcast <4 x i32> %i.gx to <4 x float>
  %i.gz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gp, <4 x float> nofpclass(nan inf) %i.gy) ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.l
  %i.hb = add nuw nsw i32 %.1281113.i, 2          ; 2 uses
  %exitcond230.not.i.1 = icmp eq i32 %i.hb, %i.m
  br i1 %exitcond230.not.i.1, label %._crit_edge116.i, label %.lr.ph115.i, !llvm.loop !649

._crit_edge116.i:                                 ; preds = %.lr.ph115.i.prol.loopexit, %.lr.ph115.i, %._crit_edge103.i
  %.159.lcssa.i = phi <4 x float> [ %i.ft, %._crit_edge103.i ], [ %.lcssa183.unr, %.lr.ph115.i.prol.loopexit ], [ %i.gz, %.lr.ph115.i ] ; 4 uses
  %.156.lcssa.i = phi <4 x float> [ %i.fs, %._crit_edge103.i ], [ %.lcssa184.unr, %.lr.ph115.i.prol.loopexit ], [ %i.gw, %.lr.ph115.i ] ; 4 uses
  switch i32 %i.b, label %bb.g [
    i32 4, label %.thread69.i
    i32 1, label %bb.f
  ]

.thread69.i:                                      ; preds = %._crit_edge116.i
  %i.hc = shufflevector <4 x float> %.156.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.hd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.156.lcssa.i, <4 x float> nofpclass(nan inf) %i.hc) ; 2 uses
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.hf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.hd, <4 x float> nofpclass(nan inf) %i.he)
  %i.hg = shufflevector <4 x float> %.159.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.hh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.159.lcssa.i, <4 x float> nofpclass(nan inf) %i.hg) ; 2 uses
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.hj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.hh, <4 x float> nofpclass(nan inf) %i.hi)
  %i.hk = shufflevector <4 x float> %i.hf, <4 x float> %i.hj, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.hl = fdiv fast <2 x float> splat (float 1.270000e+02), %i.hk
  store <2 x float> %i.hl, ptr %.3121.i, align 4, !tbaa !68
  %i.hm = fmul fast <2 x float> %i.hk, splat (float f0x3C010204)
  %i.hn = fmul fast <2 x float> %i.hm, %i.as
  store <2 x float> %i.hn, ptr %.3272120.i, align 4, !tbaa !68
  %i.ho = getelementptr inbounds nuw i8, ptr %.3121.i, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %.3272120.i, i64 8
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge116.i
  %i.hq = fdiv fast <4 x float> splat (float 1.270000e+02), %.156.lcssa.i
  %i.hr = fdiv fast <4 x float> splat (float 1.270000e+02), %.159.lcssa.i
  %i.hs = fmul fast <4 x float> %.156.lcssa.i, %i.aq
  %i.ht = fmul fast <4 x float> %.159.lcssa.i, %i.ar
  store <4 x float> %i.hq, ptr %.3121.i, align 16, !tbaa !113
  %i.hu = getelementptr inbounds nuw i8, ptr %.3121.i, i64 16
  store <4 x float> %i.hr, ptr %i.hu, align 16, !tbaa !113
  store <4 x float> %i.hs, ptr %.3272120.i, align 16, !tbaa !113
  %i.hv = getelementptr inbounds nuw i8, ptr %.3272120.i, i64 16
  store <4 x float> %i.ht, ptr %i.hv, align 16, !tbaa !113
  %i.hw = getelementptr inbounds nuw i8, ptr %.3121.i, i64 32
  %i.hx = getelementptr inbounds nuw i8, ptr %.3272120.i, i64 32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread69.i, %._crit_edge116.i
  %.5274.i = phi ptr [ %i.hx, %bb.f ], [ %.3272120.i, %._crit_edge116.i ], [ %i.hp, %.thread69.i ] ; 2 uses
  %.5.i = phi ptr [ %i.hw, %bb.f ], [ %.3121.i, %._crit_edge116.i ], [ %i.ho, %.thread69.i ] ; 2 uses
  %indvars.iv.next232.i = add nuw nsw i64 %indvars.iv231.i, 8 ; 3 uses
  %i.hy = icmp slt i64 %indvars.iv.next232.i, %invariant.op.i
  br i1 %i.hy, label %bb.e, label %.preheader76.loopexit.i, !llvm.loop !650

.preheader75.i:                                   ; preds = %bb.k, %.preheader76.i
  %.2288.lcssa.i = phi i32 [ %.1287.lcssa.i, %.preheader76.i ], [ %i.nv, %bb.k ] ; 8 uses
  %.6275.lcssa.i = phi ptr [ %.3272.lcssa.i, %.preheader76.i ], [ %.8277.i, %bb.k ] ; 9 uses
  %.6.lcssa.i = phi ptr [ %.3.lcssa.i, %.preheader76.i ], [ %.8.i, %bb.k ] ; 9 uses
  %i.hz = or disjoint i32 %.2288.lcssa.i, 1
  %i.ia = icmp slt i32 %i.hz, %i.r
  br i1 %i.ia, label %.lr.ph178.i, label %.preheader.i

.lr.ph178.i:                                      ; preds = %.preheader75.i
  %i.ib = load ptr, ptr %0, align 8, !tbaa !18
  %i.ic = mul nsw i32 %i.b, %2
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.id
  %i.if = icmp sgt i32 %i.m, 0
  br i1 %i.if, label %.lr.ph171.us.preheader.i, label %.lr.ph178.split.i.preheader

.lr.ph178.split.i.preheader:                      ; preds = %.lr.ph178.i
  %i.ig = add i32 %i.r, -2
  %i.ih = sub i32 %i.ig, %.2288.lcssa.i           ; 2 uses
  %i.ii = lshr i32 %i.ih, 1
  %narrow = add nuw i32 %i.ii, 1
  %i.ij = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.ih, 14
  br i1 %min.iters.check, label %.lr.ph178.split.i.preheader162, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph178.split.i.preheader
  %i.ik = add i32 %i.r, -2
  %i.il = sub i32 %i.ik, %.2288.lcssa.i
  %i.im = lshr i32 %i.il, 1
  %i.in = zext nneg i32 %i.im to i64
  %i.io = shl nuw nsw i64 %i.in, 3
  %i.ip = add nuw nsw i64 %i.io, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %.6.lcssa.i, i64 %i.ip
  %scevgep134 = getelementptr i8, ptr %.6275.lcssa.i, i64 %i.ip
  %bound0 = icmp ult ptr %.6.lcssa.i, %scevgep134
  %bound1 = icmp ult ptr %.6275.lcssa.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph178.split.i.preheader162, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ij, 4294967292              ; 4 uses
  %i.iq = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.ir = getelementptr i8, ptr %.6.lcssa.i, i64 %i.iq ; 2 uses
  %i.is = getelementptr i8, ptr %.6275.lcssa.i, i64 %i.iq ; 2 uses
  %i.it = trunc nuw i64 %n.vec to i32
  %i.iu = shl i32 %i.it, 1
  %i.iv = add i32 %.2288.lcssa.i, %i.iu           ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iw = shl i64 %index, 3                       ; 3 uses
  %i.ix = or disjoint i64 %i.iw, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.6.lcssa.i, i64 %i.iw
  %next.gep135 = getelementptr i8, ptr %.6.lcssa.i, i64 %i.ix
  %next.gep136 = getelementptr i8, ptr %.6275.lcssa.i, i64 %i.iw
  %next.gep137 = getelementptr i8, ptr %.6275.lcssa.i, i64 %i.ix
  store <4 x float> splat (float +inf), ptr %next.gep, align 4, !tbaa !68, !alias.scope !651, !noalias !654
  store <4 x float> splat (float +inf), ptr %next.gep135, align 4, !tbaa !68, !alias.scope !651, !noalias !654
  store <4 x float> zeroinitializer, ptr %next.gep136, align 4, !tbaa !68, !alias.scope !654
  store <4 x float> zeroinitializer, ptr %next.gep137, align 4, !tbaa !68, !alias.scope !654
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iy = icmp eq i64 %index.next, %n.vec
  br i1 %i.iy, label %middle.block, label %vector.body, !llvm.loop !656

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ij
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph178.split.i.preheader162

.lr.ph178.split.i.preheader162:                   ; preds = %vector.memcheck, %.lr.ph178.split.i.preheader, %middle.block
  %.9177.i.ph = phi ptr [ %.6.lcssa.i, %vector.memcheck ], [ %.6.lcssa.i, %.lr.ph178.split.i.preheader ], [ %i.ir, %middle.block ]
  %.9278176.i.ph = phi ptr [ %.6275.lcssa.i, %vector.memcheck ], [ %.6275.lcssa.i, %.lr.ph178.split.i.preheader ], [ %i.is, %middle.block ]
  %.3289175.i.ph = phi i32 [ %.2288.lcssa.i, %vector.memcheck ], [ %.2288.lcssa.i, %.lr.ph178.split.i.preheader ], [ %i.iv, %middle.block ]
  br label %.lr.ph178.split.i

.lr.ph171.us.preheader.i:                         ; preds = %.lr.ph178.i
  %i.iz = zext i32 %.2288.lcssa.i to i64
  %i.ja = insertelement <2 x float> poison, float %1, i64 0
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = add nsw i32 %i.m, -1
  %xtraiter198 = and i32 %i.m, 3                  ; 3 uses
  %i.jd = icmp ult i32 %i.jc, 3
  %unroll_iter202 = and i32 %i.m, 2147483644
  %lcmp.mod199.not = icmp eq i32 %xtraiter198, 0
  %lcmp.mod201 = icmp ne i32 %xtraiter198, 0
  %i.je = fdiv fast <2 x float> splat (float 1.000000e+00), %i.jb
  br label %.lr.ph171.us.i

.lr.ph171.us.i:                                   ; preds = %._crit_edge172.us.i, %.lr.ph171.us.preheader.i
  %indvars.iv239.i = phi i64 [ %i.iz, %.lr.ph171.us.preheader.i ], [ %indvars.iv.next240.i, %._crit_edge172.us.i ] ; 2 uses
  %.9177.us.i = phi ptr [ %.6.lcssa.i, %.lr.ph171.us.preheader.i ], [ %i.kf, %._crit_edge172.us.i ] ; 2 uses
  %.9278176.us.i = phi ptr [ %.6275.lcssa.i, %.lr.ph171.us.preheader.i ], [ %i.kg, %._crit_edge172.us.i ] ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv239.i ; 2 uses
  br i1 %i.jd, label %.epil.preheader, label %.lr.ph171.us.i.new

.lr.ph171.us.i.new:                               ; preds = %.lr.ph171.us.i, %.lr.ph171.us.i.new
  %.0257168.us.i = phi ptr [ %i.jw, %.lr.ph171.us.i.new ], [ %i.jf, %.lr.ph171.us.i ] ; 2 uses
  %i.jg = phi <2 x float> [ %i.jv, %.lr.ph171.us.i.new ], [ zeroinitializer, %.lr.ph171.us.i ]
  %niter203 = phi i32 [ %niter203.next.3, %.lr.ph171.us.i.new ], [ 0, %.lr.ph171.us.i ]
  %i.jh = load <2 x float>, ptr %.0257168.us.i, align 4, !tbaa !68
  %i.ji = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.jh)
  %i.jj = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.jg, <2 x float> %i.ji)
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.0257168.us.i, i64 %i.l ; 2 uses
  %i.jl = load <2 x float>, ptr %i.jk, align 4, !tbaa !68
  %i.jm = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.jl)
  %i.jn = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.jj, <2 x float> %i.jm)
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.l ; 2 uses
  %i.jp = load <2 x float>, ptr %i.jo, align 4, !tbaa !68
  %i.jq = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.jp)
  %i.jr = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.jn, <2 x float> %i.jq)
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.l ; 2 uses
  %i.jt = load <2 x float>, ptr %i.js, align 4, !tbaa !68
  %i.ju = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.jt)
  %i.jv = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.jr, <2 x float> %i.ju) ; 3 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.l ; 2 uses
  %niter203.next.3 = add nuw nsw i32 %niter203, 4 ; 2 uses
  %niter203.ncmp.3 = icmp eq i32 %niter203.next.3, %unroll_iter202
  br i1 %niter203.ncmp.3, label %._crit_edge172.us.i.unr-lcssa, label %.lr.ph171.us.i.new, !llvm.loop !657

._crit_edge172.us.i.unr-lcssa:                    ; preds = %.lr.ph171.us.i.new
  br i1 %lcmp.mod199.not, label %._crit_edge172.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge172.us.i.unr-lcssa, %.lr.ph171.us.i
  %.0257168.us.i.epil.init = phi ptr [ %i.jf, %.lr.ph171.us.i ], [ %i.jw, %._crit_edge172.us.i.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph171.us.i ], [ %i.jv, %._crit_edge172.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod201)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.0257168.us.i.epil = phi ptr [ %.0257168.us.i.epil.init, %.epil.preheader ], [ %i.kb, %bb.h ] ; 2 uses
  %i.jx = phi <2 x float> [ %.epil.init, %.epil.preheader ], [ %i.ka, %bb.h ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.jy = load <2 x float>, ptr %.0257168.us.i.epil, align 4, !tbaa !68
  %i.jz = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.jy)
  %i.ka = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.jx, <2 x float> %i.jz) ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.0257168.us.i.epil, i64 %i.l
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter198
  br i1 %epil.iter.cmp.not, label %._crit_edge172.us.i, label %bb.h, !llvm.loop !658

._crit_edge172.us.i:                              ; preds = %bb.h, %._crit_edge172.us.i.unr-lcssa
  %.lcssa = phi <2 x float> [ %i.jv, %._crit_edge172.us.i.unr-lcssa ], [ %i.ka, %bb.h ] ; 2 uses
  %i.kc = fdiv fast <2 x float> splat (float 1.270000e+02), %.lcssa
  store <2 x float> %i.kc, ptr %.9177.us.i, align 4, !tbaa !68
  %i.kd = fmul fast <2 x float> %.lcssa, splat (float f0x3C010204)
  %i.ke = fmul fast <2 x float> %i.kd, %i.je
  store <2 x float> %i.ke, ptr %.9278176.us.i, align 4, !tbaa !68
  %i.kf = getelementptr inbounds nuw i8, ptr %.9177.us.i, i64 8 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.9278176.us.i, i64 8 ; 2 uses
  %indvars.iv.next240.i = add nuw nsw i64 %indvars.iv239.i, 2 ; 2 uses
  %i.kh = trunc i64 %indvars.iv.next240.i to i32  ; 2 uses
  %i.ki = or i32 %i.kh, 1
  %i.kj = icmp slt i32 %i.ki, %i.r
  br i1 %i.kj, label %.lr.ph171.us.i, label %.preheader.i, !llvm.loop !659

bb.i:                                             ; preds = %bb.k, %.lr.ph162.i
  %indvars.iv235.i = phi i64 [ %i.ep, %.lr.ph162.i ], [ %indvars.iv.next236.i, %bb.k ] ; 2 uses
  %.6161.i = phi ptr [ %.3.lcssa.i, %.lr.ph162.i ], [ %.8.i, %bb.k ] ; 5 uses
  %.6275160.i = phi ptr [ %.3272.lcssa.i, %.lr.ph162.i ], [ %.8277.i, %bb.k ] ; 5 uses
  %i.kk = load ptr, ptr %0, align 8, !tbaa !18
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.em
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv235.i ; 2 uses
  br i1 %i.en, label %.lr.ph133.i, label %._crit_edge134.i

.lr.ph133.i:                                      ; preds = %bb.i, %.lr.ph133.i
  %.0258131.i = phi i32 [ %i.lh, %.lr.ph133.i ], [ 0, %bb.i ]
  %.0259130.i = phi <4 x float> [ %i.lf, %.lr.ph133.i ], [ zeroinitializer, %bb.i ]
  %.0260129.i = phi <4 x float> [ %i.lc, %.lr.ph133.i ], [ zeroinitializer, %bb.i ]
  %.0261128.i = phi <4 x float> [ %i.kz, %.lr.ph133.i ], [ zeroinitializer, %bb.i ]
  %.0263127.i = phi ptr [ %i.lg, %.lr.ph133.i ], [ %i.km, %bb.i ] ; 5 uses
  %.060126.i = phi <4 x float> [ %i.kw, %.lr.ph133.i ], [ zeroinitializer, %bb.i ]
  %i.kn = load <4 x i32>, ptr %.0263127.i, align 1, !tbaa !113
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.0263127.i, i64 %i.l
  %i.kp = load <4 x i32>, ptr %i.ko, align 1, !tbaa !113
  %i.kq = getelementptr inbounds nuw i8, ptr %.0263127.i, i64 %.idx301.i
  %i.kr = load <4 x i32>, ptr %i.kq, align 1, !tbaa !113
  %i.ks = getelementptr inbounds nuw i8, ptr %.0263127.i, i64 %.idx302.i
  %i.kt = load <4 x i32>, ptr %i.ks, align 1, !tbaa !113
  %i.ku = and <4 x i32> %i.kn, splat (i32 2147483647)
  %i.kv = bitcast <4 x i32> %i.ku to <4 x float>
  %i.kw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.060126.i, <4 x float> nofpclass(nan inf) %i.kv) ; 2 uses
  %i.kx = and <4 x i32> %i.kp, splat (i32 2147483647)
  %i.ky = bitcast <4 x i32> %i.kx to <4 x float>
  %i.kz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0261128.i, <4 x float> nofpclass(nan inf) %i.ky) ; 2 uses
  %i.la = and <4 x i32> %i.kr, splat (i32 2147483647)
  %i.lb = bitcast <4 x i32> %i.la to <4 x float>
  %i.lc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0260129.i, <4 x float> nofpclass(nan inf) %i.lb) ; 2 uses
  %i.ld = and <4 x i32> %i.kt, splat (i32 2147483647)
  %i.le = bitcast <4 x i32> %i.ld to <4 x float>
  %i.lf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0259130.i, <4 x float> nofpclass(nan inf) %i.le) ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.0263127.i, i64 %.idx303.i ; 2 uses
  %i.lh = add nuw nsw i32 %.0258131.i, 4          ; 2 uses
  %i.li = or disjoint i32 %i.lh, 3
  %i.lj = icmp slt i32 %i.li, %i.m
  br i1 %i.lj, label %.lr.ph133.i, label %._crit_edge134.i, !llvm.loop !660

._crit_edge134.i:                                 ; preds = %.lr.ph133.i, %bb.i
  %.060.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.i ], [ %i.kw, %.lr.ph133.i ]
  %.0263.lcssa.i = phi ptr [ %i.km, %bb.i ], [ %i.lg, %.lr.ph133.i ] ; 2 uses
  %.0261.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.i ], [ %i.kz, %.lr.ph133.i ]
  %.0260.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.i ], [ %i.lc, %.lr.ph133.i ]
  %.0259.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.i ], [ %i.lf, %.lr.ph133.i ]
  %.0258.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.eo, %.lr.ph133.i ] ; 3 uses
  %i.lk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.060.lcssa.i, <4 x float> nofpclass(nan inf) %.0260.lcssa.i) ; 2 uses
  %i.ll = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0261.lcssa.i, <4 x float> nofpclass(nan inf) %.0259.lcssa.i) ; 2 uses
  %i.lm = or disjoint i32 %.0258.lcssa.i, 1
  %i.ln = icmp slt i32 %i.lm, %i.m
  br i1 %i.ln, label %.lr.ph146.i, label %._crit_edge147.i

.lr.ph146.i:                                      ; preds = %._crit_edge134.i, %.lr.ph146.i
  %.1144.i = phi i32 [ %i.ly, %.lr.ph146.i ], [ %.0258.lcssa.i, %._crit_edge134.i ]
  %.1262143.i = phi <4 x float> [ %i.lw, %.lr.ph146.i ], [ %i.ll, %._crit_edge134.i ]
  %.1264142.i = phi ptr [ %i.lx, %.lr.ph146.i ], [ %.0263.lcssa.i, %._crit_edge134.i ] ; 3 uses
  %.161141.i = phi <4 x float> [ %i.lt, %.lr.ph146.i ], [ %i.lk, %._crit_edge134.i ]
  %i.lo = load <4 x i32>, ptr %.1264142.i, align 1, !tbaa !113
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.1264142.i, i64 %i.l
  %i.lq = load <4 x i32>, ptr %i.lp, align 1, !tbaa !113
  %i.lr = and <4 x i32> %i.lo, splat (i32 2147483647)
  %i.ls = bitcast <4 x i32> %i.lr to <4 x float>
  %i.lt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.161141.i, <4 x float> nofpclass(nan inf) %i.ls) ; 2 uses
  %i.lu = and <4 x i32> %i.lq, splat (i32 2147483647)
  %i.lv = bitcast <4 x i32> %i.lu to <4 x float>
  %i.lw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1262143.i, <4 x float> nofpclass(nan inf) %i.lv) ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.1264142.i, i64 %.idx301.i ; 2 uses
  %i.ly = add nuw nsw i32 %.1144.i, 2             ; 3 uses
  %i.lz = or disjoint i32 %i.ly, 1
  %i.ma = icmp slt i32 %i.lz, %i.m
end_hunk_1
begin_hunk_2_@_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  store i16 %i.fb, ptr %.427.us.ph, align 2, !tbaa !526
  %i.fc = load i16, ptr %.112322.us.ph, align 2, !tbaa !526
  %i.fd = getelementptr inbounds nuw i8, ptr %.427.us.ph, i64 2
  store i16 %i.fc, ptr %i.fd, align 2, !tbaa !526
  %i.fe = load i16, ptr %.112123.us.ph, align 2, !tbaa !526
  %i.ff = getelementptr inbounds nuw i8, ptr %.427.us.ph, i64 4
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !526
  %i.fg = load i16, ptr %.111924.us.ph, align 2, !tbaa !526
  %i.fh = getelementptr inbounds nuw i8, ptr %.427.us.ph, i64 6
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !526
  %i.fi = getelementptr inbounds nuw i8, ptr %.427.us.ph, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.311426.us.ph, i64 2
  %i.fk = getelementptr inbounds nuw i8, ptr %.112322.us.ph, i64 2
  %i.fl = getelementptr inbounds nuw i8, ptr %.112123.us.ph, i64 2
  %i.fm = getelementptr inbounds nuw i8, ptr %.111924.us.ph, i64 2
  %i.fn = add nuw nsw i32 %.111725.us.ph, 1
  br label %.lr.ph28.us.prol.loopexit

.lr.ph28.us.prol.loopexit:                        ; preds = %.lr.ph28.us.prol, %.lr.ph28.us.preheader293
  %.lcssa302.unr.a = phi ptr [ poison, %.lr.ph28.us.preheader293 ], [ %i.fi, %.lr.ph28.us.prol ]
  %.427.us.unr = phi ptr [ %.427.us.ph, %.lr.ph28.us.preheader293 ], [ %i.fi, %.lr.ph28.us.prol ]
  %.311426.us.unr = phi ptr [ %.311426.us.ph, %.lr.ph28.us.preheader293 ], [ %i.fj, %.lr.ph28.us.prol ]
  %.111725.us.unr = phi i32 [ %.111725.us.ph, %.lr.ph28.us.preheader293 ], [ %i.fn, %.lr.ph28.us.prol ]
  %.111924.us.unr = phi ptr [ %.111924.us.ph, %.lr.ph28.us.preheader293 ], [ %i.fm, %.lr.ph28.us.prol ]
  %.112123.us.unr = phi ptr [ %.112123.us.ph, %.lr.ph28.us.preheader293 ], [ %i.fl, %.lr.ph28.us.prol ]
  %.112322.us.unr = phi ptr [ %.112322.us.ph, %.lr.ph28.us.preheader293 ], [ %i.fk, %.lr.ph28.us.prol ]
  %i.fo = icmp eq i32 %4, %.neg324
  br i1 %i.fo, label %.loopexit.us, label %.lr.ph28.us

.loopexit.us:                                     ; preds = %.lr.ph28.us.prol.loopexit, %.lr.ph28.us, %middle.block177, %.preheader2.us
  %.4.lcssa.us = phi ptr [ %.3.lcssa.us, %.preheader2.us ], [ %i.en, %middle.block177 ], [ %.lcssa302.unr.a, %.lr.ph28.us.prol.loopexit ], [ %i.dw, %.lr.ph28.us ] ; 2 uses
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 4 ; 3 uses
  %i.fp = or disjoint i64 %indvars.iv.next101, 3
  %i.fq = icmp samesign ult i64 %i.fp, %i.u
  %indvar.next188 = add i64 %indvar187, 1
  br i1 %i.fq, label %.lr.ph32.split.us, label %.preheader1.loopexit, !llvm.loop !845

.lr.ph32.split:                                   ; preds = %.lr.ph32
  br i1 %i.o, label %.lr.ph32.split.split.preheader, label %.lr.ph32.split.split.us

.lr.ph32.split.split.preheader:                   ; preds = %.lr.ph32.split
  %i.fr = and i32 %2, 2147483644
  br label %.preheader1

.lr.ph32.split.split.us:                          ; preds = %.lr.ph32.split
  br i1 %i.p, label %.preheader3.us42.preheader, label %.preheader3.us42.us.preheader

.preheader3.us42.us.preheader:                    ; preds = %.lr.ph32.split.split.us
  %i.fs = sext i32 %1 to i64                      ; 2 uses
  %i.ft = zext nneg i32 %2 to i64
  %i.fu = mul i64 %i.i, %i.fs
  %i.fv = mul i64 %i.fu, -2
  %i.fw = shl nsw i64 %i.n, 1
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = mul i64 %i.i, -8
  %i.fz = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %4, 6
  %n.vec = and i64 %i.fz, 2147483644              ; 4 uses
  %i.ga = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.gb = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.fz
  br label %.preheader3.us42.us

.preheader3.us42.preheader:                       ; preds = %.lr.ph32.split.split.us
  %i.gc = and i32 %2, 2147483644
  br label %.preheader1

.preheader3.us42.us:                              ; preds = %.preheader3.us42.us.preheader, %..loopexit4_crit_edge.us46.us
  %indvar = phi i64 [ 0, %.preheader3.us42.us.preheader ], [ %indvar.next, %..loopexit4_crit_edge.us46.us ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader3.us42.us.preheader ], [ %indvars.iv.next, %..loopexit4_crit_edge.us46.us ] ; 2 uses
  %.010731.us36.us = phi ptr [ %.0.val, %.preheader3.us42.us.preheader ], [ %.lcssa134, %..loopexit4_crit_edge.us46.us ] ; 5 uses
  %i.gd = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ge = add nsw i64 %indvars.iv, %i.fs
  %i.gf = mul i64 %i.i, %i.ge
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.gf
  %i.gh = getelementptr inbounds [2 x i8], ptr %i.gg, i64 %i.n ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader3.us42.us
  %i.gi = ptrtoaddr ptr %i.gd to i64
  %i.gj = mul i64 %i.fy, %indvar
  %i.gk = add i64 %i.fx, %i.gj
  %.010731.us36.us135 = ptrtoaddr ptr %.010731.us36.us to i64
  %i.gl = add i64 %i.gk, %.010731.us36.us135
  %i.gm = sub i64 %i.gi, %i.gl
  %diff.check = icmp ugt i64 %i.gm, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gn = getelementptr i8, ptr %.010731.us36.us, i64 %i.ga ; 2 uses
  %i.go = getelementptr i8, ptr %i.gh, i64 %i.ga
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.010731.us36.us, i64 %i.gp ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.gh, i64 %i.gp ; 2 uses
  %i.gq = getelementptr i8, ptr %next.gep136, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep136, align 1, !tbaa !113
  %wide.load137 = load <2 x i64>, ptr %i.gq, align 1, !tbaa !113
  %i.gr = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1, !tbaa !113
  store <2 x i64> %wide.load137, ptr %i.gr, align 1, !tbaa !113
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gs = icmp eq i64 %index.next, %n.vec
  br i1 %i.gs, label %middle.block, label %vector.body, !llvm.loop !846

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit4_crit_edge.us46.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader3.us42.us, %middle.block
  %.17.us38.us.ph = phi ptr [ %.010731.us36.us, %vector.memcheck ], [ %.010731.us36.us, %.preheader3.us42.us ], [ %i.gn, %middle.block ] ; 2 uses
  %.01116.us39.us.ph = phi ptr [ %i.gh, %vector.memcheck ], [ %i.gh, %.preheader3.us42.us ], [ %i.go, %middle.block ] ; 2 uses
  %.01155.us40.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader3.us42.us ], [ %i.gb, %middle.block ] ; 4 uses
  %i.gt = sub i32 %4, %.01155.us40.us.ph
  %xtraiter = and i32 %i.gt, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.17.us38.us.prol = phi ptr [ %i.gv, %scalar.ph.prol ], [ %.17.us38.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.01116.us39.us.prol = phi ptr [ %i.gw, %scalar.ph.prol ], [ %.01116.us39.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.01155.us40.us.prol = phi i32 [ %i.gx, %scalar.ph.prol ], [ %.01155.us40.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gu = load i64, ptr %.01116.us39.us.prol, align 1, !tbaa !113
  store i64 %i.gu, ptr %.17.us38.us.prol, align 1, !tbaa !113
  %i.gv = getelementptr inbounds nuw i8, ptr %.17.us38.us.prol, i64 8 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.01116.us39.us.prol, i64 8 ; 2 uses
  %i.gx = add nuw nsw i32 %.01155.us40.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !847

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa303.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.gv, %scalar.ph.prol ]
  %.17.us38.us.unr = phi ptr [ %.17.us38.us.ph, %scalar.ph.preheader ], [ %i.gv, %scalar.ph.prol ]
  %.01116.us39.us.unr = phi ptr [ %.01116.us39.us.ph, %scalar.ph.preheader ], [ %i.gw, %scalar.ph.prol ]
  %.01155.us40.us.unr = phi i32 [ %.01155.us40.us.ph, %scalar.ph.preheader ], [ %i.gx, %scalar.ph.prol ]
  %i.gy = sub i32 %.01155.us40.us.ph, %4
  %i.gz = icmp ugt i32 %i.gy, -8
  br i1 %i.gz, label %..loopexit4_crit_edge.us46.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.17.us38.us = phi ptr [ %i.hw, %scalar.ph ], [ %.17.us38.us.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.01116.us39.us = phi ptr [ %i.hx, %scalar.ph ], [ %.01116.us39.us.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.01155.us40.us = phi i32 [ %i.hy, %scalar.ph ], [ %.01155.us40.us.unr, %scalar.ph.prol.loopexit ]
  %i.ha = load i64, ptr %.01116.us39.us, align 1, !tbaa !113
  store i64 %i.ha, ptr %.17.us38.us, align 1, !tbaa !113
  %i.hb = getelementptr inbounds nuw i8, ptr %.17.us38.us, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %.01116.us39.us, i64 8
  %i.hd = load i64, ptr %i.hc, align 1, !tbaa !113
  store i64 %i.hd, ptr %i.hb, align 1, !tbaa !113
  %i.he = getelementptr inbounds nuw i8, ptr %.17.us38.us, i64 16
  %i.hf = getelementptr inbounds nuw i8, ptr %.01116.us39.us, i64 16
  %i.hg = load i64, ptr %i.hf, align 1, !tbaa !113
  store i64 %i.hg, ptr %i.he, align 1, !tbaa !113
  %i.hh = getelementptr inbounds nuw i8, ptr %.17.us38.us, i64 24
  %i.hi = getelementptr inbounds nuw i8, ptr %.01116.us39.us, i64 24
  %i.hj = load i64, ptr %i.hi, align 1, !tbaa !113
  store i64 %i.hj, ptr %i.hh, align 1, !tbaa !113
  %i.hk = getelementptr inbounds nuw i8, ptr %.17.us38.us, i64 32
  %i.hl = getelementptr inbounds nuw i8, ptr %.01116.us39.us, i64 32
  %i.hm = load i64, ptr %i.hl, align 1, !tbaa !113
  store i64 %i.hm, ptr %i.hk, align 1, !tbaa !113
  %i.hn = getelementptr inbounds nuw i8, ptr %.17.us38.us, i64 40
  %i.ho = getelementptr inbounds nuw i8, ptr %.01116.us39.us, i64 40
  %i.hp = load i64, ptr %i.ho, align 1, !tbaa !113
  store i64 %i.hp, ptr %i.hn, align 1, !tbaa !113
  %i.hq = getelementptr inbounds nuw i8, ptr %.17.us38.us, i64 48
  %i.hr = getelementptr inbounds nuw i8, ptr %.01116.us39.us, i64 48
  %i.hs = load i64, ptr %i.hr, align 1, !tbaa !113
  store i64 %i.hs, ptr %i.hq, align 1, !tbaa !113
  %i.ht = getelementptr inbounds nuw i8, ptr %.17.us38.us, i64 56
  %i.hu = getelementptr inbounds nuw i8, ptr %.01116.us39.us, i64 56
  %i.hv = load i64, ptr %i.hu, align 1, !tbaa !113
  store i64 %i.hv, ptr %i.ht, align 1, !tbaa !113
  %i.hw = getelementptr inbounds nuw i8, ptr %.17.us38.us, i64 64 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.01116.us39.us, i64 64
  %i.hy = add nuw nsw i32 %.01155.us40.us, 8      ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.hy, %4
  br i1 %exitcond.not.7, label %..loopexit4_crit_edge.us46.us, label %scalar.ph, !llvm.loop !848

..loopexit4_crit_edge.us46.us:                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa134 = phi ptr [ %i.gn, %middle.block ], [ %.lcssa303.unr, %scalar.ph.prol.loopexit ], [ %i.hw, %scalar.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.hz = or disjoint i64 %indvars.iv.next, 3
  %i.ia = icmp samesign ult i64 %i.hz, %i.ft
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ia, label %.preheader3.us42.us, label %.preheader1.loopexit79, !llvm.loop !845

.preheader1.loopexit:                             ; preds = %.loopexit.us
  %i.ib = trunc nuw nsw i64 %indvars.iv.next101 to i32
  br label %.preheader1

.preheader1.loopexit79:                           ; preds = %..loopexit4_crit_edge.us46.us
  %i.ic = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.loopexit79, %.preheader3.us42.preheader, %.lr.ph32.split.split.preheader, %.preheader1.loopexit, %bb.a
  %.0108.lcssa = phi i32 [ 0, %bb.a ], [ %i.ib, %.preheader1.loopexit ], [ %i.fr, %.lr.ph32.split.split.preheader ], [ %i.gc, %.preheader3.us42.preheader ], [ %i.ic, %.preheader1.loopexit79 ] ; 5 uses
  %.0107.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.4.lcssa.us, %.preheader1.loopexit ], [ %.0.val, %.lr.ph32.split.split.preheader ], [ %.0.val, %.preheader3.us42.preheader ], [ %.lcssa134, %.preheader1.loopexit79 ] ; 3 uses
  %i.id = or disjoint i32 %.0108.lcssa, 1
  %i.ie = icmp slt i32 %i.id, %2
  br i1 %i.ie, label %.lr.ph60, label %.preheader

.lr.ph60:                                         ; preds = %.preheader1
  %i.if = load ptr, ptr %0, align 8, !tbaa !18    ; 5 uses
  %i.ig = sext i32 %3 to i64                      ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.if, i64 %i.ig
  %i.ih = icmp sgt i32 %4, 0
  br i1 %i.ih, label %.lr.ph.us63.preheader, label %.lr.ph60.split.preheader

.lr.ph60.split.preheader:                         ; preds = %.lr.ph60
  %i.ii = add i32 %2, -2
  %i.ij = sub i32 %i.ii, %.0108.lcssa
  %i.ik = and i32 %i.ij, -2
  %i.il = add i32 %.0108.lcssa, %i.ik
  %i.im = add i32 %i.il, 2
  br label %.preheader

.lr.ph.us63.preheader:                            ; preds = %.lr.ph60
  %i.in = sext i32 %.0108.lcssa to i64            ; 4 uses
  %i.io = sext i32 %1 to i64                      ; 2 uses
  %i.ip = sext i32 %2 to i64
  %invariant.op = add nsw i64 %i.ip, -1           ; 2 uses
  %i.iq = add nsw i32 %4, -1
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %i.is = shl nuw nsw i64 %i.ir, 2
  %i.it = add nsw i64 %i.in, %i.io                ; 2 uses
  %i.iu = shl nsw i64 %i.it, 1                    ; 3 uses
  %i.iv = add nsw i64 %i.iu, 2
  %i.iw = mul i64 %i.i, %i.iv
  %i.ix = shl nsw i64 %i.ig, 1                    ; 3 uses
  %i.iy = getelementptr i8, ptr %i.if, i64 %i.iw
  %scevgep208 = getelementptr i8, ptr %i.iy, i64 %i.ix
  %i.iz = add nsw i64 %i.in, 2
  %smax209 = tail call i64 @llvm.smax.i64(i64 %invariant.op, i64 %i.iz)
  %i.ja = xor i64 %i.in, -1
  %i.jb = add i64 %smax209, %i.ja
  %i.jc = shl i64 %i.jb, 1
  %i.jd = and i64 %i.jc, -4                       ; 2 uses
  %i.je = add i64 %i.jd, %i.iu
  %i.jf = add i64 %i.je, 2
  %i.jg = mul i64 %i.i, %i.jf
  %i.jh = shl nuw nsw i64 %i.ir, 1                ; 2 uses
  %i.ji = getelementptr i8, ptr %i.if, i64 %i.jg
  %i.jj = getelementptr i8, ptr %i.ji, i64 %i.ix
  %i.jk = getelementptr i8, ptr %i.jj, i64 %i.jh
  %scevgep210.a = getelementptr i8, ptr %i.jk, i64 2
  %i.jl = mul i64 %i.i, %i.it
  %i.jm = add i64 %i.jl, %i.ig
  %i.jn = shl i64 %i.jm, 1
  %scevgep211.a = getelementptr i8, ptr %i.if, i64 %i.jn
  %i.jo = add i64 %i.jd, %i.iu
  %i.jp = mul i64 %i.i, %i.jo
  %i.jq = getelementptr i8, ptr %i.if, i64 %i.jp
  %i.jr = getelementptr i8, ptr %i.jq, i64 %i.ix
  %i.js = getelementptr i8, ptr %i.jr, i64 %i.jh
  %scevgep212 = getelementptr i8, ptr %i.js, i64 2
  %i.jt = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check222 = icmp ult i32 %4, 12
  %.mask = and i64 %i.i, 2305843009213693952
  %stride.check219 = icmp ne i64 %.mask, 0
  %n.vec224 = and i64 %i.jt, 2147483640           ; 5 uses
  %i.ju = trunc nuw nsw i64 %n.vec224 to i32
  %i.jv = shl nuw nsw i64 %n.vec224, 1            ; 2 uses
  %i.jw = shl nuw nsw i64 %n.vec224, 2
  %cmp.n239 = icmp eq i64 %n.vec224, %i.jt
  br label %.lr.ph.us63

.lr.ph.us63:                                      ; preds = %.lr.ph.us63.preheader, %._crit_edge.us
  %indvars.iv104 = phi i64 [ %i.in, %.lr.ph.us63.preheader ], [ %indvars.iv.next105, %._crit_edge.us ] ; 2 uses
  %.659.us = phi ptr [ %.0107.lcssa, %.lr.ph.us63.preheader ], [ %.lcssa125, %._crit_edge.us ] ; 8 uses
  %i.jx = add nsw i64 %indvars.iv104, %i.io
  %i.jy = mul i64 %i.i, %i.jx
  %gep.us = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.jy ; 5 uses
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %gep.us, i64 %i.i ; 4 uses
  br i1 %min.iters.check222, label %scalar.ph221.preheader, label %vector.memcheck206

vector.memcheck206:                               ; preds = %.lr.ph.us63
  %i.ka = getelementptr i8, ptr %.659.us, i64 %i.is
  %scevgep207 = getelementptr i8, ptr %i.ka, i64 4 ; 2 uses
  %bound0213 = icmp ult ptr %.659.us, %scevgep210.a
  %bound1214 = icmp ult ptr %scevgep208, %scevgep207
  %found.conflict215 = and i1 %bound0213, %bound1214
  %bound0216 = icmp ult ptr %.659.us, %scevgep212
  %bound1217 = icmp ult ptr %scevgep211.a, %scevgep207
  %found.conflict218 = and i1 %bound0216, %bound1217
  %i.kb = or i1 %found.conflict218, %stride.check219
  %conflict.rdx220 = or i1 %found.conflict215, %i.kb
  br i1 %conflict.rdx220, label %scalar.ph221.preheader, label %vector.ph223

vector.ph223:                                     ; preds = %vector.memcheck206
  %i.kc = getelementptr i8, ptr %i.jz, i64 %i.jv
  %i.kd = getelementptr i8, ptr %gep.us, i64 %i.jv
  %i.ke = getelementptr i8, ptr %.659.us, i64 %i.jw ; 2 uses
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph223
  %index226 = phi i64 [ 0, %vector.ph223 ], [ %index.next237, %vector.body225 ] ; 3 uses
  %i.kf = shl i64 %index226, 1                    ; 2 uses
  %next.gep227.a = getelementptr i8, ptr %i.jz, i64 %i.kf ; 2 uses
  %next.gep228.a = getelementptr i8, ptr %gep.us, i64 %i.kf ; 2 uses
  %i.kg = shl i64 %index226, 2                    ; 2 uses
  %next.gep229.a = getelementptr i8, ptr %.659.us, i64 %i.kg
  %i.kh = getelementptr i8, ptr %.659.us, i64 %i.kg
  %next.gep230 = getelementptr i8, ptr %i.kh, i64 16
  %i.ki = getelementptr i8, ptr %next.gep228.a, i64 8
  %wide.load231.a = load <4 x i16>, ptr %next.gep228.a, align 2, !tbaa !526, !alias.scope !849
  %wide.load232.a = load <4 x i16>, ptr %i.ki, align 2, !tbaa !526, !alias.scope !849
  %i.kj = getelementptr i8, ptr %next.gep227.a, i64 8
  %wide.load233.a = load <4 x i16>, ptr %next.gep227.a, align 2, !tbaa !526, !alias.scope !852
  %wide.load234 = load <4 x i16>, ptr %i.kj, align 2, !tbaa !526, !alias.scope !852
  %interleaved.vec235.a = shufflevector <4 x i16> %wide.load231.a, <4 x i16> %wide.load233.a, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec235.a, ptr %next.gep229.a, align 2, !tbaa !526, !alias.scope !854, !noalias !856
  %interleaved.vec236 = shufflevector <4 x i16> %wide.load232.a, <4 x i16> %wide.load234, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec236, ptr %next.gep230, align 2, !tbaa !526, !alias.scope !854, !noalias !856
  %index.next237 = add nuw i64 %index226, 8       ; 2 uses
  %i.kk = icmp eq i64 %index.next237, %n.vec224
  br i1 %i.kk, label %middle.block238, label %vector.body225, !llvm.loop !857

middle.block238:                                  ; preds = %vector.body225
  br i1 %cmp.n239, label %._crit_edge.us, label %scalar.ph221.preheader

scalar.ph221.preheader:                           ; preds = %vector.memcheck206, %.lr.ph.us63, %middle.block238
  %.010457.us.ph = phi i32 [ 0, %vector.memcheck206 ], [ 0, %.lr.ph.us63 ], [ %i.ju, %middle.block238 ] ; 4 uses
  %.010556.us.ph = phi ptr [ %i.jz, %vector.memcheck206 ], [ %i.jz, %.lr.ph.us63 ], [ %i.kc, %middle.block238 ] ; 2 uses
  %.010655.us.ph = phi ptr [ %gep.us, %vector.memcheck206 ], [ %gep.us, %.lr.ph.us63 ], [ %i.kd, %middle.block238 ] ; 2 uses
  %.754.us.ph = phi ptr [ %.659.us, %vector.memcheck206 ], [ %.659.us, %.lr.ph.us63 ], [ %i.ke, %middle.block238 ] ; 2 uses
  %i.kl = sub i32 %4, %.010457.us.ph
  %xtraiter310 = and i32 %i.kl, 3                 ; 2 uses
  %lcmp.mod311.not = icmp eq i32 %xtraiter310, 0
  br i1 %lcmp.mod311.not, label %scalar.ph221.prol.loopexit, label %scalar.ph221.prol

scalar.ph221.prol:                                ; preds = %scalar.ph221.preheader, %scalar.ph221.prol
  %.010457.us.prol = phi i32 [ %i.ks, %scalar.ph221.prol ], [ %.010457.us.ph, %scalar.ph221.preheader ]
  %.010556.us.prol = phi ptr [ %i.kr, %scalar.ph221.prol ], [ %.010556.us.ph, %scalar.ph221.preheader ] ; 2 uses
  %.010655.us.prol = phi ptr [ %i.kq, %scalar.ph221.prol ], [ %.010655.us.ph, %scalar.ph221.preheader ] ; 2 uses
  %.754.us.prol = phi ptr [ %i.kp, %scalar.ph221.prol ], [ %.754.us.ph, %scalar.ph221.preheader ] ; 3 uses
  %prol.iter312 = phi i32 [ %prol.iter312.next, %scalar.ph221.prol ], [ 0, %scalar.ph221.preheader ]
  %i.km = load i16, ptr %.010655.us.prol, align 2, !tbaa !526
  store i16 %i.km, ptr %.754.us.prol, align 2, !tbaa !526
  %i.kn = load i16, ptr %.010556.us.prol, align 2, !tbaa !526
  %i.ko = getelementptr inbounds nuw i8, ptr %.754.us.prol, i64 2
  store i16 %i.kn, ptr %i.ko, align 2, !tbaa !526
  %i.kp = getelementptr inbounds nuw i8, ptr %.754.us.prol, i64 4 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.010655.us.prol, i64 2 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.010556.us.prol, i64 2 ; 2 uses
  %i.ks = add nuw nsw i32 %.010457.us.prol, 1     ; 2 uses
  %prol.iter312.next = add i32 %prol.iter312, 1   ; 2 uses
  %prol.iter312.cmp.not = icmp eq i32 %prol.iter312.next, %xtraiter310
  br i1 %prol.iter312.cmp.not, label %scalar.ph221.prol.loopexit, label %scalar.ph221.prol, !llvm.loop !858

scalar.ph221.prol.loopexit:                       ; preds = %scalar.ph221.prol, %scalar.ph221.preheader
  %.lcssa292.unr = phi ptr [ poison, %scalar.ph221.preheader ], [ %i.kp, %scalar.ph221.prol ]
  %.010457.us.unr = phi i32 [ %.010457.us.ph, %scalar.ph221.preheader ], [ %i.ks, %scalar.ph221.prol ]
  %.010556.us.unr = phi ptr [ %.010556.us.ph, %scalar.ph221.preheader ], [ %i.kr, %scalar.ph221.prol ]
  %.010655.us.unr = phi ptr [ %.010655.us.ph, %scalar.ph221.preheader ], [ %i.kq, %scalar.ph221.prol ]
  %.754.us.unr = phi ptr [ %.754.us.ph, %scalar.ph221.preheader ], [ %i.kp, %scalar.ph221.prol ]
  %i.kt = sub i32 %.010457.us.ph, %4
  %i.ku = icmp ugt i32 %i.kt, -4
  br i1 %i.ku, label %._crit_edge.us, label %scalar.ph221

scalar.ph221:                                     ; preds = %scalar.ph221.prol.loopexit, %scalar.ph221
  %.010457.us = phi i32 [ %i.lt, %scalar.ph221 ], [ %.010457.us.unr, %scalar.ph221.prol.loopexit ]
  %.010556.us = phi ptr [ %i.ls, %scalar.ph221 ], [ %.010556.us.unr, %scalar.ph221.prol.loopexit ] ; 5 uses
  %.010655.us = phi ptr [ %i.lr, %scalar.ph221 ], [ %.010655.us.unr, %scalar.ph221.prol.loopexit ] ; 5 uses
  %.754.us = phi ptr [ %i.lq, %scalar.ph221 ], [ %.754.us.unr, %scalar.ph221.prol.loopexit ] ; 9 uses
  %i.kv = load i16, ptr %.010655.us, align 2, !tbaa !526
  store i16 %i.kv, ptr %.754.us, align 2, !tbaa !526
  %i.kw = load i16, ptr %.010556.us, align 2, !tbaa !526
  %i.kx = getelementptr inbounds nuw i8, ptr %.754.us, i64 2
  store i16 %i.kw, ptr %i.kx, align 2, !tbaa !526
  %i.ky = getelementptr inbounds nuw i8, ptr %.754.us, i64 4
  %i.kz = getelementptr inbounds nuw i8, ptr %.010655.us, i64 2
  %i.la = getelementptr inbounds nuw i8, ptr %.010556.us, i64 2
  %i.lb = load i16, ptr %i.kz, align 2, !tbaa !526
  store i16 %i.lb, ptr %i.ky, align 2, !tbaa !526
  %i.lc = load i16, ptr %i.la, align 2, !tbaa !526
  %i.ld = getelementptr inbounds nuw i8, ptr %.754.us, i64 6
  store i16 %i.lc, ptr %i.ld, align 2, !tbaa !526
  %i.le = getelementptr inbounds nuw i8, ptr %.754.us, i64 8
  %i.lf = getelementptr inbounds nuw i8, ptr %.010655.us, i64 4
  %i.lg = getelementptr inbounds nuw i8, ptr %.010556.us, i64 4
  %i.lh = load i16, ptr %i.lf, align 2, !tbaa !526
  store i16 %i.lh, ptr %i.le, align 2, !tbaa !526
  %i.li = load i16, ptr %i.lg, align 2, !tbaa !526
  %i.lj = getelementptr inbounds nuw i8, ptr %.754.us, i64 10
  store i16 %i.li, ptr %i.lj, align 2, !tbaa !526
  %i.lk = getelementptr inbounds nuw i8, ptr %.754.us, i64 12
  %i.ll = getelementptr inbounds nuw i8, ptr %.010655.us, i64 6
  %i.lm = getelementptr inbounds nuw i8, ptr %.010556.us, i64 6
  %i.ln = load i16, ptr %i.ll, align 2, !tbaa !526
  store i16 %i.ln, ptr %i.lk, align 2, !tbaa !526
  %i.lo = load i16, ptr %i.lm, align 2, !tbaa !526
  %i.lp = getelementptr inbounds nuw i8, ptr %.754.us, i64 14
  store i16 %i.lo, ptr %i.lp, align 2, !tbaa !526
  %i.lq = getelementptr inbounds nuw i8, ptr %.754.us, i64 16 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.010655.us, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %.010556.us, i64 8
  %i.lt = add nuw nsw i32 %.010457.us, 4          ; 2 uses
  %exitcond103.not.3 = icmp eq i32 %i.lt, %4
  br i1 %exitcond103.not.3, label %._crit_edge.us, label %scalar.ph221, !llvm.loop !859

._crit_edge.us:                                   ; preds = %scalar.ph221.prol.loopexit, %scalar.ph221, %middle.block238
  %.lcssa125 = phi ptr [ %i.ke, %middle.block238 ], [ %.lcssa292.unr, %scalar.ph221.prol.loopexit ], [ %i.lq, %scalar.ph221 ] ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 2 ; 3 uses
  %i.lu = icmp slt i64 %indvars.iv.next105, %invariant.op
  br i1 %i.lu, label %.lr.ph.us63, label %.preheader.loopexit, !llvm.loop !860

.preheader.loopexit:                              ; preds = %._crit_edge.us
  %i.lv = trunc nsw i64 %indvars.iv.next105 to i32
  br label %.preheader

end_hunk_2
begin_hunk_3_@_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  store i16 %i.bz, ptr %i.ca, align 2, !tbaa !526
  %i.cb = getelementptr inbounds nuw i8, ptr %.315213.us, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.214514.us, i64 2
  %i.cd = add nuw nsw i32 %.014015.us, 1          ; 2 uses
  %exitcond104.not = icmp eq i32 %i.cd, %4
  br i1 %exitcond104.not, label %.loopexit6.us, label %.lr.ph16.us, !llvm.loop !871

.loopexit6.us:                                    ; preds = %.lr.ph16.us, %bb.b, %.preheader5.us
  %.3152.lcssa.us = phi ptr [ %.014918.us, %.preheader5.us ], [ %.014918.us, %bb.b ], [ %i.cb, %.lr.ph16.us ] ; 2 uses
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 8 ; 3 uses
  %i.ce = or disjoint i64 %indvars.iv.next106, 7
  %i.cf = icmp samesign ult i64 %i.ce, %i.s
  br i1 %i.cf, label %.lr.ph20.split.us, label %.preheader4.loopexit, !llvm.loop !872

.lr.ph20.split:                                   ; preds = %.lr.ph20
  br i1 %i.o, label %.lr.ph20.split.split.us, label %.lr.ph20.split.split.preheader

.lr.ph20.split.split.preheader:                   ; preds = %.lr.ph20.split
  %i.cg = and i32 %2, 2147483640
  br label %.preheader4

.lr.ph20.split.split.us:                          ; preds = %.lr.ph20.split
  br i1 %i.p, label %.lr.ph.us33.us.preheader, label %.loopexit7.us31.preheader

.loopexit7.us31.preheader:                        ; preds = %.lr.ph20.split.split.us
  %i.ch = and i32 %2, 2147483640
  br label %.preheader4

.lr.ph.us33.us.preheader:                         ; preds = %.lr.ph20.split.split.us
  %i.ci = sext i32 %1 to i64
  %i.cj = zext nneg i32 %2 to i64
  %i.ck = add nsw i32 %4, -1
  %xtraiter = and i32 %4, 3                       ; 3 uses
  %i.cl = icmp ult i32 %i.ck, 3
  %unroll_iter = and i32 %4, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod290 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph.us33.us

.lr.ph.us33.us:                                   ; preds = %.lr.ph.us33.us.preheader, %..loopexit7_crit_edge.us34.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.us33.us.preheader ], [ %indvars.iv.next, %..loopexit7_crit_edge.us34.us ] ; 2 uses
  %.014918.us25.us = phi ptr [ %.0.val, %.lr.ph.us33.us.preheader ], [ %.lcssa288, %..loopexit7_crit_edge.us34.us ] ; 2 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !18
  %i.cn = add nsw i64 %indvars.iv, %i.ci
  %i.co = mul i64 %i.k, %i.cn
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.co
  %i.cq = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.n ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx154 ; 2 uses
  br i1 %i.cl, label %.epil.preheader, label %.lr.ph.us33.us.new

.lr.ph.us33.us.new:                               ; preds = %.lr.ph.us33.us, %.lr.ph.us33.us.new
  %.014210.us27.us = phi ptr [ %i.dp, %.lr.ph.us33.us.new ], [ %i.cr, %.lr.ph.us33.us ] ; 5 uses
  %.01439.us28.us = phi ptr [ %i.do, %.lr.ph.us33.us.new ], [ %i.cq, %.lr.ph.us33.us ] ; 5 uses
  %.11508.us29.us = phi ptr [ %i.dn, %.lr.ph.us33.us.new ], [ %.014918.us25.us, %.lr.ph.us33.us ] ; 9 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph.us33.us.new ], [ 0, %.lr.ph.us33.us ]
  %i.cs = load i64, ptr %.01439.us28.us, align 1, !tbaa !113
  store i64 %i.cs, ptr %.11508.us29.us, align 1, !tbaa !113
  %i.ct = getelementptr inbounds nuw i8, ptr %.11508.us29.us, i64 8
  %i.cu = load i64, ptr %.014210.us27.us, align 1, !tbaa !113
  store i64 %i.cu, ptr %i.ct, align 1, !tbaa !113
  %i.cv = getelementptr inbounds nuw i8, ptr %.11508.us29.us, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %.01439.us28.us, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.014210.us27.us, i64 8
  %i.cy = load i64, ptr %i.cw, align 1, !tbaa !113
  store i64 %i.cy, ptr %i.cv, align 1, !tbaa !113
  %i.cz = getelementptr inbounds nuw i8, ptr %.11508.us29.us, i64 24
  %i.da = load i64, ptr %i.cx, align 1, !tbaa !113
  store i64 %i.da, ptr %i.cz, align 1, !tbaa !113
  %i.db = getelementptr inbounds nuw i8, ptr %.11508.us29.us, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %.01439.us28.us, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %.014210.us27.us, i64 16
  %i.de = load i64, ptr %i.dc, align 1, !tbaa !113
  store i64 %i.de, ptr %i.db, align 1, !tbaa !113
  %i.df = getelementptr inbounds nuw i8, ptr %.11508.us29.us, i64 40
  %i.dg = load i64, ptr %i.dd, align 1, !tbaa !113
  store i64 %i.dg, ptr %i.df, align 1, !tbaa !113
  %i.dh = getelementptr inbounds nuw i8, ptr %.11508.us29.us, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %.01439.us28.us, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %.014210.us27.us, i64 24
  %i.dk = load i64, ptr %i.di, align 1, !tbaa !113
  store i64 %i.dk, ptr %i.dh, align 1, !tbaa !113
  %i.dl = getelementptr inbounds nuw i8, ptr %.11508.us29.us, i64 56
  %i.dm = load i64, ptr %i.dj, align 1, !tbaa !113
  store i64 %i.dm, ptr %i.dl, align 1, !tbaa !113
  %i.dn = getelementptr inbounds nuw i8, ptr %.11508.us29.us, i64 64 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01439.us28.us, i64 32 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.014210.us27.us, i64 32 ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..loopexit7_crit_edge.us34.us.unr-lcssa, label %.lr.ph.us33.us.new, !llvm.loop !869

..loopexit7_crit_edge.us34.us.unr-lcssa:          ; preds = %.lr.ph.us33.us.new
  br i1 %lcmp.mod.not, label %..loopexit7_crit_edge.us34.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit7_crit_edge.us34.us.unr-lcssa, %.lr.ph.us33.us
  %.014210.us27.us.epil.init = phi ptr [ %i.cr, %.lr.ph.us33.us ], [ %i.dp, %..loopexit7_crit_edge.us34.us.unr-lcssa ]
  %.01439.us28.us.epil.init = phi ptr [ %i.cq, %.lr.ph.us33.us ], [ %i.do, %..loopexit7_crit_edge.us34.us.unr-lcssa ]
  %.11508.us29.us.epil.init = phi ptr [ %.014918.us25.us, %.lr.ph.us33.us ], [ %i.dn, %..loopexit7_crit_edge.us34.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod290)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.014210.us27.us.epil = phi ptr [ %.014210.us27.us.epil.init, %.epil.preheader ], [ %i.dv, %bb.c ] ; 2 uses
  %.01439.us28.us.epil = phi ptr [ %.01439.us28.us.epil.init, %.epil.preheader ], [ %i.du, %bb.c ] ; 2 uses
  %.11508.us29.us.epil = phi ptr [ %.11508.us29.us.epil.init, %.epil.preheader ], [ %i.dt, %bb.c ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.dq = load i64, ptr %.01439.us28.us.epil, align 1, !tbaa !113
  store i64 %i.dq, ptr %.11508.us29.us.epil, align 1, !tbaa !113
  %i.dr = getelementptr inbounds nuw i8, ptr %.11508.us29.us.epil, i64 8
  %i.ds = load i64, ptr %.014210.us27.us.epil, align 1, !tbaa !113
  store i64 %i.ds, ptr %i.dr, align 1, !tbaa !113
  %i.dt = getelementptr inbounds nuw i8, ptr %.11508.us29.us.epil, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.01439.us28.us.epil, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %.014210.us27.us.epil, i64 8
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..loopexit7_crit_edge.us34.us, label %bb.c, !llvm.loop !873

..loopexit7_crit_edge.us34.us:                    ; preds = %bb.c, %..loopexit7_crit_edge.us34.us.unr-lcssa
  %.lcssa288 = phi ptr [ %i.dn, %..loopexit7_crit_edge.us34.us.unr-lcssa ], [ %i.dt, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.dw = or disjoint i64 %indvars.iv.next, 7
  %i.dx = icmp samesign ult i64 %i.dw, %i.cj
  br i1 %i.dx, label %.lr.ph.us33.us, label %.preheader4.loopexit84, !llvm.loop !872

.preheader4.loopexit:                             ; preds = %.loopexit6.us
  %i.dy = trunc nuw nsw i64 %indvars.iv.next106 to i32
  br label %.preheader4

.preheader4.loopexit84:                           ; preds = %..loopexit7_crit_edge.us34.us
  %i.dz = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader4

.preheader4:                                      ; preds = %.lr.ph20.split.split.preheader, %.loopexit7.us31.preheader, %.preheader4.loopexit84, %.preheader4.loopexit, %bb.a
  %.0149.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.0.val, %.loopexit7.us31.preheader ], [ %.lcssa288, %.preheader4.loopexit84 ], [ %.3152.lcssa.us, %.preheader4.loopexit ], [ %.0.val, %.lr.ph20.split.split.preheader ] ; 2 uses
  %.0146.lcssa = phi i32 [ 0, %bb.a ], [ %i.ch, %.loopexit7.us31.preheader ], [ %i.dz, %.preheader4.loopexit84 ], [ %i.dy, %.preheader4.loopexit ], [ %i.cg, %.lr.ph20.split.split.preheader ] ; 3 uses
  %i.ea = or disjoint i32 %.0146.lcssa, 3
  %i.eb = icmp slt i32 %i.ea, %2
  br i1 %i.eb, label %.lr.ph56, label %.preheader1

.lr.ph56:                                         ; preds = %.preheader4
  %i.ec = mul i32 %i.b, %3
  %i.ed = sext i32 %i.ec to i64                   ; 4 uses
  %i.ee = icmp ne i32 %i.b, 4
  %i.ef = icmp slt i32 %4, 1
  %i.eg = icmp ne i32 %i.b, 1
  %.idx = shl i64 %i.k, 2
  %.idx153 = mul i64 %i.k, 6
  %i.eh = icmp slt i32 %4, 1
  %i.ei = sext i32 %.0146.lcssa to i64            ; 3 uses
  %i.ej = sext i32 %2 to i64
  %i.ek = sext i32 %1 to i64                      ; 3 uses
  %brmerge = or i1 %i.ee, %i.ef
  %invariant.op = add nsw i64 %i.ej, -3
  %i.el = add i32 %4, -1
  %i.em = zext i32 %i.el to i64                   ; 3 uses
  %i.en = shl nuw nsw i64 %i.em, 3
  %i.eo = add nsw i64 %i.ei, %i.ek                ; 2 uses
  %i.ep = shl nsw i64 %i.eo, 1                    ; 3 uses
  %i.eq = add nsw i64 %i.ep, 6
  %i.er = mul i64 %i.k, %i.eq
  %i.es = shl nsw i64 %i.ed, 1                    ; 3 uses
  %i.et = shl nuw nsw i64 %i.em, 1                ; 3 uses
  %i.eu = shl i64 %i.k, 3
  %i.ev = add nsw i64 %i.ep, 4
  %i.ew = mul i64 %i.k, %i.ev
  %i.ex = add nsw i64 %i.ep, 2
  %i.ey = mul i64 %i.k, %i.ex
  %i.ez = mul i64 %i.k, %i.eo
  %i.fa = add i64 %i.ez, %i.ed
  %i.fb = add i64 %i.fa, %i.em
  %i.fc = shl i64 %i.fb, 1
  %i.fd = add nsw i64 %i.ei, %i.ek
  %i.fe = mul i64 %i.k, %i.fd
  %i.ff = mul i64 %i.fe, -2
  %i.fg = shl nsw i64 %i.ed, 1
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = mul i64 %i.k, -8
  %i.fj = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check185 = icmp ult i32 %4, 6
  %n.vec187 = and i64 %i.fj, 2147483644           ; 4 uses
  %i.fk = trunc nuw nsw i64 %n.vec187 to i32
  %i.fl = shl nuw nsw i64 %n.vec187, 3            ; 2 uses
  %cmp.n196 = icmp eq i64 %n.vec187, %i.fj
  %brmerge146 = or i1 %i.eg, %i.eh
  %i.fm = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %4, 64
  %n.vec = and i64 %i.fm, 2147483640              ; 5 uses
  %i.fn = trunc nuw nsw i64 %n.vec to i32
  %i.fo = shl nuw nsw i64 %n.vec, 1               ; 4 uses
  %i.fp = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %i.fm
  br label %bb.d

.preheader1.loopexit:                             ; preds = %.loopexit
  %i.fq = trunc nsw i64 %indvars.iv.next111 to i32
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.loopexit, %.preheader4
  %.5.lcssa = phi ptr [ %.0149.lcssa, %.preheader4 ], [ %.9, %.preheader1.loopexit ] ; 3 uses
  %.1147.lcssa = phi i32 [ %.0146.lcssa, %.preheader4 ], [ %i.fq, %.preheader1.loopexit ] ; 5 uses
  %i.fr = or disjoint i32 %.1147.lcssa, 1
  %i.fs = icmp slt i32 %i.fr, %2
  br i1 %i.fs, label %.lr.ph67, label %.preheader

.lr.ph67:                                         ; preds = %.preheader1
  %i.ft = load ptr, ptr %0, align 8, !tbaa !18    ; 5 uses
  %i.fu = sext i32 %3 to i64                      ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ft, i64 %i.fu
  %i.fv = icmp sgt i32 %4, 0
  br i1 %i.fv, label %.lr.ph63.us.preheader, label %.lr.ph67.split.preheader

.lr.ph67.split.preheader:                         ; preds = %.lr.ph67
  %i.fw = add i32 %2, -2
  %i.fx = sub i32 %i.fw, %.1147.lcssa
  %i.fy = and i32 %i.fx, -2
  %i.fz = add i32 %.1147.lcssa, %i.fy
  %i.ga = add i32 %i.fz, 2
  br label %.preheader

.lr.ph63.us.preheader:                            ; preds = %.lr.ph67
  %i.gb = sext i32 %.1147.lcssa to i64            ; 4 uses
  %i.gc = sext i32 %1 to i64                      ; 2 uses
  %i.gd = sext i32 %2 to i64
  %invariant.op144 = add nsw i64 %i.gd, -1        ; 2 uses
  %i.ge = add nsw i32 %4, -1
  %i.gf = zext i32 %i.ge to i64                   ; 2 uses
  %i.gg = shl nuw nsw i64 %i.gf, 2
  %i.gh = add nsw i64 %i.gb, %i.gc                ; 2 uses
  %i.gi = shl nsw i64 %i.gh, 1                    ; 3 uses
  %i.gj = add nsw i64 %i.gi, 2
  %i.gk = mul i64 %i.k, %i.gj
  %i.gl = shl nsw i64 %i.fu, 1                    ; 3 uses
  %i.gm = getelementptr i8, ptr %i.ft, i64 %i.gk
  %scevgep202 = getelementptr i8, ptr %i.gm, i64 %i.gl
  %i.gn = add nsw i64 %i.gb, 2
  %smax203 = tail call i64 @llvm.smax.i64(i64 %invariant.op144, i64 %i.gn)
  %i.go = xor i64 %i.gb, -1
  %i.gp = add i64 %smax203, %i.go
  %i.gq = shl i64 %i.gp, 1
  %i.gr = and i64 %i.gq, -4                       ; 2 uses
  %i.gs = add i64 %i.gr, %i.gi
  %i.gt = add i64 %i.gs, 2
  %i.gu = mul i64 %i.k, %i.gt
  %i.gv = shl nuw nsw i64 %i.gf, 1                ; 2 uses
  %i.gw = getelementptr i8, ptr %i.ft, i64 %i.gu
  %i.gx = getelementptr i8, ptr %i.gw, i64 %i.gl
  %i.gy = getelementptr i8, ptr %i.gx, i64 %i.gv
  %scevgep204.a = getelementptr i8, ptr %i.gy, i64 2
  %i.gz = mul i64 %i.k, %i.gh
  %i.ha = add i64 %i.gz, %i.fu
  %i.hb = shl i64 %i.ha, 1
  %scevgep205.a = getelementptr i8, ptr %i.ft, i64 %i.hb
  %i.hc = add i64 %i.gr, %i.gi
  %i.hd = mul i64 %i.k, %i.hc
  %i.he = getelementptr i8, ptr %i.ft, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.he, i64 %i.gl
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.gv
  %scevgep206 = getelementptr i8, ptr %i.hg, i64 2
  %i.hh = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check216 = icmp ult i32 %4, 12
  %.mask = and i64 %i.k, 2305843009213693952
  %stride.check213 = icmp ne i64 %.mask, 0
  %n.vec218 = and i64 %i.hh, 2147483640           ; 5 uses
  %i.hi = trunc nuw nsw i64 %n.vec218 to i32
  %i.hj = shl nuw nsw i64 %n.vec218, 1            ; 2 uses
  %i.hk = shl nuw nsw i64 %n.vec218, 2
  %cmp.n233 = icmp eq i64 %n.vec218, %i.hh
  br label %.lr.ph63.us

.lr.ph63.us:                                      ; preds = %.lr.ph63.us.preheader, %._crit_edge.us
  %indvars.iv114 = phi i64 [ %i.gb, %.lr.ph63.us.preheader ], [ %indvars.iv.next115, %._crit_edge.us ] ; 2 uses
  %.1065.us = phi ptr [ %.5.lcssa, %.lr.ph63.us.preheader ], [ %.lcssa148, %._crit_edge.us ] ; 8 uses
  %i.hl = add nsw i64 %indvars.iv114, %i.gc
  %i.hm = mul i64 %i.k, %i.hl
  %gep.us = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.hm ; 5 uses
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %gep.us, i64 %i.k ; 4 uses
  br i1 %min.iters.check216, label %scalar.ph215.preheader, label %vector.memcheck200

vector.memcheck200:                               ; preds = %.lr.ph63.us
  %i.ho = getelementptr i8, ptr %.1065.us, i64 %i.gg
  %scevgep201 = getelementptr i8, ptr %i.ho, i64 4 ; 2 uses
  %bound0207 = icmp ult ptr %.1065.us, %scevgep204.a
  %bound1208 = icmp ult ptr %scevgep202, %scevgep201
  %found.conflict209 = and i1 %bound0207, %bound1208
  %bound0210 = icmp ult ptr %.1065.us, %scevgep206
  %bound1211 = icmp ult ptr %scevgep205.a, %scevgep201
  %found.conflict212 = and i1 %bound0210, %bound1211
  %i.hp = or i1 %found.conflict212, %stride.check213
  %conflict.rdx214 = or i1 %found.conflict209, %i.hp
  br i1 %conflict.rdx214, label %scalar.ph215.preheader, label %vector.ph217

vector.ph217:                                     ; preds = %vector.memcheck200
  %i.hq = getelementptr i8, ptr %i.hn, i64 %i.hj
  %i.hr = getelementptr i8, ptr %gep.us, i64 %i.hj
  %i.hs = getelementptr i8, ptr %.1065.us, i64 %i.hk ; 2 uses
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph217
  %index220 = phi i64 [ 0, %vector.ph217 ], [ %index.next231, %vector.body219 ] ; 3 uses
  %i.ht = shl i64 %index220, 1                    ; 2 uses
  %next.gep221.a = getelementptr i8, ptr %i.hn, i64 %i.ht ; 2 uses
  %next.gep222.a = getelementptr i8, ptr %gep.us, i64 %i.ht ; 2 uses
  %i.hu = shl i64 %index220, 2                    ; 2 uses
  %next.gep223.a = getelementptr i8, ptr %.1065.us, i64 %i.hu
  %i.hv = getelementptr i8, ptr %.1065.us, i64 %i.hu
  %next.gep224 = getelementptr i8, ptr %i.hv, i64 16
  %i.hw = getelementptr i8, ptr %next.gep222.a, i64 8
  %wide.load225.a = load <4 x i16>, ptr %next.gep222.a, align 2, !tbaa !526, !alias.scope !874
  %wide.load226.a = load <4 x i16>, ptr %i.hw, align 2, !tbaa !526, !alias.scope !874
  %i.hx = getelementptr i8, ptr %next.gep221.a, i64 8
  %wide.load227.a = load <4 x i16>, ptr %next.gep221.a, align 2, !tbaa !526, !alias.scope !877
  %wide.load228 = load <4 x i16>, ptr %i.hx, align 2, !tbaa !526, !alias.scope !877
  %interleaved.vec229.a = shufflevector <4 x i16> %wide.load225.a, <4 x i16> %wide.load227.a, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec229.a, ptr %next.gep223.a, align 2, !tbaa !526, !alias.scope !879, !noalias !881
  %interleaved.vec230 = shufflevector <4 x i16> %wide.load226.a, <4 x i16> %wide.load228, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec230, ptr %next.gep224, align 2, !tbaa !526, !alias.scope !879, !noalias !881
  %index.next231 = add nuw i64 %index220, 8       ; 2 uses
  %i.hy = icmp eq i64 %index.next231, %n.vec218
  br i1 %i.hy, label %middle.block232, label %vector.body219, !llvm.loop !882

middle.block232:                                  ; preds = %vector.body219
  br i1 %cmp.n233, label %._crit_edge.us, label %scalar.ph215.preheader

scalar.ph215.preheader:                           ; preds = %vector.memcheck200, %.lr.ph63.us, %middle.block232
  %.013162.us.ph = phi i32 [ 0, %vector.memcheck200 ], [ 0, %.lr.ph63.us ], [ %i.hi, %middle.block232 ] ; 4 uses
  %.013261.us.ph = phi ptr [ %i.hn, %vector.memcheck200 ], [ %i.hn, %.lr.ph63.us ], [ %i.hq, %middle.block232 ] ; 2 uses
  %.013360.us.ph = phi ptr [ %gep.us, %vector.memcheck200 ], [ %gep.us, %.lr.ph63.us ], [ %i.hr, %middle.block232 ] ; 2 uses
  %.1159.us.ph = phi ptr [ %.1065.us, %vector.memcheck200 ], [ %.1065.us, %.lr.ph63.us ], [ %i.hs, %middle.block232 ] ; 2 uses
  %i.hz = sub i32 %4, %.013162.us.ph
  %xtraiter304 = and i32 %i.hz, 3                 ; 2 uses
  %lcmp.mod305.not = icmp eq i32 %xtraiter304, 0
  br i1 %lcmp.mod305.not, label %scalar.ph215.prol.loopexit, label %scalar.ph215.prol

scalar.ph215.prol:                                ; preds = %scalar.ph215.preheader, %scalar.ph215.prol
  %.013162.us.prol = phi i32 [ %i.ig, %scalar.ph215.prol ], [ %.013162.us.ph, %scalar.ph215.preheader ]
  %.013261.us.prol = phi ptr [ %i.if, %scalar.ph215.prol ], [ %.013261.us.ph, %scalar.ph215.preheader ] ; 2 uses
  %.013360.us.prol = phi ptr [ %i.ie, %scalar.ph215.prol ], [ %.013360.us.ph, %scalar.ph215.preheader ] ; 2 uses
  %.1159.us.prol = phi ptr [ %i.id, %scalar.ph215.prol ], [ %.1159.us.ph, %scalar.ph215.preheader ] ; 3 uses
  %prol.iter306 = phi i32 [ %prol.iter306.next, %scalar.ph215.prol ], [ 0, %scalar.ph215.preheader ]
  %i.ia = load i16, ptr %.013360.us.prol, align 2, !tbaa !526
  store i16 %i.ia, ptr %.1159.us.prol, align 2, !tbaa !526
  %i.ib = load i16, ptr %.013261.us.prol, align 2, !tbaa !526
  %i.ic = getelementptr inbounds nuw i8, ptr %.1159.us.prol, i64 2
  store i16 %i.ib, ptr %i.ic, align 2, !tbaa !526
  %i.id = getelementptr inbounds nuw i8, ptr %.1159.us.prol, i64 4 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.013360.us.prol, i64 2 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.013261.us.prol, i64 2 ; 2 uses
  %i.ig = add nuw nsw i32 %.013162.us.prol, 1     ; 2 uses
  %prol.iter306.next = add i32 %prol.iter306, 1   ; 2 uses
  %prol.iter306.cmp.not = icmp eq i32 %prol.iter306.next, %xtraiter304
  br i1 %prol.iter306.cmp.not, label %scalar.ph215.prol.loopexit, label %scalar.ph215.prol, !llvm.loop !883

scalar.ph215.prol.loopexit:                       ; preds = %scalar.ph215.prol, %scalar.ph215.preheader
  %.lcssa279.unr = phi ptr [ poison, %scalar.ph215.preheader ], [ %i.id, %scalar.ph215.prol ]
  %.013162.us.unr = phi i32 [ %.013162.us.ph, %scalar.ph215.preheader ], [ %i.ig, %scalar.ph215.prol ]
  %.013261.us.unr = phi ptr [ %.013261.us.ph, %scalar.ph215.preheader ], [ %i.if, %scalar.ph215.prol ]
  %.013360.us.unr = phi ptr [ %.013360.us.ph, %scalar.ph215.preheader ], [ %i.ie, %scalar.ph215.prol ]
  %.1159.us.unr = phi ptr [ %.1159.us.ph, %scalar.ph215.preheader ], [ %i.id, %scalar.ph215.prol ]
  %i.ih = sub i32 %.013162.us.ph, %4
  %i.ii = icmp ugt i32 %i.ih, -4
  br i1 %i.ii, label %._crit_edge.us, label %scalar.ph215

scalar.ph215:                                     ; preds = %scalar.ph215.prol.loopexit, %scalar.ph215
  %.013162.us = phi i32 [ %i.jh, %scalar.ph215 ], [ %.013162.us.unr, %scalar.ph215.prol.loopexit ]
  %.013261.us = phi ptr [ %i.jg, %scalar.ph215 ], [ %.013261.us.unr, %scalar.ph215.prol.loopexit ] ; 5 uses
  %.013360.us = phi ptr [ %i.jf, %scalar.ph215 ], [ %.013360.us.unr, %scalar.ph215.prol.loopexit ] ; 5 uses
  %.1159.us = phi ptr [ %i.je, %scalar.ph215 ], [ %.1159.us.unr, %scalar.ph215.prol.loopexit ] ; 9 uses
  %i.ij = load i16, ptr %.013360.us, align 2, !tbaa !526
  store i16 %i.ij, ptr %.1159.us, align 2, !tbaa !526
  %i.ik = load i16, ptr %.013261.us, align 2, !tbaa !526
  %i.il = getelementptr inbounds nuw i8, ptr %.1159.us, i64 2
  store i16 %i.ik, ptr %i.il, align 2, !tbaa !526
  %i.im = getelementptr inbounds nuw i8, ptr %.1159.us, i64 4
  %i.in = getelementptr inbounds nuw i8, ptr %.013360.us, i64 2
  %i.io = getelementptr inbounds nuw i8, ptr %.013261.us, i64 2
  %i.ip = load i16, ptr %i.in, align 2, !tbaa !526
  store i16 %i.ip, ptr %i.im, align 2, !tbaa !526
  %i.iq = load i16, ptr %i.io, align 2, !tbaa !526
  %i.ir = getelementptr inbounds nuw i8, ptr %.1159.us, i64 6
  store i16 %i.iq, ptr %i.ir, align 2, !tbaa !526
  %i.is = getelementptr inbounds nuw i8, ptr %.1159.us, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %.013360.us, i64 4
  %i.iu = getelementptr inbounds nuw i8, ptr %.013261.us, i64 4
  %i.iv = load i16, ptr %i.it, align 2, !tbaa !526
  store i16 %i.iv, ptr %i.is, align 2, !tbaa !526
  %i.iw = load i16, ptr %i.iu, align 2, !tbaa !526
  %i.ix = getelementptr inbounds nuw i8, ptr %.1159.us, i64 10
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !526
  %i.iy = getelementptr inbounds nuw i8, ptr %.1159.us, i64 12
  %i.iz = getelementptr inbounds nuw i8, ptr %.013360.us, i64 6
  %i.ja = getelementptr inbounds nuw i8, ptr %.013261.us, i64 6
  %i.jb = load i16, ptr %i.iz, align 2, !tbaa !526
  store i16 %i.jb, ptr %i.iy, align 2, !tbaa !526
  %i.jc = load i16, ptr %i.ja, align 2, !tbaa !526
  %i.jd = getelementptr inbounds nuw i8, ptr %.1159.us, i64 14
  store i16 %i.jc, ptr %i.jd, align 2, !tbaa !526
  %i.je = getelementptr inbounds nuw i8, ptr %.1159.us, i64 16 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.013360.us, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %.013261.us, i64 8
  %i.jh = add nuw nsw i32 %.013162.us, 4          ; 2 uses
  %exitcond113.not.3 = icmp eq i32 %i.jh, %4
  br i1 %exitcond113.not.3, label %._crit_edge.us, label %scalar.ph215, !llvm.loop !884

._crit_edge.us:                                   ; preds = %scalar.ph215.prol.loopexit, %scalar.ph215, %middle.block232
  %.lcssa148 = phi ptr [ %i.hs, %middle.block232 ], [ %.lcssa279.unr, %scalar.ph215.prol.loopexit ], [ %i.je, %scalar.ph215 ] ; 2 uses
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 2 ; 3 uses
  %i.ji = icmp slt i64 %indvars.iv.next115, %invariant.op144
  br i1 %i.ji, label %.lr.ph63.us, label %.preheader.loopexit, !llvm.loop !885

bb.d:                                             ; preds = %.lr.ph56, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph56 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %indvars.iv110 = phi i64 [ %i.ei, %.lr.ph56 ], [ %indvars.iv.next111, %.loopexit ] ; 2 uses
  %.554 = phi ptr [ %.0149.lcssa, %.lr.ph56 ], [ %.9, %.loopexit ] ; 15 uses
end_hunk_3
begin_hunk_4_@_ZN4ncnnL26transpose_pack_B_tile_bf16ERKNS_3MatERS0_iiii:bb.a

.lr.ph84.epil.preheader:                          ; preds = %.loopexit.loopexit194.unr-lcssa, %.lr.ph84.preheader
  %.018182.epil.init = phi ptr [ %i.lq, %.lr.ph84.preheader ], [ %i.mc, %.loopexit.loopexit194.unr-lcssa ]
  %.1681.epil.init = phi ptr [ %.1593, %.lr.ph84.preheader ], [ %i.mb, %.loopexit.loopexit194.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod233)
  br label %.lr.ph84.epil

.lr.ph84.epil:                                    ; preds = %.lr.ph84.epil, %.lr.ph84.epil.preheader
  %.018182.epil = phi ptr [ %i.ng, %.lr.ph84.epil ], [ %.018182.epil.init, %.lr.ph84.epil.preheader ] ; 2 uses
  %.1681.epil = phi ptr [ %i.nf, %.lr.ph84.epil ], [ %.1681.epil.init, %.lr.ph84.epil.preheader ] ; 2 uses
  %epil.iter230 = phi i32 [ %epil.iter230.next, %.lr.ph84.epil ], [ 0, %.lr.ph84.epil.preheader ]
  %i.ne = load i64, ptr %.018182.epil, align 1, !tbaa !113
  store i64 %i.ne, ptr %.1681.epil, align 1, !tbaa !113
  %i.nf = getelementptr inbounds nuw i8, ptr %.1681.epil, i64 8 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.018182.epil, i64 %.idx
  %epil.iter230.next = add i32 %epil.iter230, 1   ; 2 uses
  %epil.iter230.cmp.not = icmp eq i32 %epil.iter230.next, %xtraiter229
  br i1 %epil.iter230.cmp.not, label %.loopexit, label %.lr.ph84.epil, !llvm.loop !925

.loopexit:                                        ; preds = %.loopexit.loopexit194.unr-lcssa, %.lr.ph84.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph90.epil, %.loopexit2
  %.19 = phi ptr [ %.1593, %.loopexit2 ], [ %i.nc, %.lr.ph90.epil ], [ %i.mz, %.loopexit.loopexit.unr-lcssa ], [ %i.mb, %.loopexit.loopexit194.unr-lcssa ], [ %i.nf, %.lr.ph84.epil ]
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count
  br i1 %exitcond152.not, label %._crit_edge, label %bb.e, !llvm.loop !926

._crit_edge:                                      ; preds = %.loopexit, %.preheader3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20gemm_AT_BT_x86_bf16sERKNS_3MatES2_S2_RS0_iiiiiffiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %18, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %19) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not162 = icmp sgt i32 %i.k, %i.j
  br i1 %.not162, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.054163 = phi i32 [ %i.k, %.lr.ph ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.t = load i32, ptr %3, align 4, !tbaa !45     ; 2 uses
  %i.u = sdiv i32 %.054163, %i.t
  %i.v = srem i32 %.054163, %i.t
  %i.w = load i32, ptr %4, align 4, !tbaa !45     ; 2 uses
  %i.x = mul nsw i32 %i.w, %i.u                   ; 3 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !45     ; 2 uses
  %i.z = mul nsw i32 %i.y, %i.v                   ; 3 uses
  %i.aa = load i32, ptr %6, align 4, !tbaa !45
  %i.ab = sub nsw i32 %i.aa, %i.x
  %.sroa.speculated158 = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab) ; 2 uses
  %i.ac = load i32, ptr %7, align 4, !tbaa !45
  %i.ad = sub nsw i32 %i.ac, %i.z
  %.sroa.speculated154 = call i32 @llvm.smin.i32(i32 %i.y, i32 %i.ad) ; 2 uses
  %i.ae = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc84 unwind label %bb.e

.noexc84:                                         ; preds = %bb.c
  %i.af = load ptr, ptr %8, align 8, !tbaa !18, !noalias !927
  %i.ag = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !927
  %i.ah = sext i32 %i.ae to i64
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !59, !noalias !927
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %9, align 4, !tbaa !45    ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %_ZN4ncnn3MatD2Ev.exit58.preheader, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit58.preheader:                ; preds = %.noexc84
  %.pre = load i32, ptr %10, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit58

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit58, %.noexc84
  %i.ao = load i32, ptr %15, align 4, !tbaa !45
  %i.ap = load float, ptr %16, align 4, !tbaa !68
  %i.aq = load float, ptr %17, align 4, !tbaa !68
  %i.ar = load i32, ptr %18, align 4, !tbaa !45
  %i.as = load i32, ptr %19, align 4, !tbaa !45
  call fastcc void @_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii(ptr %i.al, ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.ao, i32 noundef %i.x, i32 noundef %.sroa.speculated158, i32 noundef %i.z, i32 noundef %.sroa.speculated154, float noundef nofpclass(nan inf) %i.ap, float noundef nofpclass(nan inf) %i.aq, i32 noundef %i.ar, i32 noundef %i.as)
  %i.at = add nsw i32 %.054163, 1
  %i.au = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.054163, %i.au
  br i1 %.not.not, label %bb.c, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit58:                          ; preds = %_ZN4ncnn3MatD2Ev.exit58.preheader, %_ZN4ncnn3MatD2Ev.exit58
  %i.av = phi i32 [ %i.cc, %_ZN4ncnn3MatD2Ev.exit58 ], [ %.pre, %_ZN4ncnn3MatD2Ev.exit58.preheader ] ; 2 uses
  %i.aw = phi i32 [ %i.ce, %_ZN4ncnn3MatD2Ev.exit58 ], [ %i.am, %_ZN4ncnn3MatD2Ev.exit58.preheader ]
  %.0161 = phi i32 [ %i.cd, %_ZN4ncnn3MatD2Ev.exit58 ], [ 0, %_ZN4ncnn3MatD2Ev.exit58.preheader ] ; 4 uses
  %i.ax = sub nsw i32 %i.aw, %.0161
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.av, i32 %i.ax)
  %i.ay = load i32, ptr %4, align 4, !tbaa !45
  %i.az = sdiv i32 %i.x, %i.ay
  %i.ba = load i32, ptr %i.n, align 4, !tbaa !86, !noalias !930
  %i.bb = load ptr, ptr %11, align 8, !tbaa !18, !noalias !930
  %i.bc = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !930
  %i.bd = sext i32 %i.az to i64
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = load i64, ptr %i.p, align 8, !tbaa !59, !noalias !930 ; 2 uses
  %i.bg = mul i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg
  %i.bi = sext i32 %i.ba to i64
  %i.bj = sdiv i32 %.0161, %i.av
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = mul i64 %i.bf, %i.bi
  %i.bm = mul i64 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bm
  %i.bo = load i32, ptr %5, align 4, !tbaa !45
  %i.bp = sdiv i32 %i.z, %i.bo
  %i.bq = load i32, ptr %i.q, align 4, !tbaa !86, !noalias !933
  %i.br = load ptr, ptr %12, align 8, !tbaa !18, !noalias !933
  %i.bs = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !933
  %i.bt = sext i32 %i.bp to i64
  %i.bu = mul i64 %i.bs, %i.bt
  %i.bv = load i64, ptr %i.s, align 8, !tbaa !59, !noalias !933 ; 2 uses
  %i.bw = mul i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bw
  %i.by = sext i32 %i.bq to i64
  %i.bz = mul i64 %i.bv, %i.by
  %i.ca = mul i64 %i.bz, %i.bk
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ca
  call fastcc void @_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii(ptr %i.bn, ptr %i.cb, ptr %i.al, i32 noundef %.sroa.speculated158, i32 noundef %.sroa.speculated154, i32 noundef %.0161, i32 noundef %.sroa.speculated)
  %i.cc = load i32, ptr %10, align 4, !tbaa !45   ; 2 uses
  %i.cd = add nsw i32 %i.cc, %.0161               ; 2 uses
  %i.ce = load i32, ptr %9, align 4, !tbaa !45    ; 2 uses
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %_ZN4ncnn3MatD2Ev.exit58, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !936

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #23
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii(ptr nofree readonly %.0.val, ptr nofree readonly %.0.val1, ptr nofree %.0.val3, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %0, 3
  br i1 %i.a, label %.preheader254.lr.ph, label %.preheader250

.preheader254.lr.ph:                              ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 7
  %.not515 = icmp eq i32 %2, 0                    ; 6 uses
  %i.c = icmp sgt i32 %3, 0                       ; 4 uses
  %i.d = shl nsw i32 %3, 2
  %i.e = sext i32 %i.d to i64
  %i.f = add i32 %3, -1
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = shl nuw nsw i64 %i.g, 4
  %i.i = and i32 %1, -8
  %i.j = shl nuw nsw i64 %i.g, 3
  %4 = add i32 %1, -2
  %i.k = shl nuw nsw i64 %i.g, 2
  %i.l = add nsw i32 %1, -1                       ; 2 uses
  %i.m = shl nuw nsw i64 %i.g, 1
  br label %.preheader254

.preheader254:                                    ; preds = %.preheader254.lr.ph, %._crit_edge346
  %.0401356 = phi ptr [ %.0.val, %.preheader254.lr.ph ], [ %i.hc, %._crit_edge346 ] ; 5 uses
  %.0403355 = phi ptr [ %.0.val3, %.preheader254.lr.ph ], [ %.4.lcssa, %._crit_edge346 ] ; 2 uses
  %.0406354 = phi i32 [ 0, %.preheader254.lr.ph ], [ %i.hd, %._crit_edge346 ]
  br i1 %i.b, label %.lr.ph277, label %.preheader253

.preheader250.loopexit:                           ; preds = %._crit_edge346
  %i.n = and i32 %0, 2147483644
  br label %.preheader250

.preheader250:                                    ; preds = %.preheader250.loopexit, %bb.a
  %.0406.lcssa = phi i32 [ 0, %bb.a ], [ %i.n, %.preheader250.loopexit ] ; 3 uses
  %.0403.lcssa = phi ptr [ %.0.val3, %bb.a ], [ %.4.lcssa, %.preheader250.loopexit ] ; 2 uses
  %.0401.lcssa = phi ptr [ %.0.val, %bb.a ], [ %i.hc, %.preheader250.loopexit ] ; 2 uses
  %i.o = or disjoint i32 %.0406.lcssa, 1
  %i.p = icmp slt i32 %i.o, %0
  br i1 %i.p, label %.preheader249.lr.ph, label %.preheader245

.preheader249.lr.ph:                              ; preds = %.preheader250
  %i.q = icmp sgt i32 %1, 7
  %.not511 = icmp eq i32 %2, 0                    ; 5 uses
  %i.r = icmp sgt i32 %3, 0                       ; 4 uses
  %i.s = shl nsw i32 %3, 1
  %i.t = sext i32 %i.s to i64
  %i.u = add i32 %3, -1
  %i.v = zext i32 %i.u to i64                     ; 4 uses
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = and i32 %1, -8
  %i.y = add i32 %1, -4
  %i.z = shl nuw nsw i64 %i.v, 3
  %i.aa = shl nuw nsw i64 %i.v, 2
  %i.ab = shl nuw nsw i64 %i.v, 1
  %i.ac = zext nneg i32 %3 to i64                 ; 2 uses
  %min.iters.check108 = icmp ult i32 %3, 4
  %n.vec110 = and i64 %i.ac, 2147483644           ; 4 uses
  %i.ad = shl nuw nsw i64 %n.vec110, 2            ; 2 uses
  %i.ae = trunc nuw nsw i64 %n.vec110 to i32
  %cmp.n127 = icmp eq i64 %n.vec110, %i.ac
  %i.af = zext nneg i32 %3 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %3, 8
  %n.vec = and i64 %i.af, 2147483640              ; 5 uses
  %i.ag = trunc nuw nsw i64 %n.vec to i32
  %i.ah = shl nuw nsw i64 %n.vec, 2
  %i.ai = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.af
  br label %.preheader249

.preheader253:                                    ; preds = %._crit_edge, %.preheader254
  %.0437.lcssa = phi i32 [ 0, %.preheader254 ], [ %i.i, %._crit_edge ] ; 3 uses
  %.0409.lcssa = phi ptr [ %.0.val1, %.preheader254 ], [ %.1410.lcssa, %._crit_edge ] ; 2 uses
  %.1404.lcssa = phi ptr [ %.0403355, %.preheader254 ], [ %i.cu, %._crit_edge ] ; 2 uses
  %i.aj = or disjoint i32 %.0437.lcssa, 3
  %i.ak = icmp slt i32 %i.aj, %1
  br i1 %i.ak, label %.lr.ph299, label %.preheader252

.lr.ph277:                                        ; preds = %.preheader254, %._crit_edge
  %.1404276 = phi ptr [ %i.cu, %._crit_edge ], [ %.0403355, %.preheader254 ] ; 17 uses
  %.0409275 = phi ptr [ %.1410.lcssa, %._crit_edge ], [ %.0.val1, %.preheader254 ] ; 3 uses
  %.0437274 = phi i32 [ %i.cv, %._crit_edge ], [ 0, %.preheader254 ]
  br i1 %.not515, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph277
  %i.al = load <4 x float>, ptr %.1404276, align 16, !tbaa !113
  %i.am = getelementptr inbounds nuw i8, ptr %.1404276, i64 16
  %i.an = load <4 x float>, ptr %i.am, align 16, !tbaa !113
  %i.ao = getelementptr inbounds nuw i8, ptr %.1404276, i64 32
  %i.ap = load <4 x float>, ptr %i.ao, align 16, !tbaa !113
  %i.aq = getelementptr inbounds nuw i8, ptr %.1404276, i64 48
  %i.ar = load <4 x float>, ptr %i.aq, align 16, !tbaa !113
  %i.as = getelementptr inbounds nuw i8, ptr %.1404276, i64 64
  %i.at = load <4 x float>, ptr %i.as, align 16, !tbaa !113
  %i.au = getelementptr inbounds nuw i8, ptr %.1404276, i64 80
  %i.av = load <4 x float>, ptr %i.au, align 16, !tbaa !113
  %i.aw = getelementptr inbounds nuw i8, ptr %.1404276, i64 96
  %i.ax = load <4 x float>, ptr %i.aw, align 16, !tbaa !113
  %i.ay = getelementptr inbounds nuw i8, ptr %.1404276, i64 112
  %i.az = load <4 x float>, ptr %i.ay, align 16, !tbaa !113
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph277
  %.0196 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph277 ], [ %i.az, %bb.b ] ; 2 uses
  %.0194 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph277 ], [ %i.ax, %bb.b ] ; 2 uses
  %.0192 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph277 ], [ %i.av, %bb.b ] ; 2 uses
  %.0190 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph277 ], [ %i.at, %bb.b ] ; 2 uses
  %.0188 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph277 ], [ %i.ar, %bb.b ] ; 2 uses
  %.0186 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph277 ], [ %i.ap, %bb.b ] ; 2 uses
  %.0184 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph277 ], [ %i.an, %bb.b ] ; 2 uses
  %.0182 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph277 ], [ %i.al, %bb.b ] ; 2 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.1410265 = phi ptr [ %i.ck, %.lr.ph ], [ %.0409275, %bb.c ] ; 3 uses
  %.0441264 = phi ptr [ %i.cj, %.lr.ph ], [ %.0401356, %bb.c ] ; 2 uses
  %.0442263 = phi i32 [ %i.cl, %.lr.ph ], [ 0, %bb.c ]
  %.1183262 = phi <4 x float> [ %i.bu, %.lr.ph ], [ %.0182, %bb.c ]
  %.1185261 = phi <4 x float> [ %i.bw, %.lr.ph ], [ %.0184, %bb.c ]
  %.1187260 = phi <4 x float> [ %i.by, %.lr.ph ], [ %.0186, %bb.c ]
  %.1189259 = phi <4 x float> [ %i.ca, %.lr.ph ], [ %.0188, %bb.c ]
  %.1191258 = phi <4 x float> [ %i.cc, %.lr.ph ], [ %.0190, %bb.c ]
  %.1193257 = phi <4 x float> [ %i.ce, %.lr.ph ], [ %.0192, %bb.c ]
  %.1195256 = phi <4 x float> [ %i.cg, %.lr.ph ], [ %.0194, %bb.c ]
  %.1197255 = phi <4 x float> [ %i.ci, %.lr.ph ], [ %.0196, %bb.c ]
  %i.ba = load i64, ptr %.0441264, align 1, !tbaa !113
  %i.bb = insertelement <2 x i64> poison, i64 %i.ba, i64 0
  %i.bc = bitcast <2 x i64> %i.bb to <8 x i16>
  %i.bd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.be = bitcast <8 x i16> %i.bd to <4 x float>  ; 5 uses
  %i.bf = load i64, ptr %.1410265, align 1, !tbaa !113
  %i.bg = insertelement <2 x i64> poison, i64 %i.bf, i64 0
  %i.bh = bitcast <2 x i64> %i.bg to <8 x i16>
  %i.bi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bj = bitcast <8 x i16> %i.bi to <4 x float>  ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.1410265, i64 8
  %i.bl = load i64, ptr %i.bk, align 1, !tbaa !113
  %i.bm = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %i.bn = bitcast <2 x i64> %i.bm to <8 x i16>
  %i.bo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bp = bitcast <8 x i16> %i.bo to <4 x float>  ; 3 uses
  %i.bq = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 4 uses
  %i.br = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.bs = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.bt = fmul fast <4 x float> %i.bj, %i.be
  %i.bu = fadd fast <4 x float> %i.bt, %.1183262  ; 2 uses
  %i.bv = fmul fast <4 x float> %i.bp, %i.be
  %i.bw = fadd fast <4 x float> %i.bv, %.1185261  ; 2 uses
  %i.bx = fmul fast <4 x float> %i.bq, %i.bj
  %i.by = fadd fast <4 x float> %i.bx, %.1187260  ; 2 uses
  %i.bz = fmul fast <4 x float> %i.bq, %i.bp
  %i.ca = fadd fast <4 x float> %i.bz, %.1189259  ; 2 uses
  %i.cb = fmul fast <4 x float> %i.br, %i.be
  %i.cc = fadd fast <4 x float> %i.cb, %.1191258  ; 2 uses
  %i.cd = fmul fast <4 x float> %i.bs, %i.be
  %i.ce = fadd fast <4 x float> %i.cd, %.1193257  ; 2 uses
  %i.cf = fmul fast <4 x float> %i.br, %i.bq
  %i.cg = fadd fast <4 x float> %i.cf, %.1195256  ; 2 uses
  %i.ch = fmul fast <4 x float> %i.bs, %i.bq
  %i.ci = fadd fast <4 x float> %i.ch, %.1197255  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0441264, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.1410265, i64 16
  %i.cl = add nuw nsw i32 %.0442263, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cl, %3
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !937

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cm = getelementptr i8, ptr %.0409275, i64 %i.h
  %scevgep = getelementptr i8, ptr %i.cm, i64 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.1197.lcssa = phi <4 x float> [ %.0196, %bb.c ], [ %i.ci, %._crit_edge.loopexit ]
  %.1195.lcssa = phi <4 x float> [ %.0194, %bb.c ], [ %i.cg, %._crit_edge.loopexit ]
  %.1193.lcssa = phi <4 x float> [ %.0192, %bb.c ], [ %i.ce, %._crit_edge.loopexit ]
  %.1191.lcssa = phi <4 x float> [ %.0190, %bb.c ], [ %i.cc, %._crit_edge.loopexit ]
  %.1189.lcssa = phi <4 x float> [ %.0188, %bb.c ], [ %i.ca, %._crit_edge.loopexit ]
  %.1187.lcssa = phi <4 x float> [ %.0186, %bb.c ], [ %i.by, %._crit_edge.loopexit ]
  %.1185.lcssa = phi <4 x float> [ %.0184, %bb.c ], [ %i.bw, %._crit_edge.loopexit ]
  %.1183.lcssa = phi <4 x float> [ %.0182, %bb.c ], [ %i.bu, %._crit_edge.loopexit ]
  %.1410.lcssa = phi ptr [ %.0409275, %bb.c ], [ %scevgep, %._crit_edge.loopexit ] ; 2 uses
  store <4 x float> %.1183.lcssa, ptr %.1404276, align 16, !tbaa !113
  %i.cn = getelementptr inbounds nuw i8, ptr %.1404276, i64 16
  store <4 x float> %.1185.lcssa, ptr %i.cn, align 16, !tbaa !113
  %i.co = getelementptr inbounds nuw i8, ptr %.1404276, i64 32
  store <4 x float> %.1187.lcssa, ptr %i.co, align 16, !tbaa !113
  %i.cp = getelementptr inbounds nuw i8, ptr %.1404276, i64 48
  store <4 x float> %.1189.lcssa, ptr %i.cp, align 16, !tbaa !113
  %i.cq = getelementptr inbounds nuw i8, ptr %.1404276, i64 64
  store <4 x float> %.1191.lcssa, ptr %i.cq, align 16, !tbaa !113
  %i.cr = getelementptr inbounds nuw i8, ptr %.1404276, i64 80
  store <4 x float> %.1193.lcssa, ptr %i.cr, align 16, !tbaa !113
  %i.cs = getelementptr inbounds nuw i8, ptr %.1404276, i64 96
  store <4 x float> %.1195.lcssa, ptr %i.cs, align 16, !tbaa !113
  %i.ct = getelementptr inbounds nuw i8, ptr %.1404276, i64 112
  store <4 x float> %.1197.lcssa, ptr %i.ct, align 16, !tbaa !113
  %i.cu = getelementptr inbounds nuw i8, ptr %.1404276, i64 128 ; 2 uses
  %i.cv = add nuw nsw i32 %.0437274, 8            ; 2 uses
  %i.cw = or disjoint i32 %i.cv, 7
  %i.cx = icmp slt i32 %i.cw, %1
  br i1 %i.cx, label %.lr.ph277, label %.preheader253, !llvm.loop !938

.preheader252:                                    ; preds = %._crit_edge290, %.preheader253
  %.1438.lcssa = phi i32 [ %.0437.lcssa, %.preheader253 ], [ %i.ft, %._crit_edge290 ] ; 6 uses
  %.2411.lcssa = phi ptr [ %.0409.lcssa, %.preheader253 ], [ %.3412.lcssa, %._crit_edge290 ] ; 4 uses
  %.2405.lcssa = phi ptr [ %.1404.lcssa, %.preheader253 ], [ %i.fs, %._crit_edge290 ] ; 5 uses
  %i.cy = or disjoint i32 %.1438.lcssa, 1
  %i.cz = icmp slt i32 %i.cy, %1
  br i1 %i.cz, label %.lr.ph317, label %.preheader251

.lr.ph317:                                        ; preds = %.preheader252
  br i1 %i.c, label %.lr.ph317.split.us, label %.lr.ph317.split

.lr.ph317.split.us:                               ; preds = %.lr.ph317, %._crit_edge310.us
  %.3316.us = phi ptr [ %i.dy, %._crit_edge310.us ], [ %.2405.lcssa, %.lr.ph317 ] ; 5 uses
  %.4413315.us = phi ptr [ %scevgep740, %._crit_edge310.us ], [ %.2411.lcssa, %.lr.ph317 ] ; 2 uses
  %.2439314.us = phi i32 [ %i.dz, %._crit_edge310.us ], [ %.1438.lcssa, %.lr.ph317 ]
  br i1 %.not515, label %.lr.ph309.us.preheader, label %bb.d

bb.d:                                             ; preds = %.lr.ph317.split.us
  %i.da = load <4 x float>, ptr %.3316.us, align 16, !tbaa !113
  %i.db = getelementptr inbounds nuw i8, ptr %.3316.us, i64 16
  %i.dc = load <4 x float>, ptr %i.db, align 16, !tbaa !113
  br label %.lr.ph309.us.preheader

.lr.ph309.us.preheader:                           ; preds = %bb.d, %.lr.ph317.split.us
  %.1207304.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph317.split.us ], [ %i.da, %bb.d ]
  %.1209303.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph317.split.us ], [ %i.dc, %bb.d ]
  br label %.lr.ph309.us

.lr.ph309.us:                                     ; preds = %.lr.ph309.us.preheader, %.lr.ph309.us
  %.5414307.us = phi ptr [ %i.du, %.lr.ph309.us ], [ %.4413315.us, %.lr.ph309.us.preheader ] ; 2 uses
  %.0445306.us = phi ptr [ %i.dt, %.lr.ph309.us ], [ %.0401356, %.lr.ph309.us.preheader ] ; 2 uses
  %.0446305.us = phi i32 [ %i.dv, %.lr.ph309.us ], [ 0, %.lr.ph309.us.preheader ]
  %.1207304.us = phi <4 x float> [ %i.dq, %.lr.ph309.us ], [ %.1207304.us.ph, %.lr.ph309.us.preheader ]
  %.1209303.us = phi <4 x float> [ %i.ds, %.lr.ph309.us ], [ %.1209303.us.ph, %.lr.ph309.us.preheader ]
  %i.dd = load i64, ptr %.0445306.us, align 1, !tbaa !113
  %i.de = insertelement <2 x i64> poison, i64 %i.dd, i64 0
  %i.df = bitcast <2 x i64> %i.de to <8 x i16>
  %i.dg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.df, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dh = bitcast <8 x i16> %i.dg to <4 x float>  ; 2 uses
  %i.di = load float, ptr %.5414307.us, align 1, !tbaa !113
  %i.dj = insertelement <4 x float> poison, float %i.di, i64 0
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.dl = bitcast <4 x float> %i.dk to <8 x i16>
  %i.dm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dn = bitcast <8 x i16> %i.dm to <4 x float>  ; 2 uses
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.dp = fmul fast <4 x float> %i.dn, %i.dh
  %i.dq = fadd fast <4 x float> %i.dp, %.1207304.us ; 2 uses
  %i.dr = fmul fast <4 x float> %i.do, %i.dh
  %i.ds = fadd fast <4 x float> %i.dr, %.1209303.us ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0445306.us, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %.5414307.us, i64 4
  %i.dv = add nuw nsw i32 %.0446305.us, 1         ; 2 uses
  %exitcond741.not = icmp eq i32 %i.dv, %3
  br i1 %exitcond741.not, label %._crit_edge310.us, label %.lr.ph309.us, !llvm.loop !939

._crit_edge310.us:                                ; preds = %.lr.ph309.us
  %i.dw = getelementptr i8, ptr %.4413315.us, i64 %i.k
  %scevgep740 = getelementptr i8, ptr %i.dw, i64 4 ; 2 uses
  store <4 x float> %i.dq, ptr %.3316.us, align 16, !tbaa !113
  %i.dx = getelementptr inbounds nuw i8, ptr %.3316.us, i64 16
  store <4 x float> %i.ds, ptr %i.dx, align 16, !tbaa !113
  %i.dy = getelementptr inbounds nuw i8, ptr %.3316.us, i64 32 ; 2 uses
  %i.dz = add nuw nsw i32 %.2439314.us, 2         ; 3 uses
  %i.ea = or disjoint i32 %i.dz, 1
  %i.eb = icmp slt i32 %i.ea, %1
  br i1 %i.eb, label %.lr.ph317.split.us, label %.preheader251, !llvm.loop !940

.lr.ph317.split:                                  ; preds = %.lr.ph317
  br i1 %.not515, label %.lr.ph317.split.split.us.preheader, label %.lr.ph317.split.split

.lr.ph317.split.split.us.preheader:               ; preds = %.lr.ph317.split
  %i.ec = sub i32 %4, %.1438.lcssa                ; 2 uses
  %i.ed = lshr i32 %i.ec, 1
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = shl nuw nsw i64 %i.ee, 5                ; 2 uses
  %i.eg = add nuw nsw i64 %i.ef, 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.2405.lcssa, i8 0, i64 %i.eg, i1 false), !tbaa !113
  %scevgep737 = getelementptr i8, ptr %.2405.lcssa, i64 32
  %scevgep739 = getelementptr i8, ptr %scevgep737, i64 %i.ef
  %i.eh = add i32 %.1438.lcssa, 2
  %i.ei = and i32 %i.ec, -2
  %i.ej = add i32 %i.eh, %i.ei
  br label %.preheader251

.lr.ph299:                                        ; preds = %.preheader253, %._crit_edge290
  %.2405298 = phi ptr [ %i.fs, %._crit_edge290 ], [ %.1404.lcssa, %.preheader253 ] ; 9 uses
  %.2411297 = phi ptr [ %.3412.lcssa, %._crit_edge290 ], [ %.0409.lcssa, %.preheader253 ] ; 3 uses
  %.1438296 = phi i32 [ %i.ft, %._crit_edge290 ], [ %.0437.lcssa, %.preheader253 ]
  br i1 %.not515, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph299
  %i.ek = load <4 x float>, ptr %.2405298, align 16, !tbaa !113
  %i.el = getelementptr inbounds nuw i8, ptr %.2405298, i64 16
  %i.em = load <4 x float>, ptr %i.el, align 16, !tbaa !113
  %i.en = getelementptr inbounds nuw i8, ptr %.2405298, i64 32
  %i.eo = load <4 x float>, ptr %i.en, align 16, !tbaa !113
  %i.ep = getelementptr inbounds nuw i8, ptr %.2405298, i64 48
  %i.eq = load <4 x float>, ptr %i.ep, align 16, !tbaa !113
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph299
  %.0204 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph299 ], [ %i.eq, %bb.e ] ; 2 uses
  %.0202 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph299 ], [ %i.eo, %bb.e ] ; 2 uses
  %.0200 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph299 ], [ %i.em, %bb.e ] ; 2 uses
  %.0198 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph299 ], [ %i.ek, %bb.e ] ; 2 uses
  br i1 %i.c, label %.lr.ph289, label %._crit_edge290

.lr.ph289:                                        ; preds = %bb.f, %.lr.ph289
  %.3412287 = phi ptr [ %i.fm, %.lr.ph289 ], [ %.2411297, %bb.f ] ; 2 uses
  %.0443286 = phi ptr [ %i.fl, %.lr.ph289 ], [ %.0401356, %bb.f ] ; 2 uses
  %.0444285 = phi i32 [ %i.fn, %.lr.ph289 ], [ 0, %bb.f ]
  %.1199284 = phi <4 x float> [ %i.fe, %.lr.ph289 ], [ %.0198, %bb.f ]
  %.1201283 = phi <4 x float> [ %i.fg, %.lr.ph289 ], [ %.0200, %bb.f ]
  %.1203282 = phi <4 x float> [ %i.fi, %.lr.ph289 ], [ %.0202, %bb.f ]
  %.1205281 = phi <4 x float> [ %i.fk, %.lr.ph289 ], [ %.0204, %bb.f ]
  %i.er = load i64, ptr %.0443286, align 1, !tbaa !113
  %i.es = insertelement <2 x i64> poison, i64 %i.er, i64 0
  %i.et = bitcast <2 x i64> %i.es to <8 x i16>
  %i.eu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.et, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ev = bitcast <8 x i16> %i.eu to <4 x float>  ; 3 uses
  %i.ew = load i64, ptr %.3412287, align 1, !tbaa !113
  %i.ex = insertelement <2 x i64> poison, i64 %i.ew, i64 0
  %i.ey = bitcast <2 x i64> %i.ex to <8 x i16>
  %i.ez = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ey, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fa = bitcast <8 x i16> %i.ez to <4 x float>  ; 3 uses
  %i.fb = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.fc = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.fd = fmul fast <4 x float> %i.fa, %i.ev
  %i.fe = fadd fast <4 x float> %i.fd, %.1199284  ; 2 uses
  %i.ff = fmul fast <4 x float> %i.fc, %i.ev
  %i.fg = fadd fast <4 x float> %i.ff, %.1201283  ; 2 uses
  %i.fh = fmul fast <4 x float> %i.fb, %i.fa
  %i.fi = fadd fast <4 x float> %i.fh, %.1203282  ; 2 uses
  %i.fj = fmul fast <4 x float> %i.fc, %i.fb
  %i.fk = fadd fast <4 x float> %i.fj, %.1205281  ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.0443286, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %.3412287, i64 8
  %i.fn = add nuw nsw i32 %.0444285, 1            ; 2 uses
  %exitcond736.not = icmp eq i32 %i.fn, %3
  br i1 %exitcond736.not, label %._crit_edge290.loopexit, label %.lr.ph289, !llvm.loop !941

._crit_edge290.loopexit:                          ; preds = %.lr.ph289
  %i.fo = getelementptr i8, ptr %.2411297, i64 %i.j
  %scevgep735 = getelementptr i8, ptr %i.fo, i64 8
  br label %._crit_edge290

._crit_edge290:                                   ; preds = %._crit_edge290.loopexit, %bb.f
  %.1205.lcssa = phi <4 x float> [ %.0204, %bb.f ], [ %i.fk, %._crit_edge290.loopexit ]
  %.1203.lcssa = phi <4 x float> [ %.0202, %bb.f ], [ %i.fi, %._crit_edge290.loopexit ]
  %.1201.lcssa = phi <4 x float> [ %.0200, %bb.f ], [ %i.fg, %._crit_edge290.loopexit ]
  %.1199.lcssa = phi <4 x float> [ %.0198, %bb.f ], [ %i.fe, %._crit_edge290.loopexit ]
  %.3412.lcssa = phi ptr [ %.2411297, %bb.f ], [ %scevgep735, %._crit_edge290.loopexit ] ; 2 uses
  store <4 x float> %.1199.lcssa, ptr %.2405298, align 16, !tbaa !113
  %i.fp = getelementptr inbounds nuw i8, ptr %.2405298, i64 16
  store <4 x float> %.1201.lcssa, ptr %i.fp, align 16, !tbaa !113
  %i.fq = getelementptr inbounds nuw i8, ptr %.2405298, i64 32
  store <4 x float> %.1203.lcssa, ptr %i.fq, align 16, !tbaa !113
  %i.fr = getelementptr inbounds nuw i8, ptr %.2405298, i64 48
  store <4 x float> %.1205.lcssa, ptr %i.fr, align 16, !tbaa !113
  %i.fs = getelementptr inbounds nuw i8, ptr %.2405298, i64 64 ; 2 uses
  %i.ft = add nuw nsw i32 %.1438296, 4            ; 3 uses
  %i.fu = or disjoint i32 %i.ft, 3
  %i.fv = icmp slt i32 %i.fu, %1
  br i1 %i.fv, label %.lr.ph299, label %.preheader252, !llvm.loop !942

.preheader251:                                    ; preds = %.lr.ph317.split.split, %._crit_edge310.us, %.lr.ph317.split.split.us.preheader, %.preheader252
  %.2439.lcssa = phi i32 [ %.1438.lcssa, %.preheader252 ], [ %i.ej, %.lr.ph317.split.split.us.preheader ], [ %i.dz, %._crit_edge310.us ], [ %i.gz, %.lr.ph317.split.split ] ; 4 uses
  %.4413.lcssa = phi ptr [ %.2411.lcssa, %.preheader252 ], [ %.2411.lcssa, %.lr.ph317.split.split.us.preheader ], [ %scevgep740, %._crit_edge310.us ], [ %.2411.lcssa, %.lr.ph317.split.split ]
  %.3.lcssa = phi ptr [ %.2405.lcssa, %.preheader252 ], [ %scevgep739, %.lr.ph317.split.split.us.preheader ], [ %i.dy, %._crit_edge310.us ], [ %i.gy, %.lr.ph317.split.split ] ; 5 uses
  %i.fw = icmp slt i32 %.2439.lcssa, %1
  br i1 %i.fw, label %.lr.ph345, label %._crit_edge346

.lr.ph345:                                        ; preds = %.preheader251
  br i1 %i.c, label %.lr.ph345.split.us, label %.lr.ph345.split

.lr.ph345.split.us:                               ; preds = %.lr.ph345, %._crit_edge339.us
  %.4344.us = phi ptr [ %i.gp, %._crit_edge339.us ], [ %.3.lcssa, %.lr.ph345 ] ; 3 uses
  %.6415343.us = phi ptr [ %scevgep746, %._crit_edge339.us ], [ %.4413.lcssa, %.lr.ph345 ] ; 2 uses
  %.3440342.us = phi i32 [ %i.gq, %._crit_edge339.us ], [ %.2439.lcssa, %.lr.ph345 ]
  br i1 %.not515, label %.lr.ph338.us.preheader, label %bb.g

bb.g:                                             ; preds = %.lr.ph345.split.us
  %i.fx = load <4 x float>, ptr %.4344.us, align 16, !tbaa !113
  br label %.lr.ph338.us.preheader

.lr.ph338.us.preheader:                           ; preds = %bb.g, %.lr.ph345.split.us
  %.1211333.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph345.split.us ], [ %i.fx, %bb.g ]
  br label %.lr.ph338.us

.lr.ph338.us:                                     ; preds = %.lr.ph338.us.preheader, %.lr.ph338.us
  %.7416336.us = phi ptr [ %i.gm, %.lr.ph338.us ], [ %.6415343.us, %.lr.ph338.us.preheader ] ; 2 uses
  %.0473335.us = phi ptr [ %i.gl, %.lr.ph338.us ], [ %.0401356, %.lr.ph338.us.preheader ] ; 2 uses
  %.0474334.us = phi i32 [ %i.gn, %.lr.ph338.us ], [ 0, %.lr.ph338.us.preheader ]
  %.1211333.us = phi <4 x float> [ %i.gk, %.lr.ph338.us ], [ %.1211333.us.ph, %.lr.ph338.us.preheader ]
  %i.fy = load i64, ptr %.0473335.us, align 1, !tbaa !113
  %i.fz = insertelement <2 x i64> poison, i64 %i.fy, i64 0
  %i.ga = bitcast <2 x i64> %i.fz to <8 x i16>
  %i.gb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ga, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gc = bitcast <8 x i16> %i.gb to <4 x float>
  %i.gd = load i16, ptr %.7416336.us, align 2, !tbaa !526
  %i.ge = zext i16 %i.gd to i32
  %i.gf = shl nuw i32 %i.ge, 16
  %i.gg = insertelement <4 x i32> poison, i32 %i.gf, i64 0
  %i.gh = bitcast <4 x i32> %i.gg to <4 x float>
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gj = fmul fast <4 x float> %i.gi, %i.gc
  %i.gk = fadd fast <4 x float> %i.gj, %.1211333.us ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0473335.us, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %.7416336.us, i64 2
  %i.gn = add nuw nsw i32 %.0474334.us, 1         ; 2 uses
  %exitcond747.not.a = icmp eq i32 %i.gn, %3
  br i1 %exitcond747.not.a, label %._crit_edge339.us, label %.lr.ph338.us, !llvm.loop !943

._crit_edge339.us:                                ; preds = %.lr.ph338.us
  %i.go = getelementptr i8, ptr %.6415343.us, i64 %i.m
  %scevgep746 = getelementptr i8, ptr %i.go, i64 2
  store <4 x float> %i.gk, ptr %.4344.us, align 16, !tbaa !113
  %i.gp = getelementptr inbounds nuw i8, ptr %.4344.us, i64 16 ; 2 uses
  %i.gq = add nuw nsw i32 %.3440342.us, 1         ; 2 uses
  %exitcond748.not = icmp eq i32 %i.gq, %1
  br i1 %exitcond748.not, label %._crit_edge346, label %.lr.ph345.split.us, !llvm.loop !944

.lr.ph345.split:                                  ; preds = %.lr.ph345
  br i1 %.not515, label %.lr.ph345.split.split.us.preheader, label %.lr.ph345.split.split.preheader

.lr.ph345.split.split.preheader:                  ; preds = %.lr.ph345.split
  %scevgep742.a = getelementptr i8, ptr %.3.lcssa, i64 16
  %i.gr = sub i32 %i.l, %.2439.lcssa
  %i.gs = zext i32 %i.gr to i64
  %i.gt = shl nuw nsw i64 %i.gs, 4
  %scevgep743.a = getelementptr i8, ptr %scevgep742.a, i64 %i.gt
  br label %._crit_edge346

.lr.ph345.split.split.us.preheader:               ; preds = %.lr.ph345.split
  %i.gu = sub i32 %i.l, %.2439.lcssa
  %i.gv = zext i32 %i.gu to i64
  %i.gw = shl nuw nsw i64 %i.gv, 4                ; 2 uses
  %i.gx = add nuw nsw i64 %i.gw, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.3.lcssa, i8 0, i64 %i.gx, i1 false), !tbaa !113
  %scevgep744.a = getelementptr i8, ptr %.3.lcssa, i64 16
  %scevgep745 = getelementptr i8, ptr %scevgep744.a, i64 %i.gw
  br label %._crit_edge346

.lr.ph317.split.split:                            ; preds = %.lr.ph317.split, %.lr.ph317.split.split
  %.3316 = phi ptr [ %i.gy, %.lr.ph317.split.split ], [ %.2405.lcssa, %.lr.ph317.split ]
  %.2439314 = phi i32 [ %i.gz, %.lr.ph317.split.split ], [ %.1438.lcssa, %.lr.ph317.split ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.3316, i64 32 ; 2 uses
  %i.gz = add nuw nsw i32 %.2439314, 2            ; 3 uses
  %i.ha = or disjoint i32 %i.gz, 1
  %i.hb = icmp slt i32 %i.ha, %1
  br i1 %i.hb, label %.lr.ph317.split.split, label %.preheader251, !llvm.loop !940

._crit_edge346:                                   ; preds = %._crit_edge339.us, %.lr.ph345.split.split.preheader, %.lr.ph345.split.split.us.preheader, %.preheader251
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader251 ], [ %scevgep745, %.lr.ph345.split.split.us.preheader ], [ %scevgep743.a, %.lr.ph345.split.split.preheader ], [ %i.gp, %._crit_edge339.us ] ; 2 uses
  %i.hc = getelementptr inbounds [2 x i8], ptr %.0401356, i64 %i.e ; 2 uses
  %i.hd = add nuw nsw i32 %.0406354, 4            ; 2 uses
  %i.he = or disjoint i32 %i.hd, 3
  %i.hf = icmp slt i32 %i.he, %0
  br i1 %i.hf, label %.preheader254, label %.preheader250.loopexit, !llvm.loop !945

.preheader249:                                    ; preds = %.preheader249.lr.ph, %._crit_edge451
  %.1402455 = phi ptr [ %.0401.lcssa, %.preheader249.lr.ph ], [ %i.qh, %._crit_edge451 ] ; 10 uses
  %.5454 = phi ptr [ %.0403.lcssa, %.preheader249.lr.ph ], [ %.9.lcssa, %._crit_edge451 ] ; 2 uses
  %.1407453 = phi i32 [ %.0406.lcssa, %.preheader249.lr.ph ], [ %i.qi, %._crit_edge451 ]
  br i1 %i.q, label %.lr.ph379, label %.preheader248

.preheader245:                                    ; preds = %._crit_edge451, %.preheader250
  %.1407.lcssa = phi i32 [ %.0406.lcssa, %.preheader250 ], [ %i.qi, %._crit_edge451 ] ; 2 uses
  %.5.lcssa = phi ptr [ %.0403.lcssa, %.preheader250 ], [ %.9.lcssa, %._crit_edge451 ]
  %.1402.lcssa = phi ptr [ %.0401.lcssa, %.preheader250 ], [ %i.qh, %._crit_edge451 ]
  %i.hg = icmp slt i32 %.1407.lcssa, %0
  br i1 %i.hg, label %.preheader244.lr.ph, label %._crit_edge613
end_hunk_4
