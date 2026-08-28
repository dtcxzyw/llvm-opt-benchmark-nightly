Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_lens?download=true
inline.NumInlined: 229
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 39
begin_hunk_0_@commit_params:bb.a
  %indvars.iv.i.i67.i = phi i64 [ %indvars.iv.next.i.i68.i, %bb.bj ], [ 1, %.preheader.i.i.i ] ; 4 uses
  %i.rp = add nsw i64 %indvars.iv.i.i67.i, -1     ; 2 uses
  %i.rq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.rp
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !24 ; 3 uses
  %i.rs = fcmp reassoc nsz arcp contract afn ult float %i.rn, %i.rr
  br i1 %i.rs, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i66.i
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i67.i
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !24 ; 2 uses
  %i.rv = fcmp reassoc nsz arcp contract afn ugt float %i.rn, %i.ru
  br i1 %i.rv, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %.lr.ph.i.i66.i
  %indvars.iv.next.i.i68.i = add nuw nsw i64 %indvars.iv.i.i67.i, 1 ; 2 uses
  %exitcond.not.i.i69.i = icmp eq i64 %indvars.iv.next.i.i68.i, %wide.trip.count.i.i62.i
  br i1 %exitcond.not.i.i69.i, label %._crit_edge.i.i63.i, label %.lr.ph.i.i66.i, !llvm.loop !199

bb.bk:                                            ; preds = %bb.bi
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i67.i
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !24
  %i.ry = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.rp
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !24 ; 2 uses
  %i.sa = fsub reassoc nsz arcp contract afn float %i.rx, %i.rz
  %i.sb = fsub reassoc nsz arcp contract afn float %i.ru, %i.rr
  %i.sc = fsub reassoc nsz arcp contract afn float %i.rn, %i.rr
  %i.sd = fmul reassoc nsz arcp contract afn float %i.sa, %i.sc
  %i.se = fdiv reassoc nsz arcp contract afn float %i.sd, %i.sb
  %i.sf = fadd reassoc nsz arcp contract afn float %i.se, %i.rz
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i64.i

._crit_edge.i.i63.i:                              ; preds = %bb.bj, %.preheader.i.i.i
  %i.sg = load float, ptr %i.pu, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i64.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.i64.i: ; preds = %._crit_edge.i.i63.i, %bb.bk, %bb.bh
  %.1.i.i65.i = phi nsz float [ %i.sf, %bb.bk ], [ %i.sg, %._crit_edge.i.i63.i ], [ %i.pq, %bb.bh ] ; 5 uses
  %i.sh = fdiv reassoc nsz arcp contract afn float %i.rn, %.1.i.i65.i
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv564.i.i
  store float %i.sh, ptr %i.si, align 4, !tbaa !24
  br i1 %.not380.i.i, label %bb.bl, label %.preheader435.i.i

.preheader435.i.i:                                ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i64.i
  %invariant.gep474.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv564.i.i ; 3 uses
  store float %.1.i.i65.i, ptr %invariant.gep474.i.i, align 4, !tbaa !24
  %gep475.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep474.i.i, i64 64
  store float %.1.i.i65.i, ptr %gep475.1.i.i, align 4, !tbaa !24
  %gep475.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep474.i.i, i64 128
  store float %.1.i.i65.i, ptr %gep475.2.i.i, align 4, !tbaa !24
  br label %.critedge396.i.i

bb.bl:                                            ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i64.i
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %indvars.iv564.i.i
  store float 1.000000e+00, ptr %i.sj, align 4, !tbaa !24
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %indvars.iv564.i.i
  store float 1.000000e+00, ptr %i.sk, align 4, !tbaa !24
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv564.i.i
  store float 1.000000e+00, ptr %i.sl, align 4, !tbaa !24
  br label %.critedge396.i.i

.critedge396.i.i:                                 ; preds = %bb.bl, %.preheader435.i.i
  %i.sm = phi float [ %.1.i.i65.i, %.preheader435.i.i ], [ 1.000000e+00, %bb.bl ] ; 2 uses
  br i1 %.not381.i.i, label %.critedge397.i.i, label %bb.bm

bb.bm:                                            ; preds = %.critedge396.i.i
  br i1 %i.ro, label %_ZL26_interpolate_linear_splinePKfS0_if.exit420.i.i, label %.preheader.i401.i.i

.preheader.i401.i.i:                              ; preds = %bb.bm
  br i1 %i.ps, label %.lr.ph.i406.i.i, label %._crit_edge.i402.i.i

.lr.ph.i406.i.i:                                  ; preds = %.preheader.i401.i.i, %bb.bo
  %indvars.iv.i407.i.i = phi i64 [ %indvars.iv.next.i408.i.i, %bb.bo ], [ 1, %.preheader.i401.i.i ] ; 4 uses
  %i.sn = add nsw i64 %indvars.iv.i407.i.i, -1    ; 2 uses
  %i.so = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.sn
  %i.sp = load float, ptr %i.so, align 4, !tbaa !24 ; 3 uses
  %i.sq = fcmp reassoc nsz arcp contract afn ult float %i.rn, %i.sp
  br i1 %i.sq, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i406.i.i
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i407.i.i
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !24 ; 2 uses
  %i.st = fcmp reassoc nsz arcp contract afn ugt float %i.rn, %i.ss
  br i1 %i.st, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn, %.lr.ph.i406.i.i
  %indvars.iv.next.i408.i.i = add nuw nsw i64 %indvars.iv.i407.i.i, 1 ; 2 uses
  %exitcond.not.i409.i.i = icmp eq i64 %indvars.iv.next.i408.i.i, %wide.trip.count.i.i62.i
  br i1 %exitcond.not.i409.i.i, label %._crit_edge.i402.i.i, label %.lr.ph.i406.i.i, !llvm.loop !199

bb.bp:                                            ; preds = %bb.bn
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i407.i.i
  %i.sv = load float, ptr %i.su, align 4, !tbaa !24
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.sn
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !24 ; 2 uses
  %i.sy = fsub reassoc nsz arcp contract afn float %i.sv, %i.sx
  %i.sz = fsub reassoc nsz arcp contract afn float %i.ss, %i.sp
  %i.ta = fsub reassoc nsz arcp contract afn float %i.rn, %i.sp
  %i.tb = fmul reassoc nsz arcp contract afn float %i.sy, %i.ta
  %i.tc = fdiv reassoc nsz arcp contract afn float %i.tb, %i.sz
  %i.td = fadd reassoc nsz arcp contract afn float %i.tc, %i.sx
  br label %.preheader.i411.i.i

._crit_edge.i402.i.i:                             ; preds = %bb.bo, %.preheader.i401.i.i
  %i.te = load float, ptr %i.py, align 4, !tbaa !24
  br label %.preheader.i411.i.i

.preheader.i411.i.i:                              ; preds = %._crit_edge.i402.i.i, %bb.bp
  %.1.i403.i.i = phi nsz float [ %i.td, %bb.bp ], [ %i.te, %._crit_edge.i402.i.i ] ; 2 uses
  br i1 %i.ps, label %.lr.ph.i416.i.i, label %._crit_edge.i412.i.i

.lr.ph.i416.i.i:                                  ; preds = %.preheader.i411.i.i, %bb.br
  %indvars.iv.i417.i.i = phi i64 [ %indvars.iv.next.i418.i.i, %bb.br ], [ 1, %.preheader.i411.i.i ] ; 4 uses
  %i.tf = add nsw i64 %indvars.iv.i417.i.i, -1    ; 2 uses
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.tf
  %i.th = load float, ptr %i.tg, align 4, !tbaa !24 ; 3 uses
  %i.ti = fcmp reassoc nsz arcp contract afn ult float %i.rn, %i.th
  br i1 %i.ti, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i416.i.i
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i417.i.i
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !24 ; 2 uses
  %i.tl = fcmp reassoc nsz arcp contract afn ugt float %i.rn, %i.tk
  br i1 %i.tl, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq, %.lr.ph.i416.i.i
  %indvars.iv.next.i418.i.i = add nuw nsw i64 %indvars.iv.i417.i.i, 1 ; 2 uses
  %exitcond.not.i419.i.i = icmp eq i64 %indvars.iv.next.i418.i.i, %wide.trip.count.i.i62.i
  br i1 %exitcond.not.i419.i.i, label %._crit_edge.i412.i.i, label %.lr.ph.i416.i.i, !llvm.loop !199

bb.bs:                                            ; preds = %bb.bq
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i417.i.i
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !24
  %i.to = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.tf
  %i.tp = load float, ptr %i.to, align 4, !tbaa !24 ; 2 uses
  %i.tq = fsub reassoc nsz arcp contract afn float %i.tn, %i.tp
  %i.tr = fsub reassoc nsz arcp contract afn float %i.tk, %i.th
  %i.ts = fsub reassoc nsz arcp contract afn float %i.rn, %i.th
  %i.tt = fmul reassoc nsz arcp contract afn float %i.tq, %i.ts
  %i.tu = fdiv reassoc nsz arcp contract afn float %i.tt, %i.tr
  %i.tv = fadd reassoc nsz arcp contract afn float %i.tu, %i.tp
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit420.i.i

._crit_edge.i412.i.i:                             ; preds = %bb.br, %.preheader.i411.i.i
  %i.tw = load float, ptr %i.qa, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit420.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit420.i.i: ; preds = %._crit_edge.i412.i.i, %bb.bs, %bb.bm
  %.1.i403432.i.i = phi float [ %.1.i403.i.i, %bb.bs ], [ %.1.i403.i.i, %._crit_edge.i412.i.i ], [ %i.pp, %bb.bm ]
  %.1.i413.i.i = phi nsz float [ %i.tv, %bb.bs ], [ %i.tw, %._crit_edge.i412.i.i ], [ %i.po, %bb.bm ]
  %i.tx = fadd reassoc nsz arcp contract afn float %.1.i403432.i.i, 1.000000e+00
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv564.i.i
  %i.tz = fmul reassoc nsz arcp contract afn float %i.tx, %i.sm
  store float %i.tz, ptr %i.ty, align 4, !tbaa !24
  %i.ua = fadd reassoc nsz arcp contract afn float %.1.i413.i.i, 1.000000e+00
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %indvars.iv564.i.i
  %i.uc = fmul reassoc nsz arcp contract afn float %i.ua, %i.sm
  store float %i.uc, ptr %i.ub, align 4, !tbaa !24
  br label %.critedge397.i.i

.critedge397.i.i:                                 ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit420.i.i, %.critedge396.i.i
  %indvars.iv.next565.i.i = add nuw nsw i64 %indvars.iv564.i.i, 1 ; 2 uses
  %exitcond567.not.i.i = icmp eq i64 %indvars.iv.next565.i.i, 16
  br i1 %exitcond567.not.i.i, label %bb.bg, label %bb.bh, !llvm.loop !315

bb.bt:                                            ; preds = %bb.by, %.preheader438.i.i
  %indvars.iv547.i.i = phi i64 [ 0, %.preheader438.i.i ], [ %indvars.iv.next548.i.i, %bb.by ] ; 8 uses
  %i.ud = trunc nuw nsw i64 %indvars.iv547.i.i to i32
  %i.ue = uitofp nneg i32 %i.ud to float
  %i.uf = fmul reassoc nnan nsz arcp contract afn float %i.ue, f0x3D888889 ; 8 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv547.i.i
  store float %i.uf, ptr %i.ug, align 4, !tbaa !24
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv547.i.i
  store float %i.uf, ptr %i.uh, align 4, !tbaa !24
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv547.i.i ; 2 uses
  store float 1.000000e+00, ptr %i.ui, align 4, !tbaa !24
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv547.i.i ; 2 uses
  store float 1.000000e+00, ptr %i.uj, align 4, !tbaa !24
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv547.i.i ; 3 uses
  store float 1.000000e+00, ptr %i.uk, align 4, !tbaa !24
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv547.i.i ; 2 uses
  store float 1.000000e+00, ptr %i.ul, align 4, !tbaa !24
  %square374.i.i = fmul reassoc nnan nsz arcp contract afn float %i.uf, %i.uf ; 2 uses
  %i.um = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.uf, i32 4) ; 2 uses
  %i.un = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.uf, i32 6) ; 2 uses
  %i.uo = load i32, ptr %i.ks, align 4, !tbaa !59
  %.not375.i.i = icmp eq i32 %i.uo, 0
  br i1 %.not375.i.i, label %._crit_edge.thread.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.up = load i32, ptr %i.t, align 4, !tbaa !267
  %i.uq = and i32 %i.up, 5
  %.not376.i.i = icmp eq i32 %i.uq, 0
  br i1 %.not376.i.i, label %._crit_edge.thread.i.i, label %.preheader437.i.i

.preheader437.i.i:                                ; preds = %bb.bu
  %i.ur = load i32, ptr %i.kp, align 4, !tbaa !59
  %i.us = icmp sgt i32 %i.ur, 0
  br i1 %i.us, label %.lr.ph.i.i.preheader, label %._crit_edge.thread.i.i

.lr.ph.i.i.preheader:                             ; preds = %.preheader437.i.i
  %5 = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %square374.i.i, i64 1
  %6 = insertelement <4 x float> %5, float %i.um, i64 2
  %7 = insertelement <4 x float> %6, float %i.un, i64 3
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.ut = icmp eq i32 %i.uy, 1
  br i1 %i.ut, label %bb.bv, label %._crit_edge.thread.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv544.i.i = phi i64 [ %indvars.iv.next545.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.uu = getelementptr inbounds nuw [24 x i8], ptr %i.kt, i64 %indvars.iv544.i.i
  %8 = load <4 x float>, ptr %i.uu, align 4, !tbaa !59
  %9 = fmul reassoc nsz arcp contract afn <4 x float> %8, %7
  %i.uv = load float, ptr %i.el, align 4, !tbaa !300
  %op.rdx478 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float -1.000000e+00, <4 x float> %9)
  %i.uw = fmul reassoc nsz arcp contract afn float %op.rdx478, %i.uv
  %i.ux = fadd reassoc nsz arcp contract afn float %i.uw, 1.000000e+00
  %gep.i.i = getelementptr inbounds nuw [64 x i8], ptr %i.uk, i64 %indvars.iv544.i.i
  store float %i.ux, ptr %gep.i.i, align 4, !tbaa !24
  %indvars.iv.next545.i.i = add nuw nsw i64 %indvars.iv544.i.i, 1 ; 2 uses
  %i.uy = load i32, ptr %i.kp, align 4, !tbaa !59 ; 2 uses
  %i.uz = sext i32 %i.uy to i64
  %i.va = icmp slt i64 %indvars.iv.next545.i.i, %i.uz
  br i1 %i.va, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !316

bb.bv:                                            ; preds = %._crit_edge.i.i
  %i.vb = load float, ptr %i.uk, align 4, !tbaa !24 ; 2 uses
  store float %i.vb, ptr %i.uj, align 4, !tbaa !24
  store float %i.vb, ptr %i.ui, align 4, !tbaa !24
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.bv, %._crit_edge.i.i, %.preheader437.i.i, %bb.bu, %bb.bt
  %i.vc = load i32, ptr %i.ku, align 8, !tbaa !59
  %.not377.i.i = icmp eq i32 %i.vc, 0
  br i1 %.not377.i.i, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %._crit_edge.thread.i.i
  %i.vd = load i32, ptr %i.t, align 4, !tbaa !267
  %i.ve = and i32 %i.vd, 2
  %.not378.i.i = icmp eq i32 %i.ve, 0
  br i1 %.not378.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.vf = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.uf, i32 8)
  %i.vg = load <4 x float>, ptr %i.kv, align 8, !tbaa !59
  %i.vh = insertelement <4 x float> poison, float %square374.i.i, i64 0
  %i.vi = insertelement <4 x float> %i.vh, float %i.um, i64 1
  %i.vj = insertelement <4 x float> %i.vi, float %i.un, i64 2
  %i.vk = insertelement <4 x float> %i.vj, float %i.vf, i64 3
  %i.vl = fmul reassoc nsz arcp contract afn <4 x float> %i.vg, %i.vk
  %i.vm = load float, ptr %i.kw, align 8, !tbaa !59
  %i.vn = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.uf, i32 10)
  %i.vo = fmul reassoc nsz arcp contract afn float %i.vm, %i.vn
  %op.rdx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.vo, <4 x float> %i.vl)
  %i.vp = load float, ptr %i.en, align 4, !tbaa !306
  %i.vq = fmul reassoc nsz arcp contract afn float %op.rdx, %i.vp
  %i.vr = fadd reassoc nsz arcp contract afn float %i.vq, 1.000000e+00
  %i.vs = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.vr
  store float %i.vs, ptr %i.ul, align 4, !tbaa !24
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %._crit_edge.thread.i.i
  %indvars.iv.next548.i.i = add nuw nsw i64 %indvars.iv547.i.i, 1 ; 2 uses
  %exitcond550.not.i.i = icmp eq i64 %indvars.iv.next548.i.i, 16
  br i1 %exitcond550.not.i.i, label %.loopexit.i.i, label %bb.bt, !llvm.loop !317

bb.bz:                                            ; preds = %bb.aw
  %i.vt = load i32, ptr %i.kp, align 4, !tbaa !59
  %.not.i.i = icmp eq i32 %i.vt, 0
  br i1 %.not.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.vu = getelementptr inbounds nuw i8, ptr %i.eh, i64 688
  %i.vv = load <4 x float>, ptr %i.vu, align 8, !tbaa !59
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.vw = phi <4 x float> [ %i.vv, %bb.ca ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.bz ] ; 8 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.eh, i64 704
  %i.vy = load i32, ptr %i.vx, align 8, !tbaa !59
  %.not366.i.i = icmp eq i32 %i.vy, 0
  br i1 %.not366.i.i, label %vector.memcheck, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.vz = getelementptr inbounds nuw i8, ptr %i.eh, i64 708
  %i.wa = load <4 x float>, ptr %i.vz, align 4, !tbaa !59
  %i.wb = getelementptr inbounds nuw i8, ptr %i.eh, i64 724
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !59
  %i.wd = getelementptr inbounds nuw i8, ptr %i.eh, i64 728
  %i.we = load float, ptr %i.wd, align 8, !tbaa !59
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.cc, %bb.cb
  %.0336.i.i = phi nsz float [ %i.wc, %bb.cc ], [ 0.000000e+00, %bb.cb ] ; 2 uses
  %.0335.i.i = phi nsz float [ %i.we, %bb.cc ], [ 0.000000e+00, %bb.cb ] ; 2 uses
  %i.wf = phi <4 x float> [ %i.wa, %bb.cc ], [ zeroinitializer, %bb.cb ] ; 8 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ee, i64 364 ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.ee, i64 300 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.0, i64 312 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.0, i64 316 ; 2 uses
  %i.wk = load i32, ptr %i.t, align 4, !tbaa !267 ; 2 uses
  %i.wl = and i32 %i.wk, 4
  %.not368.i.i = icmp ne i32 %i.wl, 0             ; 4 uses
  %.not369.i.i = trunc i32 %i.wk to i1            ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ee, i64 492
  %scevgep391 = getelementptr i8, ptr %.0, i64 320
  %bound0 = icmp ult ptr %i.kl, %scevgep391
  %bound1 = icmp ult ptr %i.el, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %vector.memcheck
  %i.wm = extractelement <4 x float> %i.vw, i64 3 ; 2 uses
  %i.wn = extractelement <4 x float> %i.vw, i64 2
  %i.wo = extractelement <4 x float> %i.vw, i64 1
  %i.wp = extractelement <4 x float> %i.vw, i64 0
  %i.wq = extractelement <4 x float> %i.wf, i64 2
  %i.wr = extractelement <4 x float> %i.wf, i64 1
  %i.ws = extractelement <4 x float> %i.wf, i64 0
  %i.wt = extractelement <4 x float> %i.wf, i64 3
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %broadcast.splatinsert416 = insertelement <8 x ptr> poison, ptr %i.el, i64 0
  %broadcast.splat417 = shufflevector <8 x ptr> %broadcast.splatinsert416, <8 x ptr> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat415 = shufflevector <4 x float> %i.vw, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat413 = shufflevector <4 x float> %i.vw, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat411 = shufflevector <4 x float> %i.vw, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %broadcast.splat409 = shufflevector <4 x float> %i.vw, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 4 uses
  %broadcast.splatinsert406 = insertelement <8 x ptr> poison, ptr %i.wj, i64 0
  %broadcast.splat407 = shufflevector <8 x ptr> %broadcast.splatinsert406, <8 x ptr> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert404 = insertelement <8 x ptr> poison, ptr %i.wi, i64 0
  %broadcast.splat405 = shufflevector <8 x ptr> %broadcast.splatinsert404, <8 x ptr> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert402 = insertelement <8 x float> poison, float %.0335.i.i, i64 0
  %broadcast.splat403 = shufflevector <8 x float> %broadcast.splatinsert402, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert400 = insertelement <8 x float> poison, float %.0336.i.i, i64 0
  %broadcast.splat401 = shufflevector <8 x float> %broadcast.splatinsert400, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat399 = shufflevector <4 x float> %i.wf, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %broadcast.splat397 = shufflevector <4 x float> %i.wf, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %broadcast.splat395 = shufflevector <4 x float> %i.wf, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat393 = shufflevector <4 x float> %i.wf, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.wu = insertelement <8 x i1> poison, i1 %.not368.i.i, i64 0
  %i.wv = shufflevector <8 x i1> %i.wu, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  store <8 x float> <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0>, ptr %i.km, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  store <8 x float> <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0>, ptr %i.kl, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.ww = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat409, <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0> ; 2 uses
  %i.wx = fmul reassoc nsz arcp contract afn <8 x float> %i.ww, %i.ww ; 3 uses
  %i.wy = fmul reassoc nsz arcp contract afn <8 x float> %i.wx, %broadcast.splat411
  %i.wz = fadd reassoc nsz arcp contract afn <8 x float> %i.wy, %broadcast.splat413
  %i.xa = fmul reassoc nsz arcp contract afn <8 x float> %i.wz, %i.wx
  %i.xb = fadd reassoc nsz arcp contract afn <8 x float> %i.xa, %broadcast.splat415
  %i.xc = fmul reassoc nsz arcp contract afn <8 x float> %i.xb, %i.wx
  %i.xd = fadd reassoc nsz arcp contract afn <8 x float> %i.xc, splat (float 1.000000e+00)
  %i.xe = fmul reassoc nsz arcp contract afn <8 x float> %i.xd, %broadcast.splat409
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat417, <8 x i1> %i.wv, <8 x float> poison), !tbaa !300, !alias.scope !321
  %i.xf = fadd reassoc nsz arcp contract afn <8 x float> %i.xe, splat (float -1.000000e+00)
  %i.xg = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.xf
  %i.xh = fadd reassoc nsz arcp contract afn <8 x float> %i.xg, splat (float 1.000000e+00)
  %predphi = select i1 %.not368.i.i, <8 x float> %i.xh, <8 x float> splat (float 1.000000e+00) ; 6 uses
  store <8 x float> %predphi, ptr %i.wg, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  store <8 x float> %predphi, ptr %i.wh, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  store <8 x float> %predphi, ptr %i.kn, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.xi = select i1 %.not369.i.i, <8 x i1> <i1 false, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x i1> zeroinitializer ; 4 uses
  %i.xj = fmul reassoc nsz arcp contract afn <8 x float> %predphi, <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0> ; 4 uses
  %i.xk = fmul reassoc nsz arcp contract afn <8 x float> %i.xj, %i.xj ; 4 uses
  %wide.masked.gather418 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat405, <8 x i1> %i.xi, <8 x float> poison), !tbaa !304, !alias.scope !321
  %i.xl = fmul reassoc nsz arcp contract afn <8 x float> %i.xk, %broadcast.splat397
  %i.xm = fadd reassoc nsz arcp contract afn <8 x float> %i.xl, %broadcast.splat395
  %i.xn = fmul reassoc nsz arcp contract afn <8 x float> %i.xm, %i.xk
  %i.xo = fadd reassoc nsz arcp contract afn <8 x float> %i.xn, %broadcast.splat393
  %i.xp = fmul reassoc nsz arcp contract afn <8 x float> %i.xo, %i.xj
  %i.xq = fmul reassoc nsz arcp contract afn <8 x float> %i.xp, %wide.masked.gather418
  %i.xr = fdiv reassoc nsz arcp contract afn <8 x float> %i.xq, <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0>
  %i.xs = fadd reassoc nsz arcp contract afn <8 x float> %i.xr, %predphi
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.xs, ptr align 4 %i.kn, <8 x i1> %i.xi), !tbaa !24, !alias.scope !318, !noalias !321
  %wide.masked.gather419 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat407, <8 x i1> %i.xi, <8 x float> poison), !tbaa !305, !alias.scope !321
  %i.xt = fmul reassoc nsz arcp contract afn <8 x float> %i.xk, %broadcast.splat403
  %i.xu = fadd reassoc nsz arcp contract afn <8 x float> %i.xt, %broadcast.splat401
  %i.xv = fmul reassoc nsz arcp contract afn <8 x float> %i.xu, %i.xk
  %i.xw = fadd reassoc nsz arcp contract afn <8 x float> %i.xv, %broadcast.splat399
  %i.xx = fmul reassoc nsz arcp contract afn <8 x float> %i.xw, %i.xj
  %i.xy = fmul reassoc nsz arcp contract afn <8 x float> %i.xx, %wide.masked.gather419
  %i.xz = fdiv reassoc nsz arcp contract afn <8 x float> %i.xy, <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0>
  %i.ya = fadd reassoc nsz arcp contract afn <8 x float> %i.xz, %predphi
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.ya, ptr align 4 %i.wg, <8 x i1> %i.xi), !tbaa !24, !alias.scope !318, !noalias !321
  store <8 x float> splat (float 1.000000e+00), ptr %i.ko, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ee, i64 204
  store <8 x float> <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00>, ptr %i.yb, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.yc = getelementptr i8, ptr %i.ee, i64 140
  store <8 x float> <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00>, ptr %i.yc, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.yd = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat409, <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00> ; 2 uses
  %i.ye = fmul reassoc nsz arcp contract afn <8 x float> %i.yd, %i.yd ; 3 uses
  %i.yf = fmul reassoc nsz arcp contract afn <8 x float> %i.ye, %broadcast.splat411
  %i.yg = fadd reassoc nsz arcp contract afn <8 x float> %i.yf, %broadcast.splat413
  %i.yh = fmul reassoc nsz arcp contract afn <8 x float> %i.yg, %i.ye
  %i.yi = fadd reassoc nsz arcp contract afn <8 x float> %i.yh, %broadcast.splat415
  %i.yj = fmul reassoc nsz arcp contract afn <8 x float> %i.yi, %i.ye
  %i.yk = fadd reassoc nsz arcp contract afn <8 x float> %i.yj, splat (float 1.000000e+00)
  %i.yl = fmul reassoc nsz arcp contract afn <8 x float> %i.yk, %broadcast.splat409
  %wide.masked.gather.1 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat417, <8 x i1> %i.wv, <8 x float> poison), !tbaa !300, !alias.scope !321
  %i.ym = fadd reassoc nsz arcp contract afn <8 x float> %i.yl, splat (float -1.000000e+00)
  %i.yn = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather.1, %i.ym
  %i.yo = fadd reassoc nsz arcp contract afn <8 x float> %i.yn, splat (float 1.000000e+00)
  %predphi.1 = select i1 %.not368.i.i, <8 x float> %i.yo, <8 x float> splat (float 1.000000e+00) ; 6 uses
  %i.yp = getelementptr i8, ptr %i.ee, i64 396    ; 2 uses
  store <8 x float> %predphi.1, ptr %i.yp, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ee, i64 332
  store <8 x float> %predphi.1, ptr %i.yq, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.yr = getelementptr i8, ptr %i.ee, i64 268    ; 2 uses
  store <8 x float> %predphi.1, ptr %i.yr, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.ys = select i1 %.not369.i.i, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer ; 4 uses
  %i.yt = fmul reassoc nsz arcp contract afn <8 x float> %predphi.1, <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00> ; 4 uses
  %i.yu = fmul reassoc nsz arcp contract afn <8 x float> %i.yt, %i.yt ; 4 uses
  %wide.masked.gather418.1 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat405, <8 x i1> %i.ys, <8 x float> poison), !tbaa !304, !alias.scope !321
  %i.yv = fmul reassoc nsz arcp contract afn <8 x float> %i.yu, %broadcast.splat397
  %i.yw = fadd reassoc nsz arcp contract afn <8 x float> %i.yv, %broadcast.splat395
end_hunk_0
begin_hunk_1_@_ZL18_init_coeffs_md_v1PK10dt_image_tPK20dt_iop_lens_params_tfPfS5_PA16_fS5_:bb.a
  %i.lb = insertelement <8 x i1> poison, i1 %.not205, i64 0
  %i.lc = shufflevector <8 x i1> %i.lb, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ld = insertelement <8 x i1> poison, i1 %.not206, i64 0
  %i.le = shufflevector <8 x i1> %i.ld, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.lf = insertelement <8 x i1> poison, i1 %.not207, i64 0
  %i.lg = shufflevector <8 x i1> %i.lf, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lh = xor <8 x i1> %broadcast.splat373, splat (i1 true)
  %i.li = select <8 x i1> %i.lg, <8 x i1> %i.lh, <8 x i1> zeroinitializer ; 3 uses
  %i.lj = select <8 x i1> %i.lg, <8 x i1> %broadcast.splat373, <8 x i1> zeroinitializer
  %broadcast.splatinsert378 = insertelement <8 x ptr> poison, ptr %i.ca, i64 0
  %broadcast.splat379 = shufflevector <8 x ptr> %broadcast.splatinsert378, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert380 = insertelement <8 x float> poison, float %2, i64 0
  %broadcast.splat381 = shufflevector <8 x float> %broadcast.splatinsert380, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert382 = insertelement <8 x ptr> poison, ptr %i.ch, i64 0
  %broadcast.splat383 = shufflevector <8 x ptr> %broadcast.splatinsert382, <8 x ptr> poison, <8 x i32> zeroinitializer
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat379, <8 x i1> %i.lc, <8 x float> poison), !tbaa !300, !alias.scope !517
  %i.lk = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, splat (float f0x3C23D70A)
  %wide.masked.gather388 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat383, <8 x i1> %i.li, <8 x float> poison), !tbaa !306, !alias.scope !517
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 12 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index
  %wide.load = load <8 x float>, ptr %i.ll, align 4, !tbaa !59, !alias.scope !519
  %i.lm = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %broadcast.splat385 ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index
  store <8 x float> %i.lm, ptr %i.ln, align 4, !tbaa !24, !alias.scope !521, !noalias !523
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  store <8 x float> %i.lm, ptr %i.lo, align 4, !tbaa !24, !alias.scope !527, !noalias !528
  %i.lp = getelementptr [4 x i8], ptr %i.cb, i64 %index
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.lp, <8 x i1> %i.lc, <8 x float> poison), !tbaa !59, !alias.scope !519
  %i.lq = fmul reassoc nsz arcp contract afn <8 x float> %i.lk, %wide.masked.load
  %i.lr = fadd reassoc nsz arcp contract afn <8 x float> %i.lq, splat (float 1.000000e+00)
  %i.ls = fmul reassoc nsz arcp contract afn <8 x float> %i.lr, %broadcast.splat381
  %predphi = select i1 %.not205, <8 x float> %i.ls, <8 x float> %broadcast.splat381 ; 5 uses
  %i.lt = getelementptr [4 x i8], ptr %i.cc, i64 %index ; 2 uses
  store <8 x float> %predphi, ptr %i.lt, align 4, !tbaa !24, !alias.scope !529, !noalias !530
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index
  store <8 x float> %predphi, ptr %i.lu, align 4, !tbaa !24, !alias.scope !529, !noalias !530
  %i.lv = getelementptr [4 x i8], ptr %5, i64 %index ; 2 uses
  store <8 x float> %predphi, ptr %i.lv, align 4, !tbaa !24, !alias.scope !529, !noalias !530
  %i.lw = getelementptr [4 x i8], ptr %i.ce, i64 %index
  %wide.masked.load386 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.lw, <8 x i1> %i.le, <8 x float> poison), !tbaa !59, !alias.scope !519
  %i.lx = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load386, splat (float 1.000000e+00)
  %i.ly = fmul reassoc nsz arcp contract afn <8 x float> %predphi, %i.lx
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.ly, ptr align 4 %i.lv, <8 x i1> %i.le), !tbaa !24, !alias.scope !529, !noalias !530
  %i.lz = getelementptr [4 x i8], ptr %i.cf, i64 %index
  %wide.masked.load387 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.lz, <8 x i1> %i.le, <8 x float> poison), !tbaa !59, !alias.scope !519
  %i.ma = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load387, splat (float 1.000000e+00)
  %i.mb = fmul reassoc nsz arcp contract afn <8 x float> %predphi, %i.ma
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.mb, ptr align 4 %i.lt, <8 x i1> %i.le), !tbaa !24, !alias.scope !529, !noalias !530
  %i.mc = getelementptr [4 x i8], ptr %i.ci, i64 %index
  %wide.masked.load389 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.mc, <8 x i1> %i.li, <8 x float> poison), !tbaa !59, !alias.scope !519
  %i.md = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load389, splat (float f0x3C23D70A)
  %i.me = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.md
  %i.mf = fmul reassoc nsz arcp contract afn <8 x float> %i.me, %wide.masked.gather388
  %i.mg = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.mf ; 2 uses
  %i.mh = getelementptr [4 x i8], ptr %6, i64 %index ; 2 uses
  %i.mi = fmul reassoc nsz arcp contract afn <8 x float> %i.mg, %i.mg
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.mi, ptr align 4 %i.mh, <8 x i1> %i.li), !tbaa !24, !alias.scope !531, !noalias !532
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 1.000000e+00), ptr align 4 %i.mh, <8 x i1> %i.lj), !tbaa !24, !alias.scope !531, !noalias !532
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mj = icmp eq i64 %index.next, %n.vec
  br i1 %i.mj, label %middle.block, label %vector.body, !llvm.loop !533

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph230.split, %middle.block
  %indvars.iv247.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph230.split ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %.critedge222
  %indvars.iv247 = phi i64 [ %indvars.iv.next248, %.critedge222 ], [ %indvars.iv247.ph, %scalar.ph.preheader ] ; 14 uses
  %i.mk = load float, ptr %i.by, align 8, !tbaa !59
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv247
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !59
  %i.mn = fmul reassoc nsz arcp contract afn float %i.mm, %i.mk ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv247
  store float %i.mn, ptr %i.mo, align 4, !tbaa !24
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv247
  store float %i.mn, ptr %i.mp, align 4, !tbaa !24
  br i1 %.not205, label %bb.k, label %.critedge219

bb.k:                                             ; preds = %scalar.ph
  %i.mq = load float, ptr %i.ca, align 4, !tbaa !300
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv247
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !59
  %i.mt = fmul reassoc nsz arcp contract afn float %i.mq, f0x3C23D70A
  %i.mu = fmul reassoc nsz arcp contract afn float %i.mt, %i.ms
  %i.mv = fadd reassoc nsz arcp contract afn float %i.mu, 1.000000e+00
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mv, %2
  br label %.critedge219

.critedge219:                                     ; preds = %scalar.ph, %bb.k
  %.sink293 = phi float [ %i.mw, %bb.k ], [ %2, %scalar.ph ] ; 5 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv247
  store float %.sink293, ptr %i.mx, align 4, !tbaa !24
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv247
  store float %.sink293, ptr %i.my, align 4, !tbaa !24
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv247 ; 2 uses
  store float %.sink293, ptr %i.mz, align 4, !tbaa !24
  br i1 %.not206, label %bb.l, label %.critedge220

bb.l:                                             ; preds = %.critedge219
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv247
  %i.nb = load float, ptr %i.na, align 4, !tbaa !59
  %i.nc = fadd reassoc nsz arcp contract afn float %i.nb, 1.000000e+00
  %i.nd = fmul reassoc nsz arcp contract afn float %.sink293, %i.nc
  store float %i.nd, ptr %i.mz, align 4, !tbaa !24
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv247
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !59
  %i.ng = fadd reassoc nsz arcp contract afn float %i.nf, 1.000000e+00
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv247
  %i.ni = fmul reassoc nsz arcp contract afn float %.sink293, %i.ng
  store float %i.ni, ptr %i.nh, align 4, !tbaa !24
  br label %.critedge220

.critedge220:                                     ; preds = %bb.l, %.critedge219
  br i1 %.not207, label %bb.m, label %.critedge222

bb.m:                                             ; preds = %.critedge220
  br i1 %.not208, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.nj = load float, ptr %i.ch, align 4, !tbaa !306
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv247
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !59
  %i.nm = fmul reassoc nsz arcp contract afn float %i.nl, f0x3C23D70A
  %i.nn = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.nm
  %i.no = fmul reassoc nsz arcp contract afn float %i.nn, %i.nj
  %i.np = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.no ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv247
  %i.nr = fmul reassoc nsz arcp contract afn float %i.np, %i.np
  store float %i.nr, ptr %i.nq, align 4, !tbaa !24
  br label %.critedge222

bb.o:                                             ; preds = %bb.m
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv247
  store float 1.000000e+00, ptr %i.ns, align 4, !tbaa !24
  br label %.critedge222

.critedge222:                                     ; preds = %.critedge220, %bb.n, %bb.o
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %exitcond250.not = icmp eq i64 %indvars.iv.next248, %wide.trip.count
  br i1 %exitcond250.not, label %.loopexit, label %scalar.ph, !llvm.loop !534

bb.p:                                             ; preds = %.preheader224, %bb.aa
  %indvars.iv244 = phi i64 [ 0, %.preheader224 ], [ %indvars.iv.next245, %bb.aa ] ; 12 uses
  %i.nt = trunc nuw nsw i64 %indvars.iv244 to i32
  %i.nu = uitofp nneg i32 %i.nt to float
  %i.nv = fmul reassoc nnan nsz arcp contract afn float %i.nu, f0x3D888889 ; 8 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv244
  store float %i.nv, ptr %i.nw, align 4, !tbaa !24
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv244
  store float %i.nv, ptr %i.nx, align 4, !tbaa !24
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv244
  store float 1.000000e+00, ptr %i.ny, align 4, !tbaa !24
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv244
  store float 1.000000e+00, ptr %i.nz, align 4, !tbaa !24
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv244
  store float 1.000000e+00, ptr %i.oa, align 4, !tbaa !24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %.not199, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv244
  store float 1.000000e+00, ptr %i.ob, align 4, !tbaa !24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %square = fmul reassoc nnan nsz arcp contract afn float %i.nv, %i.nv ; 2 uses
  %i.oc = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.nv, i32 4) ; 2 uses
  %i.od = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.nv, i32 6) ; 2 uses
  br i1 %.not, label %._crit_edge.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.oe = load i32, ptr %i.f, align 4, !tbaa !59
  %.not200 = icmp eq i32 %i.oe, 0
  br i1 %.not200, label %._crit_edge.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.of = load i32, ptr %i.g, align 4, !tbaa !267
  %i.og = and i32 %i.of, 5
  %.not201 = icmp eq i32 %i.og, 0
  br i1 %.not201, label %._crit_edge.thread, label %.preheader

.preheader:                                       ; preds = %bb.v
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv244 ; 2 uses
  %i.oh = load i32, ptr %i.a, align 4, !tbaa !59
  %i.oi = icmp sgt i32 %i.oh, 0
  br i1 %i.oi, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %7 = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %square, i64 1
  %8 = insertelement <4 x float> %7, float %i.oc, i64 2
  %9 = insertelement <4 x float> %8, float %i.od, i64 3
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.oj = icmp eq i32 %i.op, 1
  br i1 %i.oj, label %bb.w, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ok = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv
  %10 = load <4 x float>, ptr %i.ok, align 4, !tbaa !59
  %11 = fmul reassoc nsz arcp contract afn <4 x float> %10, %9
  %i.ol = load float, ptr %i.i, align 4, !tbaa !300
  %op.rdx601 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float -1.000000e+00, <4 x float> %11)
  %i.om = fmul reassoc nsz arcp contract afn float %op.rdx601, %i.ol
  %i.on = fadd reassoc nsz arcp contract afn float %i.om, 1.000000e+00
  %i.oo = fmul reassoc nsz arcp contract afn float %i.on, %2
  %gep = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.oo, ptr %gep, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.op = load i32, ptr %i.a, align 4, !tbaa !59  ; 2 uses
  %i.oq = sext i32 %i.op to i64
  %i.or = icmp slt i64 %indvars.iv.next, %i.oq
  br i1 %i.or, label %.lr.ph, label %._crit_edge, !llvm.loop !535

bb.w:                                             ; preds = %._crit_edge
  %i.os = load float, ptr %invariant.gep, align 4, !tbaa !24 ; 2 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv244
  store float %i.os, ptr %i.ot, align 4, !tbaa !24
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv244
  store float %i.os, ptr %i.ou, align 4, !tbaa !24
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge, %bb.w, %bb.v, %bb.u, %bb.t
  br i1 %.not199, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %._crit_edge.thread
  %i.ov = load i32, ptr %i.j, align 8, !tbaa !59
  %.not202 = icmp eq i32 %i.ov, 0
  br i1 %.not202, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ow = load i32, ptr %i.g, align 4, !tbaa !267
  %i.ox = and i32 %i.ow, 2
  %.not203 = icmp eq i32 %i.ox, 0
  br i1 %.not203, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.oy = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.nv, i32 8)
  %i.oz = load <4 x float>, ptr %i.k, align 8, !tbaa !59
  %i.pa = insertelement <4 x float> poison, float %square, i64 0
  %i.pb = insertelement <4 x float> %i.pa, float %i.oc, i64 1
  %i.pc = insertelement <4 x float> %i.pb, float %i.od, i64 2
  %i.pd = insertelement <4 x float> %i.pc, float %i.oy, i64 3
  %i.pe = fmul reassoc nsz arcp contract afn <4 x float> %i.oz, %i.pd
  %i.pf = load float, ptr %i.l, align 8, !tbaa !59
  %i.pg = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.nv, i32 10)
  %i.ph = fmul reassoc nsz arcp contract afn float %i.pf, %i.pg
  %op.rdx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.ph, <4 x float> %i.pe)
  %i.pi = load float, ptr %i.m, align 4, !tbaa !306
  %i.pj = fmul reassoc nsz arcp contract afn float %op.rdx, %i.pi
  %i.pk = fadd reassoc nsz arcp contract afn float %i.pj, 1.000000e+00
  %i.pl = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.pk
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv244
  store float %i.pl, ptr %i.pm, align 4, !tbaa !24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %._crit_edge.thread
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next245, 16
  br i1 %exitcond.not, label %.loopexit, label %bb.p, !llvm.loop !536

.loopexit:                                        ; preds = %bb.aa, %.critedge222, %.critedge220.us.prol.loopexit, %.critedge220.us, %.critedge220.us.us231.prol.loopexit, %.critedge220.us.us231, %.critedge220.us.us.prol.loopexit, %.critedge220.us.us, %.critedge217, %middle.block, %middle.block459, %vec.epilog.middle.block, %middle.block527, %vec.epilog.middle.block542, %middle.block583, %vec.epilog.middle.block598, %bb.j, %bb.b, %bb.a
  %.0 = phi i32 [ %i.n, %bb.b ], [ 0, %bb.a ], [ %i.bw, %bb.j ], [ %i.bw, %middle.block ], [ %i.bw, %middle.block583 ], [ %i.bw, %middle.block527 ], [ %i.bw, %.critedge220.us.prol.loopexit ], [ %i.bw, %middle.block459 ], [ %i.bw, %.critedge222 ], [ %i.bw, %vec.epilog.middle.block598 ], [ %i.n, %.critedge217 ], [ %i.bw, %vec.epilog.middle.block542 ], [ %i.bw, %.critedge220.us.us.prol.loopexit ], [ %i.bw, %vec.epilog.middle.block ], [ %i.bw, %.critedge220.us.us231.prol.loopexit ], [ %i.bw, %.critedge220.us.us ], [ %i.bw, %.critedge220.us.us231 ], [ %i.bw, %.critedge220.us ], [ 16, %bb.aa ]
  ret i32 %.0
}

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #25

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

declare noundef float @_ZN10lfModifier12GetAutoScaleEb(ptr noundef nonnull align 8 dereferenceable(96), i1 noundef zeroext) local_unnamed_addr #4

declare void @dt_iop_set_module_trouble_message(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK10lfDatabase10GetCamerasEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL16camera_menu_fillP15dt_iop_module_tPKPK8lfCamera(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @gtk_menu_new()            ; 2 uses
  %i.b = tail call ptr @g_ptr_array_new()         ; 7 uses
  %i.c = tail call ptr @g_ptr_array_new()         ; 6 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !275    ; 2 uses
  %.not61 = icmp eq ptr %i.d, null
  br i1 %.not61, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

.preheader:                                       ; preds = %bb.j, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !537
  %.not65 = icmp eq i32 %i.h, 0
  br i1 %.not65, label %._crit_edge, label %.lr.ph64

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.cf, %bb.j ]
  %i.j = phi ptr [ %1, %.lr.ph ], [ %i.ce, %bb.j ] ; 3 uses
  %.04862 = phi i32 [ 0, %.lr.ph ], [ %i.cc, %bb.j ]
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !440
  %i.l = tail call ptr @lf_mlstr_get(ptr noundef %i.k) ; 3 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !539 ; 2 uses
  %.val53 = load i32, ptr %i.e, align 8, !tbaa !537 ; 9 uses
  %.not.i = icmp eq i32 %.val53, 0
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i32 %.val53, -1                  ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36
  %.not24.i = icmp eq ptr %i.p, null
  %i.q = add nsw i32 %.val53, -2
  %spec.select.i = select i1 %.not24.i, i32 %i.q, i32 %i.m ; 2 uses
  %.not251.i = icmp slt i32 %spec.select.i, 0
  br i1 %.not251.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.13.i = phi i32 [ %.2.i, %bb.d ], [ %spec.select.i, %bb.c ] ; 2 uses
  %.0202.i = phi i32 [ %.121.i, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.r = add nuw nsw i32 %.0202.i, %.13.i
  %i.s = lshr i32 %i.r, 1                         ; 4 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.w = tail call noundef i32 @g_utf8_collate(ptr noundef %i.v, ptr noundef readonly %i.l) ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZL22_ptr_array_find_sortedPK10_GPtrArrayPKvPFiS3_S3_E.exit.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.y = icmp slt i32 %i.w, 0                     ; 2 uses
  %i.z = add nuw nsw i32 %i.s, 1
  %i.aa = add nsw i32 %i.s, -1
  %.121.i = select i1 %i.y, i32 %i.z, i32 %.0202.i ; 2 uses
  %.2.i = select i1 %i.y, i32 %.13.i, i32 %i.aa   ; 2 uses
  %.not25.i = icmp sgt i32 %.121.i, %.2.i
  br i1 %.not25.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !540

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.c
  %i.ab = add nsw i32 %.val53, 1
  tail call void @g_ptr_array_set_size(ptr noundef nonnull %i.b, i32 noundef %i.ab)
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !539 ; 3 uses
  %i.ad = icmp sgt i32 %.val53, 0
  br i1 %i.ad, label %bb.e, label %_ZL24_ptr_array_insert_sortedP10_GPtrArrayPKvPFiS2_S2_E.exit

bb.e:                                             ; preds = %.loopexit
  %i.ae = add nsw i32 %.val53, -1                 ; 2 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !36
  %.not.i54 = icmp eq ptr %i.ah, null
  br i1 %.not.i54, label %bb.f, label %.lr.ph.i55.preheader

bb.f:                                             ; preds = %bb.e
  %i.ai = add nsw i32 %.val53, -2
  %.not487.i = icmp eq i32 %.val53, 1
  br i1 %.not487.i, label %_ZL24_ptr_array_insert_sortedP10_GPtrArrayPKvPFiS2_S2_E.exit, label %.lr.ph.i55.preheader

.lr.ph.i55.preheader:                             ; preds = %bb.f, %bb.e
  %.19.i.ph = phi i32 [ %i.ae, %bb.e ], [ %i.ai, %bb.f ]
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.preheader, %bb.g
  %.19.i = phi i32 [ %.2.i56, %bb.g ], [ %.19.i.ph, %.lr.ph.i55.preheader ] ; 2 uses
  %.0388.i = phi i32 [ %.139.i, %bb.g ], [ 0, %.lr.ph.i55.preheader ] ; 2 uses
  %i.aj = add nuw nsw i32 %.0388.i, %.19.i
  %i.ak = lshr i32 %i.aj, 1                       ; 6 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !36
  %i.ao = tail call noundef i32 @g_utf8_collate(ptr noundef %i.an, ptr noundef %i.l) ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %.lr.ph.i55
  %i.aq = add nuw nsw i32 %i.ak, 1
  br label %_ZL24_ptr_array_insert_sortedP10_GPtrArrayPKvPFiS2_S2_E.exit

bb.g:                                             ; preds = %.lr.ph.i55
  %i.ar = icmp slt i32 %i.ao, 0                   ; 2 uses
  %i.as = add nuw nsw i32 %i.ak, 1
  %i.at = add nsw i32 %i.ak, -1
  %.139.i = select i1 %i.ar, i32 %i.as, i32 %.0388.i ; 2 uses
  %.2.i56 = select i1 %i.ar, i32 %.19.i, i32 %i.at ; 3 uses
end_hunk_1
