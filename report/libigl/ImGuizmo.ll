Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ImGuizmo?download=true
inline.NumInlined: 554
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  %i.qk = shufflevector <4 x float> %i.qi, <4 x float> %i.qj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ql = fmul <4 x float> %i.qg, %i.qk
  %i.qm = insertelement <4 x float> poison, float %i.py, i64 0
  %i.qn = shufflevector <4 x float> %i.qm, <4 x float> %i.qg, <4 x i32> <i32 0, i32 7, i32 5, i32 6> ; 2 uses
  %i.qo = shufflevector <2 x float> %i.pe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qp = shufflevector <4 x float> %i.qn, <4 x float> %i.qo, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.qq = insertelement <4 x float> %i.qp, float %i.or, i64 3
  %i.qr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qn, <4 x float> %i.qq, <4 x float> %i.ql) ; 6 uses
  %i.qs = extractelement <4 x float> %i.qr, i64 0
  %i.qt = tail call float @llvm.fmuladd.f32(float %i.qa, float %i.qa, float %i.qs)
  %foldExtExtBinop217 = fmul <4 x float> %i.qr, %i.qr
  %i.qu = extractelement <4 x float> %foldExtExtBinop217, i64 1
  %i.qv = extractelement <4 x float> %i.qr, i64 3 ; 3 uses
  %i.qw = tail call float @llvm.fmuladd.f32(float %i.qv, float %i.qv, float %i.qu)
  %i.qx = extractelement <4 x float> %i.qr, i64 2 ; 3 uses
  %i.qy = tail call float @llvm.fmuladd.f32(float %i.qx, float %i.qx, float %i.qw)
  %i.qz = insertelement <2 x float> poison, float %i.qt, i64 0
  %i.ra = insertelement <2 x float> %i.qz, float %i.qy, i64 1
  %i.rb = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ra)
  %i.rc = fdiv <2 x float> splat (float 1.000000e+00), %i.rb ; 3 uses
  %i.rd = extractelement <2 x float> %i.rc, i64 0 ; 2 uses
  %i.re = fmul float %i.py, %i.rd                 ; 2 uses
  %i.rf = fmul float %i.qa, %i.rd                 ; 2 uses
  %i.rg = extractelement <2 x float> %i.rc, i64 1 ; 2 uses
  %i.rh = fmul float %i.qv, %i.rg
  %i.ri = insertelement <4 x float> poison, float %i.pz, i64 0
  %i.rj = shufflevector <4 x float> %i.ri, <4 x float> %i.qr, <2 x i32> <i32 0, i32 5>
  %i.rk = fmul <2 x float> %i.rj, %i.rc           ; 3 uses
  %i.rl = fmul float %i.qx, %i.rg
  %i.rm = extractelement <2 x float> %i.rk, i64 0
  %i.rn = fmul float %i.qc, %i.rm
  %i.ro = extractelement <2 x float> %i.qb, i64 0
  %i.rp = tail call float @llvm.fmuladd.f32(float %i.re, float %i.ro, float %i.rn)
  %i.rq = tail call noundef float @llvm.fmuladd.f32(float %i.rf, float %i.pc, float %i.rp) ; 3 uses
  %i.rr = fcmp olt float %i.rq, f0xBF7FF972
  %i.rs = fcmp ogt float %i.rq, f0x3F7FF972
  %i.rt = select i1 %i.rs, float f0x3F7FF972, float %i.rq
  %i.ru = select i1 %i.rr, float f0xBF7FF972, float %i.rt
  %i.rv = tail call float @acosf(float noundef %i.ru) #19 ; 2 uses
  %shift219 = shufflevector <2 x float> %i.rk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop220 = fmul <2 x float> %i.rk, %shift219
  %i.rw = extractelement <2 x float> %foldExtExtBinop220, i64 0
  %i.rx = tail call float @llvm.fmuladd.f32(float %i.re, float %i.rh, float %i.rw)
  %i.ry = tail call noundef float @llvm.fmuladd.f32(float %i.rf, float %i.rl, float %i.rx)
  %i.rz = fcmp olt float %i.ry, 0.000000e+00
  %i.sa = fneg float %i.rv
  %i.sb = select i1 %i.rz, float %i.rv, float %i.sa ; 8 uses
  store float %i.sb, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8, !tbaa !73
  %.not29.i = icmp eq ptr %6, null
  br i1 %.not29.i, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.sc = load float, ptr %6, align 4, !tbaa !10
  %i.sd = fmul float %i.sc, f0x3C8EFA35           ; 4 uses
  %i.se = fcmp ugt float %i.sd, f0x34000000
  br i1 %i.se, label %bb.t, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i

bb.t:                                             ; preds = %bb.s
  %i.sf = tail call float @fmodf(float noundef %i.sb, float noundef %i.sd) #19 ; 3 uses
  %i.sg = tail call float @llvm.fabs.f32(float %i.sf)
  %i.sh = fdiv float %i.sg, %i.sd                 ; 2 uses
  %i.si = fcmp olt float %i.sh, 5.000000e-01
  br i1 %i.si, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.sj = fsub float %i.sb, %i.sf
  br label %.sink.split.i.i

bb.v:                                             ; preds = %bb.t
  %i.sk = fcmp ogt float %i.sh, 5.000000e-01
  br i1 %i.sk, label %bb.w, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i

bb.w:                                             ; preds = %bb.v
  %i.sl = fsub float %i.sb, %i.sf
  %i.sm = fcmp olt float %i.sb, 0.000000e+00
  %i.sn = select i1 %i.sm, float -1.000000e+00, float 1.000000e+00
  %i.so = tail call float @llvm.fmuladd.f32(float %i.sd, float %i.sn, float %i.sl)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.w, %bb.u
  %.sink.i.i = phi float [ %i.sj, %bb.u ], [ %i.so, %bb.w ] ; 2 uses
  store float %.sink.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8, !tbaa !10
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i

_ZN8ImGuizmoL11ComputeSnapEPff.exit.i:            ; preds = %.sink.split.i.i, %bb.v, %bb.s, %bb.r
  %i.sp = phi float [ %.sink.i.i, %.sink.split.i.i ], [ %i.sb, %bb.v ], [ %i.sb, %bb.s ], [ %i.sb, %bb.r ] ; 2 uses
  %i.sq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), align 4, !tbaa !16
  %i.sr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 220), align 4, !tbaa !16
  %i.ss = fmul float %i.pf, %i.sr
  %i.st = tail call float @llvm.fmuladd.f32(float %i.ph, float %i.sq, float %i.ss)
  %i.su = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 236), align 4, !tbaa !16
  %i.sv = tail call float @llvm.fmuladd.f32(float %i.or, float %i.su, float %i.st) ; 3 uses
  %i.sw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 208), align 8, !tbaa !16
  %i.sx = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 224), align 8, !tbaa !16
  %i.sy = shufflevector <2 x float> %i.pe, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.sz = fmul <2 x float> %i.sy, %i.sx
  %i.ta = shufflevector <2 x float> %i.pe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ta, <2 x float> %i.sw, <2 x float> %i.sz)
  %i.tc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 240), align 8, !tbaa !16
  %i.td = insertelement <2 x float> poison, float %i.or, i64 0
  %i.te = shufflevector <2 x float> %i.td, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.te, <2 x float> %i.tc, <2 x float> %i.tb) ; 4 uses
  %foldExtExtBinop222 = fmul <2 x float> %i.tf, %i.tf
  %i.tg = extractelement <2 x float> %foldExtExtBinop222, i64 0
  %i.th = tail call float @llvm.fmuladd.f32(float %i.sv, float %i.sv, float %i.tg)
  %i.ti = extractelement <2 x float> %i.tf, i64 1 ; 2 uses
  %i.tj = tail call float @llvm.fmuladd.f32(float %i.ti, float %i.ti, float %i.th)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.tj)
  %i.tk = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.tl = fmul float %i.sv, %i.tk                 ; 3 uses
  %i.tm = insertelement <2 x float> poison, float %i.tk, i64 0
  %i.tn = shufflevector <2 x float> %i.tm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.to = fmul <2 x float> %i.tf, %i.tn           ; 4 uses
  %foldExtExtBinop224 = fmul <2 x float> %i.to, %i.to
  %i.tp = extractelement <2 x float> %foldExtExtBinop224, i64 0
  %i.tq = tail call float @llvm.fmuladd.f32(float %i.tl, float %i.tl, float %i.tp)
  %i.tr = extractelement <2 x float> %i.to, i64 1 ; 2 uses
  %i.ts = tail call noundef float @llvm.fmuladd.f32(float %i.tr, float %i.tr, float %i.tq) ; 2 uses
  %i.tt = fcmp olt float %i.ts, f0x34000000
  br i1 %i.tt, label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i
  %i.tu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 756), align 4, !tbaa !72
  %i.tv = fsub float %i.sp, %i.tu                 ; 2 uses
  %sqrt.i.i26 = tail call float @llvm.sqrt.f32(float %i.ts)
  %i.tw = fdiv float 1.000000e+00, %sqrt.i.i26    ; 2 uses
  %i.tx = fmul float %i.tl, %i.tw                 ; 5 uses
  %i.ty = insertelement <2 x float> poison, float %i.tw, i64 0
  %i.tz = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ua = fmul <2 x float> %i.to, %i.tz           ; 6 uses
  %i.ub = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.uc = fmul float %i.tx, %i.tx
  %i.ud = extractelement <2 x float> %i.ua, i64 0
  %i.ue = fmul float %i.tx, %i.ud
  %i.uf = insertelement <2 x float> %i.ua, float %i.tx, i64 0
  %i.ug = fmul <2 x float> %i.ub, %i.uf
  %i.uh = tail call float @sinf(float noundef %i.tv) #19
  %i.ui = tail call float @cosf(float noundef %i.tv) #19 ; 3 uses
  %i.uj = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.uh, i64 0
  %i.uk = shufflevector <4 x float> %i.uj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ul = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.ui, i64 2
  %i.um = fsub <4 x float> %i.uk, %i.ul           ; 4 uses
  %i.un = extractelement <4 x float> %i.um, i64 2
  %i.uo = tail call float @llvm.fmuladd.f32(float %i.uc, float %i.un, float %i.ui) ; 3 uses
  %i.up = fmul <2 x float> %i.ua, %i.ua
  %i.uq = shufflevector <4 x float> %i.um, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ur = insertelement <2 x float> poison, float %i.ui, i64 0
  %i.us = shufflevector <2 x float> %i.ur, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ut = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.up, <2 x float> %i.uq, <2 x float> %i.us) ; 4 uses
  %i.uu = shufflevector <4 x float> %i.um, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.uv = fmul <2 x float> %i.ug, %i.uu           ; 3 uses
  %i.uw = shufflevector <2 x float> %i.ua, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 0>
  %i.ux = insertelement <4 x float> %i.uw, float %i.tx, i64 1
  %i.uy = insertelement <4 x float> %i.ux, float %i.ue, i64 2
  %i.uz = fmul <4 x float> %i.uy, %i.um           ; 4 uses
  %i.va = shufflevector <2 x float> %i.uv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 0>
  %i.vb = shufflevector <4 x float> %i.va, <4 x float> %i.uz, <4 x i32> <i32 6, i32 1, i32 4, i32 3> ; 2 uses
  %i.vc = fadd <4 x float> %i.vb, %i.uz
  %i.vd = fsub <4 x float> %i.vb, %i.uz
  %i.ve = shufflevector <4 x float> %i.vd, <4 x float> %i.vc, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 4 uses
  %i.vf = shufflevector <4 x float> %i.uz, <4 x float> poison, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.vg = fadd <2 x float> %i.uv, %i.vf           ; 4 uses
  %i.vh = shufflevector <2 x float> %i.vg, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.vi = shufflevector <2 x float> %i.vg, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.vj = fsub <2 x float> %i.uv, %i.vf           ; 3 uses
  %i.vk = shufflevector <2 x float> %i.vj, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.vl = shufflevector <2 x float> %i.vg, <2 x float> %i.vj, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.vm = shufflevector <2 x float> %i.ut, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 poison>
  %i.vn = shufflevector <3 x float> %i.vm, <3 x float> %i.vi, <3 x i32> <i32 0, i32 3, i32 poison>
  %i.vo = shufflevector <3 x float> %i.vn, <3 x float> %i.vk, <3 x i32> <i32 0, i32 1, i32 4>
  %i.vp = shufflevector <4 x float> %i.ve, <4 x float> poison, <3 x i32> <i32 3, i32 poison, i32 2>
  %i.vq = insertelement <3 x float> %i.vp, float %i.uo, i64 1
  %i.vr = shufflevector <4 x float> %i.ve, <4 x float> poison, <3 x i32> <i32 1, i32 0, i32 poison>
  %i.vs = shufflevector <2 x float> %i.ut, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.vt = shufflevector <3 x float> %i.vr, <3 x float> %i.vs, <3 x i32> <i32 0, i32 1, i32 3>
  %i.vu = insertelement <4 x float> poison, float %i.uo, i64 0
  %i.vv = shufflevector <4 x float> %i.vu, <4 x float> %i.ve, <4 x i32> <i32 0, i32 6, i32 7, i32 poison>
  %i.vw = shufflevector <4 x float> %i.vv, <4 x float> %i.vh, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.vx = shufflevector <2 x float> %i.vg, <2 x float> %i.vj, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.vy = shufflevector <2 x float> %i.ut, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.vz = shufflevector <4 x float> %i.vx, <4 x float> %i.vy, <4 x i32> <i32 0, i32 1, i32 5, i32 1>
  %i.wa = shufflevector <2 x float> %i.vl, <2 x float> %i.ut, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.wb = shufflevector <2 x float> %i.vl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i

_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i: ; preds = %bb.x, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i
  %.sink60.i.i = phi float [ %i.uo, %bb.x ], [ 1.000000e+00, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ] ; 3 uses
  %i.wc = phi <3 x float> [ %i.vo, %bb.x ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ] ; 5 uses
  %i.wd = phi <3 x float> [ %i.vq, %bb.x ], [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ] ; 5 uses
  %i.we = phi <3 x float> [ %i.vt, %bb.x ], [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ] ; 5 uses
  %i.wf = phi <4 x float> [ %i.vw, %bb.x ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ]
  %i.wg = phi <4 x float> [ %i.vz, %bb.x ], [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ]
  %i.wh = phi <4 x float> [ %i.wb, %bb.x ], [ <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ] ; 2 uses
  %i.wi = phi <4 x float> [ %i.ve, %bb.x ], [ zeroinitializer, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ] ; 6 uses
  %i.wj = phi <4 x float> [ %i.wa, %bb.x ], [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ] ; 7 uses
  store float %i.sp, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 756), align 4, !tbaa !72
  %i.wk = trunc nuw i8 %.1.i to i1
  br i1 %i.wk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i
  %i.wl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 532), align 4, !tbaa !13 ; 4 uses
  %i.wm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 200), align 8, !tbaa !10 ; 3 uses
  %i.wn = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !10 ; 4 uses
  %i.wo = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !10 ; 4 uses
  %i.wp = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !10 ; 4 uses
  %i.wq = shufflevector <2 x float> %i.ox, <2 x float> %i.oz, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.wr = insertelement <4 x float> %i.wq, float %i.wm, i64 3
  %.sroa.7262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %65 = extractelement <4 x float> %i.wj, i64 3
  %66 = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 524), align 4, !tbaa !10 ; 2 uses
  %67 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 528), align 8, !tbaa !14
  %68 = shufflevector <2 x float> %66, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 1, i32 1, i32 2, i32 1>
  %69 = shufflevector <4 x float> %i.wi, <4 x float> %i.wj, <4 x i32> <i32 0, i32 6, i32 poison, i32 1>
  %70 = insertelement <4 x float> %69, float 1.000000e+00, i64 2
  %71 = fmul <4 x float> %68, %70
  %i.ws = shufflevector <4 x float> %i.wi, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 poison, i32 2, i32 6, i32 3>
  %i.wt = insertelement <4 x float> %i.ws, float %.sink60.i.i, i64 0
  %72 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wt, <4 x float> zeroinitializer, <4 x float> %71)
  %73 = shufflevector <2 x float> %66, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %74 = shufflevector <4 x float> %i.wj, <4 x float> %73, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.wu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %74, <4 x float> zeroinitializer, <4 x float> %72)
  %i.wv = fadd <4 x float> %i.wu, zeroinitializer ; 4 uses
  %i.ww = shufflevector <4 x float> %i.wv, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %75 = fmul float %67, 0.000000e+00
  %i.wx = shufflevector <4 x float> %i.wv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.wy = fmul <4 x float> %i.wo, %i.wx
  %i.wz = shufflevector <4 x float> %i.wv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wz, <4 x float> %i.wn, <4 x float> %i.wy)
  %i.xb = shufflevector <4 x float> %i.wv, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.xc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xb, <4 x float> %i.wp, <4 x float> %i.xa)
  %i.xd = shufflevector <2 x float> %i.ox, <2 x float> %i.oz, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.xe = insertelement <4 x float> %i.xd, float %i.wm, i64 3
  %.sroa.11266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.xf = fmul <3 x float> %i.we, zeroinitializer ; 2 uses
  %i.xg = insertelement <4 x float> %i.xd, float %i.pa, i64 2
  %i.xh = insertelement <4 x float> %i.xg, float %i.wm, i64 3 ; 2 uses
  %.sroa.15270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.xi = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.wd, <3 x float> zeroinitializer, <3 x float> %i.xf) ; 4 uses
  %i.xj = insertelement <4 x float> %73, float %i.wl, i64 1
  %i.xk = shufflevector <4 x float> %i.xj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.xl = shufflevector <3 x float> %i.xf, <3 x float> %i.xi, <4 x i32> <i32 1, i32 2, i32 0, i32 4>
  %i.xm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xk, <4 x float> %i.wf, <4 x float> %i.xl) ; 2 uses
  %i.xn = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.wl, i64 3
  %i.xo = shufflevector <3 x float> %i.xi, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.xp = shufflevector <4 x float> %i.xm, <4 x float> %i.xo, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.xq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xn, <4 x float> %i.wg, <4 x float> %i.xp) ; 2 uses
  %i.xr = tail call float @llvm.fmuladd.f32(float %i.wl, float 0.000000e+00, float 0.000000e+00)
  %76 = shufflevector <4 x float> %i.xm, <4 x float> %i.xq, <4 x i32> <i32 poison, i32 poison, i32 3, i32 4>
  %i.xs = insertelement <4 x float> %76, float %75, i64 0
  %77 = insertelement <4 x float> %i.xs, float %i.xr, i64 1
  %i.xt = fadd <4 x float> %77, zeroinitializer   ; 4 uses
  %i.xu = shufflevector <4 x float> %i.xt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xu, <4 x float> %i.xe, <4 x float> %i.xc)
  store <4 x float> %i.xv, ptr %.sroa.7262.0..sroa_idx.i, align 4
  %i.xw = shufflevector <4 x float> %i.xt, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.xx = shufflevector <4 x float> %i.xt, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.xy = extractelement <3 x float> %i.xi, i64 0
  %i.xz = tail call float @llvm.fmuladd.f32(float %i.wl, float %65, float %i.xy)
  %i.ya = insertelement <4 x float> %i.xq, float %i.xz, i64 0
  %i.yb = fadd <4 x float> %i.ya, zeroinitializer ; 4 uses
  %i.yc = shufflevector <4 x float> %i.yb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.yd = fmul <4 x float> %i.wo, %i.yc
  %i.ye = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xx, <4 x float> %i.wn, <4 x float> %i.yd)
  %i.yf = shufflevector <4 x float> %i.yb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.yg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yf, <4 x float> %i.wp, <4 x float> %i.ye)
  %i.yh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ww, <4 x float> %i.wr, <4 x float> %i.yg)
  store <4 x float> %i.yh, ptr %4, align 4
  %i.yi = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.wc, <3 x float> zeroinitializer, <3 x float> %i.xi)
  %i.yj = fadd <3 x float> %i.yi, zeroinitializer ; 3 uses
  %i.yk = shufflevector <4 x float> %i.yb, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.yl = fmul <4 x float> %i.yk, %i.wo
  %i.ym = shufflevector <4 x float> %i.xt, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.yn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ym, <4 x float> %i.wn, <4 x float> %i.yl)
  %i.yo = shufflevector <4 x float> %i.yb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yo, <4 x float> %i.wp, <4 x float> %i.yn)
  %i.yq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xw, <4 x float> %i.xh, <4 x float> %i.yp)
  %i.yr = shufflevector <3 x float> %i.yj, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ys = fmul <4 x float> %i.yr, %i.wo
  %i.yt = shufflevector <3 x float> %i.yj, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.yu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yt, <4 x float> %i.wn, <4 x float> %i.ys)
  %i.yv = shufflevector <3 x float> %i.yj, <3 x float> poison, <4 x i32> zeroinitializer
  %i.yw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yv, <4 x float> %i.wp, <4 x float> %i.yu)
  %i.yx = fadd <4 x float> %i.xh, %i.yw
  store <4 x float> %i.yq, ptr %.sroa.11266.0..sroa_idx.i, align 4
  store <4 x float> %i.yx, ptr %.sroa.15270.0..sroa_idx.i, align 4
  br label %bb.aa

bb.z:                                             ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i
  %i.yy = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4 ; 4 uses
  %i.yz = shufflevector <4 x float> %i.yy, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.za = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.wi, <4 x i32> <i32 4, i32 poison, i32 5, i32 3>
  %i.zb = shufflevector <4 x float> %i.za, <4 x float> %i.wj, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 3 uses
  %i.zc = fmul <4 x float> %i.yz, %i.zb
  %i.zd = shufflevector <4 x float> %i.yy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ze = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.sink60.i.i, i64 0
  %i.zf = shufflevector <4 x float> %i.ze, <4 x float> %i.wi, <4 x i32> <i32 0, i32 6, i32 7, i32 3> ; 3 uses
  %i.zg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zd, <4 x float> %i.zf, <4 x float> %i.zc)
  %i.zh = shufflevector <4 x float> %i.yy, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.zi = insertelement <4 x float> %i.wh, float 0.000000e+00, i64 3
  %i.zj = shufflevector <4 x float> %i.zi, <4 x float> %i.wj, <4 x i32> <i32 0, i32 1, i32 7, i32 3> ; 3 uses
  %i.zk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zh, <4 x float> %i.zj, <4 x float> %i.zg)
  %i.zl = shufflevector <4 x float> %i.yy, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.zm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zl, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.zk)
  %.sroa.7128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.zn = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4 ; 4 uses
  %i.zo = shufflevector <4 x float> %i.zn, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.zp = fmul <4 x float> %i.zo, %i.zb
  %i.zq = shufflevector <4 x float> %i.zn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zq, <4 x float> %i.zf, <4 x float> %i.zp)
  %i.zs = shufflevector <4 x float> %i.zn, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.zt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zs, <4 x float> %i.zj, <4 x float> %i.zr)
  %i.zu = shufflevector <4 x float> %i.zn, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.zv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zu, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.zt)
  %.sroa.11132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.zw = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4 ; 4 uses
  %i.zx = shufflevector <4 x float> %i.zw, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.zy = fmul <4 x float> %i.zx, %i.zb
  %i.zz = shufflevector <4 x float> %i.zw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aaa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zz, <4 x float> %i.zf, <4 x float> %i.zy)
  %i.aab = shufflevector <4 x float> %i.zw, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aab, <4 x float> %i.zj, <4 x float> %i.aaa)
  %i.aad = shufflevector <4 x float> %i.zw, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aad, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.aac)
  store <4 x float> %i.zm, ptr %4, align 4
  store <4 x float> %i.zv, ptr %.sroa.7128.0..sroa_idx.i, align 4
  store <4 x float> %i.aae, ptr %.sroa.11132.0..sroa_idx.i, align 4
  %.sroa.15136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.aaf = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.wi, <4 x i32> <i32 4, i32 poison, i32 5, i32 3>
  %i.aag = shufflevector <4 x float> %i.aaf, <4 x float> %i.wj, <4 x i32> <i32 0, i32 6, i32 2, i32 3>
  %i.aah = fmul <4 x float> %i.aag, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>
  %i.aai = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %.sink60.i.i, i64 0
  %i.aaj = shufflevector <4 x float> %i.aai, <4 x float> %i.wi, <4 x i32> <i32 0, i32 6, i32 7, i32 3>
  %i.aak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaj, <4 x float> zeroinitializer, <4 x float> %i.aah)
  %i.aal = insertelement <4 x float> %i.wh, float -0.000000e+00, i64 3
  %i.aam = shufflevector <4 x float> %i.aal, <4 x float> %i.wj, <4 x i32> <i32 0, i32 1, i32 7, i32 3>
  %i.aan = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aam, <4 x float> zeroinitializer, <4 x float> %i.aak)
  %i.aao = fadd <4 x float> %i.aan, zeroinitializer
  store <4 x float> %i.aao, ptr %.sroa.15136.0..sroa_idx.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.15136.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 316), i64 16, i1 false), !tbaa.struct !17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %.not25, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aap = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 212), align 4, !tbaa !10 ; 2 uses
  %i.aaq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 216), align 8, !tbaa !10 ; 2 uses
  %i.aar = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 228), align 4, !tbaa !10 ; 2 uses
  %i.aas = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 232), align 8, !tbaa !10 ; 2 uses
  %i.aat = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 244), align 4, !tbaa !10 ; 2 uses
  %i.aau = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 248), align 8, !tbaa !10 ; 2 uses
  %i.aav = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 260), align 4, !tbaa !10 ; 2 uses
  %i.aaw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 264), align 8, !tbaa !10 ; 2 uses
  %i.aax = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), align 4, !tbaa !10 ; 4 uses
  %i.aay = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 220), align 4, !tbaa !10 ; 4 uses
  %i.aaz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 236), align 4, !tbaa !10 ; 3 uses
  %i.aba = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 252), align 4, !tbaa !10 ; 3 uses
  %i.abb = shufflevector <2 x float> %i.aax, <2 x float> %i.aay, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.abc = shufflevector <2 x float> %i.aaz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.abd = shufflevector <4 x float> %i.abb, <4 x float> %i.abc, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.abe = shufflevector <2 x float> %i.aba, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.abf = shufflevector <4 x float> %i.abd, <4 x float> %i.abe, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.abg = fmul <4 x float> %i.abf, zeroinitializer
  %i.abh = shufflevector <2 x float> %i.aax, <2 x float> %i.aay, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.abi = shufflevector <4 x float> %i.abh, <4 x float> %i.abc, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.abj = shufflevector <4 x float> %i.abi, <4 x float> %i.abe, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.abk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abj, <4 x float> zeroinitializer, <4 x float> %i.abg)
  %i.abl = insertelement <4 x float> poison, float %i.aap, i64 0
  %i.abm = insertelement <4 x float> %i.abl, float %i.aar, i64 1
  %i.abn = insertelement <4 x float> %i.abm, float %i.aat, i64 2
  %i.abo = insertelement <4 x float> %i.abn, float %i.aav, i64 3
  %i.abp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abo, <4 x float> zeroinitializer, <4 x float> %i.abk)
  %i.abq = insertelement <4 x float> poison, float %i.aaq, i64 0
  %i.abr = insertelement <4 x float> %i.abq, float %i.aas, i64 1
  %i.abs = insertelement <4 x float> %i.abr, float %i.aau, i64 2
  %i.abt = insertelement <4 x float> %i.abs, float %i.aaw, i64 3
  %i.abu = fadd <4 x float> %i.abt, %i.abp        ; 4 uses
  %i.abv = shufflevector <2 x float> %i.aax, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.abw = fmul <3 x float> %i.we, %i.abv
  %i.abx = shufflevector <2 x float> %i.aax, <2 x float> poison, <3 x i32> zeroinitializer
  %i.aby = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.abx, <3 x float> %i.wd, <3 x float> %i.abw)
  %i.abz = insertelement <3 x float> poison, float %i.aap, i64 0
  %i.aca = shufflevector <3 x float> %i.abz, <3 x float> poison, <3 x i32> zeroinitializer
  %i.acb = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aca, <3 x float> %i.wc, <3 x float> %i.aby)
  %i.acc = insertelement <3 x float> poison, float %i.aaq, i64 0
  %i.acd = shufflevector <3 x float> %i.acc, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ace = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.acd, <3 x float> zeroinitializer, <3 x float> %i.acb) ; 3 uses
  %i.acf = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !10 ; 4 uses
  %i.acg = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !10 ; 4 uses
  %i.ach = shufflevector <3 x float> %i.ace, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aci = fmul <4 x float> %i.ach, %i.acg
  %i.acj = shufflevector <3 x float> %i.ace, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ack = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acj, <4 x float> %i.acf, <4 x float> %i.aci)
  %i.acl = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !10 ; 4 uses
  %i.acm = shufflevector <3 x float> %i.ace, <3 x float> poison, <4 x i32> zeroinitializer
  %i.acn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acm, <4 x float> %i.acl, <4 x float> %i.ack)
  %i.aco = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 4 uses
  %i.acp = shufflevector <4 x float> %i.abu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acp, <4 x float> %i.aco, <4 x float> %i.acn)
  store <4 x float> %i.acq, ptr %5, align 4
  %.sroa.7121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.acr = shufflevector <2 x float> %i.aay, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.acs = fmul <3 x float> %i.we, %i.acr
  %i.act = shufflevector <2 x float> %i.aay, <2 x float> poison, <3 x i32> zeroinitializer
  %i.acu = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.act, <3 x float> %i.wd, <3 x float> %i.acs)
  %i.acv = insertelement <3 x float> poison, float %i.aar, i64 0
  %i.acw = shufflevector <3 x float> %i.acv, <3 x float> poison, <3 x i32> zeroinitializer
  %i.acx = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.acw, <3 x float> %i.wc, <3 x float> %i.acu)
  %i.acy = insertelement <3 x float> poison, float %i.aas, i64 0
  %i.acz = shufflevector <3 x float> %i.acy, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ada = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.acz, <3 x float> zeroinitializer, <3 x float> %i.acx) ; 3 uses
  %i.adb = shufflevector <3 x float> %i.ada, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.adc = fmul <4 x float> %i.adb, %i.acg
  %i.add = shufflevector <3 x float> %i.ada, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ade = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.add, <4 x float> %i.acf, <4 x float> %i.adc)
  %i.adf = shufflevector <3 x float> %i.ada, <3 x float> poison, <4 x i32> zeroinitializer
  %i.adg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adf, <4 x float> %i.acl, <4 x float> %i.ade)
  %i.adh = shufflevector <4 x float> %i.abu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.adi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adh, <4 x float> %i.aco, <4 x float> %i.adg)
  store <4 x float> %i.adi, ptr %.sroa.7121.0..sroa_idx.i, align 4
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.adj = shufflevector <2 x float> %i.aaz, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.adk = fmul <3 x float> %i.we, %i.adj
  %i.adl = shufflevector <2 x float> %i.aaz, <2 x float> poison, <3 x i32> zeroinitializer
  %i.adm = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.adl, <3 x float> %i.wd, <3 x float> %i.adk)
  %i.adn = insertelement <3 x float> poison, float %i.aat, i64 0
  %i.ado = shufflevector <3 x float> %i.adn, <3 x float> poison, <3 x i32> zeroinitializer
  %i.adp = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ado, <3 x float> %i.wc, <3 x float> %i.adm)
  %i.adq = insertelement <3 x float> poison, float %i.aau, i64 0
  %i.adr = shufflevector <3 x float> %i.adq, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ads = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.adr, <3 x float> zeroinitializer, <3 x float> %i.adp) ; 3 uses
  %i.adt = shufflevector <3 x float> %i.ads, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.adu = fmul <4 x float> %i.adt, %i.acg
  %i.adv = shufflevector <3 x float> %i.ads, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.adw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adv, <4 x float> %i.acf, <4 x float> %i.adu)
  %i.adx = shufflevector <3 x float> %i.ads, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ady = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adx, <4 x float> %i.acl, <4 x float> %i.adw)
  %i.adz = shufflevector <4 x float> %i.abu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aea = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adz, <4 x float> %i.aco, <4 x float> %i.ady)
  store <4 x float> %i.aea, ptr %.sroa.11.0..sroa_idx.i, align 4
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aeb = shufflevector <2 x float> %i.aba, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.aec = fmul <3 x float> %i.we, %i.aeb
  %i.aed = shufflevector <2 x float> %i.aba, <2 x float> poison, <3 x i32> zeroinitializer
  %i.aee = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aed, <3 x float> %i.wd, <3 x float> %i.aec)
  %i.aef = insertelement <3 x float> poison, float %i.aav, i64 0
  %i.aeg = shufflevector <3 x float> %i.aef, <3 x float> poison, <3 x i32> zeroinitializer
  %i.aeh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aeg, <3 x float> %i.wc, <3 x float> %i.aee)
  %i.aei = insertelement <3 x float> poison, float %i.aaw, i64 0
  %i.aej = shufflevector <3 x float> %i.aei, <3 x float> poison, <3 x i32> zeroinitializer
  %i.aek = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aej, <3 x float> zeroinitializer, <3 x float> %i.aeh) ; 3 uses
  %i.ael = shufflevector <3 x float> %i.aek, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aem = fmul <4 x float> %i.ael, %i.acg
  %i.aen = shufflevector <3 x float> %i.aek, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aeo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aen, <4 x float> %i.acf, <4 x float> %i.aem)
  %i.aep = shufflevector <3 x float> %i.aek, <3 x float> poison, <4 x i32> zeroinitializer
  %i.aeq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aep, <4 x float> %i.acl, <4 x float> %i.aeo)
  %i.aer = shufflevector <4 x float> %i.abu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
end_hunk_0
begin_hunk_1_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  %i.bxl = fsub float %i.bxj, %i.bxk              ; 3 uses
  %i.bxm = fcmp ogt float %i.bxg, f0x34000000
  br i1 %i.bxm, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.bxn = fmul float %i.bwe, %i.bwz
  %i.bxo = call float @llvm.fabs.f32(float %i.bxn)
  %i.bxp = call float @llvm.fmuladd.f32(float %i.bwx, float %i.bwi, float %i.bxo)
  %i.bxq = call float @llvm.fmuladd.f32(float %i.bxc, float %i.bwj, float %i.bxp)
  %i.bxr = fadd float %i.bxq, 0.000000e+00
  %i.bxs = fdiv float %i.bxr, %i.bxg
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.0.i = phi float [ %i.bxs, %bb.ct ], [ 1.000000e+00, %bb.cs ] ; 3 uses
  br i1 %.not183.i, label %bb.da, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.bxt = fmul float %i.bxl, %.0.i               ; 6 uses
  %i.bxu = getelementptr inbounds [4 x i8], ptr %8, i64 %i.bwu
  %i.bxv = load float, ptr %i.bxu, align 4, !tbaa !10 ; 4 uses
  %i.bxw = fcmp ugt float %i.bxv, f0x34000000
  br i1 %i.bxw, label %bb.cw, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

bb.cw:                                            ; preds = %bb.cv
  %i.bxx = call float @fmodf(float noundef %i.bxt, float noundef %i.bxv) #19 ; 3 uses
  %i.bxy = call float @llvm.fabs.f32(float %i.bxx)
  %i.bxz = fdiv float %i.bxy, %i.bxv              ; 2 uses
  %i.bya = fcmp olt float %i.bxz, 5.000000e-01
  br i1 %i.bya, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.byb = fsub float %i.bxt, %i.bxx
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

bb.cy:                                            ; preds = %bb.cw
  %i.byc = fcmp ogt float %i.bxz, 5.000000e-01
  br i1 %i.byc, label %bb.cz, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

bb.cz:                                            ; preds = %bb.cy
  %i.byd = fsub float %i.bxt, %i.bxx
  %i.bye = fcmp olt float %i.bxt, 0.000000e+00
  %i.byf = select i1 %i.bye, float -1.000000e+00, float 1.000000e+00
  %i.byg = call float @llvm.fmuladd.f32(float %i.bxv, float %i.byf, float %i.byd)
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103:         ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cv
  %.0671.i = phi float [ %i.bxt, %bb.cv ], [ %i.bxt, %bb.cy ], [ %i.byb, %bb.cx ], [ %i.byg, %bb.cz ]
  %i.byh = fcmp ogt float %i.bxl, f0x34000000
  %i.byi = fdiv float %.0671.i, %i.bxl
  %.1.i104 = select i1 %i.byh, float %i.byi, float %.0.i
  br label %bb.da

bb.da:                                            ; preds = %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103, %bb.cu
  %.2.i = phi float [ %.1.i104, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103 ], [ %.0.i, %bb.cu ]
  %i.byj = getelementptr inbounds [16 x i8], ptr %50, i64 %i.bwu ; 2 uses
  %i.byk = load <4 x float>, ptr %i.byj, align 8, !tbaa !10
  %i.byl = insertelement <4 x float> poison, float %.2.i, i64 0
  %i.bym = shufflevector <4 x float> %i.byl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.byn = fmul <4 x float> %i.bym, %i.byk
  store <4 x float> %i.byn, ptr %i.byj, align 8, !tbaa !10
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cr
  %i.byo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 888), align 8, !tbaa !52 ; 2 uses
  %i.byp = icmp eq i32 %i.byo, -1
  br i1 %i.byp, label %bb.dl, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.byq = sext i32 %i.byo to i64                 ; 4 uses
  %i.byr = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), i64 %i.byq ; 3 uses
  %i.bys = load float, ptr %i.byr, align 8, !tbaa !12
  %i.byt = call float @llvm.fabs.f32(float %i.bys) ; 2 uses
  %i.byu = getelementptr inbounds nuw i8, ptr %i.byr, i64 4
  %i.byv = load float, ptr %i.byu, align 4, !tbaa !14 ; 2 uses
  %i.byw = getelementptr inbounds nuw i8, ptr %i.byr, i64 8
  %i.byx = load float, ptr %i.byw, align 8, !tbaa !13
  %i.byy = call float @llvm.fabs.f32(float %i.byx) ; 2 uses
  %i.byz = fmul float %i.bwn, %i.byv
  %i.bza = call float @llvm.fabs.f32(float %i.byz)
  %i.bzb = call float @llvm.fmuladd.f32(float %i.byt, float %i.bwq, float %i.bza)
  %i.bzc = call float @llvm.fmuladd.f32(float %i.byy, float %i.bwr, float %i.bzb) ; 2 uses
  %i.bzd = getelementptr [4 x i8], ptr %7, i64 %i.byq ; 2 uses
  %i.bze = getelementptr i8, ptr %i.bzd, i64 12
  %i.bzf = load float, ptr %i.bze, align 4, !tbaa !10
  %i.bzg = load float, ptr %i.bzd, align 4, !tbaa !10
  %i.bzh = fsub float %i.bzf, %i.bzg              ; 3 uses
  %i.bzi = fcmp ogt float %i.bzc, f0x34000000
  br i1 %i.bzi, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.bzj = fmul float %i.bwe, %i.byv
  %i.bzk = call float @llvm.fabs.f32(float %i.bzj)
  %i.bzl = call float @llvm.fmuladd.f32(float %i.byt, float %i.bwi, float %i.bzk)
  %i.bzm = call float @llvm.fmuladd.f32(float %i.byy, float %i.bwj, float %i.bzl)
  %i.bzn = fadd float %i.bzm, 0.000000e+00
  %i.bzo = fdiv float %i.bzn, %i.bzc
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.0.1.i = phi float [ %i.bzo, %bb.dd ], [ 1.000000e+00, %bb.dc ] ; 3 uses
  br i1 %.not183.i, label %bb.dk, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.bzp = fmul float %i.bzh, %.0.1.i             ; 6 uses
  %i.bzq = getelementptr inbounds [4 x i8], ptr %8, i64 %i.byq
  %i.bzr = load float, ptr %i.bzq, align 4, !tbaa !10 ; 4 uses
  %i.bzs = fcmp ugt float %i.bzr, f0x34000000
  br i1 %i.bzs, label %bb.dg, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i

bb.dg:                                            ; preds = %bb.df
  %i.bzt = call float @fmodf(float noundef %i.bzp, float noundef %i.bzr) #19 ; 3 uses
  %i.bzu = call float @llvm.fabs.f32(float %i.bzt)
  %i.bzv = fdiv float %i.bzu, %i.bzr              ; 2 uses
  %i.bzw = fcmp olt float %i.bzv, 5.000000e-01
  br i1 %i.bzw, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.bzx = fcmp ogt float %i.bzv, 5.000000e-01
  br i1 %i.bzx, label %bb.di, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i

bb.di:                                            ; preds = %bb.dh
  %i.bzy = fsub float %i.bzp, %i.bzt
  %i.bzz = fcmp olt float %i.bzp, 0.000000e+00
  %i.caa = select i1 %i.bzz, float -1.000000e+00, float 1.000000e+00
  %i.cab = call float @llvm.fmuladd.f32(float %i.bzr, float %i.caa, float %i.bzy)
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i

bb.dj:                                            ; preds = %bb.dg
  %i.cac = fsub float %i.bzp, %i.bzt
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i

_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i:          ; preds = %bb.dj, %bb.di, %bb.dh, %bb.df
  %.0671.1.i = phi float [ %i.bzp, %bb.df ], [ %i.bzp, %bb.dh ], [ %i.cac, %bb.dj ], [ %i.cab, %bb.di ]
  %i.cad = fcmp ogt float %i.bzh, f0x34000000
  %i.cae = fdiv float %.0671.1.i, %i.bzh
  %.1.1.i = select i1 %i.cad, float %i.cae, float %.0.1.i
  br label %bb.dk

bb.dk:                                            ; preds = %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i, %bb.de
  %.2.1.i = phi float [ %.1.1.i, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i ], [ %.0.1.i, %bb.de ]
  %i.caf = getelementptr inbounds [16 x i8], ptr %50, i64 %i.byq ; 2 uses
  %i.cag = load <4 x float>, ptr %i.caf, align 8, !tbaa !10
  %i.cah = insertelement <4 x float> poison, float %.2.1.i, i64 0
  %i.cai = shufflevector <4 x float> %i.cah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.caj = fmul <4 x float> %i.cai, %i.cag
  store <4 x float> %i.caj, ptr %i.caf, align 8, !tbaa !10
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.db
  %i.cak = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), align 8, !tbaa !10 ; 4 uses
  %i.cal = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 912), align 8, !tbaa !10 ; 4 uses
  %i.cam = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 928), align 8, !tbaa !10 ; 4 uses
  %i.can = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 944), align 8, !tbaa !10 ; 4 uses
  %i.cao = load <2 x float>, ptr %i.bir, align 8, !tbaa !10 ; 4 uses
  %i.cap = shufflevector <2 x float> %i.cao, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.caq = load <2 x float>, ptr %i.bik, align 8, !tbaa !10 ; 4 uses
  %i.car = shufflevector <2 x float> %i.caq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cas = fmul <4 x float> %i.car, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 3 uses
  %shift254 = shufflevector <4 x float> %i.cas, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop255 = fadd <4 x float> %i.cap, %shift254
  %i.cat = extractelement <2 x float> %i.cao, i64 0
  %shift257 = shufflevector <4 x float> %i.cas, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop258 = fadd <4 x float> %i.cap, %shift257
  %i.cau = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cap, <4 x float> zeroinitializer, <4 x float> %i.cas) ; 4 uses
  %i.cav = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 868), align 4, !tbaa !14 ; 4 uses
  %i.caw = load <3 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), align 8, !tbaa !10 ; 6 uses
  %i.cax = extractelement <3 x float> %i.caw, i64 0
  %i.cay = extractelement <3 x float> %i.caw, i64 2
  %i.caz = load <2 x float>, ptr %i.bip, align 8, !tbaa !10 ; 7 uses
  %i.cba = load <2 x float>, ptr %i.biq, align 8, !tbaa !10 ; 4 uses
  %i.cbb = load <2 x float>, ptr %i.bio, align 8, !tbaa !10 ; 5 uses
  %i.cbc = load <2 x float>, ptr %50, align 8, !tbaa !10 ; 6 uses
  %i.cbd = extractelement <2 x float> %i.caz, i64 0 ; 2 uses
  %i.cbe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cbc, <2 x float> zeroinitializer, <2 x float> %i.cbb)
  %i.cbf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.caz, <2 x float> zeroinitializer, <2 x float> %i.cbe)
  %i.cbg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cba, <2 x float> zeroinitializer, <2 x float> %i.cbf) ; 3 uses
  %i.cbh = fmul <2 x float> %i.cbg, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.cbi = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cbh)
  %i.cbj = fmul <2 x float> %i.cbb, zeroinitializer ; 2 uses
  %i.cbk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cbc, <2 x float> zeroinitializer, <2 x float> %i.cbj)
  %i.cbl = fadd <2 x float> %i.cbc, %i.cbj
  %i.cbm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.caz, <2 x float> zeroinitializer, <2 x float> %i.cbl)
  %i.cbn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cba, <2 x float> zeroinitializer, <2 x float> %i.cbm) ; 4 uses
  %i.cbo = fmul <2 x float> %i.cbn, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.cbp = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cbo)
  %i.cbq = fadd <2 x float> %i.caz, %i.cbk
  %i.cbr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cba, <2 x float> zeroinitializer, <2 x float> %i.cbq) ; 3 uses
  %i.cbs = load float, ptr %i.bin, align 4, !tbaa !10 ; 3 uses
  %i.cbt = load <2 x float>, ptr %i.bil, align 8, !tbaa !10 ; 3 uses
  %i.cbu = load float, ptr %i.bim, align 4, !tbaa !10 ; 3 uses
  %i.cbv = shufflevector <2 x float> %i.cbg, <2 x float> %i.cbn, <4 x i32> <i32 0, i32 0, i32 2, i32 poison>
  %i.cbw = insertelement <4 x float> %i.cbv, float %i.cbu, i64 3
  %i.cbx = shufflevector <2 x float> %i.cbg, <2 x float> %i.cbh, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cby = shufflevector <2 x float> %i.cbn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cbz = shufflevector <4 x float> %i.cbx, <4 x float> %i.cby, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.cca = shufflevector <4 x float> %i.cbz, <4 x float> %i.cau, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ccb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cbw, <4 x float> zeroinitializer, <4 x float> %i.cca) ; 4 uses
  %i.ccc = extractelement <4 x float> %i.cau, i64 3
  %i.ccd = fadd float %i.cbu, %i.ccc
  %i.cce = extractelement <2 x float> %i.cbt, i64 0 ; 4 uses
  %i.ccf = shufflevector <2 x float> %i.cbt, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ccg = insertelement <2 x float> %i.ccf, float %i.cbs, i64 0
  %i.cch = shufflevector <2 x float> %i.ccg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cci = shufflevector <4 x float> %i.ccb, <4 x float> %i.cau, <4 x i32> <i32 3, i32 4, i32 poison, i32 poison>
  %i.ccj = insertelement <4 x float> %i.cci, float %i.ccd, i64 2
  %i.cck = shufflevector <4 x float> %i.ccj, <4 x float> %foldExtExtBinop258, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ccl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cch, <4 x float> zeroinitializer, <4 x float> %i.cck) ; 5 uses
  %78 = load float, ptr %i.bis, align 8, !tbaa !10 ; 2 uses
  %i.ccm = extractelement <4 x float> %i.cau, i64 2
  %i.ccn = shufflevector <2 x float> %i.cbn, <2 x float> %i.cbt, <2 x i32> <i32 0, i32 3>
  %i.cco = shufflevector <2 x float> %i.cbo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ccp = shufflevector <4 x float> %foldExtExtBinop255, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.ccq = shufflevector <2 x float> %i.cco, <2 x float> %i.ccp, <2 x i32> <i32 0, i32 3>
  %i.ccr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ccn, <2 x float> zeroinitializer, <2 x float> %i.ccq) ; 2 uses
  %i.ccs = extractelement <2 x float> %i.ccr, i64 0
  %i.cct = fmul <2 x float> %i.cbr, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.ccu = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cct)
  %i.ccv = fadd float %i.cce, %i.ccm
  %i.ccw = shufflevector <2 x float> %i.cbr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ccx = insertelement <2 x float> %i.ccw, float %78, i64 0
  %i.ccy = shufflevector <2 x float> %i.ccx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ccz = shufflevector <2 x float> %i.cbr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %79 = shufflevector <4 x float> %i.ccl, <4 x float> %i.ccz, <4 x i32> <i32 3, i32 1, i32 poison, i32 5>
  %i.cda = insertelement <4 x float> %79, float %i.ccv, i64 2
  %i.cdb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ccy, <4 x float> zeroinitializer, <4 x float> %i.cda) ; 7 uses
  %foldExtExtBinop261 = fadd <4 x float> %i.ccb, %i.cdb
  %i.cdc = extractelement <4 x float> %i.cdb, i64 0
  %80 = shufflevector <4 x float> %i.cdb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.cdd = shufflevector <4 x float> %i.ccb, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cde = insertelement <4 x float> %i.cdd, float %i.cbi, i64 0
  %i.cdf = insertelement <4 x float> %i.cde, float %i.cbp, i64 3
  %i.cdg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %80, <4 x float> zeroinitializer, <4 x float> %i.cdf) ; 3 uses
  %i.cdh = fadd float %i.ccs, %i.cdc
  %81 = shufflevector <4 x float> %i.cdb, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cdi = insertelement <2 x float> %81, float %i.cbs, i64 1
  %i.cdj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cdi, <2 x float> zeroinitializer, <2 x float> %i.ccr) ; 3 uses
  %shift266 = shufflevector <2 x float> %i.cdj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop267 = fadd <2 x float> %i.cdj, %shift266
  %i.cdk = extractelement <4 x float> %i.cdb, i64 2 ; 2 uses
  %82 = shufflevector <4 x float> %i.cdb, <4 x float> %i.ccz, <4 x i32> <i32 0, i32 2, i32 2, i32 4>
  %i.cdl = shufflevector <4 x float> %i.ccb, <4 x float> %i.cdb, <4 x i32> <i32 2, i32 poison, i32 7, i32 poison>
  %i.cdm = insertelement <4 x float> %i.cdl, float %i.ccu, i64 1
  %i.cdn = shufflevector <2 x float> %i.cct, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cdo = shufflevector <4 x float> %i.cdm, <4 x float> %i.cdn, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cdp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %82, <4 x float> zeroinitializer, <4 x float> %i.cdo) ; 3 uses
  %i.cdq = extractelement <4 x float> %i.cdp, i64 3 ; 2 uses
  %i.cdr = fadd float %i.cdq, %i.cdk
  %i.cds = call float @llvm.fmuladd.f32(float %i.cdk, float 0.000000e+00, float %i.cdq)
  %i.cdt = extractelement <4 x float> %i.ccl, i64 2
  %i.cdu = fadd float %i.cds, %i.cdt
  %83 = shufflevector <2 x float> %foldExtExtBinop267, <2 x float> poison, <4 x i32> zeroinitializer
  %84 = shufflevector <4 x float> %i.cdg, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cdv = shufflevector <4 x float> %i.ccl, <4 x float> poison, <4 x i32> zeroinitializer
  %85 = fadd <4 x float> %84, %i.cdv
  %i.cdw = insertelement <4 x float> poison, float %i.cdu, i64 0
  %i.cdx = shufflevector <4 x float> %i.cdw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cdy = fneg float %i.cax                      ; 3 uses
  %i.cdz = fneg float %i.cav                      ; 3 uses
  %i.cea = fneg float %i.cay                      ; 3 uses
  %i.ceb = insertelement <2 x float> poison, float %i.cdz, i64 0
  %i.cec = shufflevector <2 x float> %i.ceb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ced = fmul <2 x float> %i.cbb, %i.cec
  %i.cee = insertelement <2 x float> poison, float %i.cdy, i64 0
  %i.cef = shufflevector <2 x float> %i.cee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ceg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cef, <2 x float> %i.cbc, <2 x float> %i.ced)
  %i.ceh = insertelement <2 x float> poison, float %i.cea, i64 0
  %i.cei = shufflevector <2 x float> %i.ceh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cej = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cei, <2 x float> %i.caz, <2 x float> %i.ceg)
  %i.cek = fadd <2 x float> %i.cba, %i.cej        ; 3 uses
  %i.cel = extractelement <2 x float> %i.caq, i64 0
  %i.cem = fmul float %i.cel, %i.cdz
  %i.cen = call float @llvm.fmuladd.f32(float %i.cdy, float %i.cat, float %i.cem)
  %i.ceo = call float @llvm.fmuladd.f32(float %i.cea, float %i.cce, float %i.cen)
  %i.cep = fadd float %78, %i.ceo                 ; 3 uses
  %i.ceq = extractelement <2 x float> %i.caq, i64 1
  %i.cer = fmul float %i.ceq, %i.cdz
  %i.ces = shufflevector <2 x float> %i.cdj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 1, i32 1>
  %i.cet = insertelement <4 x float> %i.ces, float %i.cdy, i64 0
  %i.ceu = shufflevector <2 x float> %i.cao, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.cev = shufflevector <3 x float> %i.ceu, <3 x float> %i.caw, <4 x i32> <i32 1, i32 3, i32 poison, i32 5>
  %i.cew = insertelement <4 x float> %i.cev, float %i.cav, i64 2
  %i.cex = shufflevector <4 x float> %i.cdg, <4 x float> %i.cdp, <4 x i32> <i32 poison, i32 3, i32 4, i32 poison>
  %i.cey = insertelement <4 x float> %i.cex, float %i.cer, i64 0
  %i.cez = insertelement <4 x float> %i.cey, float %i.cdh, i64 3
  %i.cfa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cet, <4 x float> %i.cew, <4 x float> %i.cez) ; 4 uses
  %i.cfb = insertelement <4 x float> poison, float %i.cea, i64 0
  %i.cfc = shufflevector <4 x float> %i.cfb, <4 x float> %i.ccl, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  %i.cfd = shufflevector <3 x float> %i.caw, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.cfe = insertelement <4 x float> %i.cfd, float %i.cbu, i64 0
  %i.cff = insertelement <4 x float> %i.cfe, float %i.cav, i64 2
  %i.cfg = shufflevector <4 x float> %i.cfa, <4 x float> %i.cdg, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %86 = shufflevector <4 x float> %i.cfg, <4 x float> %foldExtExtBinop261, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cfh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cfc, <4 x float> %i.cff, <4 x float> %86) ; 4 uses
  %i.cfi = extractelement <4 x float> %i.cfh, i64 0
  %i.cfj = fadd float %i.cbs, %i.cfi              ; 2 uses
  %i.cfk = fmul <2 x float> %i.cek, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.cfl = shufflevector <2 x float> %i.cek, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cfm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cfk, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.cfl)
  %i.cfn = shufflevector <4 x float> %i.ccl, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.cfo = shufflevector <2 x float> %i.cek, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.cfp = shufflevector <3 x float> %i.caw, <3 x float> %i.cfo, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %i.cfq = insertelement <4 x float> %i.cfp, float %i.cav, i64 1
  %i.cfr = shufflevector <2 x float> %i.cfk, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cfs = shufflevector <4 x float> %i.cdp, <4 x float> %i.cfr, <4 x i32> <i32 1, i32 2, i32 poison, i32 5>
  %i.cft = insertelement <4 x float> %i.cfs, float %i.cdr, i64 2
  %i.cfu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cfn, <4 x float> %i.cfq, <4 x float> %i.cft) ; 5 uses
  %i.cfv = insertelement <3 x float> poison, float %i.cep, i64 0
  %i.cfw = shufflevector <4 x float> %i.cfu, <4 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 3>
  %i.cfx = shufflevector <3 x float> %i.cfv, <3 x float> %i.cfw, <3 x i32> <i32 0, i32 0, i32 5>
  %i.cfy = shufflevector <2 x float> %i.cfm, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 poison>
  %i.cfz = insertelement <3 x float> %i.cfy, float %i.cep, i64 2
  %i.cga = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cfx, <3 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <3 x float> %i.cfz)
  %i.cgb = insertelement <3 x float> poison, float %i.cfj, i64 0
  %i.cgc = shufflevector <3 x float> %i.cgb, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cgd = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cgc, <3 x float> %i.caw, <3 x float> %i.cga) ; 3 uses
  %i.cge = extractelement <4 x float> %i.cfu, i64 3
  %i.cgf = call float @llvm.fmuladd.f32(float %i.cep, float 0.000000e+00, float %i.cge)
  %i.cgg = fadd float %i.cgf, %i.cfj
  %i.cgh = shufflevector <4 x float> %i.cfa, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cgi = fmul <4 x float> %i.cal, %i.cgh
  %i.cgj = shufflevector <4 x float> %i.cfa, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cgk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cgj, <4 x float> %i.cak, <4 x float> %i.cgi)
  %i.cgl = shufflevector <4 x float> %i.cfa, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cgm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cgl, <4 x float> %i.cam, <4 x float> %i.cgk)
  %i.cgn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %83, <4 x float> %i.can, <4 x float> %i.cgm)
  %i.cgo = shufflevector <4 x float> %i.cfh, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cgp = fmul <4 x float> %i.cgo, %i.cal
  %i.cgq = shufflevector <4 x float> %i.cfh, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cgr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cgq, <4 x float> %i.cak, <4 x float> %i.cgp)
  %i.cgs = shufflevector <4 x float> %i.cfh, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cgt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cgs, <4 x float> %i.cam, <4 x float> %i.cgr)
  %i.cgu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %85, <4 x float> %i.can, <4 x float> %i.cgt)
  %i.cgv = shufflevector <4 x float> %i.cfu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cgw = fmul <4 x float> %i.cal, %i.cgv
  %i.cgx = shufflevector <4 x float> %i.cfu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cgy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cgx, <4 x float> %i.cak, <4 x float> %i.cgw)
  %i.cgz = shufflevector <4 x float> %i.cfu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cha = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cgz, <4 x float> %i.cam, <4 x float> %i.cgy)
  %i.chb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cdx, <4 x float> %i.can, <4 x float> %i.cha)
  %i.chc = shufflevector <3 x float> %i.cgd, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.chd = fmul <4 x float> %i.cal, %i.chc
  %i.che = shufflevector <3 x float> %i.cgd, <3 x float> poison, <4 x i32> zeroinitializer
  %i.chf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.che, <4 x float> %i.cak, <4 x float> %i.chd)
  %i.chg = shufflevector <3 x float> %i.cgd, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.chh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.chg, <4 x float> %i.cam, <4 x float> %i.chf)
  %i.chi = insertelement <4 x float> poison, float %i.cgg, i64 0
  %i.chj = shufflevector <4 x float> %i.chi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.chk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.chj, <4 x float> %i.can, <4 x float> %i.chh)
  store <4 x float> %i.cgn, ptr %4, align 4
  store <4 x float> %i.cgu, ptr %.sroa.7450.0..sroa_idx.i, align 4
  store <4 x float> %i.chb, ptr %.sroa.11.0..sroa_idx.i92, align 4
  store <4 x float> %i.chk, ptr %.sroa.15.0..sroa_idx.i95, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #19
  %i.chl = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4
  %i.chm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.chn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.cho = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.chp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.chq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.chr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.chs = load float, ptr %i.bit, align 4, !tbaa !10
  %i.cht = load float, ptr %7, align 4, !tbaa !10
  %i.chu = fsub float %i.chs, %i.cht
  %i.chv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 2 uses
  %i.chw = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4
  %i.chx = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4
  %i.chy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), align 8, !tbaa !10 ; 3 uses
  %i.chz = shufflevector <2 x float> %i.chv, <2 x float> %i.chy, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.cia = insertelement <4 x float> poison, float %i.chp, i64 2
  %i.cib = shufflevector <2 x float> %i.chy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cic = shufflevector <4 x float> %i.cia, <4 x float> %i.cib, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.cid = shufflevector <4 x float> %i.chx, <4 x float> %i.cic, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cie = fmul <4 x float> %i.chz, %i.cid
  %i.cif = shufflevector <2 x float> %i.chv, <2 x float> %i.chy, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.cig = insertelement <4 x float> poison, float %i.cho, i64 2
  %i.cih = shufflevector <4 x float> %i.cig, <4 x float> %i.cib, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.cii = shufflevector <4 x float> %i.chw, <4 x float> %i.cih, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cij = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cif, <4 x float> %i.cii, <4 x float> %i.cie)
  %i.cik = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 904), align 8, !tbaa !13 ; 2 uses
  %i.cil = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4
  %i.cim = insertelement <4 x float> %i.chl, float %i.cik, i64 1
  %i.cin = shufflevector <4 x float> %i.cim, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cio = insertelement <4 x float> %i.cil, float %i.chq, i64 2
  %i.cip = insertelement <4 x float> %i.cio, float %i.cik, i64 3
  %i.ciq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cin, <4 x float> %i.cip, <4 x float> %i.cij) ; 4 uses
  %i.cir = extractelement <4 x float> %i.ciq, i64 0
  %i.cis = fadd float %i.chm, %i.cir
  %i.cit = extractelement <4 x float> %i.ciq, i64 1
  %i.ciu = fadd float %i.chn, %i.cit
  %i.civ = extractelement <4 x float> %i.ciq, i64 2
  %i.ciw = fadd float %i.chr, %i.civ
  %i.cix = fdiv float 5.000000e-01, %i.ciw        ; 2 uses
  %i.ciy = fmul float %i.cis, %i.cix
  %i.ciz = fmul float %i.ciu, %i.cix
  %i.cja = fadd float %i.ciz, 5.000000e-01
  %i.cjb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 920), align 8, !tbaa !13
  %i.cjc = load <2 x float>, ptr %i.biu, align 4, !tbaa !10
  %i.cjd = load <2 x float>, ptr %i.biv, align 4, !tbaa !10
  %i.cje = fsub <2 x float> %i.cjc, %i.cjd
  %i.cjf = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 912), align 8 ; 2 uses
  %i.cjg = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 928), align 8 ; 2 uses
  %i.cjh = shufflevector <2 x float> %i.cbc, <2 x float> %i.cbb, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.cji = shufflevector <4 x float> %i.cjh, <4 x float> %i.cjf, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %i.cjj = shufflevector <4 x float> %i.cji, <4 x float> %i.cjg, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.cjk = fmul <4 x float> %i.cjj, %i.cjj
  %i.cjl = shufflevector <2 x float> %i.cbc, <2 x float> %i.cbb, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.cjm = shufflevector <4 x float> %i.cjl, <4 x float> %i.cjf, <4 x i32> <i32 0, i32 4, i32 2, i32 poison>
  %i.cjn = shufflevector <4 x float> %i.cjm, <4 x float> %i.cjg, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.cjo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cjn, <4 x float> %i.cjn, <4 x float> %i.cjk)
  %i.cjp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 936), align 8, !tbaa !13
  %i.cjq = shufflevector <2 x float> %i.cao, <2 x float> %i.caq, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.cjr = insertelement <4 x float> %i.cjq, float %i.cjb, i64 1
  %i.cjs = insertelement <4 x float> %i.cjr, float %i.cjp, i64 3 ; 2 uses
  %i.cjt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cjs, <4 x float> %i.cjs, <4 x float> %i.cjo) ; 2 uses
  %i.cju = shufflevector <4 x float> %i.ciq, <4 x float> %i.cjt, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cjv = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.cju) ; 4 uses
  %i.cjw = extractelement <4 x float> %i.cjv, i64 0
  %i.cjx = fmul float %i.chu, %i.cjw
  %i.cjy = extractelement <4 x float> %i.cjv, i64 1
  %i.cjz = fmul float %i.cjy, %i.cjx
  %i.cka = fpext float %i.cjz to double
  %i.ckb = extractelement <4 x float> %i.cjt, i64 3
  %foldExtExtBinop269 = fmul <2 x float> %i.caz, %i.caz
  %i.ckc = extractelement <2 x float> %foldExtExtBinop269, i64 1
  %i.ckd = call float @llvm.fmuladd.f32(float %i.cbd, float %i.cbd, float %i.ckc)
  %i.cke = call float @llvm.fmuladd.f32(float %i.cce, float %i.cce, float %i.ckd)
  %sqrt.i330.i = call noundef float @llvm.sqrt.f32(float %i.ckb)
  %i.ckf = shufflevector <4 x float> %i.cjv, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ckg = insertelement <2 x float> %i.ckf, float %sqrt.i330.i, i64 1
  %i.ckh = fmul <2 x float> %i.cje, %i.ckg
  %sqrt.i331.i = call noundef float @llvm.sqrt.f32(float %i.cke)
  %i.cki = shufflevector <4 x float> %i.cjv, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.ckj = insertelement <2 x float> %i.cki, float %sqrt.i331.i, i64 1
  %i.ckk = fmul <2 x float> %i.ckj, %i.ckh
  %i.ckl = fpext <2 x float> %i.ckk to <2 x double> ; 2 uses
  %i.ckm = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ciy, i64 0
  %i.ckn = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.cja, i64 1
  %i.cko = fsub <2 x float> %i.ckm, %i.ckn
  %i.ckp = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10
  %i.ckq = fmul <2 x float> %i.ckp, %i.cko
  %i.ckr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.cks = fadd <2 x float> %i.ckr, %i.ckq        ; 2 uses
  %i.ckt = extractelement <2 x double> %i.ckl, i64 0
  %i.cku = extractelement <2 x double> %i.ckl, i64 1
  %i.ckv = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.m, i64 noundef 512, ptr noundef nonnull @.str.2, double noundef %i.cka, double noundef %i.ckt, double noundef %i.cku) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #19
  %i.ckw = fadd <2 x float> %i.cks, splat (float 1.500000e+01)
  store <2 x float> %i.ckw, ptr %51, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.bda, ptr noundef nonnull align 4 dereferenceable(8) %51, i32 noundef -16777216, ptr noundef nonnull %i.m, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #19
  %i.ckx = fadd <2 x float> %i.cks, splat (float 1.400000e+01)
  store <2 x float> %i.ckx, ptr %52, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.bda, ptr noundef nonnull align 4 dereferenceable(8) %52, i32 noundef -1, ptr noundef nonnull %i.m, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.cb
  %i.cky = load i8, ptr %i.biw, align 8, !tbaa !47, !range !33, !noundef !34
  %i.ckz = trunc nuw i8 %i.cky to i1
  br i1 %i.ckz, label %bb.dn, label %.thread754.i

.thread754.i:                                     ; preds = %bb.dm
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  %indvars.iv.next709.old.i = add nuw nsw i64 %indvars.iv708.i, 1 ; 2 uses
  %exitcond712.not.old.i = icmp eq i64 %indvars.iv.next709.old.i, %wide.trip.count711.i
  br i1 %exitcond712.not.old.i, label %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.thread754.i, %bb.dn
  %indvars.iv708.i.be = phi i64 [ %indvars.iv.next709.old.i, %.thread754.i ], [ %indvars.iv.next709.i, %bb.dn ]
  br label %.backedge, !llvm.loop !63

bb.dn:                                            ; preds = %bb.dm
  %.pre724.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51, !range !33 ; 2 uses
  %i.cla = trunc nuw i8 %.pre724.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  %indvars.iv.next709.i = add nuw nsw i64 %indvars.iv708.i, 1 ; 2 uses
  %exitcond712.not.i = icmp eq i64 %indvars.iv.next709.i, %wide.trip.count711.i
  %or.cond756.i = select i1 %i.cla, i1 true, i1 %exitcond712.not.i
  br i1 %or.cond756.i, label %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit, label %.backedge.backedge

_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit: ; preds = %.thread754.i, %bb.dn
  %i.clb = phi i8 [ 0, %.thread754.i ], [ %.pre724.i, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  br label %bb.do

bb.do:                                            ; preds = %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge, %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit
  %i.clc = phi i8 [ %.pre, %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge ], [ %i.clb, %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit ]
  %i.cld = trunc nuw i8 %i.clc to i1
  br i1 %i.cld, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  switch i32 %2, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit [
    i32 1, label %bb.dq
    i32 0, label %bb.ei
    i32 2, label %bb.ey
  ]

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  %i.cle = getelementptr inbounds nuw i8, ptr %35, i64 32 ; 4 uses
  %i.clf = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  %i.clg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50, !range !33, !noundef !34
  %i.clh = trunc nuw i8 %i.clg to i1
  br i1 %i.clh, label %bb.dr, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.dq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.i, i8 -103, i64 28, i1 false), !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i

bb.dr:                                            ; preds = %bb.dq
  %i.cli = icmp eq i32 %.0, 11
  %i.clj = select i1 %i.cli, i32 -1978629889, i32 -1 ; 2 uses
  store i32 %i.clj, ptr %i.i, align 16, !tbaa !52
  %i.clk = icmp eq i32 %.0, 8
  %i.cll = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  br i1 %i.clk, label %.thread70.i.i, label %bb.ds

.thread70.i.i:                                    ; preds = %bb.dr
  store i32 -1978629889, ptr %i.cll, align 4, !tbaa !52
  %i.clm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 -16733696, ptr %i.clm, align 8, !tbaa !52
  br label %bb.du

bb.ds:                                            ; preds = %bb.dr
end_hunk_1
