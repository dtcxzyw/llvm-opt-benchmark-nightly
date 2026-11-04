Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/X3DImporter_Geometry3D?download=true
inline.NumInlined: 1396
inline.NumDeleted: 523
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp11X3DImporter13readExtrusionERN4pugi8xml_nodeE:bb.a
  br i1 %i.qq, label %bb.bv, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.bv:                                            ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #23
          to label %.noexc361 unwind label %bb.cy

.noexc361:                                        ; preds = %bb.bv
  unreachable

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %.not.i.i.i.i359 = icmp eq ptr %i.qk, %i.ql
  br i1 %.not.i.i.i.i359, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  store i64 0, ptr %18, align 8
  br label %bb.cp

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.qr = mul nuw nsw i64 %i.qp, 12               ; 3 uses
  %i.qs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qr) #21
          to label %.noexc362 unwind label %bb.cy ; 4 uses

.noexc362:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.qs, ptr %18, align 8
  %i.qt = getelementptr inbounds nuw [12 x i8], ptr %i.qs, i64 %i.qp
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qs, i8 0, i64 %i.qr, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.qs, i64 %i.qr
  br label %bb.cp

.lr.ph926:                                        ; preds = %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit, %bb.co
  %.0227925 = phi i64 [ %i.aei, %bb.co ], [ 0, %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit ] ; 16 uses
  %.sroa.0796.0924 = phi <2 x float> [ %.sroa.015.3.i, %bb.co ], [ zeroinitializer, %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit ] ; 4 uses
  %.sroa.10801.0923 = phi float [ %.sroa.31.3.i, %bb.co ], [ 0.000000e+00, %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit ] ; 3 uses
  %.val = load ptr, ptr %15, align 8              ; 21 uses
  %.val256 = load ptr, ptr %i.au, align 8
  %i.qu = ptrtoint ptr %.val256 to i64
  %i.qv = ptrtoint ptr %.val to i64
  %i.qw = sub i64 %i.qu, %i.qv                    ; 2 uses
  %i.qx = sdiv exact i64 %i.qw, 12                ; 2 uses
  %i.qy = add nsw i64 %i.qx, -1                   ; 5 uses
  %i.qz = icmp eq i64 %.0227925, 0                ; 3 uses
  %i.ra = icmp eq i64 %.0227925, %i.qy            ; 2 uses
  %or.cond.i = or i1 %i.qz, %i.ra
  br i1 %or.cond.i, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %.lr.ph926
  br i1 %i.qh, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.rb = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.rc = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.qy ; 2 uses
  %i.rd = load <2 x float>, ptr %i.rb, align 4
  %i.re = load <2 x float>, ptr %i.rc, align 4
  %i.rf = fsub <2 x float> %i.rd, %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.rh = load float, ptr %i.rg, align 4
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.rj = load float, ptr %i.ri, align 4
  %i.rk = fsub float %i.rh, %i.rj
  br label %bb.cc

bb.by:                                            ; preds = %bb.bw
  br i1 %i.qz, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.rl = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.rm = load <2 x float>, ptr %i.rl, align 4
  %i.rn = load <2 x float>, ptr %.val, align 4
  %i.ro = fsub <2 x float> %i.rm, %i.rn
  %i.rp = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.rq = load float, ptr %i.rp, align 4
  %i.rr = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.rs = load float, ptr %i.rr, align 4
  %i.rt = fsub float %i.rq, %i.rs
  br label %bb.cc

bb.ca:                                            ; preds = %bb.by
  %i.ru = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.qy ; 2 uses
  %i.rv = getelementptr i8, ptr %.val, i64 %i.qw  ; 2 uses
  %i.rw = getelementptr i8, ptr %i.rv, i64 -24
  %i.rx = load <2 x float>, ptr %i.ru, align 4
  %i.ry = load <2 x float>, ptr %i.rw, align 4
  %i.rz = fsub <2 x float> %i.rx, %i.ry
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.sb = load float, ptr %i.sa, align 4
  %i.sc = getelementptr i8, ptr %i.rv, i64 -16
  %i.sd = load float, ptr %i.sc, align 4
  %i.se = fsub float %i.sb, %i.sd
  br label %bb.cc

bb.cb:                                            ; preds = %.lr.ph926
  %i.sf = getelementptr [12 x i8], ptr %.val, i64 %.0227925 ; 4 uses
  %i.sg = getelementptr i8, ptr %i.sf, i64 12
  %i.sh = getelementptr i8, ptr %i.sf, i64 -12
  %i.si = load <2 x float>, ptr %i.sg, align 4
  %i.sj = load <2 x float>, ptr %i.sh, align 4
  %i.sk = fsub <2 x float> %i.si, %i.sj
  %i.sl = getelementptr i8, ptr %i.sf, i64 20
  %i.sm = load float, ptr %i.sl, align 4
  %i.sn = getelementptr i8, ptr %i.sf, i64 -4
  %i.so = load float, ptr %i.sn, align 4
  %i.sp = fsub float %i.sm, %i.so
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bx
  %.sroa.13.0.i = phi float [ %i.rk, %bb.bx ], [ %i.se, %bb.ca ], [ %i.rt, %bb.bz ], [ %i.sp, %bb.cb ] ; 4 uses
  %i.sq = phi <2 x float> [ %i.rf, %bb.bx ], [ %i.rz, %bb.ca ], [ %i.ro, %bb.bz ], [ %i.sk, %bb.cb ] ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.sq, %i.sq
  %i.sr = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ss = extractelement <2 x float> %i.sq, i64 0 ; 2 uses
  %i.st = call float @llvm.fmuladd.f32(float %i.ss, float %i.ss, float %i.sr)
  %i.su = call noundef float @llvm.fmuladd.f32(float %.sroa.13.0.i, float %.sroa.13.0.i, float %i.st) ; 2 uses
  %i.sv = fcmp oeq float %i.su, 0.000000e+00
  br i1 %i.sv, label %bb.cd, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %bb.cc
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.su)
  %i.sw = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.sx = insertelement <2 x float> poison, float %i.sw, i64 0
  %i.sy = shufflevector <2 x float> %i.sx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sz = fmul <2 x float> %i.sq, %i.sy
  %i.ta = fmul float %.sroa.13.0.i, %i.sw
  br label %bb.cd

bb.cd:                                            ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.i, %bb.cc
  %.sroa.13.1.i = phi float [ %.sroa.13.0.i, %bb.cc ], [ %i.ta, %_ZN10aiVector3tIfEdVEf.exit.i.i ] ; 4 uses
  %.sroa.0.1.i = phi <2 x float> [ %i.sq, %bb.cc ], [ %i.sz, %_ZN10aiVector3tIfEdVEf.exit.i.i ] ; 9 uses
  %i.tb = icmp ult i64 %i.qx, 3
  br i1 %i.tb, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.qz, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.qh, label %bb.cg, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i

bb.cg:                                            ; preds = %bb.cf
  %i.tc = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.td = load float, ptr %i.tc, align 4
  %i.te = load float, ptr %.val, align 4
  %i.tf = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.tg = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.th = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.qy ; 2 uses
  %i.ti = load float, ptr %i.th, align 4
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  %i.tk = load <2 x float>, ptr %i.tf, align 4    ; 2 uses
  %i.tl = load <2 x float>, ptr %i.tg, align 4    ; 3 uses
  %i.tm = fsub <2 x float> %i.tk, %i.tl           ; 2 uses
  %i.tn = shufflevector <2 x float> %i.tk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.to = insertelement <2 x float> %i.tn, float %i.td, i64 1
  %i.tp = shufflevector <2 x float> %i.tl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.tq = insertelement <2 x float> %i.tp, float %i.te, i64 1 ; 2 uses
  %i.tr = fsub <2 x float> %i.to, %i.tq           ; 2 uses
  %i.ts = load <2 x float>, ptr %i.tj, align 4    ; 2 uses
  %i.tt = shufflevector <2 x float> %i.ts, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.tu = insertelement <2 x float> %i.tt, float %i.ti, i64 1
  %i.tv = fsub <2 x float> %i.tu, %i.tq           ; 2 uses
  %i.tw = fsub <2 x float> %i.ts, %i.tl           ; 2 uses
  %i.tx = fneg <2 x float> %i.tw
  %i.ty = fmul <2 x float> %i.tr, %i.tx
  %i.tz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tm, <2 x float> %i.tv, <2 x float> %i.ty)
  %i.ua = extractelement <2 x float> %i.tv, i64 1
  %i.ub = fneg float %i.ua
  %i.uc = extractelement <2 x float> %i.tm, i64 0
  %i.ud = fmul float %i.uc, %i.ub
  %i.ue = extractelement <2 x float> %i.tr, i64 1
  %i.uf = extractelement <2 x float> %i.tw, i64 0
  %i.ug = call float @llvm.fmuladd.f32(float %i.ue, float %i.uf, float %i.ud)
  br label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

._crit_edge.i:                                    ; preds = %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i
  br i1 %.not88.i, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i, label %bb.ch

_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i:          ; preds = %bb.cf, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i
  %.010292.i = phi i64 [ %i.vr, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i ], [ 2, %bb.cf ] ; 3 uses
  %i.uh = getelementptr [12 x i8], ptr %.val, i64 %.010292.i ; 6 uses
  %i.ui = getelementptr i8, ptr %i.uh, i64 -12
  %i.uj = load float, ptr %i.uh, align 4
  %i.uk = load float, ptr %i.ui, align 4
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.um = getelementptr i8, ptr %i.uh, i64 -8
  %i.un = getelementptr i8, ptr %i.uh, i64 -24
  %i.uo = load float, ptr %i.un, align 4
  %i.up = getelementptr i8, ptr %i.uh, i64 -20
  %i.uq = load <2 x float>, ptr %i.ul, align 4    ; 2 uses
  %i.ur = load <2 x float>, ptr %i.um, align 4    ; 3 uses
  %i.us = fsub <2 x float> %i.uq, %i.ur           ; 2 uses
  %i.ut = shufflevector <2 x float> %i.uq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.uu = insertelement <2 x float> %i.ut, float %i.uj, i64 1
  %i.uv = shufflevector <2 x float> %i.ur, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.uw = insertelement <2 x float> %i.uv, float %i.uk, i64 1 ; 2 uses
  %i.ux = fsub <2 x float> %i.uu, %i.uw           ; 2 uses
  %i.uy = load <2 x float>, ptr %i.up, align 4    ; 2 uses
  %i.uz = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.va = insertelement <2 x float> %i.uz, float %i.uo, i64 1
  %i.vb = fsub <2 x float> %i.va, %i.uw           ; 2 uses
  %i.vc = fsub <2 x float> %i.uy, %i.ur           ; 2 uses
  %i.vd = fneg <2 x float> %i.vc
  %i.ve = fmul <2 x float> %i.ux, %i.vd
  %i.vf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.us, <2 x float> %i.vb, <2 x float> %i.ve)
  %.fr1385 = freeze <2 x float> %i.vf             ; 2 uses
  %i.vg = extractelement <2 x float> %i.vb, i64 1
  %i.vh = fneg float %i.vg
  %i.vi = extractelement <2 x float> %i.us, i64 0
  %i.vj = fmul float %i.vi, %i.vh
  %i.vk = extractelement <2 x float> %i.ux, i64 1
  %i.vl = extractelement <2 x float> %i.vc, i64 0
  %i.vm = call float @llvm.fmuladd.f32(float %i.vk, float %i.vl, float %i.vj) ; 2 uses
  %i.vn = call <2 x float> @llvm.fabs.v2f32(<2 x float> %.fr1385)
  %i.vo = fcmp ugt <2 x float> %i.vn, splat (float f0x358637BD)
  %20 = bitcast <2 x i1> %i.vo to i2
  %or.cond.not.not91.i = icmp ne i2 %20, 0
  %i.vp = call float @llvm.fabs.f32(float %i.vm)
  %i.vq = fcmp ugt float %i.vp, f0x358637BD
  %.not88.i = select i1 %or.cond.not.not91.i, i1 true, i1 %i.vq ; 2 uses
  %i.vr = add nuw i64 %.010292.i, 1
  %i.vs = icmp uge i64 %.010292.i, %i.qy
  %.not104.i = or i1 %i.vs, %.not88.i
  br i1 %.not104.i, label %._crit_edge.i, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i, !llvm.loop !42

bb.ch:                                            ; preds = %._crit_edge.i
  br label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

bb.ci:                                            ; preds = %bb.ce
  br i1 %i.ra, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.qh, label %bb.ck, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

bb.ck:                                            ; preds = %bb.cj
  %i.vt = getelementptr [12 x i8], ptr %.val, i64 %.0227925 ; 4 uses
  %i.vu = load float, ptr %.val, align 4
  %i.vv = load float, ptr %i.vt, align 4
  %i.vw = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vt, i64 4
  %i.vy = getelementptr i8, ptr %i.vt, i64 -12
  %i.vz = load float, ptr %i.vy, align 4
  %i.wa = getelementptr i8, ptr %i.vt, i64 -8
  %i.wb = load <2 x float>, ptr %i.vw, align 4    ; 2 uses
  %i.wc = load <2 x float>, ptr %i.vx, align 4    ; 3 uses
  %i.wd = fsub <2 x float> %i.wb, %i.wc           ; 2 uses
  %i.we = shufflevector <2 x float> %i.wb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wf = insertelement <2 x float> %i.we, float %i.vu, i64 1
  %i.wg = shufflevector <2 x float> %i.wc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wh = insertelement <2 x float> %i.wg, float %i.vv, i64 1 ; 2 uses
  %i.wi = fsub <2 x float> %i.wf, %i.wh           ; 2 uses
  %i.wj = load <2 x float>, ptr %i.wa, align 4    ; 2 uses
  %i.wk = shufflevector <2 x float> %i.wj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wl = insertelement <2 x float> %i.wk, float %i.vz, i64 1
  %i.wm = fsub <2 x float> %i.wl, %i.wh           ; 2 uses
  %i.wn = fsub <2 x float> %i.wj, %i.wc           ; 2 uses
  %i.wo = fneg <2 x float> %i.wn
  %i.wp = fmul <2 x float> %i.wi, %i.wo
  %i.wq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wd, <2 x float> %i.wm, <2 x float> %i.wp)
  %.fr1384 = freeze <2 x float> %i.wq             ; 2 uses
  %i.wr = extractelement <2 x float> %i.wm, i64 1
  %i.ws = fneg float %i.wr
  %i.wt = extractelement <2 x float> %i.wd, i64 0
  %i.wu = fmul float %i.wt, %i.ws
  %i.wv = extractelement <2 x float> %i.wi, i64 1
  %i.ww = extractelement <2 x float> %i.wn, i64 0
  %i.wx = call float @llvm.fmuladd.f32(float %i.wv, float %i.ww, float %i.wu) ; 2 uses
  %i.wy = call <2 x float> @llvm.fabs.v2f32(<2 x float> %.fr1384)
  %21 = fcmp ugt <2 x float> %i.wy, splat (float f0x358637BD)
  %22 = bitcast <2 x i1> %21 to i2
  %or.cond76.not86.i = icmp eq i2 %22, 0
  %i.wz = call float @llvm.fabs.f32(float %i.wx)
  %i.xa = fcmp ole float %i.wz, f0x358637BD
  %or.cond78.i = select i1 %or.cond76.not86.i, i1 %i.xa, i1 false
  br i1 %or.cond78.i, label %bb.cm, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

bb.cl:                                            ; preds = %bb.ci
  %i.xb = getelementptr [12 x i8], ptr %.val, i64 %.0227925 ; 6 uses
  %i.xc = getelementptr i8, ptr %i.xb, i64 12
  %i.xd = load float, ptr %i.xc, align 4
  %i.xe = load float, ptr %i.xb, align 4
  %i.xf = getelementptr i8, ptr %i.xb, i64 16
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xb, i64 4
  %i.xh = getelementptr i8, ptr %i.xb, i64 -12
  %i.xi = load float, ptr %i.xh, align 4
  %i.xj = getelementptr i8, ptr %i.xb, i64 -8
  %i.xk = load <2 x float>, ptr %i.xf, align 4    ; 2 uses
  %i.xl = load <2 x float>, ptr %i.xg, align 4    ; 3 uses
  %i.xm = fsub <2 x float> %i.xk, %i.xl           ; 2 uses
  %i.xn = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xo = insertelement <2 x float> %i.xn, float %i.xd, i64 1
  %i.xp = shufflevector <2 x float> %i.xl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xq = insertelement <2 x float> %i.xp, float %i.xe, i64 1 ; 2 uses
  %i.xr = fsub <2 x float> %i.xo, %i.xq           ; 2 uses
  %i.xs = load <2 x float>, ptr %i.xj, align 4    ; 2 uses
  %i.xt = shufflevector <2 x float> %i.xs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xu = insertelement <2 x float> %i.xt, float %i.xi, i64 1
  %i.xv = fsub <2 x float> %i.xu, %i.xq           ; 2 uses
  %i.xw = fsub <2 x float> %i.xs, %i.xl           ; 2 uses
  %i.xx = fneg <2 x float> %i.xw
  %i.xy = fmul <2 x float> %i.xr, %i.xx
  %i.xz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xm, <2 x float> %i.xv, <2 x float> %i.xy)
  %.fr1383 = freeze <2 x float> %i.xz             ; 2 uses
  %i.ya = extractelement <2 x float> %i.xv, i64 1
  %i.yb = fneg float %i.ya
  %i.yc = extractelement <2 x float> %i.xm, i64 0
  %i.yd = fmul float %i.yc, %i.yb
  %i.ye = extractelement <2 x float> %i.xr, i64 1
  %i.yf = extractelement <2 x float> %i.xw, i64 0
  %i.yg = call float @llvm.fmuladd.f32(float %i.ye, float %i.yf, float %i.yd) ; 2 uses
  %i.yh = call <2 x float> @llvm.fabs.v2f32(<2 x float> %.fr1383)
  %23 = fcmp ugt <2 x float> %i.yh, splat (float f0x358637BD)
  %24 = bitcast <2 x i1> %23 to i2
  %or.cond80.not84.i = icmp eq i2 %24, 0
  %i.yi = call float @llvm.fabs.f32(float %i.yg)
  %i.yj = fcmp ole float %i.yi, f0x358637BD
  %or.cond82.i = select i1 %or.cond80.not84.i, i1 %i.yj, i1 false
  br i1 %or.cond82.i, label %bb.cm, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  br label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i: ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ch, %._crit_edge.i, %bb.cg, %bb.cd
  %.sroa.015.1.i = phi <2 x float> [ %.sroa.0796.0924, %bb.cj ], [ %i.tz, %bb.cg ], [ %.fr1385, %._crit_edge.i ], [ zeroinitializer, %bb.ch ], [ zeroinitializer, %bb.cd ], [ %.fr1383, %bb.cl ], [ %.fr1384, %bb.ck ], [ %.sroa.0796.0924, %bb.cm ] ; 4 uses
  %.sroa.31.1.i = phi float [ %.sroa.10801.0923, %bb.cj ], [ %i.ug, %bb.cg ], [ %i.vm, %._crit_edge.i ], [ 1.000000e+00, %bb.ch ], [ 1.000000e+00, %bb.cd ], [ %i.yg, %bb.cl ], [ %i.wx, %bb.ck ], [ %.sroa.10801.0923, %bb.cm ] ; 3 uses
  %.sroa.015.0.vec.extract27.i = extractelement <2 x float> %.sroa.015.1.i, i64 0
  %.sroa.069.0.vec.extract.i = extractelement <2 x float> %.sroa.0796.0924, i64 0
  %foldExtExtBinop1377 = fmul <2 x float> %.sroa.0796.0924, %.sroa.015.1.i
  %i.yk = extractelement <2 x float> %foldExtExtBinop1377, i64 1
  %i.yl = call float @llvm.fmuladd.f32(float %.sroa.015.0.vec.extract27.i, float %.sroa.069.0.vec.extract.i, float %i.yk)
  %i.ym = call noundef float @llvm.fmuladd.f32(float %.sroa.31.1.i, float %.sroa.10801.0923, float %i.yl)
  %i.yn = fcmp olt float %i.ym, 0.000000e+00      ; 2 uses
  %i.yo = fneg <2 x float> %.sroa.015.1.i
  %i.yp = fneg float %.sroa.31.1.i
  %.sroa.31.2.i = select i1 %i.yn, float %i.yp, float %.sroa.31.1.i ; 4 uses
  %i.yq = select i1 %i.yn, <2 x float> %i.yo, <2 x float> %.sroa.015.1.i ; 5 uses
  %foldExtExtBinop1379 = fmul <2 x float> %i.yq, %i.yq
  %i.yr = extractelement <2 x float> %foldExtExtBinop1379, i64 1
  %i.ys = extractelement <2 x float> %i.yq, i64 0 ; 2 uses
  %i.yt = call float @llvm.fmuladd.f32(float %i.ys, float %i.ys, float %i.yr)
  %i.yu = call noundef float @llvm.fmuladd.f32(float %.sroa.31.2.i, float %.sroa.31.2.i, float %i.yt) ; 2 uses
  %i.yv = fcmp oeq float %i.yu, 0.000000e+00
  br i1 %i.yv, label %bb.cn, label %_ZN10aiVector3tIfEdVEf.exit.i.i364

_ZN10aiVector3tIfEdVEf.exit.i.i364:               ; preds = %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i
  %sqrt.i.i.i365 = call noundef float @llvm.sqrt.f32(float %i.yu)
  %i.yw = fdiv float 1.000000e+00, %sqrt.i.i.i365 ; 2 uses
  %i.yx = insertelement <2 x float> poison, float %i.yw, i64 0
  %i.yy = shufflevector <2 x float> %i.yx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yz = fmul <2 x float> %i.yq, %i.yy
  %i.za = fmul float %.sroa.31.2.i, %i.yw
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i, %_ZN10aiVector3tIfEdVEf.exit.i.i364
  %.sroa.015.3.i = phi <2 x float> [ %i.yq, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i ], [ %i.yz, %_ZN10aiVector3tIfEdVEf.exit.i.i364 ] ; 7 uses
  %.sroa.31.3.i = phi float [ %.sroa.31.2.i, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i ], [ %i.za, %_ZN10aiVector3tIfEdVEf.exit.i.i364 ] ; 5 uses
  %.sroa.0802.4.vec.extract = extractelement <2 x float> %.sroa.0.1.i, i64 1
  %.sroa.0796.4.vec.extract = extractelement <2 x float> %.sroa.015.3.i, i64 1 ; 2 uses
  %.sroa.0796.0.vec.extract = extractelement <2 x float> %.sroa.015.3.i, i64 0 ; 2 uses
  %.sroa.0802.0.vec.extract = extractelement <2 x float> %.sroa.0.1.i, i64 0
  %i.zb = shufflevector <2 x float> %.sroa.015.3.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.zc = insertelement <2 x float> %i.zb, float %.sroa.31.3.i, i64 1
  %i.zd = fneg <2 x float> %i.zc
  %i.ze = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.zf = insertelement <2 x float> %i.ze, float %.sroa.13.1.i, i64 0
  %i.zg = fmul <2 x float> %i.zf, %i.zd
  %i.zh = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> %.sroa.015.3.i, <2 x i32> <i32 1, i32 2>
  %i.zi = insertelement <2 x float> poison, float %.sroa.31.3.i, i64 0
  %i.zj = insertelement <2 x float> %i.zi, float %.sroa.13.1.i, i64 1
  %i.zk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zh, <2 x float> %i.zj, <2 x float> %i.zg) ; 5 uses
  %i.zl = fneg float %.sroa.0796.0.vec.extract
  %i.zm = fmul float %.sroa.0802.4.vec.extract, %i.zl
  %i.zn = call float @llvm.fmuladd.f32(float %.sroa.0802.0.vec.extract, float %.sroa.0796.4.vec.extract, float %i.zm) ; 4 uses
  %foldExtExtBinop1381 = fmul <2 x float> %i.zk, %i.zk
  %i.zo = extractelement <2 x float> %foldExtExtBinop1381, i64 1
  %i.zp = extractelement <2 x float> %i.zk, i64 0 ; 2 uses
  %i.zq = call float @llvm.fmuladd.f32(float %i.zp, float %i.zp, float %i.zo)
  %i.zr = call noundef float @llvm.fmuladd.f32(float %i.zn, float %i.zn, float %i.zq) ; 2 uses
  %i.zs = fcmp oeq float %i.zr, 0.000000e+00
  br i1 %i.zs, label %bb.co, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.cn
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.zr)
  %i.zt = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.zu = insertelement <2 x float> poison, float %i.zt, i64 0
  %i.zv = shufflevector <2 x float> %i.zu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zw = fmul <2 x float> %i.zk, %i.zv
  %i.zx = fmul float %i.zn, %i.zt
  br label %bb.co

bb.co:                                            ; preds = %_ZN10aiVector3tIfEdVEf.exit.i, %bb.cn
  %.sroa.9.0 = phi float [ %i.zn, %bb.cn ], [ %i.zx, %_ZN10aiVector3tIfEdVEf.exit.i ]
  %.sroa.0758.0 = phi <2 x float> [ %i.zk, %bb.cn ], [ %i.zw, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %i.zy = load ptr, ptr %13, align 8
  %.idx = shl i64 %.0227925, 4
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 %.idx ; 3 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 12
  %i.aab = load float, ptr %i.aaa, align 4        ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zz, i64 4
  %i.aad = load <2 x float>, ptr %i.zz, align 4   ; 3 uses
  %i.aae = load <2 x float>, ptr %i.aac, align 4  ; 2 uses
  %i.aaf = shufflevector <2 x float> %i.aae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.aag = call noundef float @cosf(float noundef %i.aab) #20 ; 4 uses
  %i.aah = call noundef float @sinf(float noundef %i.aab) #20 ; 3 uses
  %i.aai = extractelement <2 x float> %i.aad, i64 0 ; 2 uses
  %i.aaj = extractelement <2 x float> %i.aae, i64 1 ; 4 uses
  %i.aak = fmul float %i.aaj, %i.aah              ; 2 uses
  %i.aal = fneg float %i.aak
  %i.aam = extractelement <2 x float> %i.aad, i64 1 ; 3 uses
  %i.aan = fmul float %i.aai, %i.aah              ; 2 uses
  %i.aao = fneg float %i.aan
  %i.aap = insertelement <4 x float> poison, float %i.aag, i64 0
  %i.aaq = insertelement <4 x float> %i.aap, float %i.aao, i64 1
  %i.aar = load ptr, ptr %16, align 8
  %i.aas = getelementptr inbounds nuw [36 x i8], ptr %i.aar, i64 %.0227925
  %i.aat = shufflevector <2 x float> %.sroa.0758.0, <2 x float> %.sroa.0.1.i, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.aau = shufflevector <2 x float> %.sroa.0758.0, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aav = shufflevector <2 x float> %.sroa.0758.0, <2 x float> %.sroa.0.1.i, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.aaw = insertelement <4 x float> poison, float %.sroa.9.0, i64 0
  %i.aax = insertelement <4 x float> %i.aaw, float %.sroa.13.1.i, i64 1
  %i.aay = shufflevector <4 x float> %i.aax, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aaz = fsub float 1.000000e+00, %i.aag        ; 2 uses
  %i.aba = insertelement <2 x float> poison, float %i.aaz, i64 0
  %i.abb = shufflevector <2 x float> %i.aad, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.abc = shufflevector <2 x float> %i.aba, <2 x float> poison, <4 x i32> zeroinitializer
  %i.abd = fmul <4 x float> %i.abb, %i.abc        ; 2 uses
  %i.abe = extractelement <4 x float> %i.abd, i64 2 ; 4 uses
  %i.abf = fmul float %i.aam, %i.aah              ; 2 uses
  %i.abg = fneg float %i.abf
  %i.abh = insertelement <4 x float> %i.aaq, float %i.abg, i64 2
  %i.abi = insertelement <4 x float> %i.abh, float %i.aan, i64 3
  %i.abj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abd, <4 x float> %i.aaf, <4 x float> %i.abi) ; 8 uses
  %i.abk = extractelement <4 x float> %i.abj, i64 3
  %i.abl = extractelement <4 x float> %i.abj, i64 2
  %i.abm = call float @llvm.fmuladd.f32(float %i.abe, float %i.aai, float %i.aag) ; 3 uses
  %i.abn = call float @llvm.fmuladd.f32(float %i.abe, float %i.aam, float %i.aal) ; 2 uses
  %i.abo = call float @llvm.fmuladd.f32(float %i.abe, float %i.aaj, float %i.abf) ; 2 uses
  %i.abp = call float @llvm.fmuladd.f32(float %i.abe, float %i.aam, float %i.aak) ; 2 uses
  %i.abq = fmul float %i.aaj, %i.aaz
  %i.abr = call float @llvm.fmuladd.f32(float %i.abq, float %i.aaj, float %i.aag) ; 3 uses
  %i.abs = shufflevector <4 x float> %i.abj, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 3, i32 0>
  %i.abt = insertelement <4 x float> poison, float %i.abn, i64 0
  %i.abu = shufflevector <4 x float> %i.abt, <4 x float> %i.abj, <4 x i32> <i32 0, i32 4, i32 7, i32 0>
  %i.abv = fmul <4 x float> %i.aat, %i.abu
  %i.abw = shufflevector <4 x float> %i.aau, <4 x float> %i.abj, <4 x i32> <i32 0, i32 0, i32 6, i32 poison>
  %i.abx = insertelement <4 x float> %i.abw, float %i.abm, i64 3
  %i.aby = insertelement <4 x float> %i.aav, float %i.abm, i64 0
  %i.abz = insertelement <4 x float> %i.aby, float %i.abp, i64 1
  %i.aca = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abx, <4 x float> %i.abz, <4 x float> %i.abv)
  %i.acb = insertelement <4 x float> %i.abj, float %i.abo, i64 0
  %i.acc = insertelement <4 x float> %i.acb, float %i.abr, i64 2
  %i.acd = shufflevector <4 x float> %i.acc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ace = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acd, <4 x float> %i.aay, <4 x float> %i.aca)
  %i.acf = fadd <4 x float> %i.ace, zeroinitializer ; 4 uses
  %i.acg = extractelement <4 x float> %i.acf, i64 0
  store float %i.acg, ptr %i.aas, align 4
  %i.ach = load ptr, ptr %16, align 8
  %i.aci = getelementptr inbounds nuw [36 x i8], ptr %i.ach, i64 %.0227925
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 4
  %i.ack = extractelement <4 x float> %i.acf, i64 1
  store float %i.ack, ptr %i.acj, align 4
  %i.acl = load ptr, ptr %16, align 8
  %i.acm = getelementptr inbounds nuw [36 x i8], ptr %i.acl, i64 %.0227925
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 8
  %i.aco = extractelement <4 x float> %i.acf, i64 2
  store float %i.aco, ptr %i.acn, align 4
  %i.acp = load ptr, ptr %16, align 8
  %i.acq = getelementptr inbounds nuw [36 x i8], ptr %i.acp, i64 %.0227925
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 12
  %i.acs = extractelement <4 x float> %i.acf, i64 3
  store float %i.acs, ptr %i.acr, align 4
  %i.act = load ptr, ptr %16, align 8
  %i.acu = getelementptr inbounds nuw [36 x i8], ptr %i.act, i64 %.0227925
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 16
  %i.acw = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> %.sroa.015.3.i, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.acx = insertelement <4 x float> %i.abs, float %i.abn, i64 1
  %i.acy = fmul <4 x float> %i.acw, %i.acx
  %i.acz = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> %.sroa.015.3.i, <4 x i32> <i32 0, i32 2, i32 poison, i32 2>
  %i.ada = shufflevector <4 x float> %i.acz, <4 x float> %i.abj, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.adb = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.adc = insertelement <4 x float> %i.adb, float %i.abp, i64 0
  %i.add = insertelement <4 x float> %i.adc, float %i.abm, i64 1
  %i.ade = shufflevector <4 x float> %i.add, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.adf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ada, <4 x float> %i.ade, <4 x float> %i.acy)
  %i.adg = shufflevector <4 x float> %i.abj, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 1>
  %i.adh = insertelement <4 x float> %i.adg, float %i.abo, i64 1
  %i.adi = insertelement <4 x float> %i.adh, float %i.abr, i64 2
  %i.adj = insertelement <4 x float> poison, float %.sroa.13.1.i, i64 0
  %i.adk = insertelement <4 x float> %i.adj, float %.sroa.31.3.i, i64 1
  %i.adl = shufflevector <4 x float> %i.adk, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.adm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adi, <4 x float> %i.adl, <4 x float> %i.adf)
  %i.adn = fadd <4 x float> %i.adm, zeroinitializer ; 4 uses
  %i.ado = extractelement <4 x float> %i.adn, i64 0
  store float %i.ado, ptr %i.acv, align 4
  %i.adp = load ptr, ptr %16, align 8
  %i.adq = getelementptr inbounds nuw [36 x i8], ptr %i.adp, i64 %.0227925
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 20
  %i.ads = extractelement <4 x float> %i.adn, i64 2
  store float %i.ads, ptr %i.adr, align 4
  %i.adt = fmul float %.sroa.0796.4.vec.extract, %i.abk
  %i.adu = call float @llvm.fmuladd.f32(float %i.abl, float %.sroa.0796.0.vec.extract, float %i.adt)
  %i.adv = call float @llvm.fmuladd.f32(float %i.abr, float %.sroa.31.3.i, float %i.adu)
  %i.adw = fadd float %i.adv, 0.000000e+00
  %i.adx = load ptr, ptr %16, align 8
  %i.ady = getelementptr inbounds nuw [36 x i8], ptr %i.adx, i64 %.0227925
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 24
  %i.aea = extractelement <4 x float> %i.adn, i64 1
  store float %i.aea, ptr %i.adz, align 4
  %i.aeb = load ptr, ptr %16, align 8
  %i.aec = getelementptr inbounds nuw [36 x i8], ptr %i.aeb, i64 %.0227925
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 28
  %i.aee = extractelement <4 x float> %i.adn, i64 3
  store float %i.aee, ptr %i.aed, align 4
  %i.aef = load ptr, ptr %16, align 8
  %i.aeg = getelementptr inbounds nuw [36 x i8], ptr %i.aef, i64 %.0227925
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 32
  store float %i.adw, ptr %i.aeh, align 4
  %i.aei = add nuw i64 %.0227925, 1               ; 2 uses
  %exitcond994.not = icmp eq i64 %i.aei, %.pre-phi1086
  br i1 %exitcond994.not, label %._crit_edge, label %.lr.ph926, !llvm.loop !43

bb.cp:                                            ; preds = %.noexc362, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.qt, %.noexc362 ]
  %.0.lcssa.i.i.i.i.i360 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.noexc362 ]
end_hunk_0
