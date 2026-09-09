Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/nanovg?download=true
inline.NumInlined: 893
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 56
begin_hunk_0_@stbtt_Rasterize:bb.a
  br i1 %or.cond.i349.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.rm = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !354
  %i.ro = fsub float %.0.i348.i.i.i, %.054.i346.i.i.i
  %i.rp = sext i32 %i.qq to i64
  %i.rq = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.rp ; 2 uses
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !81
  %i.rs = tail call float @llvm.fmuladd.f32(float %i.rn, float %i.ro, float %i.rr)
  store float %i.rs, ptr %i.rq, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.rt = add nsw i32 %i.ov, 2
  %i.ru = sitofp i32 %i.rt to float               ; 2 uses
  %i.rv = fcmp ult float %.055.i345.i.i.i, %i.ru
  %i.rw = fcmp ult float %.053.i347.i.i.i, %i.ru
  %or.cond62.i350.i.i.i = select i1 %i.rv, i1 true, i1 %i.rw
  br i1 %or.cond62.i350.i.i.i, label %bb.bt, label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.rx = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !354
  %i.rz = fsub float %.0.i348.i.i.i, %.054.i346.i.i.i
  %i.sa = fmul float %i.rz, %i.ry
  %i.sb = fsub float %.055.i345.i.i.i, %i.rj
  %i.sc = fsub float %.053.i347.i.i.i, %i.rj
  %i.sd = fadd float %i.sb, %i.sc
  %i.se = fmul float %i.sd, 5.000000e-01
  %i.sf = fsub float 1.000000e+00, %i.se
  %i.sg = sext i32 %i.qq to i64
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.sg ; 2 uses
  %i.si = load float, ptr %i.sh, align 4, !tbaa !81
  %i.sj = tail call float @llvm.fmuladd.f32(float %i.sa, float %i.sf, float %i.si)
  store float %i.sj, ptr %i.sh, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bu:                                            ; preds = %bb.ay
  br i1 %i.ok, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.sk = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 28
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !352 ; 4 uses
  %i.sm = fcmp olt float %i.sl, %i.lu
  br i1 %i.sm, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.sn = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24
  %i.so = load float, ptr %i.sn, align 8, !tbaa !365 ; 4 uses
  %i.sp = fcmp olt float %i.lv, %i.so
  br i1 %i.sp, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.sq = fcmp ogt float %i.so, %i.lu
  br i1 %i.sq, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %foldExtExtBinop186 = fsub <2 x float> %i.op, %i.op
  %i.sr = extractelement <2 x float> %foldExtExtBinop186, i64 0
  %i.ss = fsub float %i.so, %i.lu
  %i.st = fmul float %i.sr, %i.ss
  %i.su = fdiv float %i.st, %i.ol
  %i.sv = fadd float %i.oq, %i.su
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.055.i352.i.i.i = phi float [ %i.sv, %bb.by ], [ %i.oq, %bb.bx ] ; 4 uses
  %.054.i353.i.i.i = phi float [ %i.so, %bb.by ], [ %i.lu, %bb.bx ] ; 3 uses
  %i.sw = fcmp ogt float %i.lv, %i.sl
  br i1 %i.sw, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.sx = fsub float %i.oq, %.055.i352.i.i.i
  %i.sy = fsub float %i.sl, %i.lv
  %i.sz = fmul float %i.sy, %i.sx
  %i.ta = fsub float %i.lv, %.054.i353.i.i.i
  %i.tb = fdiv float %i.sz, %i.ta
  %i.tc = fadd float %i.oq, %i.tb
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.053.i354.i.i.i = phi float [ %i.tc, %bb.ca ], [ %i.oq, %bb.bz ] ; 3 uses
  %.0.i355.i.i.i = phi float [ %i.sl, %bb.ca ], [ %i.lv, %bb.bz ] ; 2 uses
  %i.td = fcmp ugt float %.055.i352.i.i.i, 0.000000e+00
  %i.te = fcmp ugt float %.053.i354.i.i.i, 0.000000e+00
  %or.cond.i356.i.i.i = select i1 %i.td, i1 true, i1 %i.te
  br i1 %or.cond.i356.i.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.tf = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !354
  %i.th = fsub float %.0.i355.i.i.i, %.054.i353.i.i.i
  %i.ti = load float, ptr %i.lc, align 4, !tbaa !81
  %i.tj = tail call float @llvm.fmuladd.f32(float %i.tg, float %i.th, float %i.ti)
  store float %i.tj, ptr %i.lc, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.tk = fcmp ult float %.055.i352.i.i.i, 1.000000e+00
  %i.tl = fcmp ult float %.053.i354.i.i.i, 1.000000e+00
  %or.cond62.i357.i.i.i = select i1 %i.tk, i1 true, i1 %i.tl
  br i1 %or.cond62.i357.i.i.i, label %bb.ce, label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.tm = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !354
  %i.to = fsub float %.0.i355.i.i.i, %.054.i353.i.i.i
  %i.tp = fmul float %i.to, %i.tn
  %i.tq = fadd float %.055.i352.i.i.i, %.053.i354.i.i.i
  %i.tr = fmul float %i.tq, 5.000000e-01
  %i.ts = fsub float 1.000000e+00, %i.tr
  %i.tt = load float, ptr %i.lc, align 4, !tbaa !81
  %i.tu = tail call float @llvm.fmuladd.f32(float %i.tp, float %i.ts, float %i.tt)
  store float %i.tu, ptr %i.lc, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.cf:                                            ; preds = %bb.aw
  %i.tv = fadd float %i.or, %i.oq                 ; 34 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 16
  %i.tx = load float, ptr %i.tw, align 8, !tbaa !362 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24 ; 16 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 28 ; 15 uses
  %i.ua = load <2 x float>, ptr %i.ty, align 8, !tbaa !81 ; 3 uses
  %i.ub = extractelement <2 x float> %i.ua, i64 0 ; 2 uses
  %i.uc = fcmp ogt float %i.ub, %i.lu             ; 2 uses
  %i.ud = fsub <2 x float> %i.ua, %i.on
  %i.ue = shufflevector <2 x float> %i.op, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.uf = shufflevector <2 x float> %i.op, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ug = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ue, <2 x float> %i.ud, <2 x float> %i.uf) ; 2 uses
  %i.uh = extractelement <2 x float> %i.ug, i64 0
  %.0305.i.i.i = select i1 %i.uc, float %i.uh, float %i.oq ; 7 uses
  %.0301.i.i.i = select i1 %i.uc, float %i.ub, float %i.lu ; 3 uses
  %i.ui = extractelement <2 x float> %i.ua, i64 1 ; 2 uses
  %i.uj = fcmp olt float %i.ui, %i.lv             ; 2 uses
  %i.uk = extractelement <2 x float> %i.ug, i64 1
  %.0303.i.i.i = select i1 %i.uj, float %i.uk, float %i.tv ; 7 uses
  %.0299.i.i.i = select i1 %i.uj, float %i.ui, float %i.lv ; 3 uses
  %i.ul = fcmp oge float %.0305.i.i.i, 0.000000e+00
  %i.um = fcmp oge float %.0303.i.i.i, 0.000000e+00
  %or.cond.i.i.i = select i1 %i.ul, i1 %i.um, i1 false
  br i1 %or.cond.i.i.i, label %bb.cg, label %bb.cm

bb.cg:                                            ; preds = %bb.cf
  %i.un = fcmp olt float %.0305.i.i.i, %i.oi
  %i.uo = fcmp olt float %.0303.i.i.i, %i.oi
  %or.cond338.i.i.i = select i1 %i.un, i1 %i.uo, i1 false
  br i1 %or.cond338.i.i.i, label %bb.ch, label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  %i.up = fptosi float %.0305.i.i.i to i32        ; 5 uses
  %i.uq = fptosi float %.0303.i.i.i to i32        ; 3 uses
  %i.ur = icmp eq i32 %i.up, %i.uq
  br i1 %i.ur, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.us = fsub float %.0299.i.i.i, %.0301.i.i.i
  %i.ut = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !354
  %i.uv = fmul float %i.us, %i.uu                 ; 2 uses
  %i.uw = sitofp i32 %i.up to float
  %i.ux = fadd float %i.uw, 1.000000e+00          ; 2 uses
  %i.uy = fsub float %i.ux, %.0305.i.i.i
  %i.uz = fsub float %i.ux, %.0303.i.i.i
  %i.va = fadd float %i.uy, %i.uz
  %i.vb = fmul float %i.va, 5.000000e-01
  %i.vc = fmul float %i.vb, %i.uv
  %i.vd = sext i32 %i.up to i64                   ; 2 uses
  %i.ve = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %i.vd ; 2 uses
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !81
  %i.vg = fadd float %i.vf, %i.vc
  store float %i.vg, ptr %i.ve, align 4, !tbaa !81
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.lq, i64 %i.vd ; 2 uses
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !81
  %i.vj = fadd float %i.uv, %i.vi
  store float %i.vj, ptr %i.vh, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.vk = fcmp ogt float %.0305.i.i.i, %.0303.i.i.i
  br i1 %i.vk, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.vl = fsub float %i.lu, %.0301.i.i.i
  %i.vm = fadd float %i.lv, %i.vl
  %i.vn = fsub float %i.lu, %.0299.i.i.i
  %i.vo = fadd float %i.lv, %i.vn
  %i.vp = fneg float %i.tx
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.pre-phi475.i.i.i = phi i32 [ %i.up, %bb.ck ], [ %i.uq, %bb.cj ] ; 7 uses
  %.pre-phi.i.i.i = phi i32 [ %i.uq, %bb.ck ], [ %i.up, %bb.cj ] ; 4 uses
  %.0307.i.i.i = phi float [ %i.tv, %bb.ck ], [ %i.oq, %bb.cj ]
  %.1306.i.i.i = phi float [ %.0303.i.i.i, %bb.ck ], [ %.0305.i.i.i, %bb.cj ]
  %.1304.i.i.i = phi float [ %.0305.i.i.i, %bb.ck ], [ %.0303.i.i.i, %bb.cj ]
  %.1302.i.i.i = phi float [ %i.vo, %bb.ck ], [ %.0301.i.i.i, %bb.cj ] ; 2 uses
  %.1300.i.i.i = phi float [ %i.vm, %bb.ck ], [ %.0299.i.i.i, %bb.cj ] ; 2 uses
  %.0298.i.i.i = phi float [ %i.vp, %bb.ck ], [ %i.tx, %bb.cj ] ; 2 uses
  %i.vq = add nsw i32 %.pre-phi.i.i.i, 1          ; 3 uses
  %12 = insertelement <2 x i32> poison, i32 %.pre-phi475.i.i.i, i64 0
  %13 = insertelement <2 x i32> %12, i32 %i.vq, i64 1
  %14 = sitofp <2 x i32> %13 to <2 x float>       ; 3 uses
  %i.vr = insertelement <2 x float> poison, float %.0307.i.i.i, i64 0
  %i.vs = shufflevector <2 x float> %i.vr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vt = fsub <2 x float> %14, %i.vs
  %i.vu = insertelement <2 x float> poison, float %.0298.i.i.i, i64 0
  %i.vv = shufflevector <2 x float> %i.vu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vv, <2 x float> %i.vt, <2 x float> %i.on) ; 2 uses
  %i.vx = extractelement <2 x float> %i.vw, i64 1 ; 2 uses
  %i.vy = fcmp ogt float %i.vx, %i.lv
  %.0296.i.i.i = select i1 %i.vy, float %i.lv, float %i.vx ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !354 ; 4 uses
  %i.wb = fsub float %.0296.i.i.i, %.1302.i.i.i
  %i.wc = fmul float %i.wa, %i.wb                 ; 5 uses
  %15 = extractelement <2 x float> %14, i64 1
  %i.wd = fsub nnan float %15, %.1306.i.i.i
  %i.we = fmul float %i.wd, %i.wc
  %i.wf = fmul float %i.we, 5.000000e-01
  %i.wg = sext i32 %.pre-phi.i.i.i to i64         ; 3 uses
  %i.wh = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %i.wg ; 2 uses
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !81
  %i.wj = fadd float %i.wi, %i.wf
  store float %i.wj, ptr %i.wh, align 4, !tbaa !81
  %i.wk = extractelement <2 x float> %i.vw, i64 0 ; 2 uses
  %i.wl = fcmp ogt float %i.wk, %i.lv             ; 2 uses
  %i.wm = fsub float %i.lv, %.0296.i.i.i
  %i.wn = sub nsw i32 %.pre-phi475.i.i.i, %i.vq
  %i.wo = sitofp i32 %i.wn to float
  %i.wp = fdiv float %i.wm, %i.wo
  %.1.i.i.i = select i1 %i.wl, float %i.wp, float %.0298.i.i.i
  %.0295.i.i.i = select i1 %i.wl, float %i.lv, float %i.wk
  %i.wq = fmul float %i.wa, %.1.i.i.i             ; 4 uses
  %i.wr = icmp slt i32 %i.vq, %.pre-phi475.i.i.i
  br i1 %i.wr, label %.lr.ph467.i.i.i, label %._crit_edge.i.i.i

.lr.ph467.i.i.i:                                  ; preds = %bb.cl
  %i.ws = fmul float %i.wq, 5.000000e-01          ; 3 uses
  %i.wt = add nsw i64 %i.wg, 1                    ; 2 uses
  %i.wu = add i32 %.pre-phi475.i.i.i, -2
  %i.wv = sub i32 %.pre-phi.i.i.i, %.pre-phi475.i.i.i
  %i.ww = and i32 %i.wv, 1
  %lcmp.mod.not.not = icmp eq i32 %i.ww, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph467.i.i.i
  %i.wx = fadd float %i.ws, %i.wc
  %i.wy = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %i.wt ; 2 uses
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !81
  %i.xa = fadd float %i.wx, %i.wz
  store float %i.xa, ptr %i.wy, align 4, !tbaa !81
  %i.xb = fadd float %i.wq, %i.wc                 ; 2 uses
  %indvars.iv.next472.i.i.i.prol = add nsw i64 %i.wg, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph467.i.i.i
  %.lcssa188.unr = phi float [ poison, %.lr.ph467.i.i.i ], [ %i.xb, %.prol.loopexit.unr-lcssa ]
  %indvars.iv471.i.i.i.unr = phi i64 [ %i.wt, %.lr.ph467.i.i.i ], [ %indvars.iv.next472.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0294466.i.i.i.unr = phi float [ %i.wc, %.lr.ph467.i.i.i ], [ %i.xb, %.prol.loopexit.unr-lcssa ]
  %i.xc = icmp eq i32 %i.wu, %.pre-phi.i.i.i
  br i1 %i.xc, label %._crit_edge.i.i.i, label %.lr.ph467.i.i.i.new

.lr.ph467.i.i.i.new:                              ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.new
  %indvars.iv471.i.i.i = phi i64 [ %indvars.iv.next472.i.i.i.1, %.lr.ph467.i.i.i.new ], [ %indvars.iv471.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0294466.i.i.i = phi float [ %i.xn, %.lr.ph467.i.i.i.new ], [ %.0294466.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.xd = fadd float %i.ws, %.0294466.i.i.i
  %i.xe = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %indvars.iv471.i.i.i ; 2 uses
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !81
  %i.xg = fadd float %i.xd, %i.xf
  store float %i.xg, ptr %i.xe, align 4, !tbaa !81
  %i.xh = fadd float %i.wq, %.0294466.i.i.i       ; 2 uses
  %i.xi = fadd float %i.ws, %i.xh
  %i.xj = getelementptr [4 x i8], ptr %.082.i.i, i64 %indvars.iv471.i.i.i
  %i.xk = getelementptr i8, ptr %i.xj, i64 4      ; 2 uses
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !81
  %i.xm = fadd float %i.xi, %i.xl
  store float %i.xm, ptr %i.xk, align 4, !tbaa !81
  %i.xn = fadd float %i.wq, %i.xh                 ; 2 uses
  %indvars.iv.next472.i.i.i.1 = add nsw i64 %indvars.iv471.i.i.i, 2 ; 2 uses
  %lftr.wideiv.i.i.i.1 = trunc i64 %indvars.iv.next472.i.i.i.1 to i32
  %exitcond474.not.i.i.i.1 = icmp eq i32 %.pre-phi475.i.i.i, %lftr.wideiv.i.i.i.1
  br i1 %exitcond474.not.i.i.i.1, label %._crit_edge.i.i.i, label %.lr.ph467.i.i.i.new, !llvm.loop !342

._crit_edge.i.i.i:                                ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.new, %bb.cl
  %.0294.lcssa.i.i.i = phi float [ %i.wc, %bb.cl ], [ %.lcssa188.unr, %.prol.loopexit ], [ %i.xn, %.lr.ph467.i.i.i.new ]
  %i.xo = fsub float %.1300.i.i.i, %.0295.i.i.i
  %16 = extractelement <2 x float> %14, i64 0     ; 2 uses
  %i.xp = fadd float %16, 1.000000e+00            ; 2 uses
  %i.xq = fsub nnan float %i.xp, %16
  %i.xr = fsub float %i.xp, %.1304.i.i.i
  %i.xs = fadd float %i.xq, %i.xr
  %i.xt = fmul float %i.xs, 5.000000e-01
  %i.xu = fmul float %i.xt, %i.xo
  %i.xv = tail call float @llvm.fmuladd.f32(float %i.wa, float %i.xu, float %.0294.lcssa.i.i.i)
  %i.xw = sext i32 %.pre-phi475.i.i.i to i64      ; 2 uses
  %i.xx = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %i.xw ; 2 uses
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !81
  %i.xz = fadd float %i.xv, %i.xy
  store float %i.xz, ptr %i.xx, align 4, !tbaa !81
  %i.ya = fsub float %.1300.i.i.i, %.1302.i.i.i
  %i.yb = getelementptr inbounds [4 x i8], ptr %i.lq, i64 %i.xw ; 2 uses
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !81
  %i.yd = tail call float @llvm.fmuladd.f32(float %i.wa, float %i.ya, float %i.yc)
  store float %i.yd, ptr %i.yb, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.cm:                                            ; preds = %bb.cg, %bb.cf
  br i1 %i.oj, label %.lr.ph.i.i94.i, label %stbtt__handle_clipped_edge.exit351.i.i.i

.lr.ph.i.i94.i:                                   ; preds = %bb.cm
  %i.ye = fsub float %i.tv, %i.oq
  %i.yf = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20 ; 30 uses
  br label %bb.cn

bb.cn:                                            ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i, %.lr.ph.i.i94.i
  %indvars.iv.i.i95.i = phi i64 [ 0, %.lr.ph.i.i94.i ], [ %indvars.iv.next.i.i96.i, %stbtt__handle_clipped_edge.exit379.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i96.i = add nuw nsw i64 %indvars.iv.i.i95.i, 1 ; 3 uses
  %i.yg = trunc nuw nsw i64 %indvars.iv.next.i.i96.i to i32
  %i.yh = trunc nuw nsw i64 %indvars.iv.i.i95.i to i32
  %i.yi = uitofp nneg i32 %i.yg to float          ; 60 uses
  %i.yj = uitofp nneg i32 %i.yh to float          ; 90 uses
  %i.yk = insertelement <2 x float> poison, float %i.yj, i64 0
  %i.yl = insertelement <2 x float> %i.yk, float %i.yi, i64 1
  %i.ym = fsub <2 x float> %i.yl, %i.uf           ; 7 uses
  %i.yn = fdiv <2 x float> %i.ym, %i.ue           ; 2 uses
  %i.yo = extractelement <2 x float> %i.yn, i64 0
  %i.yp = fadd float %i.yo, %i.lu                 ; 52 uses
  %i.yq = extractelement <2 x float> %i.yn, i64 1
  %i.yr = fadd float %i.yq, %i.lu                 ; 52 uses
  %i.ys = fcmp olt float %i.oq, %i.yj             ; 2 uses
  %i.yt = fcmp ogt float %i.tv, %i.yi             ; 2 uses
  %or.cond339.i.i.i = select i1 %i.ys, i1 %i.yt, i1 false
  br i1 %or.cond339.i.i.i, label %bb.co, label %bb.dt

bb.co:                                            ; preds = %bb.cn
  %i.yu = fcmp oeq float %i.yp, %i.lu
  br i1 %i.yu, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.yv = load float, ptr %i.tz, align 4, !tbaa !352 ; 4 uses
  %i.yw = fcmp olt float %i.yv, %i.lu
  br i1 %i.yw, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.yx = load float, ptr %i.ty, align 8, !tbaa !365 ; 4 uses
  %i.yy = fcmp olt float %i.yp, %i.yx
  br i1 %i.yy, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.yz = fcmp ogt float %i.yx, %i.lu
  br i1 %i.yz, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.za = fsub float %i.yx, %i.lu
  %i.zb = extractelement <2 x float> %i.ym, i64 0
  %i.zc = fmul float %i.zb, %i.za
  %i.zd = fsub float %i.yp, %i.lu
  %i.ze = fdiv float %i.zc, %i.zd
  %i.zf = fadd float %i.oq, %i.ze
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.055.i359.i.i.i = phi float [ %i.zf, %bb.cs ], [ %i.oq, %bb.cr ] ; 4 uses
  %.054.i360.i.i.i = phi float [ %i.yx, %bb.cs ], [ %i.lu, %bb.cr ] ; 3 uses
  %i.zg = fcmp ogt float %i.yp, %i.yv
  br i1 %i.zg, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.zh = fsub float %i.yj, %.055.i359.i.i.i
  %i.zi = fsub float %i.yv, %i.yp
  %i.zj = fmul float %i.zi, %i.zh
  %i.zk = fsub float %i.yp, %.054.i360.i.i.i
  %i.zl = fdiv float %i.zj, %i.zk
  %i.zm = fadd float %i.zl, %i.yj
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.053.i361.i.i.i = phi float [ %i.zm, %bb.cu ], [ %i.yj, %bb.ct ] ; 3 uses
  %.0.i362.i.i.i = phi float [ %i.yv, %bb.cu ], [ %i.yp, %bb.ct ] ; 2 uses
  %i.zn = fcmp ugt float %.055.i359.i.i.i, %i.yj
  %i.zo = fcmp ugt float %.053.i361.i.i.i, %i.yj
  %or.cond.i363.i.i.i = select i1 %i.zn, i1 true, i1 %i.zo
  br i1 %or.cond.i363.i.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.zp = load float, ptr %i.yf, align 4, !tbaa !354
  %i.zq = fsub float %.0.i362.i.i.i, %.054.i360.i.i.i
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.zs = load float, ptr %i.zr, align 4, !tbaa !81
  %i.zt = tail call float @llvm.fmuladd.f32(float %i.zp, float %i.zq, float %i.zs)
  store float %i.zt, ptr %i.zr, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit365.i.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.zu = fcmp ult float %.055.i359.i.i.i, %i.yi
  %i.zv = fcmp ult float %.053.i361.i.i.i, %i.yi
  %or.cond62.i364.i.i.i = select i1 %i.zu, i1 true, i1 %i.zv
  br i1 %or.cond62.i364.i.i.i, label %bb.cy, label %stbtt__handle_clipped_edge.exit365.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.zw = load float, ptr %i.yf, align 4, !tbaa !354
  %i.zx = fsub float %.0.i362.i.i.i, %.054.i360.i.i.i
  %i.zy = fmul float %i.zx, %i.zw
  %i.zz = fsub float %.055.i359.i.i.i, %i.yj
  %i.aaa = fsub float %.053.i361.i.i.i, %i.yj
  %i.aab = fadd float %i.zz, %i.aaa
  %i.aac = fmul float %i.aab, 5.000000e-01
  %i.aad = fsub float 1.000000e+00, %i.aac
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !81
  %i.aag = tail call float @llvm.fmuladd.f32(float %i.zy, float %i.aad, float %i.aaf)
  store float %i.aag, ptr %i.aae, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit365.i.i.i

stbtt__handle_clipped_edge.exit365.i.i.i:         ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cq, %bb.cp, %bb.co
  %i.aah = fcmp oeq float %i.yp, %i.yr
  br i1 %i.aah, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %stbtt__handle_clipped_edge.exit365.i.i.i
  %i.aai = load float, ptr %i.tz, align 4, !tbaa !352 ; 4 uses
  %i.aaj = fcmp ogt float %i.yp, %i.aai
  br i1 %i.aaj, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.aak = load float, ptr %i.ty, align 8, !tbaa !365 ; 4 uses
  %i.aal = fcmp olt float %i.yr, %i.aak
  br i1 %i.aal, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.aam = fcmp olt float %i.yp, %i.aak
  br i1 %i.aam, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.aan = fsub nnan float %i.yi, %i.yj
  %i.aao = fsub float %i.aak, %i.yp
  %i.aap = fmul float %i.aan, %i.aao
  %i.aaq = fsub float %i.yr, %i.yp
  %i.aar = fdiv float %i.aap, %i.aaq
  %i.aas = fadd float %i.aar, %i.yj
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.055.i366.i.i.i = phi float [ %i.aas, %bb.dc ], [ %i.yj, %bb.db ] ; 4 uses
  %.054.i367.i.i.i = phi float [ %i.aak, %bb.dc ], [ %i.yp, %bb.db ] ; 3 uses
  %i.aat = fcmp ogt float %i.yr, %i.aai
  br i1 %i.aat, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.aau = fsub float %i.yi, %.055.i366.i.i.i
  %i.aav = fsub float %i.aai, %i.yr
  %i.aaw = fmul float %i.aav, %i.aau
  %i.aax = fsub float %i.yr, %.054.i367.i.i.i
  %i.aay = fdiv float %i.aaw, %i.aax
  %i.aaz = fadd float %i.aay, %i.yi
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.053.i368.i.i.i = phi float [ %i.aaz, %bb.de ], [ %i.yi, %bb.dd ] ; 3 uses
  %.0.i369.i.i.i = phi float [ %i.aai, %bb.de ], [ %i.yr, %bb.dd ] ; 2 uses
  %i.aba = fcmp ugt float %.055.i366.i.i.i, %i.yj
  %i.abb = fcmp ugt float %.053.i368.i.i.i, %i.yj
  %or.cond.i370.i.i.i = select i1 %i.aba, i1 true, i1 %i.abb
  br i1 %or.cond.i370.i.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.abc = load float, ptr %i.yf, align 4, !tbaa !354
  %i.abd = fsub float %.0.i369.i.i.i, %.054.i367.i.i.i
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.abf = load float, ptr %i.abe, align 4, !tbaa !81
  %i.abg = tail call float @llvm.fmuladd.f32(float %i.abc, float %i.abd, float %i.abf)
  store float %i.abg, ptr %i.abe, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit372.i.i.i

bb.dh:                                            ; preds = %bb.df
  %i.abh = fcmp ult float %.055.i366.i.i.i, %i.yi
  %i.abi = fcmp ult float %.053.i368.i.i.i, %i.yi
  %or.cond62.i371.i.i.i = select i1 %i.abh, i1 true, i1 %i.abi
  br i1 %or.cond62.i371.i.i.i, label %bb.di, label %stbtt__handle_clipped_edge.exit372.i.i.i

bb.di:                                            ; preds = %bb.dh
  %i.abj = load float, ptr %i.yf, align 4, !tbaa !354
  %i.abk = fsub float %.0.i369.i.i.i, %.054.i367.i.i.i
  %i.abl = fmul float %i.abk, %i.abj
  %i.abm = fsub float %.055.i366.i.i.i, %i.yj
  %i.abn = fsub float %.053.i368.i.i.i, %i.yj
  %i.abo = fadd float %i.abm, %i.abn
  %i.abp = fmul float %i.abo, 5.000000e-01
  %i.abq = fsub float 1.000000e+00, %i.abp
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
end_hunk_0
